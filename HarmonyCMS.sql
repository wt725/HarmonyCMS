/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云105
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : harmony_cms

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 10/03/2021 21:26:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hc_ad
-- ----------------------------
DROP TABLE IF EXISTS `hc_ad`;
CREATE TABLE `hc_ad`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `type_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '广告位',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告名称',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `thumb` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_ad
-- ----------------------------
INSERT INTO `hc_ad` VALUES (1, 1615367899, 1615367899, 1, 1, '1', '中国国际贸易促进委员会', '/uploads/20210310/e7adaf2071ad07f1739f44b658571bbe.jpg', '/uploads/20210310/feff9932a29378133402511cba0242f2.jpg', 'http://www.ccpitsd.org.cn', '山东省委员会');
INSERT INTO `hc_ad` VALUES (2, 1615367899, 1615367899, 2, 1, '1', '中国国际贸易促进委员会', '/uploads/20210310/b2f11a0df511f1c757e24f0ca15d2365.jpg', '/uploads/20210310/461bac509cef918acb0df4e50a89c1b4.jpg', 'http://www.ccpitsd.org.cn', '山东省委员会');
INSERT INTO `hc_ad` VALUES (3, 1615367899, 1615367899, 50, 1, '1', '中国国际贸易促进委员会', '/uploads/20210310/fc749a7bf991ab093dc643f7dab90926.jpg', '/uploads/20210310/270f4d8ffdc73147ba7b453942ee0dc1.jpg', 'http://www.ccpitsd.org.cn', '山东省委员会');
INSERT INTO `hc_ad` VALUES (4, 1615367899, 1615367899, 50, 1, '1', '中国国际贸易促进委员会', '/uploads/20210310/16757013863f8b353e8d17c1832ea2b7.jpg', '/uploads/20210310/bce791236b3281a06b9b1edb42944b56.jpg', 'http://www.ccpitsd.org.cn', '山东省委员会');

-- ----------------------------
-- Table structure for hc_ad_type
-- ----------------------------
DROP TABLE IF EXISTS `hc_ad_type`;
CREATE TABLE `hc_ad_type`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告分组' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_ad_type
-- ----------------------------
INSERT INTO `hc_ad_type` VALUES (1, 1615367899, 1615367899, '【首页】顶部通栏', '导航下的焦点图', 1, 1);
INSERT INTO `hc_ad_type` VALUES (2, 1615367899, 1615367899, '【内页】顶部通栏', '内页顶部通栏', 2, 1);

-- ----------------------------
-- Table structure for hc_admin
-- ----------------------------
DROP TABLE IF EXISTS `hc_admin`;
CREATE TABLE `hc_admin`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `nickname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_admin
-- ----------------------------
INSERT INTO `hc_admin` VALUES (1, 1615367899, 1615367899, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1615367899, '127.0.0.1', 'admin', '/uploads/20210310/head.png');
INSERT INTO `hc_admin` VALUES (2, 1615367899, 1615367899, 0, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1615367899, '127.0.0.1', 'test', '/uploads/20210310/head.png');

-- ----------------------------
-- Table structure for hc_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `hc_admin_log`;
CREATE TABLE `hc_admin_log`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `admin_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面	',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志内容',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作IP',
  `user_agent` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'User-Agent',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 196 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_admin_log
-- ----------------------------
INSERT INTO `hc_admin_log` VALUES (1, 1615367899, 1615367899, '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (2, 1615367899, 1615367899, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (3, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (4, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (5, 1615367899, 1615367899, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"HarmonyCMS\",\"logo\":\"\\/uploads\\/20181226\\/a3a4245ec095da4903c6c81123fd480d.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019.All right reserved.Powered by HarmonyCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (6, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (7, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (8, 1615367899, 1615367899, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"HarmonyCMS\",\"logo\":\"\\/uploads\\/20210305\\/ac6a81cac8815330c7a5b0212557e99b.png\",\"file\":\"\",\"icp\":\"\\u4eacICP\\u590788888888\\u53f7-8\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019.All right reserved.Powered by HarmonyCMS\",\"url\":\"harmony.ok5168.com\",\"address\":\"\\u5c71\\u4e1c\\u00b7\\u6d4e\\u5357\\u00b7\\u9ec4\\u53f0\\u7535\\u5b50\\u5546\\u52a1\\u4ea7\\u4e1a\\u56edD\\u5ea7B-708\",\"contacts\":\"\\u738b\\u5148\\u751f\",\"tel\":\"010-87153386\",\"mobile_phone\":\"132 8531 1189\",\"fax\":\"010-87153386\",\"email\":\"127798@qq.com\",\"qq\":\"127798\",\"qrcode\":\"\\/uploads\\/20210305\\/73428cfdfb859ccc895514ce4ea5ed4c.jpg\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (9, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (10, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (11, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (12, 1615367899, 1615367899, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"HarmonyCMS\",\"logo\":\"\\/uploads\\/20210305\\/b93e386a95861495e24ca4d64e4c2607.png\",\"file\":\"\",\"icp\":\"\\u4eacICP\\u590788888888\\u53f7-8\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019.All right reserved.Powered by HarmonyCMS\",\"url\":\"harmony.ok5168.com\",\"address\":\"\\u5c71\\u4e1c\\u00b7\\u6d4e\\u5357\\u00b7\\u9ec4\\u53f0\\u7535\\u5b50\\u5546\\u52a1\\u4ea7\\u4e1a\\u56edD\\u5ea7B-708\",\"contacts\":\"\\u738b\\u5148\\u751f\",\"tel\":\"010-87153386\",\"mobile_phone\":\"132 8531 1189\",\"fax\":\"010-87153386\",\"email\":\"127798@qq.com\",\"qq\":\"127798\",\"qrcode\":\"\\/uploads\\/20210305\\/73428cfdfb859ccc895514ce4ea5ed4c.jpg\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (13, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (14, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (15, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (16, 1615367899, 1615367899, '1', '/admin/Template/index.html?_pjax=.content-wrapper', '[系统管理] -> [模板管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (17, 1615367899, 1615367899, '1', '/admin/Template/index.html?getList=1&type=html', '[系统管理] -> [模板管理]', '{\"getList\":\"1\",\"type\":\"html\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (18, 1615367899, 1615367899, '1', '/admin/Page/index.html?_pjax=.content-wrapper', '[内容管理] -> [单页模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (19, 1615367899, 1615367899, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (20, 1615367899, 1615367899, '1', '/admin/Page/index.html?_pjax=.content-wrapper', '[内容管理] -> [单页模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (21, 1615367899, 1615367899, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (22, 1615367899, 1615367899, '1', '/admin/Page/index.html', '[内容管理] -> [单页模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (23, 1615367899, 1615367899, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (24, 1615367899, 1615367899, '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (25, 1615367899, 1615367899, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (26, 1615367899, 1615367899, '1', '/admin/system/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (27, 1615367899, 1615367899, '1', '/admin/Index/index.html?_pjax=.content-wrapper', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (28, 1615367899, 1615367899, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (29, 1615367899, 1615367899, '1', '/admin/Admin/edit.html?id=1&_pjax=.content-wrapper', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (30, 1615367899, 1615367899, '1', '/admin/Admin/editPost.html', '[权限管理] -> [管理员管理] -> [操作-修改保存]', '{\"group_id\":\"1\",\"id\":\"1\",\"username\":\"admin\",\"image\":\"\\/uploads\\/20210310\\/b14f0cf2dff3b7f2df42c2ef5c73d316.png\",\"file\":\"\",\"nickname\":\"admin\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (31, 1615367899, 1615367899, '1', '/admin/Admin/index.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (32, 1615367899, 1615367899, '1', '/admin/Admin/index.html?getList=1', '[权限管理] -> [管理员管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"username\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (33, 1615367899, 1615367899, '1', '/admin/Admin/index.html', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (34, 1615367899, 1615367899, '1', '/admin/Admin/index.html?getList=1', '[权限管理] -> [管理员管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"username\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (35, 1615367899, 1615367899, '1', '/admin/Admin/edit.html?id=2&_layer=1', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (36, 1615367899, 1615367899, '1', '/admin/Admin/editPost.html', '[权限管理] -> [管理员管理] -> [操作-修改保存]', '{\"group_id\":\"2\",\"id\":\"2\",\"username\":\"admin\",\"image\":\"\\/uploads\\/20210310\\/f57384e8501e6713e5c9fe0dc98c7cf3.png\",\"file\":\"\",\"nickname\":\"test\",\"status\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (37, 1615367899, 1615367899, '1', '/admin/Admin/index.html?getList=1', '[权限管理] -> [管理员管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"username\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (38, 1615367899, 1615367899, '1', '/admin/Admin/index.html', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (39, 1615367899, 1615367899, '1', '/admin/Admin/index.html?getList=1', '[权限管理] -> [管理员管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"username\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (40, 1615367899, 1615367899, '1', '/admin/Admin/edit.html?id=1&_pjax=.content-wrapper', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (41, 1615367899, 1615367899, '1', '/admin/Admin/edit.html?id=1', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (42, 1615367899, 1615367899, '1', '/admin/Index/index.html?_pjax=.content-wrapper', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (43, 1615367899, 1615367899, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (44, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (45, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (46, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (47, 1615367899, 1615367899, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"HarmonyCMS\",\"logo\":\"\\/uploads\\/20210305\\/b93e386a95861495e24ca4d64e4c2607.png\",\"file\":\"\",\"icp\":\"\\u4eacICP\\u590788888888\\u53f7-8\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019-2021 All right reserved\",\"url\":\"harmony_cms.ok5168.com\",\"address\":\"\\u5c71\\u4e1c\\u00b7\\u6d4e\\u5357\\u00b7\\u9ec4\\u53f0\\u7535\\u5b50\\u5546\\u52a1\\u4ea7\\u4e1a\\u56edD\\u5ea7B-708\",\"contacts\":\"\\u738b\\u5148\\u751f\",\"tel\":\"010-87153386\",\"mobile_phone\":\"132 8531 1189\",\"fax\":\"010-87153386\",\"email\":\"127798@qq.com\",\"qq\":\"127798\",\"qrcode\":\"\\/uploads\\/20210305\\/73428cfdfb859ccc895514ce4ea5ed4c.jpg\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (48, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (49, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (50, 1615367899, 1615367899, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"HarmonyCMS\",\"logo\":\"\\/uploads\\/20210305\\/b93e386a95861495e24ca4d64e4c2607.png\",\"file\":\"\",\"icp\":\"\\u4eacICP\\u590788888888\\u53f7-8\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019-2021 All right reserved\",\"url\":\"harmony_cms.ok5168.com\",\"address\":\"\\u5c71\\u4e1c\\u00b7\\u6d4e\\u5357\\u00b7\\u9ec4\\u53f0\\u7535\\u5b50\\u5546\\u52a1\\u4ea7\\u4e1a\\u56edD\\u5ea7B-708\",\"contacts\":\"\\u738b\\u5148\\u751f\",\"tel\":\"010-87153386\",\"mobile_phone\":\"132 8531 1189\",\"fax\":\"010-87153386\",\"email\":\"127798@qq.com\",\"qq\":\"127798\",\"qrcode\":\"\\/uploads\\/20210305\\/73428cfdfb859ccc895514ce4ea5ed4c.jpg\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"ccpitsd\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (51, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (52, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (53, 1615367899, 1615367899, '1', '/admin/Template/index.html?_pjax=.content-wrapper', '[系统管理] -> [模板管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (54, 1615367899, 1615367899, '1', '/admin/Template/index.html?getList=1&type=html', '[系统管理] -> [模板管理]', '{\"getList\":\"1\",\"type\":\"html\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (55, 1615367899, 1615367899, '1', '/admin/Template/edit.html?id=index.html&type=html&_pjax=.content-wrapper', '[系统管理] -> [模板管理] -> [操作-修改]', '{\"id\":\"index.html\",\"type\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (56, 1615367899, 1615367899, '1', '/admin/Ad/index.html', '[网站功能] -> [广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (57, 1615367899, 1615367899, '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (58, 1615367899, 1615367899, '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (59, 1615367899, 1615367899, '1', '/admin/Ad/index.html', '[网站功能] -> [广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (60, 1615367899, 1615367899, '1', '/admin/Ad/add.html?_layer=1', '[网站功能] -> [广告管理] -> [操作-添加]', '{\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (61, 1615367899, 1615367899, '1', '/admin/Ad/addPost.html', '[网站功能] -> [广告管理] -> [操作-添加保存]', '{\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/fc749a7bf991ab093dc643f7dab90926.jpg\",\"file\":\"\",\"thumb\":\"\",\"url\":\"harmony.ok5168.com\",\"description\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (62, 1615367899, 1615367899, '1', '/admin/Ad/index.html', '[网站功能] -> [广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (63, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (64, 1615367899, 1615367899, '1', '/admin/Dictionary/index.html?_pjax=.content-wrapper', '[系统管理] -> [字典数据]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (65, 1615367899, 1615367899, '1', '/admin/Dictionary/index.html?getList=1', '[系统管理] -> [字典数据]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"dict_label\":\"\",\"dict_value\":\"\",\"dict_type\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (66, 1615367899, 1615367899, '1', '/admin/Dictionary/index.html?_pjax=.content-wrapper', '[系统管理] -> [字典数据]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (67, 1615367899, 1615367899, '1', '/admin/Dictionary/index.html?getList=1', '[系统管理] -> [字典数据]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"dict_label\":\"\",\"dict_value\":\"\",\"dict_type\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (68, 1615367899, 1615367899, '1', '/admin/DictionaryType/index.html?_pjax=.content-wrapper', '[系统管理] -> [字典类型]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (69, 1615367899, 1615367899, '1', '/admin/DictionaryType/index.html?getList=1', '[系统管理] -> [字典类型]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"id\":\"\",\"dict_name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (70, 1615367899, 1615367899, '1', '/admin/Dictionary/index.html?_pjax=.content-wrapper', '[系统管理] -> [字典数据]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (71, 1615367899, 1615367899, '1', '/admin/Dictionary/index.html?getList=1', '[系统管理] -> [字典数据]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"dict_label\":\"\",\"dict_value\":\"\",\"dict_type\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (72, 1615367899, 1615367899, '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (73, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (74, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=2&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (75, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=3&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"3\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (76, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=2&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (77, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"2\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/125f59fc9d9481c21e261f932ecd0575.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20181225\\/25670f5712b4acfb61c5d2a1bce79225.jpg\",\"url\":\"harmony.ok5168.com\",\"description\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (78, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (79, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=1&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (80, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"1\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/b69080733bc7227d17ea341ea9f47372.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20181225\\/b671c6f234a72c2e6560c63ddd9dc0ff.jpg\",\"url\":\"harmony.ok5168.com\",\"description\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (81, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (82, 1615367899, 1615367899, '1', '/admin/Ad/index.html', '[网站功能] -> [广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (83, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (84, 1615367899, 1615367899, '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (85, 1615367899, 1615367899, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (86, 1615367899, 1615367899, '1', '/admin/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (87, 1615367899, 1615367899, '1', '/admin/Link/index.html?getList=1', '[网站功能] -> [友情链接]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"url\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (88, 1615367899, 1615367899, '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (89, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (90, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=3&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"3\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (91, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"3\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/fc749a7bf991ab093dc643f7dab90926.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/270f4d8ffdc73147ba7b453942ee0dc1.jpg\",\"url\":\"harmony.ok5168.com\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (92, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (93, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=2&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (94, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"2\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/b2f11a0df511f1c757e24f0ca15d2365.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/461bac509cef918acb0df4e50a89c1b4.jpg\",\"url\":\"harmony.ok5168.com\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (95, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (96, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=1&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (97, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"1\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/e7adaf2071ad07f1739f44b658571bbe.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/feff9932a29378133402511cba0242f2.jpg\",\"url\":\"harmony.ok5168.com\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (98, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (99, 1615367899, 1615367899, '1', '/admin/Ad/add.html?_layer=1', '[网站功能] -> [广告管理] -> [操作-添加]', '{\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (100, 1615367899, 1615367899, '1', '/admin/Ad/addPost.html', '[网站功能] -> [广告管理] -> [操作-添加保存]', '{\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/16757013863f8b353e8d17c1832ea2b7.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/bce791236b3281a06b9b1edb42944b56.jpg\",\"url\":\"www.ccpitsd.org.cn\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (101, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (102, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (103, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (104, 1615367899, 1615367899, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"HarmonyCMS\",\"logo\":\"\\/uploads\\/20210310\\/c5019edff5906ebae043bdd75375478c.png\",\"file\":\"\",\"icp\":\"\\u4eacICP\\u590788888888\\u53f7-8\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019-2021 All right reserved\",\"url\":\"harmony_cms.ok5168.com\",\"address\":\"\\u5c71\\u4e1c\\u00b7\\u6d4e\\u5357\\u00b7\\u9ec4\\u53f0\\u7535\\u5b50\\u5546\\u52a1\\u4ea7\\u4e1a\\u56edD\\u5ea7B-708\",\"contacts\":\"\\u738b\\u5148\\u751f\",\"tel\":\"010-87153386\",\"mobile_phone\":\"132 8531 1189\",\"fax\":\"010-87153386\",\"email\":\"127798@qq.com\",\"qq\":\"127798\",\"qrcode\":\"\\/uploads\\/20210305\\/73428cfdfb859ccc895514ce4ea5ed4c.jpg\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"ccpitsd\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (105, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (106, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (107, 1615367899, 1615367899, '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (108, 1615367899, 1615367899, '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (109, 1615367899, 1615367899, '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (110, 1615367899, 1615367899, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (111, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (112, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (113, 1615367899, 1615367899, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"logo\":\"\\/uploads\\/20210310\\/a219f899f3a11138231361eb13d484ca.jpg\",\"file\":\"\",\"icp\":\"\\u4eacICP\\u590788888888\\u53f7-8\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019-2021 All right reserved\",\"url\":\"harmony_cms.ok5168.com\",\"address\":\"\\u5c71\\u4e1c\\u00b7\\u6d4e\\u5357\\u00b7\\u9ec4\\u53f0\\u7535\\u5b50\\u5546\\u52a1\\u4ea7\\u4e1a\\u56edD\\u5ea7B-708\",\"contacts\":\"\\u738b\\u5148\\u751f\",\"tel\":\"010-87153386\",\"mobile_phone\":\"132 8531 1189\",\"fax\":\"010-87153386\",\"email\":\"127798@qq.com\",\"qq\":\"127798\",\"qrcode\":\"\\/uploads\\/20210305\\/73428cfdfb859ccc895514ce4ea5ed4c.jpg\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"ccpitsd\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (114, 1615367899, 1615367899, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (115, 1615367899, 1615367899, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (116, 1615367899, 1615367899, '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (117, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (118, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=4&back_url=type_id%3D1&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"4\",\"back_url\":\"type_id=1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (119, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"4\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/16757013863f8b353e8d17c1832ea2b7.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/bce791236b3281a06b9b1edb42944b56.jpg\",\"url\":\"http:\\/\\/www.ccpitsd.org.cn\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (120, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"1\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (121, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=3&back_url=type_id%3D1&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"3\",\"back_url\":\"type_id=1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (122, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"3\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/fc749a7bf991ab093dc643f7dab90926.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/270f4d8ffdc73147ba7b453942ee0dc1.jpg\",\"url\":\"http:\\/\\/www.ccpitsd.org.cn\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (123, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"1\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (124, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=2&back_url=type_id%3D1&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"2\",\"back_url\":\"type_id=1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (125, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"2\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/b2f11a0df511f1c757e24f0ca15d2365.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/461bac509cef918acb0df4e50a89c1b4.jpg\",\"url\":\"http:\\/\\/www.ccpitsd.org.cn\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (126, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"1\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (127, 1615367899, 1615367899, '1', '/admin/Ad/edit.html?id=1&back_url=type_id%3D1&_layer=1', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"1\",\"back_url\":\"type_id=1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (128, 1615367899, 1615367899, '1', '/admin/Ad/editPost.html', '[网站功能] -> [广告管理] -> [操作-修改保存]', '{\"id\":\"1\",\"type_id\":\"1\",\"name\":\"\\u4e2d\\u56fd\\u56fd\\u9645\\u8d38\\u6613\\u4fc3\\u8fdb\\u59d4\\u5458\\u4f1a\",\"image\":\"\\/uploads\\/20210310\\/e7adaf2071ad07f1739f44b658571bbe.jpg\",\"file\":\"\",\"thumb\":\"\\/uploads\\/20210310\\/feff9932a29378133402511cba0242f2.jpg\",\"url\":\"http:\\/\\/www.ccpitsd.org.cn\",\"description\":\"\\u5c71\\u4e1c\\u7701\\u59d4\\u5458\\u4f1a\",\"status\":\"1\",\"sort\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (129, 1615367899, 1615367899, '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"1\",\"name\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (130, 1615367899, 1615367899, '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (131, 1615367899, 1615367899, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (132, 1615367899, 1615367899, '1', '/admin/Users/index.html?_pjax=.content-wrapper', '[会员管理] -> [会员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (133, 1615367899, 1615367899, '1', '/admin/Users/index.html?getList=1', '[会员管理] -> [会员管理]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"email\":\"\",\"sex\":\"\",\"last_login_ip\":\"\",\"qq\":\"\",\"mobile\":\"\",\"mobile_validated\":\"\",\"email_validated\":\"\",\"type_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (134, 1615369749, 1615369749, '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (135, 1615369749, 1615369749, '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (136, 1615369763, 1615369763, '1', '/admin/Download/index.html?_pjax=.content-wrapper', '[内容管理] -> [下载模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (137, 1615369763, 1615369763, '1', '/admin/Download/index.html?getList=1', '[内容管理] -> [下载模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (138, 1615369803, 1615369803, '1', '/admin/Download/edit.html?id=1&_layer=1', '[内容管理] -> [下载模块] -> [操作-修改]', '{\"id\":\"1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (139, 1615369857, 1615369857, '1', '/admin/Download/edit.html?id=2&_layer=1', '[内容管理] -> [下载模块] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (140, 1615369929, 1615369929, '1', '/admin/Download/del.html', '[内容管理] -> [下载模块] -> [操作-删除]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (141, 1615369929, 1615369929, '1', '/admin/Download/index.html?getList=1', '[内容管理] -> [下载模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (142, 1615369936, 1615369936, '1', '/admin/Download/del.html', '[内容管理] -> [下载模块] -> [操作-删除]', '{\"id\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (143, 1615369936, 1615369936, '1', '/admin/Download/index.html?getList=1', '[内容管理] -> [下载模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (144, 1615369950, 1615369950, '1', '/admin/Download/index.html', '[内容管理] -> [下载模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (145, 1615369951, 1615369951, '1', '/admin/Download/index.html?getList=1', '[内容管理] -> [下载模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (146, 1615370039, 1615370039, '1', '/admin/Download/edit.html?id=1&_layer=1', '[内容管理] -> [下载模块] -> [操作-修改]', '{\"id\":\"1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (147, 1615370142, 1615370142, '1', '/admin/Download/index.html?getList=1', '[内容管理] -> [下载模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (148, 1615370157, 1615370157, '1', '/admin/Download/index.html?_pjax=.content-wrapper', '[内容管理] -> [下载模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (149, 1615370157, 1615370157, '1', '/admin/Download/index.html?getList=1', '[内容管理] -> [下载模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (150, 1615370550, 1615370550, '1', '/admin/Page/index.html?_pjax=.content-wrapper', '[内容管理] -> [单页模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (151, 1615370550, 1615370550, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (152, 1615370555, 1615370555, '1', '/admin/Page/edit.html?id=1&_layer=1', '[内容管理] -> [单页模块] -> [操作-修改]', '{\"id\":\"1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (153, 1615370992, 1615370992, '1', '/admin/Page/editPost.html', '[内容管理] -> [单页模块] -> [操作-修改保存]', '{\"id\":\"1\",\"cate_id\":\"1\",\"title\":\"\\u5173\\u4e8e\\u6211\\u4eec\",\"status\":\"1\",\"sort\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (154, 1615370992, 1615370992, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (155, 1615371034, 1615371034, '1', '/admin/Page/edit.html?id=3&_layer=1', '[内容管理] -> [单页模块] -> [操作-修改]', '{\"id\":\"3\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (156, 1615371054, 1615371054, '1', '/admin/Page/edit.html?id=1&_layer=1', '[内容管理] -> [单页模块] -> [操作-修改]', '{\"id\":\"1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (157, 1615371327, 1615371327, '1', '/admin/Page/editPost.html', '[内容管理] -> [单页模块] -> [操作-修改保存]', '{\"id\":\"1\",\"cate_id\":\"1\",\"title\":\"\\u5173\\u4e8e\\u6211\\u4eec\",\"status\":\"1\",\"sort\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (158, 1615371328, 1615371328, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (159, 1615371331, 1615371331, '1', '/admin/Page/edit.html?id=2&_layer=1', '[内容管理] -> [单页模块] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (160, 1615371337, 1615371337, '1', '/admin/Page/editPost.html', '[内容管理] -> [单页模块] -> [操作-修改保存]', '{\"id\":\"2\",\"cate_id\":\"2\",\"title\":\"\\u516c\\u53f8\\u4ecb\\u7ecd\",\"status\":\"1\",\"sort\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (161, 1615371338, 1615371338, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (162, 1615371340, 1615371340, '1', '/admin/Page/edit.html?id=3&_layer=1', '[内容管理] -> [单页模块] -> [操作-修改]', '{\"id\":\"3\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (163, 1615371346, 1615371346, '1', '/admin/Page/editPost.html', '[内容管理] -> [单页模块] -> [操作-修改保存]', '{\"id\":\"3\",\"cate_id\":\"3\",\"title\":\"\\u516c\\u53f8\\u6587\\u5316\",\"status\":\"1\",\"sort\":\"12\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (164, 1615371346, 1615371346, '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (165, 1615371350, 1615371350, '1', '/admin/Page/edit.html?id=2&_layer=1', '[内容管理] -> [单页模块] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (166, 1615371355, 1615371355, '1', '/admin/Page/edit.html?id=3&_layer=1', '[内容管理] -> [单页模块] -> [操作-修改]', '{\"id\":\"3\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (167, 1615371405, 1615371405, '1', '/admin/Team/index.html?_pjax=.content-wrapper', '[内容管理] -> [团队模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (168, 1615371405, 1615371405, '1', '/admin/Team/index.html?getList=1', '[内容管理] -> [团队模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (169, 1615371422, 1615371422, '1', '/admin/Picture/index.html?_pjax=.content-wrapper', '[内容管理] -> [图片模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (170, 1615371422, 1615371422, '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (171, 1615371533, 1615371533, '1', '/admin/Picture/edit.html?id=1&_layer=1', '[内容管理] -> [图片模块] -> [操作-修改]', '{\"id\":\"1\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (172, 1615371828, 1615371828, '1', '/admin/Picture/editPost.html', '[内容管理] -> [图片模块] -> [操作-修改保存]', '{\"id\":\"1\",\"cate_id\":\"7\",\"title\":\"\\u8d44\\u8d28\\u8363\\u8a89\\u540d\\u79f0\",\"author\":\"\\u7ba1\\u7406\\u5458\",\"source\":\"\\u672c\\u7ad9\",\"summary\":\"\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\",\"image\":\"\\/uploads\\/20181224\\/df4a0aaf70da70634efb8c682c50a8df.jpg\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"0\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (173, 1615371828, 1615371828, '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (174, 1615371840, 1615371840, '1', '/admin/Picture/edit.html?id=2&_layer=1', '[内容管理] -> [图片模块] -> [操作-修改]', '{\"id\":\"2\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (175, 1615371862, 1615371862, '1', '/admin/Picture/editPost.html', '[内容管理] -> [图片模块] -> [操作-修改保存]', '{\"id\":\"2\",\"cate_id\":\"7\",\"title\":\"\\u8d44\\u8d28\\u8363\\u8a89\\u540d\\u79f0\",\"author\":\"\\u7ba1\\u7406\\u5458\",\"source\":\"\\u672c\\u7ad9\",\"summary\":\"\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\",\"image\":\"\\/uploads\\/20181224\\/acb269b78bf5a08dda27ae155768e688.jpg\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"0\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (176, 1615371862, 1615371862, '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (177, 1615371865, 1615371865, '1', '/admin/Picture/edit.html?id=3&_layer=1', '[内容管理] -> [图片模块] -> [操作-修改]', '{\"id\":\"3\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (178, 1615371878, 1615371878, '1', '/admin/Picture/editPost.html', '[内容管理] -> [图片模块] -> [操作-修改保存]', '{\"id\":\"3\",\"cate_id\":\"7\",\"title\":\"\\u8d44\\u8d28\\u8363\\u8a89\\u540d\\u79f0\",\"author\":\"\\u7ba1\\u7406\\u5458\",\"source\":\"\\u672c\\u7ad9\",\"summary\":\"\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\",\"image\":\"\\/uploads\\/20181224\\/dd30ed06a39d73f8bbc8012741a3010a.jpg\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"0\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (179, 1615371878, 1615371878, '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (180, 1615371880, 1615371880, '1', '/admin/Picture/edit.html?id=4&_layer=1', '[内容管理] -> [图片模块] -> [操作-修改]', '{\"id\":\"4\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (181, 1615371895, 1615371895, '1', '/admin/Picture/editPost.html', '[内容管理] -> [图片模块] -> [操作-修改保存]', '{\"id\":\"4\",\"cate_id\":\"7\",\"title\":\"\\u8d44\\u8d28\\u8363\\u8a89\\u540d\\u79f0\",\"author\":\"\\u7ba1\\u7406\\u5458\",\"source\":\"\\u672c\\u7ad9\",\"summary\":\"\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\",\"image\":\"\\/uploads\\/20181224\\/10ba9f34431727269dbeadae6dc786f8.jpg\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"0\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (182, 1615371895, 1615371895, '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (183, 1615371898, 1615371898, '1', '/admin/Picture/edit.html?id=5&_layer=1', '[内容管理] -> [图片模块] -> [操作-修改]', '{\"id\":\"5\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (184, 1615371912, 1615371912, '1', '/admin/Picture/editPost.html', '[内容管理] -> [图片模块] -> [操作-修改保存]', '{\"id\":\"5\",\"cate_id\":\"7\",\"title\":\"\\u8d44\\u8d28\\u8363\\u8a89\\u540d\\u79f0\",\"author\":\"\\u7ba1\\u7406\\u5458\",\"source\":\"\\u672c\\u7ad9\",\"summary\":\"\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\",\"image\":\"\\/uploads\\/20181224\\/1806bd7cc4c2beaf6be64833a891671b.jpg\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"1\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (185, 1615371912, 1615371912, '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (186, 1615371914, 1615371914, '1', '/admin/Picture/edit.html?id=6&_layer=1', '[内容管理] -> [图片模块] -> [操作-修改]', '{\"id\":\"6\",\"_layer\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (187, 1615371927, 1615371927, '1', '/admin/Picture/editPost.html', '[内容管理] -> [图片模块] -> [操作-修改保存]', '{\"id\":\"6\",\"cate_id\":\"7\",\"title\":\"\\u8d44\\u8d28\\u8363\\u8a89\\u540d\\u79f0\",\"author\":\"\\u7ba1\\u7406\\u5458\",\"source\":\"\\u672c\\u7ad9\",\"summary\":\"\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\\u8363\\u8a89\\u8d44\\u8d28\\u8bf4\\u660e\\u5185\\u5bb9\",\"image\":\"\\/uploads\\/20181224\\/97e072ae3a03895617e6b8ef6dc73529.jpg\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"0\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (188, 1615371927, 1615371927, '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (189, 1615372409, 1615372409, '1', '/admin/Product/index.html?_pjax=.content-wrapper', '[内容管理] -> [产品模块]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (190, 1615372409, 1615372409, '1', '/admin/Product/index.html?getList=1', '[内容管理] -> [产品模块]', '{\"getList\":\"1\",\"pageSize\":\"10\",\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (191, 1615372976, 1615372976, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (192, 1615372976, 1615372976, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (193, 1615373036, 1615373036, '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"HarmonyCMS\",\"logo\":\"\\/uploads\\/20210310\\/Harmony_CMS_120.png\",\"file\":\"\",\"icp\":\"\\u4eacICP\\u590788888888\\u53f7-8\",\"copyright\":\"Copyright \\u00a9 HarmonyCMS 2019-2021 All right reserved\",\"url\":\"harmony_cms.ok5168.com\",\"address\":\"\\u5c71\\u4e1c\\u00b7\\u6d4e\\u5357\\u00b7\\u9ec4\\u53f0\\u7535\\u5b50\\u5546\\u52a1\\u4ea7\\u4e1a\\u56edD\\u5ea7B-708\",\"contacts\":\"\\u738b\\u5148\\u751f\",\"tel\":\"0531-87153386\",\"mobile_phone\":\"132 8531 1189\",\"fax\":\"010-87153386\",\"email\":\"127798@qq.com\",\"qq\":\"127798\",\"qrcode\":\"\\/uploads\\/20210310\\/qrcode.jpg\",\"title\":\"HarmonyCMS \\u5b98\\u7f51\",\"key\":\"HarmonyCMS\\uff0cHarmonyCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"HarmonyCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"ccpitsd\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"editor\":\"0\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (194, 1615373038, 1615373038, '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');
INSERT INTO `hc_admin_log` VALUES (195, 1615373038, 1615373038, '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');

-- ----------------------------
-- Table structure for hc_article
-- ----------------------------
DROP TABLE IF EXISTS `hc_article`;
CREATE TABLE `hc_article`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '来源',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片集',
  `download` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章模块' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_article
-- ----------------------------
INSERT INTO `hc_article` VALUES (1, 1615367899, 1615367899, 50, 1, 5, '为什么学习PHP？', '未知', 'php中文网', '<p>回答本书的几个问题吧。你到底，为什么要学习PHP？</p>\n\n<p>全国都缺PHP人才，非常好就业，PHP现在的工资水平很高，刚毕业可以拿到5000-9000每个月，特别优秀还可以破万。并且有非常多的就业机会。</p>\n\n<p>PHP入门简单，学习入门易入手。</p>\n\n<p>很多人反馈上完大学的C语言课程、java课程不会写任何东西。<br />\n诚然，中国的大学都以C语言作为主要的入门语言。但是，我们认为PHP是最简单入门，也是最合适入门的语言。</p>\n\n<p>你将学习到编程的思路，更加程序化的去处理问题。处理问题，将会更加规范化。</p>\n\n<p>如果你要创业，如果你要与互联网人沟通。未来互联网、移动互联网、信息化将会进一步围绕在你身边。你需要与人沟通，与人打交道。</p>\n\n<p>还有机会进入BAT（百度、阿里、腾讯），BAT这些企业他们在用PHP。国内和国外超一线的互联网公司，在超过90%在使用PHP来做手机API或者是网站。连微信等开放平台中的公众号的服务端也可以使用到PHP。</p>\n\n<p>大并发，还能免费。一天1个亿的访问量怎么办？PHP拥有大量优秀的开发者，在一定数据量的情况下完全能满足你的需求。国内外一线的互联网公司，很多将自己的大并发方案进行开源了。你可以免费获得很多成熟的、免费的、开源的大并发解决方案。</p>\n\n<p>开源更加节约成本也更加安全。windows很多都要收取授权费用，而使用linux的LAMP架构或者LNMP架构会更加安全。全球的黑客在帮你找漏洞。全球的工程师在帮忙修复漏洞。你发现一个他人已经消灭10个。</p>\n', '回答本书的几个问题吧。你到底，为什么要学习PHP？\n全国都缺PHP人才，非常好就业，PHP现在的工资水平很高，刚毕业可以拿到5000-9000每个月，特别优秀还可以破万。并且有非常多的就业机会。', '/uploads/20181224/168eb2135c7abbc3f2efcad91c7106e3.jpg', '', '', 'php', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (2, 1615367899, 1615367899, 50, 1, 5, 'PHP是什么', '未知', 'php中文网', '<p>PHP（外文名:PHP: Hypertext Preprocessor，中文名：&ldquo;超文本预处理器&rdquo;）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。</p>\n\n<p>用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。</p>\n\n<p>全球市场分析</p>\n\n<p>目前PHP在全球网页市场、手机网页市场还有为手机提供API（程序接口）排名第一。</p>\n\n<p>在中国微信开发大量使用PHP来进行开发。</p>\n', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。', '/uploads/20181224/fc3112ab0fab9f255726674dc1fd0d17.jpg', '', '', 'PHP', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (3, 1615367899, 1615367899, 50, 1, 5, '零基础也能学习', '未知', 'php中文网', '<p>学习PHP前很多人担心PHP是不是能真的学会。</p>\n\n<p>学习PHP学历要求不高，数学水平要求也不高，只需要会下面这些，你就可以跟着PHP中文网，开始愉快、高薪的PHP学习之旅：</p>\n\n<p>有一台电脑</p>\n\n<p>初中及以上文化水平</p>\n\n<p>必须会打字（五笔、拼音均可）</p>\n\n<p>会word（微软的office办公软件中的文字编辑软件）</p>\n\n<p>会上网（QQ，写邮件，玩微信，看小说，看电影，注册网站帐号，网上购物等）</p>\n\n<p>有一颗坚持的心</p>\n\n<p>如果会一点html就更好了.学习HTML可以去看我们开源的另外一本HTML入门书籍。</p>\n\n<p>不会HTML怎么办？也可以学习我们免费的HTML入门视频。</p>\n', '学习PHP前很多人担心PHP是不是能真的学会。\n学习PHP学历要求不高，数学水平要求也不高，只需要会下面这些，你就可以跟着PHP中文网，开始愉快、高薪的PHP学习之旅：\n有一台电脑', '/uploads/20181224/894485902f96b13551b5450c7ddca081.jpg', '', '', '零基础', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (4, 1615367899, 1615367899, 50, 1, 5, '为什么有些人学不会', '未知', 'php中文网', '<p>互联网进入到人们生活中的方方面面了，世界首富比尔盖茨多次提到青少年编程，而编程是一种思维习惯的转化。</p>\n\n<p>作为写了10几年程序的人，我听到过一些说编程不好学的抱怨。</p>\n\n<p>从目前见到的数据统计，主要是因为在大学学习时遇到了C语言，学完后还不知道能干什么。很多人大学上完也就这么糊涂、恐惧的就过来了。</p>\n\n<p>只有很少的不到1%的人学不会，这部份往往是专业的艺术家，在艺术家里面极少一部份人外，他们的思维模式和我们遇到的大多数人不太一样，并且不进行编程思维的训练，所以学不会。</p>\n\n<p>而造成这个原因主要是因为社会、文化、背景、生活圈子多方面造成的。而不是因为笨。</p>\n\n<p>那我们绝大多数的人是哪些原因学不会的呢？</p>\n\n<p>1. 不相信自己能学会</p>\n\n<p>这一块很多人可能不相信，涉及到很深的心理学知识。与心理暗示、诅咒的原理一样。</p>\n\n<p>如果不相信自己能够学好，心里潜意识的念头里如果总是：PHP很难，我学不会。那么这个人肯定很难学会。</p>\n\n<p>把不相信自己能学会的负面情绪和观念给抛掉。</p>\n\n<p>只要你每天练习代码并相信自己。你肯定能学会，并且能学得很好，代码写的很成功，成为大牛！</p>\n\n<p>2. 懒</p>\n\n<p>人的天性有善有恶，而学不好程序的人，身上的一个通病，只有一个字就是&mdash;&mdash;&mdash;&mdash;懒！<br />\n基本语法，需要去背<br />\n函数需要去默写</p>\n\n<p>3. 自以为是</p>\n\n<p>一看就会，一写就错。以为自己是神童。</p>\n\n<p>4. 英文单词</p>\n\n<p>计算机里面常用的英文单词就那么一些。</p>\n\n<p>不要找英语的借口。本书会把英语单词都会跟你标注出来。看到不会的，就去翻一翻。</p>\n\n<p>5. 不坚持</p>\n\n<p>学着学着就放弃了。</p>\n\n<p>6. 不去提问，不会提问，不去思考</p>\n\n<p>解决问题前，先去搜索</p>\n\n<p>搜索解决不了再去提问</p>\n\n<p>PHP学院为大家准备了视频，也为大家准备了问答中心。</p>\n\n<p>大多数的人，不把问题详述清楚，不把错误代码贴完整。</p>\n\n<p>张嘴就来提问。我想神仙也不知道你的问题是什么吧？问题发出来前。换位思考一下自己看不看得懂这个问题。</p>\n\n<p>7. 你还需要自我鼓励</p>\n\n<p>在学习过程中，你会否定自己。其实任何人都会。大多数人都会遇到跟你一样的困难。只不过他们在克服困难，而一些人在逃避困难。</p>\n\n<p>学累的时候，放松一会儿。再去多读几遍。不断的告诉自己，你就是最棒的！</p>\n\n<p>学会交流和倾诉而非抱怨，并且不断的自我鼓励</p>\n', '', '/uploads/20181224/b640f82ccf862c3b34e11f792220a1f5.jpg', '', '', '不会', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (5, 1615367899, 1615367899, 50, 1, 5, '开发环境是什么？', '未知', 'php中文网', '<p>PHP是一门开发语言。而开发语言写出来的代码，通常需要在指定的软件下才能运行。因此，我们写好的代码需要（运行）显示出来看到，就需要安装这几个软件来运行代码。</p>\n\n<p>我们把运行我们写代码的几个软件和运行代码的软件统一都可称为开发环境。</p>\n\n<p>新手学习前常遇到的环境问题</p>\n\n<p>很多朋友最开始学习的时候，听说某个环境好就安装某些软件。由于缺乏相关知识，所以没有主见。陷入人云即云的怪圈里。今天换这个，明天换那个。</p>\n\n<p>当前验证真理的唯一标准，请始终保证一点：</p>\n\n<p>环境能满足你的学习需求。不要在环境上面反复纠结，耽误宝贵的学习时间。</p>\n\n<p>我们认为环境只要能满足学习要求即可。等学会了后，再去着磨一些更加复杂的互联网线上的、生产环境中的具体配置。</p>\n', 'PHP是一门开发语言。而开发语言写出来的代码，通常需要在指定的软件下才能运行。因此，我们写好的代码需要（运行）显示出来看到，就需要安装这几个软件来运行代码。', '/uploads/20181224/a11e9ab3e8dc289dca70a105a7f177ee.jpg', '', '', '开发环境', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (6, 1615367899, 1615367899, 50, 1, 5, 'windows环境安装', '未知', 'php中文网', '<p>所谓服务器：不要把它想的太过于高深，不过就是提供一项特殊功能（服务）的电脑而已。</p>\n\n<p>显示网页的叫网页(web)服务器（server）。</p>\n\n<p>帮我们代为收发电子邮件(Email)的服务器叫邮件服务器。</p>\n\n<p>帮我们把各个游戏玩家连接在一起的叫游戏服务器。</p>\n\n<p>帮我们存储数据的叫数据库服务器</p>\n\n<p>... ...等等</p>\n\n<p>我们现在使用的一部手机的性能比10年前的一台电脑和服务器的性能还要强劲、给力。</p>\n\n<p>而我们的学习过程当中完全可以把自己使用的这一台windows电脑作为服务器来使用。</p>\n\n<p>原来如此，一讲就通了吧？</p>\n\n<p>我们大多数人使用的电脑通常是windows操作系统的电脑。而我们的讲解主要在windows电脑上进行。</p>\n\n<p>你不需要去理解所谓高深的电脑知识、操作系统原型等。在这一章节当中，你只需要会安装QQ、杀毒软件一样，点击：下一步、下一步即可完成本章的学习。</p>\n\n<p>在最开始学习时，我们强烈建议初学者使用集成环境包进行安装。</p>\n\n<p>什么是集成环境包？</p>\n\n<p>我们学习PHP要安装的东西有很多。例如：网页服务器、数据库服务器和PHP语言核心的解释器。</p>\n\n<p>我们可以分开安装各部份，也可以合在一起安装一个集成好的软件。</p>\n\n<p>将这些合在一起的一个软件我们就叫作：集成环境包。</p>\n\n<p>这个过程需要修改很多配置文件才能完成。并且每个人的电脑情况，权限，经常容易操作出错。</p>\n\n<p>很容易因为环境问题影响到心情，我们的学习计划在初期非常绝对化：</p>\n\n<p>请使用集成环境包完成最开始的学习。</p>\n\n<p>等你学好PHP NB后，你爱用啥用啥，网上成堆的文章教你配置各种环境。</p>\n\n<p>选用什么样的集成环境包？</p>\n\n<p>集成环境包比较多。以下的这些全是各种英文名。只不过代表的是不同集成环境包的名字，不用去深纠。如下所示：</p>\n\n<p>AppServ</p>\n\n<p>PHPStudy</p>\n\n<p>APMserv</p>\n\n<p>XAMPP</p>\n\n<p>WAMPServer<br />\n... ...等等</p>\n\n<p>对于我们才入门的学习者来说，选择集成环境包的原则：</p>\n\n<p>更新快，版本比较新</p>\n\n<p>操作简单易于上手</p>\n\n<p>选择项不要过多</p>\n\n<p>因此，我们下面使用的集成环境包是：PHPstudy。当然，如果你对此块很熟悉了，也可以自行选择选择集成环境包。</p>\n\n<p>可以以在官方网址下载：<br />\nhttp://www.phpstudy.net/&nbsp;</p>\n\n<p>也可以在百度中搜索：*PHPstudy *&nbsp;&nbsp;这个5个字文字母进行下载。</p>\n\n<p>对学习PHP的新手来说，WINDOWS下PHP环境配置是一件很困难的事，就是老手也是一件烦琐的事。因此，无论你是新手还是老手，phpStudy 2016都是一个不错的选择，该程序集成Apache+PHP+MySQL+phpMyAdmin+ZendOptimizer，最新版本已集成最新的&nbsp;PHP7。</p>\n', '所谓服务器：不要把它想的太过于高深，不过就是提供一项特殊功能（服务）的电脑而已。\n显示网页的叫网页(web)服务器（server）。', '/uploads/20181224/f5421f965b0f46d9c1b8f1a927df7894.jpg', '', '', '开发环境', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (7, 1615367899, 1615367899, 50, 1, 5, 'Linux环境安装', '未知', 'php中文网', '<p>这一个章节是本书中永远不会写的一个章节，很多人被一些市面上的书籍误导，认为学习PHP前要学习Linux。结果，一看Linux，就对人生和学习失去了希望。我们作为有过10年以上开发经验和内部训经验的专业人士告戒各位：</p>\n\n<p>Linux学习与PHP学习没有必然的联系，这是两个不同的知识体系。</p>\n\n<p>作为有多年开发经验和教学经验的我们。</p>\n\n<p>我们强烈不建议没有接触过Linux的学生，为了学习PHP而去安装Linux环境</p>\n\n<p>如果您有经验，我们相信你一定能解决，如果解决不了。</p>\n\n<p>请加QQ群和访问官网：PHP中文网&nbsp;学习视频和提问。</p>\n', '这一个章节是本书中永远不会写的一个章节，很多人被一些市面上的书籍误导，认为学习PHP前要学习Linux。结果，一看Linux，就对人生和学习失去了希望。我们作为有过10年以上开发经验和内部训经验的专业人士告戒各位：', '/uploads/20181224/5cd61fb68c8bc8fe6d24be4229ec0ca5.jpg', '', '', '开发环境', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (8, 1615367899, 1615367899, 50, 1, 5, '其他开发环境', '未知', 'php中文网', '<p>对本章不感兴趣，可以略过，只是介绍和说明。</p>\n\n<p>其他开发环境有很多：</p>\n\n<p>1，比如 苹果电脑的系统 Mac os</p>\n\n<p>2，比如 &nbsp;在线环境（你使用了百度、新浪、阿里等云计算环境）</p>\n\n<p>3，其他更多... ...</p>\n\n<p>当然，你甚至可以使用安卓手机和苹果手机来部署你的开发环境。就像有些人可以在各种复杂的环境，甚至U衣酷的试衣间里M..L。我想，这应该不是正常人类该进行的尝试吧。</p>\n\n<p>如果你在使用这些环境遇到了问题，相信你已经有过一定的开发经验和处理问题的经验了，这不是刚开始学习编程该掌握的内容。</p>\n\n<p>但是，如果你真遇到了这些问题。你可以上PHP中文网来提问。</p>\n', '对本章不感兴趣，可以略过，只是介绍和说明。\n其他开发环境有很多：\n1，比如 苹果电脑的系统 Mac os\n2，比如  在线环境（你使用了百度、新浪、阿里等云计算环境）\n3，其他更多... ...', '', '', '', '开发环境,其他', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (9, 1615367899, 1615367899, 50, 1, 5, '写代码的工具选择', '未知', 'php中文网', '<p>写代码的工具有很多。对于刚开始学习PHP的朋友来说。选择工具有几个原则：</p>\n\n<p>1，不要使用带自动提示的工具（例如eclipse、zend studio等PHP开发工具集）</p>\n\n<p>2，写完的代码必须要有颜色高亮显示。（不能使用：txt文本编辑器等无代码颜色显示的编辑器）</p>\n\n<p>你可能想问，为什么呀？</p>\n\n<p>我们发现电视、电影和现实生活中的编程高手，噼里哗啦就写一堆代码，一点都不报错，点击就能运行。而我们对着他们的代码抄袭反倒抄错。这种感觉特别不好！！！</p>\n\n<p>&mdash;&mdash;传说中的这些高手，他们都曾经在基础代码上反复练习过，所以他们不会写错。</p>\n\n<p>而我们需要高手之境界，在学习初期就不能使用先进的工具。这样会浪费我们保贵的练习代码的机会、调试错误的机会。</p>\n\n<p>因为先进的编辑器通常有很多先进的功能，例如：</p>\n\n<p>代码自动显示错误</p>\n\n<p>代码自动换行</p>\n\n<p>这些先进的工具，对于开始入门学习的你，不利于新手产生独立解决问题的能力！</p>\n\n<p>推荐的开发工具</p>\n\n<p>1. NotePad++&nbsp;</p>\n\n<p>https://notepad-plus-plus.org/&nbsp;由于某些不可抗的原因，请使用百度搜索NotePad++&nbsp;</p>\n\n<p>2.phpstorm（强烈推荐）</p>\n\n<p>https://www.jetbrains.com/phpstorm/&nbsp;</p>\n\n<p>这些工具，你只需要下载下来，一直点击下一步，安装到你的电脑上即可。</p>\n', '写代码的工具有很多。对于刚开始学习PHP的朋友来说。选择工具有几个原则：\n1，不要使用带自动提示的工具（例如eclipse、zend studio等PHP开发工具集）\n2，写完的代码必须要有颜色高亮显示。（不能使用：txt文本编辑器等无代码颜色显示的编辑器）', '', '', '', '代码工具', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (10, 1615367899, 1615367899, 50, 1, 5, 'php中的变量－读过初中你就会变量', '未知', 'php中文网', '<p>大家在读初中的时候呀。老师经常会这么教大家。</p>\n\n<p>请问，李磊和韩梅梅同学，假如：</p>\n\n<p>x&nbsp;=&nbsp;5<br />\ny&nbsp;=&nbsp;6</p>\n\n<p>那么x + y 等于多少呢？大家会义无反顾的回答。x + y 等于11。</p>\n\n<p>接下来我们看下面的初中的数学知识，请问x + y 的结果是多少？</p>\n\n<p>x&nbsp;=&nbsp;5<br />\ny&nbsp;=&nbsp;6<br />\nx&nbsp;＝&nbsp;8</p>\n\n<p>我估计大家也会义无反顾的回答：x + y 的结果为14。</p>\n\n<p>这就是变量！</p>\n\n<p>变量的几个特点：</p>\n\n<p>1.x = 5 将右边值5，赋值给左边的x</p>\n\n<p>2.第二段x ＝ 8，最后x + y 的结果等于14，说明x在从上到下的运算（执行）中，可以被重新赋值。</p>\n\n<p>我们在PHP中的变量也是如此。不过有几个特点：</p>\n\n<p>1.必须要以$开始。如变量x必须要写成$x</p>\n\n<p>2.变量的首字母不能以数字开始</p>\n\n<p>3.变量的名字区分大小写</p>\n\n<p>4.变量不要用特殊符号、中文，_不算特殊符号</p>\n\n<p>5.变量命名要有意义（别写xxx，aaa，ccc这种 变量名）</p>\n\n<p>错误举列：</p>\n\n<p>错误：变量以数字开始</p>\n\n<p><!--?php<br/-->$123&nbsp;=&nbsp;345;<br />\n?&gt;</p>\n\n<p>错误：变量中有特殊字符，中文</p>\n\n<p><!--?php<br/-->//$a*d&nbsp;=&nbsp;345;<br />\n<br />\n//$中国&nbsp;=&nbsp;123;<br />\n?&gt;</p>\n\n<p>错误：变量命名没有意义aaa容易数错，也没有含意</p>\n\n<p><!--?php<br/-->$aaaaaaa&nbsp;=&nbsp;345;<br />\n?&gt;</p>\n\n<p>错误：变量严格区分大小写 $dog 和 $Dog是PHP学院的变量,尝试将$dog的值改为8.结果D写成了大写。</p>\n\n<p><!--?php<br/-->$dog&nbsp;=&nbsp;5;<br />\n//重新修改$dog的值，将$dog改为8<br />\n$Dog&nbsp;=&nbsp;8;<br />\n?&gt;</p>\n\n<p>正确举例：</p>\n\n<p>正确：变量不能以数字开始,但是数字可以夹在变量名中间和结尾</p>\n\n<p><!--?php<br/-->$iphone6&nbsp;=&nbsp;5880;<br />\n$iphone6plus&nbsp;=&nbsp;6088;<br />\n?&gt;</p>\n\n<p>正确：变量不能有特殊符号，但是_(下划线不算特殊符号)</p>\n\n<p><!--?php<br/-->$_cup&nbsp;=&nbsp;123;<br />\n?&gt;</p>\n\n<p>注：你会发现代码是从上向下执行的。</p>\n\n<p>$ 叫作美元符，英文单词：dollar。PHP的变量必须以美元符开始。说明搞PHP有&ldquo;钱&rdquo;途。</p>\n\n<p>dollar<br />\n读音：[&#39;dɒlə(r)]<br />\n解释：美元</p>\n', '大家在读初中的时候呀。老师经常会这么教大家。\n请问，李磊和韩梅梅同学，假如：', '', '', '', 'PHP变量', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (11, 1615367899, 1615367899, 50, 1, 5, 'echo 显示命令', '未知', 'php中文网', '<p>echo 是在PHP里面最常用的一个输出、显示功能的命令。</p>\n\n<p>我们可以让他显示任何可见的字符。</p>\n\n<p><!--?php<br/--><br />\necho&nbsp;123;<br />\n<br />\n?&gt;<br />\n<!--?php<br/--><br />\n$iphone&nbsp;=&nbsp;6088;<br />\n<br />\necho&nbsp;$iphone;<br />\n<br />\n?&gt;</p>\n\n<p>你可以对着做做实验。等下一章，我们讲数据类型的时候，我教大家输出中文和用PHP显示网页内容。</p>\n\n<p>单词：</p>\n\n<p>*echo *&nbsp;读音： [&#39;ekoʊ]<br />\n解释：发出回声；回响。<br />\n功能解释：输出、显示</p>\n', 'echo 是在PHP里面最常用的一个输出、显示功能的命令。\n我们可以让他显示任何可见的字符。', '', '', '', 'echo,echo命令', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (12, 1615367899, 1615367899, 50, 1, 5, 'php注释的学习', '未知', 'php中文网', '<p>注释的功能很强大</p>\n\n<p>所谓注释，汉语解释可以为：注解。更为准确一些。<br />\n因为代码是英文的、并且代码很长，时间长了人会忘。<br />\n所以我们会加上注释。</p>\n\n<p>注释的功能有很多：</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;1.对重点进行标注</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;2.时间长了容易忘快速回忆，方便查找</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;3.让其他人看的时候快速看懂</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;4.还可以生成文档，代码写完相关的文档就写完了，提高工作效率</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;5.注释、空行、回车之后的代码看起来更优美</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;6.注释可用来排错。不确定代码中哪一块写错了，可以将一大段注释，确定错误区间</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;7.注释中间的部份的内容，电脑不会执行它</p>\n\n<p>先给大家看看我们觉得优美的代码，整齐、规范、说明清楚、一看就懂。（不需要理解代码的含义）：</p>\n\n<p>&nbsp;</p>\n\n<p>再看看我们眼中觉得丑陋的代码，对齐丑陋不说，并且没有功能说明（不需要理解代码的含义）：</p>\n\n<p>&nbsp;</p>\n\n<p>我们了解了注释的好处，接下来我们来说PHP的注释，注释分别：</p>\n\n<p>单行注释（只注释一行）</p>\n\n<p>多行注释（注释多行）</p>\n\n<p>单行注释</p>\n\n<p>//&nbsp;&nbsp;&nbsp;表示单行注释<br />\n#&nbsp;&nbsp;&nbsp;&nbsp;#号也表示单行注释，用的比较少</p>\n\n<p>多行注释</p>\n\n<p>/*&nbsp;<br />\n多行注释&nbsp;这里是注释区域代码<br />\n&nbsp;*/</p>\n\n<p>单行注释举例：</p>\n\n<p><!--?php<br/--><br />\n//声明一部iphone6手机的价格变量<br />\n$iphone6_price&nbsp;=&nbsp;6088;<br />\n<br />\n//显示输出手机价格<br />\necho&nbsp;$iphone6_price;<br />\n?&gt;</p>\n\n<p>注：通过上例我们知道，注释通常写代码上面。</p>\n\n<p>多行注释举例：</p>\n\n<p><!--?php<br/-->/*<br />\n作者：PHP中文网<br />\n时间：2048.12.23<br />\n功能：这是一个假的多行注释的例子<br />\n*/<br />\n<br />\n/*<br />\n&nbsp;&nbsp;声明一个爱情变量<br />\n&nbsp;&nbsp;$love&nbsp;是指爱情<br />\n&nbsp;&nbsp;爱情是一个变量，因为人的爱总是在发生变化<br />\n&nbsp;&nbsp;所以，爱情变量的值为250<br />\n*/<br />\n$love&nbsp;=&nbsp;250;<br />\n<br />\n?&gt;</p>\n\n<p>注：通过上面的例子我们发现，我们要写上很多注释的时候，释用多行注释。</p>\n\n<p>注：暂进不讲解如何通过专门的工具生成注释</p>\n', '注释的功能很强大\n所谓注释，汉语解释可以为：注解。更为准确一些。\n因为代码是英文的、并且代码很长，时间长了人会忘。', '/uploads/20181224/2d208c7893a9981a6216b83ef9fcb11f.jpg', '', '', 'php,php注释', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (13, 1615367899, 1615367899, 50, 1, 5, 'php整型就是整数', '未知', 'php中文网', '<p>我&nbsp; &nbsp;一直在讲，不要被名词的含义所吓唬住。</p>\n\n<p>到底什么是整型呀？</p>\n\n<p>所谓整型，就是大家数学中所学的整数。</p>\n\n<p>整型&mdash;&mdash;整数也，英文称之:integer。英文简写：int</p>\n\n<p>整型分为：</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;1.10进行</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;2.8进制 （了解，基本不用）</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;3.16进制（了解，基本不用）</p>\n\n<p>整型（整数）在计算机里面是有最大值和最小值范围的。</p>\n\n<p>【了解知识点，开发中不常用】大家经常听说32位计算机，也就是32位计算机一次运算处理的最大范围为-232至232-1。<br />\n64位计算机呢？&mdash;&mdash;</p>\n\n<p>10 进制声明：</p>\n\n<p><!--?php<br-->//为了方便大家记忆和前期学习，英文不好的朋友也可用拼音来声明变量。以后再用英文来声明变量也无所谓<br />\n//声明变量&nbsp;整数，英文&nbsp;int<br />\n//$int&nbsp;=&nbsp;1000;<br />\n$zhengshu&nbsp;=&nbsp;1000;<br />\necho&nbsp;$zhengshu;<br />\n?&gt;</p>\n\n<p>8进制声明：&nbsp;以0开始，后面跟0-7的整数（了解知识点）</p>\n\n<p><!--?php<br-->//8进制的取值范围最大为0-7,即0,1,2,3,4,5,6,7<br />\n<br />\n$bajingzhi&nbsp;=&nbsp;&nbsp;033145;<br />\necho&nbsp;$bajingzhi;<br />\n<br />\n?&gt;</p>\n\n<p>16进制声明：&nbsp;以0x开始，后面跟0-f的，0x的abcdef不区分大小写。（了解知识点）</p>\n\n<p><!--?php<br-->//16进制的取值范围最大为0-f,即0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f<br />\n$shiliu&nbsp;=&nbsp;&nbsp;0x6ff;<br />\necho&nbsp;$shiliu;<br />\n?&gt;</p>\n\n<p>本章学习重点，学会如何声明10制制整数即可。了解8制制和16进制的声明，实在不会也不要紧。</p>\n\n<p>思维误区：容易去考虑8进制和16进制到底是怎么产生的。</p>\n', '我一直在讲，不要被名词的含义所吓唬住。\n到底什么是整型呀？\n所谓整型，就是大家数学中所学的整数。', '/uploads/20181224/588ac2b0eca6de73b61c125db692e020.jpg', '', '', 'php,php整型', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (14, 1615367899, 1615367899, 50, 1, 6, 'PHP中的流程控制', '未知', 'php中文网', '<p>流程控制就是人类社会的做事和思考和处理问题的方式和方法。通过本章，你将会发现采用计算机的思维去考虑问题，我们在做事的过程当中会更加严谨。</p>\n\n<p>我们通过一个一个的场景来去推理流程：</p>\n\n<p>有一个高富帅，他姓王。他的名字叫&mdash;&mdash;王。王同学计划要投资一个项目。如果这个项目计划开始，为了这个投资项目每周往返一次北京和大连。什么时候王思总同学不再往返呢？项目失败后或者万（da）集团临时除知除外，他就可以不再这么每周往返了。</p>\n\n<p>王同学呢，有一个好习惯，就是每次往返的时候，害怕自己到底一年往返了多少次。王同学都会在自己的记事本上记上往返的次数，第一次就写上一，第2次就写上2... ...直至最后项目停止。</p>\n\n<p>王同学家里头特别有钱，所以他的行程方式和正常人的又有些不同。不仅有更多的方式，而且王同学还迷信。</p>\n\n<p>他的出行方式呢有6种，如下：</p>\n\n<p>1，司机开车<br />\n2，民航<br />\n3，自己家的专机<br />\n4，火车动车<br />\n5，骑马<br />\n6，游轮</p>\n\n<p>每次王同学，都自己会在骰子上写上1，2，3，4，5，6。摇到哪种方式，王同学就会采用哪种方式进行往返两地。</p>\n\n<p>并且呢，王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候不同，他抵达后做的事情都不同，如下：</p>\n\n<p>半夜到达，先去夜店参加假面舞会<br />\n早上抵达，爱在酒店泡个澡<br />\n中午到达，会吃上一份神户牛肉<br />\n晚上到达，总爱去找朋友去述说一下心中的寂寞</p>\n\n<p>王同学在出行和项目中也是极度有计划性。他给自己的生活秘书和工作秘书分别指派了出差的行程：</p>\n\n<p>生活上：<br />\n先查天气，下雨带雨具和毛巾。不下雨要带防晒霜<br />\n雨具、毛巾和防晒霜的情况要提前检查，如果没有要及时买</p>\n\n<p>工作上：<br />\n要提前沟通去大连前的工作计划，准备好了要及时检查，检查合格，要提前打印现来。<br />\n及时没有及时准备好的情况下，要列出主要的项目沟通议题。</p>\n', '流程控制就是人类社会的做事和思考和处理问题的方式和方法。通过本章，你将会发现采用计算机的思维去考虑问题，我们在做事的过程当中会更加严谨。我们通过一个一个的场景来去推理流程：', '', '', '', 'php,php流程', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (15, 1615367899, 1615367899, 50, 1, 6, 'php流程控制之if条件结构流程', '未知', 'php中文网', '<p>if条件结构流程</p>\n\n<p>if和else 语句，在之前的3.2.5章节中已经做了说明。我们配合王思总同学的例子，再次进行说明，方便大家对此章节的理解。</p>\n\n<p>本章的知识点为：【默写级】</p>\n\n<p>基本语法，不能有半点马乎，完全是语法规范规定的，不这么写就错！</p>\n\n<p><!--?php <br/-->$week=date(&quot;4&quot;);<br />\n//判断星期小于6，则输出：还没到周末，继续上班.....<br />\nif&nbsp;($week&lt;&quot;6&quot;)&nbsp;{<br />\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&quot;还没到周末，继续上班.....&quot;;<br />\n}&nbsp;<br />\n?&gt;</p>\n\n<p>在之前我们也讲过，因此if的结构可以根据人类思维推理出来两种结构：</p>\n\n<p>//if单行判断<br />\nif(布尔值判断)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;只写一句话;<br />\n后续代码<br />\n//if多行判断<br />\nif(布尔值判断){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;可以写多句话;<br />\n}<br />\n后续代码</p>\n', 'if条件结构流程\nif和else 语句，在之前的3.2.5章节中已经做了说明。我们配合王思总同学的例子，再次进行说明，方便大家对此章节的理解。\n本章的知识点为：【默写级】', '', '', '', 'php,php流程', 0, '', '', '', '');
INSERT INTO `hc_article` VALUES (16, 1615367899, 1615367899, 50, 1, 6, 'PHP流程控制之if语句', '未知', 'php中文网', '<p>我们为了加强大家对代码的理解，我们串了一个故事恶搞了一个王思总同学。</p>\n\n<p>在4.1和3.2.5这两个章节中我们都介绍到了if和if...else结构。并且我们讲解的很清楚。</p>\n\n<p>我们现在来用if...else结构来写一个小东西，加强大家对逻辑的理解。</p>\n', '我们为了加强大家对代码的理解，我们串了一个故事恶搞了一个王思总同学。\n在4.1和3.2.5这两个章节中我们都介绍到了if和if...else结构。并且我们讲解的很清楚。\n我们现在来用if...else结构来写一个小东西，加强大家对逻辑的理解。', '', '', '', 'php,if', 45, '', '', '', '');
INSERT INTO `hc_article` VALUES (17, 1615367899, 1615367899, 50, 1, 6, 'PHP流程控制之嵌套if...else...elseif结构', '未知', 'php中文网', '<p>还记得本章开篇我们讲了一个王思总同学的例子：</p>\n\n<p>王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候做的事，他抵达后做的事情，如下：</p>\n\n<p>半夜到达，先去夜店参加假面舞会<br />\n&nbsp;早上抵达，爱在酒店泡个澡<br />\n&nbsp;中午到达，会吃上一份神户牛肉<br />\n&nbsp;晚上到达，总爱去找朋友去述说一下心中的寂寞</p>\n\n<p>我们来了解一下他的语法规则【知识点要求：默写】</p>\n\n<p><!--?php<br/-->if（判断语句1）{<br />\n&nbsp;&nbsp;&nbsp;&nbsp;执行语句体1<br />\n}elseif(判断语句2){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;执行语句体2<br />\n}else&nbsp;if(判断语句n){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;执行语句体n<br />\n}else{<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最后的else语句可选<br />\n}<br />\n<br />\n//后续代码<br />\n?&gt;</p>\n', '还记得本章开篇我们讲了一个王思总同学的例子：\n王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候做的事，他抵达后做的事情。', '', '', '', 'if', 7, '', '', '', '');

-- ----------------------------
-- Table structure for hc_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `hc_auth_group`;
CREATE TABLE `hc_auth_group`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色组',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色组管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_auth_group
-- ----------------------------
INSERT INTO `hc_auth_group` VALUES (1, 1615367899, 1615367899, 1, '超级管理员', '0,157,92,93,94,95,96,97,98,99,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,171,172,173,174,175,176,268,269,270,271,272,273,274,275,276,158,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,106,107,108,109,110,111,112,113,114,115,100,101,102,103,104,105,159,163,164,165,166,167,168,169,170,160,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,39,40,41,42,43,44,45,46,47,48,187,177,178,179,180,181,182,183,184,185,186,161,49,50,51,52,53,54,55,56,57,58,69,70,71,72,73,74,75,76,77,78,59,60,61,62,63,64,65,66,67,68,79,80,81,82,83,84,85,86,87,88,162,1,2,3,4,5,6,7,8,29,30,31,32,33,34,35,36,37,38,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,260,261,262,263,264,265,266,267,');
INSERT INTO `hc_auth_group` VALUES (2, 1615367899, 1615367899, 1, '测试组', '0,157,92,93,95,99,9,10,12,16,19,20,22,26,171,174,268,269,271,274,277,278,158,116,117,119,123,125,126,128,132,134,106,107,109,113,100,101,105,159,163,164,165,166,167,169,170,160,136,137,139,143,147,148,150,154,39,40,42,46,187,177,178,180,184,281,161,49,50,52,56,69,70,72,76,59,60,62,66,79,80,82,86,162,1,2,4,8,29,30,32,36,188,189,190,192,196,199,200,202,206,209,210,212,216,219,220,222,226,229,230,232,236,239,240,242,246,249,252,256,258,260,261,262,263,264,265,266,267,');

-- ----------------------------
-- Table structure for hc_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `hc_auth_group_access`;
CREATE TABLE `hc_auth_group_access`  (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `create_time` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NULL DEFAULT 0 COMMENT '修改时间',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_auth_group_access
-- ----------------------------
INSERT INTO `hc_auth_group_access` VALUES (1, 1, 1615367899, 1615367899);
INSERT INTO `hc_auth_group_access` VALUES (2, 2, 1615367899, 1615367899);

-- ----------------------------
-- Table structure for hc_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `hc_auth_rule`;
CREATE TABLE `hc_auth_rule`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器/方法',
  `title` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜单状态',
  `condition` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sort` mediumint(8) NOT NULL DEFAULT 0 COMMENT '排序',
  `auth_open` tinyint(2) NULL DEFAULT 1,
  `icon` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `create_time` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `param` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 283 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_auth_rule
-- ----------------------------
INSERT INTO `hc_auth_rule` VALUES (1, 162, 'Users/index', '会员管理', 1, 1, '', 71, 1, 'fa fa-user', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (2, 1, 'Users/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (3, 1, 'Users/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (4, 1, 'Users/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (5, 1, 'Users/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (6, 1, 'Users/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (7, 1, 'Users/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (8, 1, 'Users/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (9, 157, 'DictionaryType/index', '字典类型', 1, 1, '', 12, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (10, 9, 'DictionaryType/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (11, 9, 'DictionaryType/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (12, 9, 'DictionaryType/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (13, 9, 'DictionaryType/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (14, 9, 'DictionaryType/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (15, 9, 'DictionaryType/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (16, 9, 'DictionaryType/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (17, 9, 'DictionaryType/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (18, 9, 'DictionaryType/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (19, 157, 'Dictionary/index', '字典数据', 1, 1, '', 13, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (20, 19, 'Dictionary/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (21, 19, 'Dictionary/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (22, 19, 'Dictionary/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (23, 19, 'Dictionary/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (24, 19, 'Dictionary/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (25, 19, 'Dictionary/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (26, 19, 'Dictionary/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (27, 19, 'Dictionary/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (28, 19, 'Dictionary/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (29, 162, 'UsersType/index', '会员分组', 1, 1, '', 72, 1, 'fa fa-users', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (30, 29, 'UsersType/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (31, 29, 'UsersType/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (32, 29, 'UsersType/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (33, 29, 'UsersType/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (34, 29, 'UsersType/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (35, 29, 'UsersType/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (36, 29, 'UsersType/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (37, 29, 'UsersType/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (38, 29, 'UsersType/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (39, 160, 'FieldGroup/index', '字段分组', 1, 1, '', 43, 1, 'fa fa-bullseye', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (40, 39, 'FieldGroup/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (41, 39, 'FieldGroup/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (42, 39, 'FieldGroup/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (43, 39, 'FieldGroup/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (44, 39, 'FieldGroup/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (45, 39, 'FieldGroup/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (46, 39, 'FieldGroup/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (47, 39, 'FieldGroup/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (48, 39, 'FieldGroup/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (49, 161, 'Link/index', '友情链接', 1, 1, '', 61, 1, 'fa fa-link', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (50, 49, 'Link/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (51, 49, 'Link/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (52, 49, 'Link/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (53, 49, 'Link/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (54, 49, 'Link/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (55, 49, 'Link/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (56, 49, 'Link/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (57, 49, 'Link/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (58, 49, 'Link/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (59, 161, 'AdType/index', '广告分组', 1, 1, '', 63, 1, 'fa fa-tv', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (60, 59, 'AdType/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (61, 59, 'AdType/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (62, 59, 'AdType/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (63, 59, 'AdType/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (64, 59, 'AdType/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (65, 59, 'AdType/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (66, 59, 'AdType/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (67, 59, 'AdType/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (68, 59, 'AdType/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (69, 161, 'Ad/index', '广告管理', 1, 1, '', 62, 1, 'fa fa-tv', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (70, 69, 'Ad/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (71, 69, 'Ad/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (72, 69, 'Ad/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (73, 69, 'Ad/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (74, 69, 'Ad/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (75, 69, 'Ad/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (76, 69, 'Ad/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (77, 69, 'Ad/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (78, 69, 'Ad/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (79, 161, 'Debris/index', '碎片管理', 1, 1, '', 64, 1, 'fa fa-gift', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (80, 79, 'Debris/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (81, 79, 'Debris/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (82, 79, 'Debris/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (83, 79, 'Debris/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (84, 79, 'Debris/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (85, 79, 'Debris/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (86, 79, 'Debris/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (87, 79, 'Debris/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (88, 79, 'Debris/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (92, 157, 'System/index', '系统设置', 1, 1, '', 11, 1, 'fa fa-cog', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (93, 92, 'System/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (94, 92, 'System/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (95, 92, 'System/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (96, 92, 'System/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (97, 92, 'System/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (98, 92, 'System/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (99, 92, 'System/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (100, 158, 'AdminLog/index', '管理员日志', 1, 1, '', 24, 1, 'fa fa-book', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (101, 100, 'AdminLog/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (102, 100, 'AdminLog/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (103, 100, 'AdminLog/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (104, 100, 'AdminLog/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (105, 100, 'AdminLog/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (106, 158, 'AuthRule/index', '菜单规则', 1, 1, '', 23, 1, 'fa fa-bars', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (107, 106, 'AuthRule/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (108, 106, 'AuthRule/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (109, 106, 'AuthRule/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (110, 106, 'AuthRule/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (111, 106, 'AuthRule/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (112, 106, 'AuthRule/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (113, 106, 'AuthRule/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (114, 106, 'AuthRule/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (115, 106, 'AuthRule/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (116, 158, 'Admin/index', '管理员管理', 1, 1, '', 21, 1, 'fa fa-user', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (117, 116, 'Admin/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (118, 116, 'Admin/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (119, 116, 'Admin/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (120, 116, 'Admin/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (121, 116, 'Admin/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (122, 116, 'Admin/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (123, 116, 'Admin/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (124, 116, 'Admin/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (125, 158, 'AuthGroup/index', '角色组管理', 1, 1, '', 22, 1, 'fas fa-user-shield', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (126, 125, 'AuthGroup/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (127, 125, 'AuthGroup/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (128, 125, 'AuthGroup/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (129, 125, 'AuthGroup/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (130, 125, 'AuthGroup/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (131, 125, 'AuthGroup/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (132, 125, 'AuthGroup/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (133, 125, 'AuthGroup/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (134, 125, 'AuthGroup/access', '操作-权限', 1, 0, '', 10, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (135, 125, 'AuthGroup/accessPost', '操作-权限保存', 1, 0, '', 11, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (136, 160, 'Module/index', '模块管理', 1, 1, '', 41, 1, 'fa fa-th-list', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (137, 136, 'Module/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (138, 136, 'Module/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (139, 136, 'Module/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (140, 136, 'Module/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (141, 136, 'Module/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (142, 136, 'Module/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (143, 136, 'Module/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (144, 136, 'Module/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (145, 136, 'Module/build', '操作-生成代码', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (146, 136, 'Module/makeRule', '操作-生成菜单规则', 1, 0, '', 10, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (147, 160, 'Field/index', '字段管理', 1, 1, '', 42, 1, 'fa fa-bullhorn', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (148, 147, 'Field/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (149, 147, 'Field/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (150, 147, 'Field/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (151, 147, 'Field/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (152, 147, 'Field/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (153, 147, 'Field/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (154, 147, 'Field/changeType', '操作-加载配置', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (155, 147, 'Field/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (156, 147, 'Field/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (157, 0, 'System', '系统管理', 1, 1, '', 1, 1, 'fa fa-cogs', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (158, 0, 'Auth', '权限管理', 1, 1, '', 2, 1, 'fas fa-user-cog', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (159, 0, 'Database', '数据库管理', 1, 1, '', 3, 1, 'fa fa-database', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (160, 0, 'Module', '模块管理', 1, 1, '', 4, 1, 'fa fa-bolt', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (161, 0, 'Link', '网站功能', 1, 1, '', 6, 1, 'fas fa-layer-group', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (162, 0, 'Users', '会员管理', 1, 1, '', 7, 1, 'fa fa-user', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (163, 159, 'Database/database', '数据库备份', 1, 1, '', 31, 1, 'fa fa-server', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (164, 163, 'Database/backup', '操作-备份', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (165, 163, 'Database/repair', '操作-修复', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (166, 163, 'Database/optimize', '操作-优化', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (167, 159, 'Database/restore', '数据库还原', 1, 1, '', 32, 1, 'fa fa-recycle', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (168, 167, 'Database/import', '操作-还原', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (169, 167, 'Database/downFile', '操作-下载', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (170, 167, 'Database/del', '操作-删除', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (171, 157, 'Config/email', '邮件配置', 1, 1, '', 14, 1, 'fas fa-envelope nav-icon', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (172, 171, 'Config/emailPost', '操作-修改保存', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (173, 171, 'Config/emailSend', '操作-测试邮箱', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (174, 157, 'Config/sms', '短信配置', 1, 1, '', 15, 1, 'fas fa-comment-dots', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (175, 174, 'Config/smsPost', '操作-修改保存', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (176, 174, 'Config/smsSend', '操作-测试短信', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (177, 187, 'Cate/index', '栏目管理', 1, 1, '', 51, 1, 'fas fa-th-list', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (178, 177, 'Cate/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (179, 177, 'Cate/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (180, 177, 'Cate/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (181, 177, 'Cate/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (182, 177, 'Cate/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (183, 177, 'Cate/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (184, 177, 'Cate/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (185, 177, 'Cate/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (186, 177, 'Cate/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (187, 0, 'Cate', '栏目管理', 1, 1, '', 5, 1, 'fa fa-th', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (188, 0, 'Page', '内容管理', 1, 1, '', 8, 1, 'fa fa-briefcase', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (189, 188, 'Page/index', '单页模块', 1, 1, '', 81, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (190, 189, 'Page/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (191, 189, 'Page/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (192, 189, 'Page/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (193, 189, 'Page/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (194, 189, 'Page/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (195, 189, 'Page/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (196, 189, 'Page/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (197, 189, 'Page/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (198, 189, 'Page/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (199, 188, 'Article/index', '文章模块', 1, 1, '', 82, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (200, 199, 'Article/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (201, 199, 'Article/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (202, 199, 'Article/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (203, 199, 'Article/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (204, 199, 'Article/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (205, 199, 'Article/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (206, 199, 'Article/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (207, 199, 'Article/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (208, 199, 'Article/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (209, 188, 'Picture/index', '图片模块', 1, 1, '', 83, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (210, 209, 'Picture/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (211, 209, 'Picture/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (212, 209, 'Picture/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (213, 209, 'Picture/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (214, 209, 'Picture/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (215, 209, 'Picture/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (216, 209, 'Picture/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (217, 209, 'Picture/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (218, 209, 'Picture/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (219, 188, 'Product/index', '产品模块', 1, 1, '', 84, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (220, 219, 'Product/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (221, 219, 'Product/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (222, 219, 'Product/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (223, 219, 'Product/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (224, 219, 'Product/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (225, 219, 'Product/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (226, 219, 'Product/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (227, 219, 'Product/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (228, 219, 'Product/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (229, 188, 'Download/index', '下载模块', 1, 1, '', 85, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (230, 229, 'Download/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (231, 229, 'Download/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (232, 229, 'Download/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (233, 229, 'Download/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (234, 229, 'Download/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (235, 229, 'Download/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (236, 229, 'Download/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (237, 229, 'Download/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (238, 229, 'Download/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (239, 188, 'Team/index', '团队模块', 1, 1, '', 86, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (240, 239, 'Team/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (241, 239, 'Team/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (242, 239, 'Team/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (243, 239, 'Team/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (244, 239, 'Team/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (245, 239, 'Team/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (246, 239, 'Team/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (247, 239, 'Team/sort', '操作-排序', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (248, 239, 'Team/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (249, 188, 'Message/index', '留言模块', 1, 1, '', 87, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (250, 249, 'Message/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (251, 249, 'Message/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (252, 249, 'Message/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (253, 249, 'Message/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (254, 249, 'Message/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (255, 249, 'Message/selectDel', '操作-批量删除', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (256, 249, 'Message/export', '操作-导出', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (257, 249, 'Message/state', '操作-状态', 1, 0, '', 9, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (258, 0, 'Demo', '实例演示', 1, 1, '', 9, 1, 'fa fa-desktop', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (260, 258, 'Demo/button', '按钮', 1, 1, '', 91, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (261, 258, 'Demo/icons', '图标', 1, 1, '', 92, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (262, 258, 'Demo/general', '常规', 1, 1, '', 93, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (263, 258, 'Demo/modals', '模态框', 1, 1, '', 94, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (264, 258, 'Demo/timeline', '时间轴', 1, 1, '', 95, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (265, 258, 'Demo/layer', '弹层', 1, 1, '', 96, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (266, 258, 'Demo/layerForm', 'layer表单', 1, 1, '', 97, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (267, 258, 'Demo/addPost', '提交演示', 1, 0, '', 98, 0, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (268, 157, 'Template/index', '模板管理', 1, 1, '', 16, 1, 'fa fa-code', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (269, 268, 'Template/add', '操作-添加', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (270, 268, 'Template/addPost', '操作-添加保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (271, 268, 'Template/edit', '操作-修改', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (272, 268, 'Template/editPost', '操作-修改保存', 1, 0, '', 4, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (273, 268, 'Template/del', '操作-删除', 1, 0, '', 5, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (274, 268, 'Template/img', '媒体文件-列表', 1, 0, '', 6, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (275, 268, 'Template/imgDel', '媒体文件-删除', 1, 0, '', 7, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (276, 268, 'Template/selectDel', '操作-批量删除', 1, 0, '', 8, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (277, 157, 'Plugin/index', '插件管理', 1, 1, '', 17, 1, 'fa fa-plug', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (278, 277, 'Plugin/config', '操作-配置', 1, 0, '', 1, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (279, 277, 'Plugin/configSave', '操作-配置保存', 1, 0, '', 2, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (280, 277, 'Plugin/state', '操作-安装/卸载', 1, 0, '', 3, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (281, 177, 'Cate/batchAdd', '操作-批量添加', 1, 0, '', 10, 1, '', 1615367899, 1615367899, '');
INSERT INTO `hc_auth_rule` VALUES (282, 177, 'Cate/batchAddPost', '操作-批量添加保存', 1, 0, '', 11, 1, '', 1615367899, 1615367899, '');

-- ----------------------------
-- Table structure for hc_cate
-- ----------------------------
DROP TABLE IF EXISTS `hc_cate`;
CREATE TABLE `hc_cate`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` int(8) UNSIGNED NOT NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  `cate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目名称',
  `en_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `cate_folder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目目录',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级栏目',
  `module_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属模块',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '外部链接',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目图片',
  `ico_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'ICO图片',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `template_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_show` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详情模版',
  `page_size` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '分页条数',
  `is_menu` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '导航状态',
  `is_next` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '跳转下级',
  `is_blank` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '新窗口打开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '栏目管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_cate
-- ----------------------------
INSERT INTO `hc_cate` VALUES (1, 1615367899, 1615367899, 1, 1, '关于我们', 'About Us', 'about', 0, 18, '', '/uploads/20181224/65ea8dcb1cbd16c8dc46144069afeaf5.jpg', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (2, 1615367899, 1615367899, 11, 1, '公司介绍', 'Company Introduction', 'introduction', 1, 18, '', '', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (3, 1615367899, 1615367899, 12, 1, '公司文化', 'culture', 'culture', 1, 18, '', '', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (4, 1615367899, 1615367899, 2, 1, '新闻中心', 'News Center', 'news', 0, 19, '', '/uploads/20181224/65ea8dcb1cbd16c8dc46144069afeaf5.jpg', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (5, 1615367899, 1615367899, 21, 1, '公司新闻', '', '', 4, 19, '', '', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (6, 1615367899, 1615367899, 22, 1, '行业资讯', 'Industry Information', 'information', 4, 19, '', '', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (7, 1615367899, 1615367899, 3, 1, '资质荣誉', 'Qualifications & Honours', 'honours', 0, 21, '', '/uploads/20181224/bf913edfcd8dcdeeec910860f12a0542.jpg', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (8, 1615367899, 1615367899, 4, 1, '产品中心', 'Pdoduct  Center', 'product', 0, 22, '', '/uploads/20181224/643f5b9e297a0bd3accd79981ce347a1.jpg', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (9, 1615367899, 1615367899, 41, 1, '精选产品', '', '', 8, 22, '', '', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (10, 1615367899, 1615367899, 42, 1, '热销产品', '', '', 8, 22, '', '', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (11, 1615367899, 1615367899, 5, 1, '资料下载', 'Download', 'download', 0, 23, '', '/uploads/20181224/f4ef6f5df6abac86e8c685b2f2549079.jpg', '', '', '', '', '', '', '', '0', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (12, 1615367899, 1615367899, 6, 1, '优秀团队', 'Team', 'team', 0, 24, '', '/uploads/20181224/bf3d6e8ff8f21760572ac25dd216daf9.jpg', '', '', '', '', '', '', '', '4', 1, 0, 0);
INSERT INTO `hc_cate` VALUES (13, 1615367899, 1615367899, 7, 1, '联系我们', 'Contact Us', 'contact', 0, 25, '', '/uploads/20181224/65ea8dcb1cbd16c8dc46144069afeaf5.jpg', '', '', '', '', '', '', '', '0', 1, 0, 0);

-- ----------------------------
-- Table structure for hc_config
-- ----------------------------
DROP TABLE IF EXISTS `hc_config`;
CREATE TABLE `hc_config`  (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_config
-- ----------------------------
INSERT INTO `hc_config` VALUES (60, 'smhc_server', 'smtp.qq.com', 'smtp', '0');
INSERT INTO `hc_config` VALUES (61, 'smhc_port', '465', 'smtp', '0');
INSERT INTO `hc_config` VALUES (62, 'smhc_user', '127798@qq.com', 'smtp', '0');
INSERT INTO `hc_config` VALUES (63, 'smhc_pwd', '12345678', 'smtp', '0');
INSERT INTO `hc_config` VALUES (64, 'regis_smhc_enable', '测试', 'smtp', '0');
INSERT INTO `hc_config` VALUES (65, 'test_eamil', '127798@qq.com', 'smtp', '0');
INSERT INTO `hc_config` VALUES (88, 'email_id', 'HarmonyCMS', 'smtp', '0');
INSERT INTO `hc_config` VALUES (89, 'test_eamil_info', '<p>您好！这是一封来自HarmonyCMS的测试邮件！</p>\n', 'smtp', '0');
INSERT INTO `hc_config` VALUES (90, 'accessKeyId', '', 'sms', NULL);
INSERT INTO `hc_config` VALUES (91, 'accessKeySecret', '', 'sms', NULL);
INSERT INTO `hc_config` VALUES (92, 'templateCode', '', 'sms', NULL);
INSERT INTO `hc_config` VALUES (93, 'signName', '', 'sms', NULL);
INSERT INTO `hc_config` VALUES (94, 'test_mobile', '', 'sms', NULL);

-- ----------------------------
-- Table structure for hc_debris
-- ----------------------------
DROP TABLE IF EXISTS `hc_debris`;
CREATE TABLE `hc_debris`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '碎片标题',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '调用名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '碎片内容',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '碎片列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_debris
-- ----------------------------
INSERT INTO `hc_debris` VALUES (1, 1615367899, 1615367899, 1, 1, '关于我们', 'AboutUs', '<p>HarmonyCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。<br />\nHarmonyCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。&nbsp;&nbsp;</p>\n\n<p>&nbsp;</p>\n', '', '', '首页调用');

-- ----------------------------
-- Table structure for hc_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `hc_dictionary`;
CREATE TABLE `hc_dictionary`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `sort` int(5) UNSIGNED NOT NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_dictionary
-- ----------------------------
INSERT INTO `hc_dictionary` VALUES (1, '显示', '1', '1', '显示', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (2, '隐藏', '0', '1', '隐藏', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (3, '是', '1', '2', '是', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (4, '否', '0', '2', '否', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (5, 'CMS', '1', '3', 'CMS', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (6, '后台', '2', '3', '后台', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (7, '保密', '0', '4', '', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (8, '男', '1', '4', '', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (9, '女', '2', '4', '', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (10, '已验证', '1', '5', '', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (11, '未验证', '0', '5', '', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (12, '新增', 'add', '6', '新增按钮', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (13, '修改', 'edit', '6', '修改按钮', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (14, '删除', 'del', '6', '批量删除按钮', 1615367899, 1615367899, 3, 1);
INSERT INTO `hc_dictionary` VALUES (15, '导出', 'export', '6', '导出按钮', 1615367899, 1615367899, 4, 1);
INSERT INTO `hc_dictionary` VALUES (16, '修改', 'edit', '7', '修改按钮', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (17, '删除', 'delete', '7', '删除按钮', 1615367899, 1615367899, 3, 1);
INSERT INTO `hc_dictionary` VALUES (18, '开启', '1', '8', '开启', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (19, '关闭', '0', '8', '关闭', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (20, '字段本身', '0', '9', '字段本身', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (21, '系统字典', '1', '9', '系统字典', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (22, '模型数据', '2', '9', '模型数据', 1615367899, 1615367899, 3, 1);
INSERT INTO `hc_dictionary` VALUES (23, '国内', '1', '10', '', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (24, '国外', '2', '10', '', 1615367899, 1615367899, 2, 1);
INSERT INTO `hc_dictionary` VALUES (25, '预览', 'preview', '7', '预览按钮', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (26, '本地上传', '1', '11', '本地上传', 1615367899, 1615367899, 1, 1);
INSERT INTO `hc_dictionary` VALUES (27, 'CKEditor', '0', '12', 'CKEditor', 1615367899, 1615367899, 1, 1);

-- ----------------------------
-- Table structure for hc_dictionary_type
-- ----------------------------
DROP TABLE IF EXISTS `hc_dictionary_type`;
CREATE TABLE `hc_dictionary_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dict_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典名称',
  `status` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `sort` int(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_dictionary_type
-- ----------------------------
INSERT INTO `hc_dictionary_type` VALUES (1, '显示状态', 1, 1615367899, 1615367899, '1 显示， 0 隐藏', 1);
INSERT INTO `hc_dictionary_type` VALUES (2, '系统是否', 1, 1615367899, 1615367899, '1 是， 0 否', 2);
INSERT INTO `hc_dictionary_type` VALUES (3, '表类型', 1, 1615367899, 1615367899, '1 CMS,2 后台', 7);
INSERT INTO `hc_dictionary_type` VALUES (4, '性别', 1, 1615367899, 1615367899, '0 保密，1 男，2 女', 9);
INSERT INTO `hc_dictionary_type` VALUES (5, '验证状态', 1, 1615367899, 1615367899, '1 已验证， 0 未验证	', 4);
INSERT INTO `hc_dictionary_type` VALUES (6, '顶部按钮', 1, 1615367899, 1615367899, '列表页顶部按钮组', 5);
INSERT INTO `hc_dictionary_type` VALUES (7, '右侧按钮', 1, 1615367899, 1615367899, '列表页右侧按钮组', 6);
INSERT INTO `hc_dictionary_type` VALUES (8, '开关状态', 1, 1615367899, 1615367899, '1 开启， 0 关闭	', 3);
INSERT INTO `hc_dictionary_type` VALUES (9, '数据源', 1, 1615367899, 1615367899, '0 字段本身，1 系统字典， 2  模型数据', 8);
INSERT INTO `hc_dictionary_type` VALUES (10, '所属地区', 1, 1615367899, 1615367899, '', 10);
INSERT INTO `hc_dictionary_type` VALUES (11, '上传驱动', 1, 1615367899, 1615367899, '上传驱动', 11);
INSERT INTO `hc_dictionary_type` VALUES (12, '编辑器', 1, 1615367899, 1615367899, '编辑器', 12);

-- ----------------------------
-- Table structure for hc_download
-- ----------------------------
DROP TABLE IF EXISTS `hc_download`;
CREATE TABLE `hc_download`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '来源',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片集',
  `download` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '下载模块' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_download
-- ----------------------------
INSERT INTO `hc_download` VALUES (1, 1615367899, 1615367899, 50, 1, 11, '报名表格下载', '管理员', '本站', '', '', '/uploads/20210310/1.jpg', '', '/uploads/20210310/1.rar', '', 0, '', '', '', '');

-- ----------------------------
-- Table structure for hc_field
-- ----------------------------
DROP TABLE IF EXISTS `hc_field`;
CREATE TABLE `hc_field`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属模块',
  `field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字段名',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字段别名',
  `tips` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '提示信息',
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否必填',
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最小长度',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大长度',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字段类型',
  `data_source` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '数据源',
  `relation_model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模型关联',
  `relation_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '展示字段',
  `dict_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `is_add` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可插入',
  `is_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可编辑',
  `is_list` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可列表展示',
  `is_search` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可查询',
  `is_sort` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可排序',
  `search_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '查询类型',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `setup` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '其他设置',
  `group_id` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '字段分组',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 350 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型字段表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_field
-- ----------------------------
INSERT INTO `hc_field` VALUES (1, 2, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 1, '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (2, 1, 'email', '邮箱', '', 1, 0, 100, 'text', 0, '', '', '', 1, 0, 1, 1, 0, '=', 1, 2, '邮箱', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (4, 3, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 1, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (6, 4, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 1, 0, '=', 1, 1, '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (7, 4, 'dict_name', '字典名称', '', 1, 0, 100, 'text', 0, '', '', '', 1, 1, 1, 1, 0, '=', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'char\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (9, 4, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '2', 1, 1, 1, 1, 0, '=', 1, 3, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (10, 4, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (11, 4, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 6, '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (12, 4, 'remark', '备注', '', 0, 0, 200, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (13, 5, 'dict_label', '字典标签', '通常用做展示，如：男,女', 1, 0, 100, 'text', 0, '', '', '', 1, 1, 1, 1, 0, '=', 1, 1, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (14, 5, 'dict_value', '字典键值', '通常用做键值，如：0,1', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 1, '=', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (15, 5, 'dict_type', '字典类型', '', 1, 0, 5, 'select', 2, 'DictionaryType', 'dict_name', '', 1, 1, 1, 1, 1, '=', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'char\',\n)', '0');
INSERT INTO `hc_field` VALUES (16, 5, 'remark', '备注', '', 0, 0, 200, 'textarea', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (17, 5, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 1, '=', 1, 50, '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (18, 5, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 1, '=', 1, 50, '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (19, 5, 'sort', '排序', '', 1, 0, 5, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 4, '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (20, 4, 'sort', '排序', '', 1, 0, 5, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 4, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (21, 5, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (22, 5, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 1, 1, '=', 1, 50, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (23, 3, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '', 'array (\r\n  \'default\' => \'0\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'int\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (24, 3, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '', 'array (\r\n  \'default\' => \'0\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'int\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (25, 3, 'sort', '排序', '', 1, 0, 5, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 8, '', 'array (\r\n  \'default\' => \'50\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (26, 3, 'module_name', '模块名称', '填写中文名称，如：友情链接', 1, 0, 100, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'like', 1, 2, '模块名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (27, 3, 'table_name', '表名称', '除去表前缀的数据表名称，全部小写并以`_`分割，如：user_group', 1, 0, 50, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'like', 1, 3, '表名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (28, 3, 'model_name', '模型名称', '除去表前缀的数据表名称，驼峰法命名，且首字母大写，如：UserGroup', 1, 0, 50, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'like', 1, 4, '模型名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (29, 3, 'table_comment', '表描述', '', 1, 0, 200, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 5, '表描述', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (30, 3, 'table_type', '表类型', '', 1, 0, 10, 'select', 1, '', '', '3', 1, 1, 1, 1, 0, '=', 1, 6, '表类型', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (31, 3, 'pk', '主键', '', 1, 0, 50, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 6, '主键', 'array (\n  \'default\' => \'id\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (32, 3, 'list_fields', '列表页字段', '', 1, 0, 255, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 9, '列表页字段', 'array (\r\n  \'default\' => \'*\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (33, 3, 'remark', '备注', '', 0, 0, 200, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 16, '', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (34, 6, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (35, 6, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (36, 6, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (37, 6, 'name', '分组名称', '', 1, 0, 100, 'text', 0, '', '', '', 1, 1, 1, 1, 1, '=', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (38, 6, 'remark', '描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (39, 6, 'sort', '排序', '', 1, 0, 5, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 4, '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (40, 6, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (41, 2, 'module_id', '所属模块', '', 1, 0, 3, 'select', 2, 'Module', 'module_name', '', 1, 1, 1, 1, 1, '=', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (42, 2, 'field', '字段名', '', 1, 0, 100, 'text', 0, '', '', '', 1, 1, 1, 1, 0, '=', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (43, 2, 'name', '字段别名', '', 1, 0, 100, 'text', 0, '', '', '', 1, 1, 1, 1, 0, '=', 1, 4, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (44, 2, 'tips', '提示信息', '', 0, 0, 200, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (45, 2, 'required', '是否必填', '', 1, 0, 1, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 6, '', 'array (\r\n  \'default\' => \'1\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'js_required\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (46, 2, 'minlength', '最小长度', '', 0, 0, 10, 'number', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (47, 2, 'maxlength', '最大长度', '', 0, 0, 10, 'number', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 8, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (48, 2, 'type', '字段类型', '', 1, 0, 20, 'text', 0, '', '', '', 1, 1, 1, 1, 1, '=', 1, 9, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (49, 2, 'data_source', '数据源', '', 0, 0, 10, 'number', 1, '', '', '9', 1, 1, 1, 1, 0, '=', 1, 10, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (50, 2, 'relation_model', '模型关联', '', 0, 0, 100, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 11, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (51, 2, 'relation_field', '展示字段', '', 0, 0, 100, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 12, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (52, 2, 'dict_code', '字典类型', '', 0, 0, 100, 'text', 2, 'DictionaryType', 'module_name', '', 1, 1, 1, 0, 0, '=', 1, 13, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (53, 2, 'is_add', '添加', '', 0, 0, 1, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 14, '', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'js_is_add\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (54, 2, 'is_edit', '修改', '', 0, 0, 1, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 15, '', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'js_is_edit\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (55, 2, 'is_list', '列表', '', 0, 0, 1, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 16, '', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'js_is_list\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (56, 2, 'is_search', '搜索', '', 0, 0, 1, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 17, '', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'js_is_search\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (57, 2, 'is_sort', '排序', '', 0, 0, 1, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 18, '', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'js_is_sort\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (58, 2, 'search_type', '查询类型', '', 0, 0, 100, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 19, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (59, 2, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 20, '', 'array (\r\n  \'default\' => \'1\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (60, 2, 'sort', '排序', '', 1, 0, 5, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 21, '', 'array (\r\n  \'default\' => \'50\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (61, 2, 'remark', '备注', '', 0, 0, 200, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 22, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (62, 2, 'setup', '其他设置', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 23, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (63, 1, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (64, 1, 'password', '密码', '', 0, 0, 100, 'password', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (65, 1, 'sex', '性别', '', 1, 0, 1, 'radio', 1, '', '', '4', 1, 1, 1, 1, 1, '=', 1, 4, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (66, 1, 'last_login_time', '最后登录时间', '', 0, 0, 10, 'datetime', 0, '', '', '', 1, 0, 1, 0, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (67, 1, 'last_login_ip', '最后登录IP', '', 0, 0, 15, 'text', 0, '', '', '', 1, 0, 1, 1, 0, '=', 1, 6, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (68, 1, 'qq', 'QQ', '', 0, 0, 20, 'text', 0, '', '', '', 1, 0, 1, 1, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (69, 1, 'mobile', '手机', '', 0, 0, 20, 'text', 0, '', '', '', 1, 0, 1, 1, 0, '=', 1, 8, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (70, 1, 'mobile_validated', '手机验证', '', 1, 0, 3, 'radio', 1, '', '', '5', 1, 1, 1, 1, 1, '=', 1, 9, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (71, 1, 'email_validated', '邮箱验证', '', 1, 0, 3, 'radio', 1, '', '', '5', 1, 1, 1, 1, 1, '=', 1, 10, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (72, 1, 'type_id', '所属分组', '', 1, 0, 3, 'select', 2, 'UsersType', 'name', '', 1, 1, 1, 1, 1, '=', 1, 11, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (73, 1, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 12, '', 'array (\r\n  \'default\' => \'1\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (74, 1, 'create_ip', '注册IP', '', 0, 0, 15, 'text', 0, '', '', '', 1, 0, 1, 0, 0, '=', 1, 13, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (75, 1, 'create_time', '创建时间', '', 0, 0, 10, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 14, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (76, 1, 'update_time', '更新时间', '', 0, 0, 10, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 15, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (77, 2, 'group_id', '字段分组', '用于添加和修改时显示在对应的分组中', 0, 0, 8, 'select', 2, 'FieldGrooup', 'group_name', '', 1, 1, 0, 0, 0, '=', 1, 50, '用于添加和修改时显示在对应的分组中', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'char\',\n)', '0');
INSERT INTO `hc_field` VALUES (78, 7, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (79, 7, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (80, 7, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (81, 7, 'module_id', '所属模块', '用于判断当前字段所属模块', 1, 0, 5, 'select', 2, 'Module', 'module_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (82, 7, 'group_name', '分组名称', '用于添加/修改时显示对应的分组名称', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, '=', 1, 3, '用于添加/修改时显示对应的分组名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (83, 7, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 4, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (84, 7, 'sort', '排序', '', 1, 0, 5, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 5, '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (85, 8, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (86, 8, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (87, 8, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (88, 8, 'name', '网站名称', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (89, 8, 'url', '网站地址', '请填写完整的网站地址', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (90, 8, 'logo', '网站logo', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 4, '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (91, 8, 'description', '描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (92, 8, 'sort', '排序', '', 1, 0, 0, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 6, '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (93, 8, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (94, 9, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (95, 9, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (96, 9, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (97, 9, 'name', '分组名称', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 1, 'LIKE', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (98, 9, 'description', '备注', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (99, 9, 'sort', '排序', '', 1, 0, 0, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 4, '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (101, 9, 'status', '状态', '', 1, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (102, 3, 'is_sort', '排序字段', '选择是则在生成模块时自动创建`排序`字段', 0, 0, 0, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 10, '生成模块时自动创建', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (103, 3, 'is_status', '状态字段', '选择是则在生成模块时自动创建`状态`字段', 0, 0, 0, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 11, '生成模块时自动创建', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (104, 10, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (105, 10, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (106, 10, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (107, 10, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (108, 10, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (109, 10, 'type_id', '广告位', '', 1, 0, 0, 'select2', 2, 'AdType', 'name', '', 1, 1, 1, 1, 0, '=', 1, 2, '所属广告位', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (110, 10, 'name', '广告名称', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (111, 10, 'image', '图片', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 4, '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (112, 10, 'thumb', '缩略图', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (113, 10, 'url', '链接地址', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 6, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (114, 10, 'description', '备注', '', 0, 0, 250, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (115, 11, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (116, 11, 'create_time', '创建时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (117, 11, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (118, 11, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (119, 11, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (120, 11, 'title', '碎片标题', '通常为中文，如：关于我们', 1, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 2, '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (121, 11, 'name', '调用名称', '通常为英文，如：AboutUs', 1, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '调用名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (122, 11, 'content', '碎片内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 4, '碎片内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (123, 11, 'url', '链接地址', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 5, '链接地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (124, 11, 'image', '图片', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 6, '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (125, 11, 'description', '描述', '', 0, 0, 255, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (133, 3, 'top_button', '顶部按钮', '列表页面顶部按钮组中的按钮', 0, 0, 255, 'checkbox', 1, '', '', '6', 1, 1, 0, 0, 0, '=', 1, 12, '列表页面顶部按钮组中的按钮', 'array (\n  \'default\' => \'add,edit,del,export\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (134, 3, 'right_button', '右侧按钮', '列表页面右侧按钮组中的按钮', 0, 0, 255, 'checkbox', 1, '', '', '7', 1, 1, 0, 0, 0, '=', 1, 13, '列表页面右侧按钮组中的按钮', 'array (\n  \'default\' => \'edit,delete\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (135, 13, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '1');
INSERT INTO `hc_field` VALUES (136, 13, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (137, 13, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (138, 13, 'name', '网站名称', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 2, '网站名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (139, 13, 'logo', '网站LOGO', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 3, '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1');
INSERT INTO `hc_field` VALUES (140, 13, 'icp', '备案号', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 4, '备案号', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (141, 13, 'copyright', '版权信息', '', 0, 0, 255, 'textarea', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1');
INSERT INTO `hc_field` VALUES (142, 13, 'url', '网站地址', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 6, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (143, 13, 'address', '公司地址', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (144, 13, 'contacts', '联系人', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 8, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (145, 13, 'tel', '联系电话', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 9, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (146, 13, 'mobile_phone', '手机号码', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 10, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (147, 13, 'fax', '传真号码', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 11, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (148, 13, 'email', '邮箱账号', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 12, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (149, 13, 'qq', 'QQ', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 13, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `hc_field` VALUES (150, 13, 'qrcode', '二维码', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 14, '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1');
INSERT INTO `hc_field` VALUES (151, 13, 'title', 'SEO标题', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, 'LIKE', 1, 15, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '2');
INSERT INTO `hc_field` VALUES (152, 13, 'key', 'SEO关键字', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 16, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '2');
INSERT INTO `hc_field` VALUES (153, 13, 'des', 'SEO描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 17, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '2');
INSERT INTO `hc_field` VALUES (154, 13, 'mobile', '手机端', '开启后自动跳转到mobile，自适应网站或无手机端网站请关闭', 0, 0, 0, 'radio', 1, '', '', '8', 1, 1, 1, 0, 0, '=', 1, 18, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `hc_field` VALUES (156, 13, 'code', '后台验证码', '后台登录时是否需要验证码', 0, 0, 0, 'radio', 1, '', '', '8', 1, 1, 1, 0, 0, '=', 1, 19, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `hc_field` VALUES (157, 13, 'message_code', '前台验证码', '前台留言等是否需要验证码', 0, 0, 0, 'radio', 1, '', '', '8', 1, 1, 1, 0, 0, '=', 1, 20, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `hc_field` VALUES (158, 13, 'message_send_mail', '留言邮件提醒', '前台留言时是否需要邮件提醒，如开启请先进行邮箱配置', 0, 0, 0, 'radio', 1, '', '', '8', 1, 1, 1, 0, 0, '=', 1, 21, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `hc_field` VALUES (159, 13, 'template_opening', '模板修改备份', '开启后后台模板管理中修改文件时会进行自动备份', 0, 0, 0, 'radio', 1, '', '', '8', 1, 1, 1, 0, 0, '=', 1, 22, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `hc_field` VALUES (160, 13, 'template', '模板目录', '模版所在的目录名称，默认为 default', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 23, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '4');
INSERT INTO `hc_field` VALUES (161, 13, 'html', 'Html目录', 'Html所在的目录名称，默认为 html', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 24, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '4');
INSERT INTO `hc_field` VALUES (162, 13, 'other', '其他', '其他信息', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 50, '备用字段', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '5');
INSERT INTO `hc_field` VALUES (163, 14, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (164, 14, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (165, 14, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (166, 14, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (167, 14, 'title', '角色组', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, 'LIKE', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (168, 14, 'rules', '权限', '', 0, 0, 0, 'textarea', 0, '', '', '', 0, 0, 0, 0, 0, '=', 1, 3, '权限', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `hc_field` VALUES (169, 15, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (170, 15, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (171, 15, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (172, 15, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (173, 15, 'username', '用户名', '用户名在4到25个字符之间', 1, 4, 25, 'text', 0, '', '', '', 1, 1, 1, 1, 0, '=', 1, 2, '用户名', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (174, 15, 'password', '密码', '密码在5到25个字符之间', 1, 5, 25, 'password', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 3, '密码', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (175, 15, 'login_time', '登录时间', '', 0, 0, 0, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 4, '最后登录时间', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `hc_field` VALUES (176, 15, 'login_ip', '登录IP', '', 0, 0, 0, 'text', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 5, '最后登录IP', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (177, 15, 'nickname', '昵称', '昵称在4到25个字符之间', 1, 4, 25, 'text', 0, '', '', '', 1, 1, 1, 0, 0, 'LIKE', 1, 6, '昵称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (178, 15, 'image', '头像', '', 1, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 6, '头像', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (179, 16, 'status', '菜单状态', '是否需要显示在左侧菜单', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 0, 0, '=', 1, 48, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `hc_field` VALUES (180, 16, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (181, 16, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (182, 16, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (183, 16, 'pid', '父ID', '', 0, 0, 0, 'select2', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 2, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (184, 16, 'name', '控制器/方法', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 4, '控制器/方法', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '');
INSERT INTO `hc_field` VALUES (185, 16, 'title', '权限名称', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, 'LIKE', 1, 5, '权限名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (186, 16, 'auth_open', '验证权限', '', 0, 0, 0, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (187, 16, 'icon', '图标名称', '如：fa fa-cogs', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (188, 16, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (189, 17, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (190, 17, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (191, 17, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (192, 17, 'admin_id', '管理员', '', 0, 0, 8, 'select', 2, 'Admin', 'username', '', 1, 0, 1, 1, 0, 'LIKE', 1, 2, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (193, 17, 'url', '操作页面	', '', 0, 0, 0, 'text', 0, '', '', '', 1, 0, 1, 1, 0, 'LIKE', 1, 3, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '');
INSERT INTO `hc_field` VALUES (194, 17, 'title', '日志标题', '', 0, 0, 100, 'text', 0, '', '', '', 1, 0, 1, 1, 0, 'LIKE', 1, 4, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (195, 17, 'content', '日志内容', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 0, 0, 0, 0, '=', 1, 5, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `hc_field` VALUES (196, 17, 'ip', '操作IP', '', 0, 0, 20, 'text', 0, '', '', '', 1, 0, 1, 0, 0, '=', 1, 6, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (197, 17, 'user_agent', 'User-Agent', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 0, 1, 0, 0, '=', 1, 7, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (198, 3, 'is_single', '单页模式', '选择是后列表页会自动跳转到添加或修改页面', 0, 0, 0, 'radio', 1, '', '', '2', 1, 1, 1, 1, 0, '=', 1, 14, '选择是后列表页会自动跳转到添加或修改页面', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (199, 3, 'show_all', '查看全部', '添加/修改页面头部是否显示`查看全部`按钮', 0, 0, 0, 'radio', 1, '', '', '2', 1, 1, 0, 0, 0, '=', 1, 15, '添加/修改页面头部是否显示`查看全部`按钮', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (200, 19, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (201, 19, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (202, 19, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (203, 19, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (204, 19, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (205, 18, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (206, 18, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (207, 18, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (208, 18, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (209, 18, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (210, 20, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 0, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '6');
INSERT INTO `hc_field` VALUES (211, 20, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '6');
INSERT INTO `hc_field` VALUES (212, 20, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '6');
INSERT INTO `hc_field` VALUES (213, 20, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 49, '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '6');
INSERT INTO `hc_field` VALUES (214, 20, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 0, 0, '=', 1, 48, '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '6');
INSERT INTO `hc_field` VALUES (215, 20, 'cate_name', '栏目名称', '', 1, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 3, '栏目名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '6');
INSERT INTO `hc_field` VALUES (216, 20, 'en_name', '英文名称', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 4, '英文名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '6');
INSERT INTO `hc_field` VALUES (217, 20, 'cate_folder', '栏目目录', '请填写不含空格的英文和数字，用于URL美化，如：AboutUs', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 5, '栏目目录', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '6');
INSERT INTO `hc_field` VALUES (218, 20, 'parent_id', '上级栏目', '', 0, 0, 0, 'select', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 2, '上级栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '6');
INSERT INTO `hc_field` VALUES (219, 20, 'module_id', '所属模块', '', 1, 0, 0, 'select', 2, 'Module', 'module_name', '', 1, 1, 1, 0, 0, '=', 1, 1, '所属模块', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '6');
INSERT INTO `hc_field` VALUES (220, 20, 'url', '外部链接', '如需跳转，请填写完整的网站地址，为空则不跳转', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '外部链接', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '8');
INSERT INTO `hc_field` VALUES (221, 20, 'image', '栏目图片', '', 0, 0, 255, 'image', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '栏目图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '6');
INSERT INTO `hc_field` VALUES (222, 20, 'ico_image', 'ICO图片', '', 0, 0, 255, 'image', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 8, 'ICO图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '6');
INSERT INTO `hc_field` VALUES (223, 20, 'title', 'SEO标题', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 0, 0, 0, 'LIKE', 1, 9, 'SEO标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '7');
INSERT INTO `hc_field` VALUES (224, 20, 'keywords', 'SEO关键字', '', 0, 0, 255, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 10, 'SEO关键字', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '7');
INSERT INTO `hc_field` VALUES (225, 20, 'description', 'SEO描述', '', 0, 0, 255, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 11, 'SEO描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '7');
INSERT INTO `hc_field` VALUES (226, 20, 'summary', '简介', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 12, '栏目简介', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '6');
INSERT INTO `hc_field` VALUES (227, 20, 'template_list', '列表模板', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 13, '列表模板', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '8');
INSERT INTO `hc_field` VALUES (228, 20, 'template_show', '详情模版', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 14, '详情模版', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '8');
INSERT INTO `hc_field` VALUES (229, 20, 'page_size', '分页条数', '分页显示的数量，为空时默认值为系统设置中的值', 0, 0, 5, 'number', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 15, '分页条数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'char\',\n)', '8');
INSERT INTO `hc_field` VALUES (230, 20, 'is_menu', '导航状态', '', 0, 0, 0, 'radio', 1, '', '', '1', 1, 1, 1, 0, 0, '=', 1, 16, '导航状态', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '6');
INSERT INTO `hc_field` VALUES (231, 20, 'is_next', '跳转下级', '是否直接跳转到下级第一个栏目', 0, 0, 0, 'radio', 1, '', '', '2', 1, 1, 1, 0, 0, '=', 1, 17, '跳转下级', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '8');
INSERT INTO `hc_field` VALUES (232, 20, 'is_blank', '新窗口打开', '', 0, 0, 0, 'radio', 1, '', '', '2', 1, 1, 0, 0, 0, '=', 1, 18, '新窗口打开', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '8');
INSERT INTO `hc_field` VALUES (233, 18, 'cate_id', '栏目', '', 1, 0, 0, 'select', 2, 'Cate', 'cate_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `hc_field` VALUES (234, 18, 'title', '标题', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 0, 0, 'LIKE', 1, 3, '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (235, 18, 'content', '内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 4, '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (236, 19, 'cate_id', '栏目', '', 1, 0, 0, 'select', 2, 'Cate', 'cate_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `hc_field` VALUES (237, 19, 'title', '标题', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (238, 19, 'author', '作者', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 4, '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (239, 19, 'source', '来源', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (240, 19, 'content', '内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (241, 19, 'summary', '摘要', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (242, 19, 'image', '图片', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 8, '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (243, 19, 'images', '图片集', '', 0, 0, 0, 'images', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 9, '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `hc_field` VALUES (244, 19, 'download', '文件下载', '', 0, 0, 0, 'file', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 10, '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (245, 19, 'tags', 'TAG', '', 0, 0, 0, 'tag', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 11, 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (246, 19, 'hits', '点击次数', '', 0, 0, 0, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 12, '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (247, 19, 'keywords', '关键词', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 13, '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (248, 19, 'description', '描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 14, '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (249, 19, 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', 0, 0, 30, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 15, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (250, 3, 'add_param', '添加参数', '列表页面顶部按钮组中添加按钮的参数，如 cate_id,多个用`,`分割', 0, 0, 100, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 17, '列表页面顶部按钮组中添加按钮的参数，如 cate_id,多个用`,`分割', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (251, 21, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (252, 21, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (253, 21, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (254, 21, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (255, 21, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (256, 21, 'cate_id', '栏目', '', 1, 0, 0, 'select', 2, 'Cate', 'cate_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `hc_field` VALUES (257, 21, 'title', '标题', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (258, 21, 'author', '作者', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 4, '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (259, 21, 'source', '来源', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (260, 21, 'content', '内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (261, 21, 'summary', '摘要', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (262, 21, 'image', '图片', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 8, '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (263, 21, 'images', '图片集', '', 0, 0, 0, 'images', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 9, '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `hc_field` VALUES (264, 21, 'download', '文件下载', '', 0, 0, 0, 'file', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 10, '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (265, 21, 'tags', 'TAG', '', 0, 0, 0, 'tag', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 11, 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (266, 21, 'hits', '点击次数', '', 0, 0, 0, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 12, '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (267, 21, 'keywords', '关键词', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 13, '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (268, 21, 'description', '描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 14, '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (269, 21, 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', 0, 0, 30, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 15, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (270, 22, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (271, 22, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (272, 22, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (273, 22, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (274, 22, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (275, 22, 'cate_id', '栏目', '', 1, 0, 0, 'select', 2, 'Cate', 'cate_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `hc_field` VALUES (276, 22, 'title', '标题', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (277, 22, 'author', '作者', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 4, '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (278, 22, 'source', '来源', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (279, 22, 'content', '内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (280, 22, 'summary', '摘要', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (281, 22, 'image', '图片', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 8, '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (282, 22, 'images', '图片集', '', 0, 0, 0, 'images', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 9, '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `hc_field` VALUES (283, 22, 'download', '文件下载', '', 0, 0, 0, 'file', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 10, '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (284, 22, 'tags', 'TAG', '', 0, 0, 0, 'tag', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 11, 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (285, 22, 'hits', '点击次数', '', 0, 0, 0, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 12, '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (286, 22, 'keywords', '关键词', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 13, '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (287, 22, 'description', '描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 14, '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (288, 22, 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', 0, 0, 30, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 15, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (289, 23, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (290, 23, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (291, 23, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (292, 23, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (293, 23, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (294, 23, 'cate_id', '栏目', '', 1, 0, 0, 'select', 2, 'Cate', 'cate_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `hc_field` VALUES (295, 23, 'title', '标题', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (296, 23, 'author', '作者', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 4, '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (297, 23, 'source', '来源', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (298, 23, 'content', '内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (299, 23, 'summary', '摘要', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (300, 23, 'image', '图片', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 8, '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (301, 23, 'images', '图片集', '', 0, 0, 0, 'images', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 9, '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `hc_field` VALUES (302, 23, 'download', '文件下载', '', 0, 0, 0, 'file', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 10, '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (303, 23, 'tags', 'TAG', '', 0, 0, 0, 'tag', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 11, 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (304, 23, 'hits', '点击次数', '', 0, 0, 0, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 12, '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (305, 23, 'keywords', '关键词', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 13, '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (306, 23, 'description', '描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 14, '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (307, 23, 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', 0, 0, 30, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 15, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (308, 24, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (309, 24, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (310, 24, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (311, 24, 'sort', '排序', '', 1, 0, 8, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 49, '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (312, 24, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (313, 24, 'cate_id', '栏目', '', 1, 0, 0, 'select', 2, 'Cate', 'cate_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `hc_field` VALUES (314, 24, 'title', '标题', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (315, 24, 'author', '作者', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 4, '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (316, 24, 'source', '来源', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 5, '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (317, 24, 'content', '内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (318, 24, 'summary', '摘要', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 7, '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `hc_field` VALUES (319, 24, 'image', '图片', '', 0, 0, 0, 'image', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 8, '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `hc_field` VALUES (320, 24, 'images', '图片集', '', 0, 0, 0, 'images', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 9, '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `hc_field` VALUES (321, 24, 'download', '文件下载', '', 0, 0, 0, 'file', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 10, '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (322, 24, 'tags', 'TAG', '', 0, 0, 0, 'tag', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 11, 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (323, 24, 'hits', '点击次数', '', 0, 0, 0, 'number', 0, '', '', '', 1, 1, 1, 0, 1, '=', 1, 12, '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `hc_field` VALUES (324, 24, 'keywords', '关键词', '', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 13, '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (325, 24, 'description', '描述', '', 0, 0, 0, 'textarea', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 14, '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `hc_field` VALUES (326, 24, 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', 0, 0, 30, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 15, '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (327, 25, 'content', '内容', '', 0, 0, 0, 'editor', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '内容', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'height\' => \'\',\r\n  \'fieldtype\' => \'text\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (328, 25, 'title', '标题', '', 1, 0, 0, 'text', 0, '', '', '', 1, 1, 1, 1, 0, 'LIKE', 1, 3, '标题', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `hc_field` VALUES (329, 25, 'cate_id', '栏目', '', 1, 0, 0, 'select', 2, 'Cate', 'cate_name', '', 1, 1, 1, 1, 0, '=', 1, 2, '栏目', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '');
INSERT INTO `hc_field` VALUES (330, 25, 'status', '状态', '', 1, 0, 1, 'radio', 1, '', '', '1', 1, 1, 1, 1, 0, '=', 1, 48, '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `hc_field` VALUES (331, 25, 'update_time', '更新时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'int\',\r\n)', '');
INSERT INTO `hc_field` VALUES (332, 25, 'create_time', '添加时间', '', 0, 0, 11, 'datetime', 0, '', '', '', 0, 0, 1, 0, 0, '=', 1, 50, '自增ID', 'array (\'default\' => \'0\', \'format\' => \'Y-m-d H:i:s\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `hc_field` VALUES (333, 25, 'id', '编号', '', 0, 0, 0, 'hidden', 0, '', '', '', 0, 0, 1, 0, 0, '', 1, 1, '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `hc_field` VALUES (334, 25, 'name', '姓名', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 1, 0, '=', 1, 4, '姓名', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (335, 25, 'phone', '电话', '', 0, 0, 255, 'text', 0, '', '', '', 1, 1, 1, 0, 0, '=', 1, 5, '电话', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (336, 16, 'param', '参数', 'URL地址后的参数，如 type=button&name=my', 0, 0, 50, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 6, '参数', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '');
INSERT INTO `hc_field` VALUES (337, 19, 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 16, '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (338, 21, 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 16, '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (339, 22, 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 16, '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (340, 23, 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 16, '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (341, 24, 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 16, '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `hc_field` VALUES (342, 24, 'area', '区域', '', 0, 0, 4, 'radio', 1, '', '', '10', 1, 1, 1, 0, 0, '=', 1, 17, '区域', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (343, 24, 'sex', '性别', '', 0, 0, 4, 'select', 1, '', '', '4', 1, 1, 1, 0, 0, '=', 1, 18, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `hc_field` VALUES (344, 13, 'upload_driver', '上传驱动', '文件/图片上传的驱动', 1, 0, 0, 'radio', 1, '', '', '11', 1, 1, 0, 0, 0, '=', 1, 26, '上传驱动', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '9');
INSERT INTO `hc_field` VALUES (345, 13, 'upload_file_size', '文件限制', '单位：KB，0表示不限制上传大小', 0, 0, 50, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 27, '文件限制', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');
INSERT INTO `hc_field` VALUES (346, 13, 'upload_file_ext', '文件格式', '多个格式请用英文逗号（,）隔开', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 28, '文件格式', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');
INSERT INTO `hc_field` VALUES (347, 13, 'upload_image_size', '图片限制', '单位：KB，0表示不限制上传大小', 0, 0, 50, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 29, '图片限制', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');
INSERT INTO `hc_field` VALUES (348, 13, 'upload_image_ext', '图片格式', '多个格式请用英文逗号（,）隔开', 0, 0, 0, 'text', 0, '', '', '', 1, 1, 0, 0, 0, '=', 1, 30, '图片格式', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');
INSERT INTO `hc_field` VALUES (349, 13, 'editor', '编辑器', '', 0, 0, 0, 'radio', 1, '', '', '12', 1, 1, 0, 0, 0, '=', 1, 31, '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '5');

-- ----------------------------
-- Table structure for hc_field_group
-- ----------------------------
DROP TABLE IF EXISTS `hc_field_group`;
CREATE TABLE `hc_field_group`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `module_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属模块',
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组名称',
  `status` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  `sort` int(5) UNSIGNED NOT NULL DEFAULT 50 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字段分组' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_field_group
-- ----------------------------
INSERT INTO `hc_field_group` VALUES (1, 1615367899, 1615367899, '13', '基础设置', 1, 1);
INSERT INTO `hc_field_group` VALUES (2, 1615367899, 1615367899, '13', 'SEO设置', 1, 2);
INSERT INTO `hc_field_group` VALUES (3, 1615367899, 1615367899, '13', '开关设置', 1, 3);
INSERT INTO `hc_field_group` VALUES (4, 1615367899, 1615367899, '13', '模板设置', 1, 4);
INSERT INTO `hc_field_group` VALUES (5, 1615367899, 1615367899, '13', '其他设置', 1, 6);
INSERT INTO `hc_field_group` VALUES (6, 1615367899, 1615367899, '20', '基础设置', 1, 1);
INSERT INTO `hc_field_group` VALUES (7, 1615367899, 1615367899, '20', 'SEO设置', 1, 2);
INSERT INTO `hc_field_group` VALUES (8, 1615367899, 1615367899, '20', '其他', 1, 3);
INSERT INTO `hc_field_group` VALUES (9, 1615367899, 1615367899, '13', '上传设置', 1, 5);

-- ----------------------------
-- Table structure for hc_link
-- ----------------------------
DROP TABLE IF EXISTS `hc_link`;
CREATE TABLE `hc_link`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网站名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网站地址',
  `logo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网站logo',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_link
-- ----------------------------
INSERT INTO `hc_link` VALUES (1, 1615367899, 1615367899, 'HarmonyCMS', 'http://HarmonyCMS.ok5168.com', '', '', 1, 1);

-- ----------------------------
-- Table structure for hc_message
-- ----------------------------
DROP TABLE IF EXISTS `hc_message`;
CREATE TABLE `hc_message`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言模块' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_message
-- ----------------------------
INSERT INTO `hc_message` VALUES (1, 1615367899, 1615367899, 1, 13, '测试留言标题', '<p>测试留言内容</p>\n', '王先生', '13285311189');

-- ----------------------------
-- Table structure for hc_module
-- ----------------------------
DROP TABLE IF EXISTS `hc_module`;
CREATE TABLE `hc_module`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `module_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模块名称',
  `table_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表名称',
  `model_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模型名称',
  `table_comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表描述',
  `table_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表类型',
  `pk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'id' COMMENT '主键',
  `list_fields` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '前台列表页可调用字段,默认为*,仅用作前台CMS调用时使用',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `sort` smallint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_sort` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序字段',
  `is_status` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态字段',
  `top_button` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'add,edit,del,export' COMMENT '顶部按钮',
  `right_button` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'edit,delete' COMMENT '右侧按钮',
  `is_single` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单页模式',
  `show_all` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '查看全部',
  `add_param` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_module
-- ----------------------------
INSERT INTO `hc_module` VALUES (1, '会员管理', 'users', 'Users', '会员管理', '2', 'id', '*', '前台会员列表，需要关联会员类型表', 1, 1615367899, 1615367899, 0, 0, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (2, '字段管理', 'field', 'Field', '字段管理', '2', 'id', '*', '字段管理', 3, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (3, '模块管理', 'module', 'Module', '模块管理', '2', 'id', '*', '模块管理', 4, 1615367899, 1615367899, 1, 0, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (4, '字典类型', 'dictionary_type', 'DictionaryType', '字典类型', '2', 'id', '*', '字典类型', 5, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (5, '字典数据', 'dictionary', 'Dictionary', '字典数据', '2', 'id', '*', '字典数据', 6, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (6, '会员分组', 'users_type', 'UsersType', '会员分组', '2', 'id', '*', '会员分组', 2, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (7, '字段分组', 'field_group', 'FieldGroup', '字段分组', '2', 'id', '*', '字段分组', 7, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (8, '友情链接', 'link', 'Link', '友情链接', '2', 'id', '*', '友情链接', 8, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (9, '广告分组', 'ad_type', 'AdType', '广告分组', '2', 'id', '*', '广告分组', 9, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (10, '广告管理', 'ad', 'Ad', '广告管理', '2', 'id', '*', '广告管理', 10, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (11, '碎片管理', 'debris', 'Debris', '碎片管理', '2', 'id', '*', '碎片管理', 11, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (13, '系统设置', 'system', 'System', '系统设置', '2', 'id', '*', '系统设置', 13, 1615367899, 1615367899, 0, 0, 'add,edit,del,export', 'edit,delete', 1, 0, '');
INSERT INTO `hc_module` VALUES (14, '角色组管理', 'auth_group', 'AuthGroup', '角色组管理', '2', 'id', '*', '角色组管理', 14, 1615367899, 1615367899, 0, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (15, '管理员管理', 'admin', 'Admin', '管理员列表', '2', 'id', '*', '管理员列表', 15, 1615367899, 1615367899, 0, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (16, '菜单规则', 'auth_rule', 'AuthRule', '菜单规则', '2', 'id', '*', '', 16, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (17, '管理员日志', 'admin_log', 'AdminLog', '管理员日志', '2', 'id', '*', '管理员日志', 16, 1615367899, 1615367899, 0, 0, 'edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (18, '单页模块', 'page', 'Page', '单页模块', '1', 'id', '*', '单页模块', 51, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 1, 1, '');
INSERT INTO `hc_module` VALUES (19, '文章模块', 'article', 'Article', '文章模块', '1', 'id', '*', '文章模块', 52, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'preview,edit,delete', 0, 1, 'cate_id');
INSERT INTO `hc_module` VALUES (20, '栏目管理', 'cate', 'Cate', '栏目管理', '2', 'id', '*', '栏目管理', 50, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'edit,delete', 0, 1, '');
INSERT INTO `hc_module` VALUES (21, '图片模块', 'picture', 'Picture', '图片模块', '1', 'id', '*', '图片模块', 53, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'preview,edit,delete', 0, 1, 'cate_id');
INSERT INTO `hc_module` VALUES (22, '产品模块', 'product', 'Product', '产品模块', '1', 'id', '*', '产品模块', 54, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'preview,edit,delete', 0, 1, 'cate_id');
INSERT INTO `hc_module` VALUES (23, '下载模块', 'download', 'Download', '下载模块', '1', 'id', '*', '下载模块', 55, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'preview,edit,delete', 0, 1, 'cate_id');
INSERT INTO `hc_module` VALUES (24, '团队模块', 'team', 'Team', '团队模块', '1', 'id', '*', '团队模块', 56, 1615367899, 1615367899, 1, 1, 'add,edit,del,export', 'preview,edit,delete', 0, 1, 'cate_id');
INSERT INTO `hc_module` VALUES (25, '留言模块', 'message', 'Message', '留言模块', '1', 'id', '*', '留言模块', 57, 1615367899, 1615367899, 0, 1, 'add,edit,del,export', 'edit,delete', 0, 1, 'cate_id');

-- ----------------------------
-- Table structure for hc_page
-- ----------------------------
DROP TABLE IF EXISTS `hc_page`;
CREATE TABLE `hc_page`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章模块' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_page
-- ----------------------------
INSERT INTO `hc_page` VALUES (1, 1615367899, 1615371327, 1, 1, 1, '关于我们', '<p><span style=\"font-size:16px;\"><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;山东哈曼云信息科技有限公司</strong></span>专注于互联网+时代的软件开发，团队主创成员，都是多年 IT 界的精英人士。</span></p>\n\n<p><span style=\"font-size:16px;\"><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;哈曼云</strong></span>专注于<span style=\"color:#3498db;\"><strong>物联网、人工智能、企业 SAAS 服务平台</strong></span>，在获取各行业基础数据的同时，分别构筑各行业的垂直领域平台，以大数据的数据分析、数据挖掘，为行业的更好发展提供真实有效的帮助。</span></p>\n\n<p style=\"text-align: center\"><span style=\"font-size:16px;\"><img alt=\"哈曼云\" src=\"/uploads/20210310/8664a5b94b9a2b0ccd4417de90a2d18c.png\" style=\"width: 180px; height: 203px;\" /></span></p>\n');
INSERT INTO `hc_page` VALUES (2, 1615367899, 1615371337, 11, 1, 2, '公司介绍', '<p><span style=\"font-size:16px;\"><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;山东哈曼云信息科技有限公司</strong></span>专注于互联网+时代的软件开发，团队主创成员，都是多年 IT 界的精英人士。</span></p>\n\n<p><span style=\"font-size:16px;\"><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;哈曼云</strong></span>专注于<span style=\"color:#3498db;\"><strong>物联网、人工智能、企业 SAAS 服务平台</strong></span>，在获取各行业基础数据的同时，分别构筑各行业的垂直领域平台，以大数据的数据分析、数据挖掘，为行业的更好发展提供真实有效的帮助。</span></p>\n\n<p style=\"text-align: center\"><span style=\"font-size:16px;\"><img alt=\"哈曼云\" src=\"/uploads/20210310/8664a5b94b9a2b0ccd4417de90a2d18c.png\" style=\"width: 180px; height: 203px;\" /></span></p>\n');
INSERT INTO `hc_page` VALUES (3, 1615367899, 1615371346, 12, 1, 3, '公司文化', '<p><span style=\"font-size:16px;\"><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;山东哈曼云信息科技有限公司</strong></span>专注于互联网+时代的软件开发，团队主创成员，都是多年 IT 界的精英人士。</span></p>\n\n<p><span style=\"font-size:16px;\"><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;哈曼云</strong></span>专注于<span style=\"color:#3498db;\"><strong>物联网、人工智能、企业 SAAS 服务平台</strong></span>，在获取各行业基础数据的同时，分别构筑各行业的垂直领域平台，以大数据的数据分析、数据挖掘，为行业的更好发展提供真实有效的帮助。</span></p>\n\n<p style=\"text-align: center\"><span style=\"font-size:16px;\"><img alt=\"哈曼云\" src=\"/uploads/20210310/8664a5b94b9a2b0ccd4417de90a2d18c.png\" style=\"width: 180px; height: 203px;\" /></span></p>\n');

-- ----------------------------
-- Table structure for hc_picture
-- ----------------------------
DROP TABLE IF EXISTS `hc_picture`;
CREATE TABLE `hc_picture`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '来源',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片集',
  `download` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图片模块' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_picture
-- ----------------------------
INSERT INTO `hc_picture` VALUES (1, 1615367899, 1615367899, 50, 1, 7, '资质荣誉名称', '管理员', '本站', '<p style=\"text-indent: 2em;\">荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容</p>\n', '荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容', '/uploads/20210310/a1.jpg', '', '', '', 0, '', '', '', '');
INSERT INTO `hc_picture` VALUES (2, 1615367899, 1615367899, 50, 1, 7, '资质荣誉名称', '管理员', '本站', '<p style=\"text-indent: 2em;\">荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容</p>\n', '荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容', '/uploads/20210310/a2.jpg', '', '', '', 0, '', '', '', '');
INSERT INTO `hc_picture` VALUES (3, 1615367899, 1615367899, 50, 1, 7, '资质荣誉名称', '管理员', '本站', '<p style=\"text-indent: 2em;\">荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容</p>\n', '荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容', '/uploads/20210310/a3.jpg', '', '', '', 0, '', '', '', '');
INSERT INTO `hc_picture` VALUES (4, 1615367899, 1615367899, 50, 1, 7, '资质荣誉名称', '管理员', '本站', '<p>荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容</p>\n', '荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容', '/uploads/20210310/a4.jpg', '', '', '', 0, '', '', '', '');
INSERT INTO `hc_picture` VALUES (5, 1615367899, 1615367899, 50, 1, 7, '资质荣誉名称', '管理员', '本站', '<p>荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容</p>\n', '荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容', '/uploads/20210310/a5.jpg', '', '', '', 1, '', '', '', '');
INSERT INTO `hc_picture` VALUES (6, 1615367899, 1615367899, 50, 1, 7, '资质荣誉名称', '管理员', '本站', '<p>荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容</p>\n', '荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容荣誉资质说明内容', '/uploads/20210310/a6.jpg', '', '', '', 0, '', '', '', '');

-- ----------------------------
-- Table structure for hc_product
-- ----------------------------
DROP TABLE IF EXISTS `hc_product`;
CREATE TABLE `hc_product`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '来源',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片集',
  `download` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品模块' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_product
-- ----------------------------
INSERT INTO `hc_product` VALUES (1, 1615367899, 1615367899, 50, 1, 9, '一本书', '管理员', '本站', '', '', '/uploads/20210310/p1.jpg', '', '', '书本', 0, '', '', '', '');
INSERT INTO `hc_product` VALUES (2, 1615367899, 1615367899, 50, 1, 9, '一支笔', '管理员', '本站', '', '', '/uploads/20210310/p2.jpg', '', '', '笔', 0, '', '', '', '');
INSERT INTO `hc_product` VALUES (3, 1615367899, 1615367899, 50, 1, 9, '一支铅笔', '管理员', '本站', '', '', '/uploads/20210310/p3.jpg', '', '', '笔', 2, '', '', '', '');
INSERT INTO `hc_product` VALUES (4, 1615367899, 1615367899, 50, 1, 9, '背包', '管理员', '本站', '', '', '/uploads/20210310/p4.jpg', '', '', '', 0, '', '', '', '');
INSERT INTO `hc_product` VALUES (5, 1615367899, 1615367899, 50, 1, 9, '笔记本', '管理员', '本站', '', '', '/uploads/20210310/p5.jpg', '', '', '', 0, '', '', '', '');
INSERT INTO `hc_product` VALUES (6, 1615367899, 1615367899, 50, 1, 9, '一支笔', '管理员', '本站', '', '', '/uploads/20210310/p6.jpg', '', '', '笔', 0, '', '', '', '');
INSERT INTO `hc_product` VALUES (7, 1615367899, 1615367899, 50, 1, 9, '铅笔盒', '管理员', '本站', '', '', '/uploads/20210310/p1.jpg', '', '', '', 0, '', '', '', '');
INSERT INTO `hc_product` VALUES (8, 1615367899, 1615367899, 50, 1, 9, '钢笔', '管理员', '本站', '', '', '/uploads/20210310/p2.jpg', '', '', '笔,钢笔', 9, '', '', '', '');

-- ----------------------------
-- Table structure for hc_system
-- ----------------------------
DROP TABLE IF EXISTS `hc_system`;
CREATE TABLE `hc_system`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网站名称',
  `logo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网站LOGO',
  `icp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备案号',
  `copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '版权信息',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网站地址',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公司地址',
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '联系人',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `mobile_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '传真号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱账号',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'QQ',
  `qrcode` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '二维码',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `mobile` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '手机端',
  `code` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '后台验证码',
  `message_code` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '前台验证码',
  `message_send_mail` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '留言邮件提醒',
  `template_opening` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '模板修改备份',
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板目录',
  `html` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Html目录',
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '其他',
  `upload_driver` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '上传驱动',
  `upload_file_size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件限制',
  `upload_file_ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件格式',
  `upload_image_size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片限制',
  `upload_image_ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片格式',
  `editor` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '编辑器',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_system
-- ----------------------------
INSERT INTO `hc_system` VALUES (1, 1615367899, 1615367899, 'HarmonyCMS', '/uploads/20210310/Harmony_CMS_120.png', '京ICP备88888888号-8', 'Copyright © HarmonyCMS 2019-2021 All right reserved', 'harmony_cms.ok5168.com', '山东·济南·黄台电子商务产业园D座B-708', '王先生', '0531-87153386', '132 8531 1189', '010-87153386', '127798@qq.com', '127798', '/uploads/20210310/qrcode.jpg', 'HarmonyCMS 官网', 'HarmonyCMS，HarmonyCMS内容管理系统，php，ThinkPHP CMS，ThinkPHP建站系统', 'HarmonyCMS 是一款基于 ThinkPHP + AdminLTE 的内容管理系统。后台界面采用响应式布局，清爽、极简、简单、易用，是做开发的最佳选择。', 0, 0, 0, 0, 1, 'ccpitsd', 'html', '', 1, '0', 'rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc', '0', 'jpg,png,gif,jpeg,ico', 0);

-- ----------------------------
-- Table structure for hc_system_group
-- ----------------------------
DROP TABLE IF EXISTS `hc_system_group`;
CREATE TABLE `hc_system_group`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组名称',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` int(1) NULL DEFAULT 0 COMMENT '状态（1 正常，0 锁定）',
  `create_time` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置分组表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_system_group
-- ----------------------------
INSERT INTO `hc_system_group` VALUES (1, '基础设置', '基础设置', 1, 1, 1615367899, 1615367899);
INSERT INTO `hc_system_group` VALUES (2, 'SEO设置', 'SEO设置', 2, 1, 1615367899, 1615367899);
INSERT INTO `hc_system_group` VALUES (3, '开关设置', '开关设置', 3, 1, 1615367899, 1615367899);
INSERT INTO `hc_system_group` VALUES (4, '模板设置', '模板设置', 4, 1, 1615367899, 1615367899);
INSERT INTO `hc_system_group` VALUES (5, '自定义', '自定义系统设置信息', 5, 1, 1615367899, 1615367899);

-- ----------------------------
-- Table structure for hc_team
-- ----------------------------
DROP TABLE IF EXISTS `hc_team`;
CREATE TABLE `hc_team`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` mediumint(8) NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '栏目',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '来源',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  `image` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片集',
  `download` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '跳转地址',
  `area` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '区域',
  `sex` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '团队模块' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_team
-- ----------------------------
INSERT INTO `hc_team` VALUES (1, 1615367899, 1615367899, 50, 1, 12, '国内总设计师', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t1.jpg', '', '', '', 0, '', '', '', '', 1, 0);
INSERT INTO `hc_team` VALUES (2, 1615367899, 1615367899, 50, 1, 12, '国外销售总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t2.jpg', '', '', '', 1, '', '', '', '', 2, 2);
INSERT INTO `hc_team` VALUES (3, 1615367899, 1615367899, 50, 1, 12, '国内技术总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t3.jpg', '', '', '', 0, '', '', '', '', 1, 2);
INSERT INTO `hc_team` VALUES (4, 1615367899, 1615367899, 50, 1, 12, '国内网络总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t1.jpg', '', '', '', 0, '', '', '', '', 1, 1);
INSERT INTO `hc_team` VALUES (5, 1615367899, 1615367899, 50, 1, 12, '国内总设计师', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t2.jpg', '', '', '', 0, '', '', '', '', 1, 0);
INSERT INTO `hc_team` VALUES (6, 1615367899, 1615367899, 50, 1, 12, '国外销售总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t3.jpg', '', '', '', 1, '', '', '', '', 2, 2);
INSERT INTO `hc_team` VALUES (7, 1615367899, 1615367899, 50, 1, 12, '国内技术总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t1.jpg', '', '', '', 0, '', '', '', '', 1, 2);
INSERT INTO `hc_team` VALUES (8, 1615367899, 1615367899, 50, 1, 12, '国内网络总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t2.jpg', '', '', '', 0, '', '', '', '', 1, 1);
INSERT INTO `hc_team` VALUES (9, 1615367899, 1615367899, 50, 1, 12, '国内总设计师', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t3.jpg', '', '', '', 0, '', '', '', '', 1, 0);
INSERT INTO `hc_team` VALUES (10, 1615367899, 1615367899, 50, 1, 12, '国外销售总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t1.jpg', '', '', '', 1, '', '', '', '', 2, 2);
INSERT INTO `hc_team` VALUES (11, 1615367899, 1615367899, 50, 1, 12, '国内技术总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t2.jpg', '', '', '', 0, '', '', '', '', 1, 2);
INSERT INTO `hc_team` VALUES (12, 1615367899, 1615367899, 50, 1, 12, '国内网络总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t3.jpg', '', '', '', 0, '', '', '', '', 1, 1);
INSERT INTO `hc_team` VALUES (13, 1615367899, 1615367899, 50, 1, 12, '国内保密设计师', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t1.jpg', '', '', '', 0, '', '', '', '', 1, 0);
INSERT INTO `hc_team` VALUES (14, 1615367899, 1615367899, 50, 1, 12, '国外销售总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t2.jpg', '', '', '', 1, '', '', '', '', 2, 2);
INSERT INTO `hc_team` VALUES (15, 1615367899, 1615367899, 50, 1, 12, '国内技术总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t3.jpg', '', '', '', 0, '', '', '', '', 1, 2);
INSERT INTO `hc_team` VALUES (16, 1615367899, 1615367899, 50, 1, 12, '国内网络总监', '管理员', '本站', '', '多年从业经验，精益求精，客户至上，您的满意是我们不懈的追求！', '/uploads/20210310/t1.jpg', '', '', '', 0, '', '', '', '', 1, 1);

-- ----------------------------
-- Table structure for hc_users
-- ----------------------------
DROP TABLE IF EXISTS `hc_users`;
CREATE TABLE `hc_users`  (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `sex` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 保密, 1 男, 2 女',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `last_login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `mobile_validated` tinyint(3) NULL DEFAULT 0 COMMENT '是否验证手机 1 验证 0 未验证',
  `email_validated` tinyint(3) NULL DEFAULT 0 COMMENT '是否验证手机 1 验证 0 未验证',
  `type_id` tinyint(3) NULL DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  `create_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册IP',
  `update_time` int(10) NULL DEFAULT 0 COMMENT '修改时间',
  `create_time` int(10) NULL DEFAULT 0 COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_users
-- ----------------------------
INSERT INTO `hc_users` VALUES (1, 'test001@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 1615367899, '127.0.0.1', '22916578', '', 0, 0, 1, 1, '127.0.0.1', 1615367899, 1615367899);
INSERT INTO `hc_users` VALUES (2, 'test002@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 1615367899, '127.0.0.1', '127798', '13285311189', 0, 0, 2, 1, '127.0.0.1', 1615367899, 1615367899);
INSERT INTO `hc_users` VALUES (3, 'test003@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1615367899, '127.0.0.1', '127798', '', 0, 0, 1, 1, '127.0.0.1', 1615367899, 1615367899);
INSERT INTO `hc_users` VALUES (4, 'test004@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1615367899, '127.0.0.1', '127798', '', 0, 0, 1, 1, '127.0.0.1', 1615367899, 1615367899);
INSERT INTO `hc_users` VALUES (5, 'test005@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1615367899, '127.0.0.1', '127798', '', 0, 0, 1, 1, '127.0.0.1', 1615367899, 1615367899);
INSERT INTO `hc_users` VALUES (6, 'test007@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 1615367899, '127.0.0.1', '127798', NULL, 0, 0, 1, 1, '127.0.0.1', 1615367899, 1615367899);
INSERT INTO `hc_users` VALUES (7, 'test008@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 1615367899, '127.0.0.1', '127798', '', 1, 0, 1, 1, '127.0.0.1', 1615367899, 1615367899);
INSERT INTO `hc_users` VALUES (13, 'test009@qq.com', '96e79218965eb72c92a549dd5a330112', 0, 1615367899, '127.0.0.1', '127798', NULL, 0, 0, 1, 1, '127.0.0.1', 1615367899, 1615367899);

-- ----------------------------
-- Table structure for hc_users_type
-- ----------------------------
DROP TABLE IF EXISTS `hc_users_type`;
CREATE TABLE `hc_users_type`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组名称',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `sort` int(5) UNSIGNED NOT NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hc_users_type
-- ----------------------------
INSERT INTO `hc_users_type` VALUES (1, 1615367899, 1615367899, '普通会员', '普通会员', 1, 1);
INSERT INTO `hc_users_type` VALUES (2, 1615367899, 1615367899, 'VIP会员', 'VIP会员', 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
