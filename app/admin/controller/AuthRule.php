<?php
/**
 * +----------------------------------------------------------------------
 * | 菜单规则控制器
 * +----------------------------------------------------------------------
 *                      .::::.
 *                    .::::::::.            | AUTHOR: siyu
 *                    :::::::::::           | EMAIL: 407593529@qq.com
 *                 ..:::::::::::'           | DATETIME: 2020/02/03
 *             '::::::::::::'
 *                .::::::::::
 *           '::::::::::::::..
 *                ..::::::::::::.
 *              ``::::::::::::::::
 *               ::::``:::::::::'        .:::.
 *              ::::'   ':::::'       .::::::::.
 *            .::::'      ::::     .:::::::'::::.
 *           .:::'       :::::  .:::::::::' ':::::.
 *          .::'        :::::.:::::::::'      ':::::.
 *         .::'         ::::::::::::::'         ``::::.
 *     ...:::           ::::::::::::'              ``::.
 *   ```` ':.          ':::::::::'                  ::::..
 *                      '.:::::'                    ':'````..
 * +----------------------------------------------------------------------
 */
namespace app\admin\controller;

// 引入框架内置类
use think\facade\Request;

// 引入表格和表单构建器
use app\common\facade\MakeBuilder;
use app\common\builder\FormBuilder;
use app\common\builder\TableBuilder;

class AuthRule extends Base
{
    // 验证器
    protected $validate = 'AuthRule';

    // 当前主表
    protected $tableName = 'auth_rule';

    // 当前主模型
    protected $modelName = 'AuthRule';

    // 列表
    public function index(){
        // 获取主键
        $pk = MakeBuilder::getPrimarykey($this->tableName);
        // 获取列表数据
        $coloumns = MakeBuilder::getListColumns($this->tableName);
        // 获取搜索数据
        $search = MakeBuilder::getListSearch($this->tableName);
        // 获取当前模块信息
        $model = '\app\common\model\\' . $this->modelName;
        $module = \app\common\model\Module::where('table_name', $this->tableName)->find();
        // 搜索
        if (Request::param('getList') == 1) {
            $where = MakeBuilder::getListWhere($this->tableName);
            $orderByColumn = Request::param('orderByColumn') ?? $pk;
            $isAsc = Request::param('isAsc') ?? 'desc';
            return $model::getList($where, $this->pageSize, [$orderByColumn => $isAsc]);
        }

        // 构建页面
        return TableBuilder::getInstance()
            ->setUniqueId($pk)                              // 设置主键
            ->addColumns($coloumns)                         // 添加列表字段数据
            ->setSearch($search)                            // 添加头部搜索
            ->addColumn('right_button', '操作', 'btn')      // 启用右侧操作列
            ->addRightButton('info', [                      // 添加额外按钮
                'title' => '添加',
                'icon'  => 'fa fa-plus',
                'class' => 'btn btn-success btn-xs',
                'href'  => url('add', ['pid' => '__id__'])
            ])
            ->addRightButtons($module->right_button)        // 设置右侧操作列
            ->addTopButtons($module->top_button)            // 设置顶部按钮组
            ->addTopButton('default', [
                'title'       => '展开/折叠',
                'icon'        => 'fas fa-exchange-alt',
                'class'       => 'btn btn-info treeStatus',
                'href'        => '',
                'onclick'     => '$.operate.treeStatus()'
            ]) // 自定义按钮
            ->setPagination('false')                        // 关闭分页显示
            ->setParentIdField('pid')                       // 设置列表树父id
            ->fetch();
    }

    // 添加
    public function add(string $pid = '')
    {
        // 获取字段信息
        $coloumns = MakeBuilder::getAddColumns($this->tableName);

        // 获取父ID数据
        foreach ($coloumns as $k => $v) {
            if ($v[1] == 'pid') {
                $model = '\app\common\model\\' . $this->modelName;
                $pidOptions = $model::getPidOptions();
                // 设置父ID选项
                $coloumns[$k][4] = $pidOptions;
                // 设置父ID默认值
                if ($pid) {
                    $coloumns[$k][5] = $pid;
                }
            }
        }

        // 获取分组后的字段信息
        $groups = MakeBuilder::getgetAddGroups($this->modelName, $this->tableName, $coloumns);
        // 构建页面
        $builder = FormBuilder::getInstance();
        $groups ? $builder->addGroup($groups) : $builder->addFormItems($coloumns);
        return $builder->fetch();
    }

    // 添加保存
    public function addPost()
    {
        if (Request::isPost()) {
            $data = MakeBuilder::changeFormData(Request::except(['file'], 'post'), $this->tableName);
            $result = $this->validate($data, $this->validate);
            if (true !== $result) {
                // 验证失败 输出错误信息
                $this->error($result);
            } else {
                $model = '\app\common\model\\' . $this->modelName;
                $result = $model::addPost($data);
                if ($result['error']) {
                    $this->error($result['msg']);
                } else {
                    $this->success($result['msg'], 'index');
                }
            }
        }
    }

    // 修改
    public function edit(string $id)
    {
        $model = '\app\common\model\\' . $this->modelName;
        $info = $model::edit($id)->toArray();
        // 获取字段信息
        $coloumns = MakeBuilder::getAddColumns($this->tableName, $info);

        // 获取父ID数据
        foreach ($coloumns as $k => $v) {
            if ($v[1] == 'pid') {
                $model = '\app\common\model\\' . $this->modelName;
                $pidOptions = $model::getPidOptions();
                $coloumns[$k][4] = $pidOptions;
            }
        }

        // 获取分组后的字段信息
        $groups = MakeBuilder::getgetAddGroups($this->modelName, $this->tableName, $coloumns);

        // 构建页面
        $builder = FormBuilder::getInstance();
        $groups ? $builder->addGroup($groups) : $builder->addFormItems($coloumns);
        return $builder->fetch();
    }

    // 修改保存
    public function editPost()
    {
        if (Request::isPost()) {
            $data = MakeBuilder::changeFormData(Request::except(['file'], 'post'), $this->tableName);
            $result = $this->validate($data, $this->validate);
            if (true !== $result) {
                // 验证失败 输出错误信息
                $this->error($result);
            } else {
                $model = '\app\common\model\\' . $this->modelName;
                $result = $model::editPost($data);
                if ($result['error']) {
                    $this->error($result['msg']);
                } else {
                    $this->success($result['msg'], 'index');
                }
            }
        }
    }

    // 删除
    public function del(string $id)
    {
        if (Request::isPost()) {
            if (strpos($id, ',') !== false) {
                return $this->selectDel($id);
            }
            $model = '\app\common\model\\' . $this->modelName;
            return $model::del($id);
        }
    }

    // 批量删除
    public function selectDel(string $id){
        if (Request::isPost()) {
            $model = '\app\common\model\\' . $this->modelName;
            return $model::selectDel($id);
        }
    }

    // 排序
    public function sort()
    {
        if (Request::isPost()) {
            $data = Request::post();
            $model = '\app\common\model\\' . $this->modelName;
            return $model::sort($data);
        }
    }

    // 状态变更
    public function state(string $id)
    {
        if (Request::isPost()) {
            $model = '\app\common\model\\' . $this->modelName;
            return $model::state($id);
        }
    }

    // 导出
    public function export()
    {
        \app\common\model\Base::export($this->tableName, $this->modelName);
    }

}
