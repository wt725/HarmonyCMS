<?php
/**
 * +----------------------------------------------------------------------
 * | 首页控制器
 * +----------------------------------------------------------------------
 * 888    888                                                                 .d8888b.  888b     d888  .d8888b.
 * 888    888                                                                d88P  Y88b 8888b   d8888 d88P  Y88b
 * 888    888                                                                888    888 88888b.d88888 Y88b.
 * 8888888888  8888b.  888d888 88888b.d88b.   .d88b.  88888b.  888  888      888        888Y88888P888  "Y888b.
 * 888    888     "88b 888P"   888 "888 "88b d88""88b 888 "88b 888  888      888        888 Y888P 888     "Y88b.
 * 888    888 .d888888 888     888  888  888 888  888 888  888 888  888      888    888 888  Y8P  888       "888
 * 888    888 888  888 888     888  888  888 Y88..88P 888  888 Y88b 888      Y88b  d88P 888   "   888 Y88b  d88P
 * 888    888 "Y888888 888     888  888  888  "Y88P"  888  888  "Y88888       "Y8888P"  888       888  "Y8888P"
 *                                                                  888
 *                                                             Y8b d88P
 *                                                              "Y88P"
 * +----------------------------------------------------------------------
 */
namespace app\index\controller;

use think\captcha\facade\Captcha;
use think\facade\Db;
use think\facade\Request;
use think\facade\View;

class Index extends Base
{
    // 首页
    public function index()
    {
        // 后台开启手机端的时候PC自动跳转到mobile
        if ($this->system['mobile'] == '1' && $this->appName == 'index') {
            if (Request::isMobile()) {
                return redirect('mobile/index/index');
            }
        }

        $view = [
            'cate'       => ['topid' => 0],          // 栏目信息
            'system'      => $this->system,          // 系统信息
            'public'      => $this->public,          // 公共目录
            'title'       => $this->system['title'] ? $this->system['title'] : $this->system['name'], // seo信息
            'keywords'    => $this->system['key'],   // seo信息
            'description' => $this->system['des'],   // seo信息
        ];

        $template = $this->template . 'index.html';
        View::assign($view);
        return View::fetch($template);
    }

    // 搜索
    public function search(){
        $search = Request::param('search'); // 关键字
        if(empty($search)){
            $this->error('请输入关键词');
        }

        $view = [
            'cate'       => ['topid' => 0], // 栏目信息
            'search'      => $search,       // 关键字
            'system'      => $this->system, // 系统信息
            'public'      => $this->public, // 公共目录
            'title'       => $this->system['title'] ? $this->system['title'] : $this->system['name'], //seo信息
            'keywords'    => $this->system['key'],   //seo信息
            'description' => $this->system['des'],   //seo信息
        ];

        $template = $this->template.'search.html';
        View::assign($view);
        return View::fetch($template);
    }

    // 标签
    public function tag(){
        $tag = Request::param('t', '', 'htmlspecialchars');
        if (empty($tag)) {
            $this->error('请输入关键词');
        }

        $view = [
            'cate'       => ['topid' => 0],          // 栏目信息
            'tag'         => $tag,                   // 关键字
            'system'      => $this->system,          // 系统信息
            'public'      => $this->public,          // 公共目录
            'title'       => $this->system['title'] ? $this->system['title'] : $this->system['name'],
            'keywords'    => $this->system['key'],
            'description' => $this->system['des'],
        ];

        $template = $this->template . 'tag.html';
        View::assign($view);
        return View::fetch($template);
    }

    // 留言表单提交
    public function add(){
        $result = ['error'=>'','msg'=>''];
        if (Request::isPost()) {
            $data = Request::post('', '', 'htmlspecialchars');
            $data['create_time'] = time();
            $data['status'] = 0;

            // 是否开启验证码
            if ($this->system['message_code']) {
                if (!captcha_check($data['message_code'])) {
                    $this->error('验证码错误');
                } else {
                    unset($data['message_code']);
                }
            }

            // 查询模型id
            $moduleId = Db::name('cate')
                ->where('id','=',Request::param('cate_id'))
                ->value('module_id');
            // 查询该模型所有必填字段
            $fields = Db::name('field')
                ->where('module_id', $moduleId)
                ->select()
                ->toArray();
            foreach ($fields as $k => $v) {
                //必填项判断
                if (isset($data[$v['field']]) && $v['required'] == 1 && $data[$v['field']] === '' ) {
                    $result['error'] = '1';
                    $result['msg'] = $v['name'] . '为必填项';
                }
                // 多选转换
                if ($v['type'] == 'checkbox') {
                    //如填写则进行转换
                    if (isset($data[$v['field']])) {
                        $data[$v['field']] = implode(",", $data[$v['field']]);
                    }
                    // 多选必填项单独判断
                    if ($v['required'] == 1 && !isset($data[$v['field']])) {
                        $result['error'] = '1';
                        $result['msg'] = $v['name'] . '为必选项';
                    }
                }
            }


            if ($result['error'] !== '1') {
                $tableName = Db::name('module')
                    ->where('id','=',$moduleId)
                    ->value('table_name');
                $id = Db::name($tableName)
                    ->insertGetId($data);
                if ($id) {
                    $result['error'] = '0';
                    $result['msg']   = '留言成功';
                    //邮件通知开始
                    if ($this->system['message_send_mail']) {
                        //去除无用字段
                        unset($data['cate_id']);
                        unset($data['status']);
                        //默认收件人为系统设置中的邮件
                        $email = $this->system['email'];
                        $title = 'SIYUCMS提醒：您的网站有新的留言';
                        //拼接内容
                        $fields = Db::name('field')
                            ->where('module_id',$moduleId)
                            ->select();
                        $content = '';
                        foreach ($fields as $k => $v) {
                            if (isset($data[$v['field']])) {
                                if ($v['type'] == 'datetime') {
                                    $data[$v['field']] = date("Y-m-d H:i",$data[$v['field']]);
                                }
                                $content .= '<br>'.$v['name'].' : '.$data[$v['field']];
                            }
                        }
                        $this->trySend($email,$title,$content);
                    }
                    //邮件通知结束
                    $this->success($result['msg']);
                } else {
                    $result['error'] = '1';
                    $result['msg']  .= '留言失败;';
                    $this->error($result['msg']);
                }
            } else {
                $this->error($result['msg']);
            }

        }
    }

    // 验证码
    public function captcha(){
        return Captcha::create();
    }

    // 邮件发送
    private function trySend($email,$title,$content){
        //检查是否邮箱格式
        if (!is_email($email)) {
            return ['error' => 1, 'msg' => '邮箱码格式有误'];
        }
        $send = send_email($email, $title,$content);
        if ($send) {
            return ['error' => 0, 'msg' => '邮件发送成功！'];
        } else {
            return ['error' => 1, 'msg' => '邮件发送失败！'];
        }
    }

}
