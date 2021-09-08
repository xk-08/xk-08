-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

INSERT INTO `cmf_admin_menu` (`id`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`) VALUES
(1,	0,	0,	0,	20,	'admin',	'Plugin',	'default',	'',	'插件管理',	'cloud',	'插件管理'),
(2,	1,	1,	1,	10000,	'admin',	'Hook',	'index',	'',	'钩子管理',	'',	'钩子管理'),
(3,	2,	1,	0,	10000,	'admin',	'Hook',	'plugins',	'',	'钩子插件管理',	'',	'钩子插件管理'),
(4,	2,	2,	0,	10000,	'admin',	'Hook',	'pluginListOrder',	'',	'钩子插件排序',	'',	'钩子插件排序'),
(5,	2,	1,	0,	10000,	'admin',	'Hook',	'sync',	'',	'同步钩子',	'',	'同步钩子'),
(6,	0,	0,	1,	0,	'admin',	'Setting',	'default',	'',	'设置',	'cogs',	'系统设置入口'),
(7,	6,	1,	0,	50,	'admin',	'Link',	'index',	'',	'友情链接',	'',	'友情链接管理'),
(8,	7,	1,	0,	10000,	'admin',	'Link',	'add',	'',	'添加友情链接',	'',	'添加友情链接'),
(9,	7,	2,	0,	10000,	'admin',	'Link',	'addPost',	'',	'添加友情链接提交保存',	'',	'添加友情链接提交保存'),
(10,	7,	1,	0,	10000,	'admin',	'Link',	'edit',	'',	'编辑友情链接',	'',	'编辑友情链接'),
(11,	7,	2,	0,	10000,	'admin',	'Link',	'editPost',	'',	'编辑友情链接提交保存',	'',	'编辑友情链接提交保存'),
(12,	7,	2,	0,	10000,	'admin',	'Link',	'delete',	'',	'删除友情链接',	'',	'删除友情链接'),
(13,	7,	2,	0,	10000,	'admin',	'Link',	'listOrder',	'',	'友情链接排序',	'',	'友情链接排序'),
(14,	7,	2,	0,	10000,	'admin',	'Link',	'toggle',	'',	'友情链接显示隐藏',	'',	'友情链接显示隐藏'),
(15,	6,	1,	1,	10,	'admin',	'Mailer',	'index',	'',	'邮箱配置',	'',	'邮箱配置'),
(16,	15,	2,	0,	10000,	'admin',	'Mailer',	'indexPost',	'',	'邮箱配置提交保存',	'',	'邮箱配置提交保存'),
(17,	15,	1,	0,	10000,	'admin',	'Mailer',	'template',	'',	'邮件模板',	'',	'邮件模板'),
(18,	15,	2,	0,	10000,	'admin',	'Mailer',	'templatePost',	'',	'邮件模板提交',	'',	'邮件模板提交'),
(19,	15,	1,	0,	10000,	'admin',	'Mailer',	'test',	'',	'邮件发送测试',	'',	'邮件发送测试'),
(20,	6,	1,	1,	10000,	'admin',	'Menu',	'index',	'',	'后台菜单',	'',	'后台菜单管理'),
(21,	20,	1,	0,	10000,	'admin',	'Menu',	'lists',	'',	'所有菜单',	'',	'后台所有菜单列表'),
(22,	20,	1,	0,	10000,	'admin',	'Menu',	'add',	'',	'后台菜单添加',	'',	'后台菜单添加'),
(23,	20,	2,	0,	10000,	'admin',	'Menu',	'addPost',	'',	'后台菜单添加提交保存',	'',	'后台菜单添加提交保存'),
(24,	20,	1,	0,	10000,	'admin',	'Menu',	'edit',	'',	'后台菜单编辑',	'',	'后台菜单编辑'),
(25,	20,	2,	0,	10000,	'admin',	'Menu',	'editPost',	'',	'后台菜单编辑提交保存',	'',	'后台菜单编辑提交保存'),
(26,	20,	2,	0,	10000,	'admin',	'Menu',	'delete',	'',	'后台菜单删除',	'',	'后台菜单删除'),
(27,	20,	2,	0,	10000,	'admin',	'Menu',	'listOrder',	'',	'后台菜单排序',	'',	'后台菜单排序'),
(28,	20,	1,	0,	10000,	'admin',	'Menu',	'getActions',	'',	'导入新后台菜单',	'',	'导入新后台菜单'),
(29,	6,	1,	0,	30,	'admin',	'Nav',	'index',	'',	'导航管理',	'',	'导航管理'),
(30,	29,	1,	0,	10000,	'admin',	'Nav',	'add',	'',	'添加导航',	'',	'添加导航'),
(31,	29,	2,	0,	10000,	'admin',	'Nav',	'addPost',	'',	'添加导航提交保存',	'',	'添加导航提交保存'),
(32,	29,	1,	0,	10000,	'admin',	'Nav',	'edit',	'',	'编辑导航',	'',	'编辑导航'),
(33,	29,	2,	0,	10000,	'admin',	'Nav',	'editPost',	'',	'编辑导航提交保存',	'',	'编辑导航提交保存'),
(34,	29,	2,	0,	10000,	'admin',	'Nav',	'delete',	'',	'删除导航',	'',	'删除导航'),
(35,	29,	1,	0,	10000,	'admin',	'NavMenu',	'index',	'',	'导航菜单',	'',	'导航菜单'),
(36,	35,	1,	0,	10000,	'admin',	'NavMenu',	'add',	'',	'添加导航菜单',	'',	'添加导航菜单'),
(37,	35,	2,	0,	10000,	'admin',	'NavMenu',	'addPost',	'',	'添加导航菜单提交保存',	'',	'添加导航菜单提交保存'),
(38,	35,	1,	0,	10000,	'admin',	'NavMenu',	'edit',	'',	'编辑导航菜单',	'',	'编辑导航菜单'),
(39,	35,	2,	0,	10000,	'admin',	'NavMenu',	'editPost',	'',	'编辑导航菜单提交保存',	'',	'编辑导航菜单提交保存'),
(40,	35,	2,	0,	10000,	'admin',	'NavMenu',	'delete',	'',	'删除导航菜单',	'',	'删除导航菜单'),
(41,	35,	2,	0,	10000,	'admin',	'NavMenu',	'listOrder',	'',	'导航菜单排序',	'',	'导航菜单排序'),
(42,	1,	1,	1,	10000,	'admin',	'Plugin',	'index',	'',	'插件列表',	'',	'插件列表'),
(43,	42,	2,	0,	10000,	'admin',	'Plugin',	'toggle',	'',	'插件启用禁用',	'',	'插件启用禁用'),
(44,	42,	1,	1,	10000,	'admin',	'Plugin',	'setting',	'',	'插件设置',	'',	'插件设置'),
(45,	42,	2,	0,	10000,	'admin',	'Plugin',	'settingPost',	'',	'插件设置提交',	'',	'插件设置提交'),
(46,	42,	2,	0,	10000,	'admin',	'Plugin',	'install',	'',	'插件安装',	'',	'插件安装'),
(47,	42,	2,	0,	10000,	'admin',	'Plugin',	'update',	'',	'插件更新',	'',	'插件更新'),
(48,	42,	2,	0,	10000,	'admin',	'Plugin',	'uninstall',	'',	'卸载插件',	'',	'卸载插件'),
(49,	109,	0,	0,	10000,	'admin',	'User',	'default',	'',	'管理组',	'',	'管理组'),
(50,	49,	1,	1,	10000,	'admin',	'Rbac',	'index',	'',	'角色管理',	'',	'角色管理'),
(51,	50,	1,	0,	10000,	'admin',	'Rbac',	'roleAdd',	'',	'添加角色',	'',	'添加角色'),
(52,	50,	2,	0,	10000,	'admin',	'Rbac',	'roleAddPost',	'',	'添加角色提交',	'',	'添加角色提交'),
(53,	50,	1,	0,	10000,	'admin',	'Rbac',	'roleEdit',	'',	'编辑角色',	'',	'编辑角色'),
(54,	50,	2,	0,	10000,	'admin',	'Rbac',	'roleEditPost',	'',	'编辑角色提交',	'',	'编辑角色提交'),
(55,	50,	2,	0,	10000,	'admin',	'Rbac',	'roleDelete',	'',	'删除角色',	'',	'删除角色'),
(56,	50,	1,	0,	10000,	'admin',	'Rbac',	'authorize',	'',	'设置角色权限',	'',	'设置角色权限'),
(57,	50,	2,	0,	10000,	'admin',	'Rbac',	'authorizePost',	'',	'角色授权提交',	'',	'角色授权提交'),
(58,	0,	1,	0,	10000,	'admin',	'RecycleBin',	'index',	'',	'回收站',	'',	'回收站'),
(59,	58,	2,	0,	10000,	'admin',	'RecycleBin',	'restore',	'',	'回收站还原',	'',	'回收站还原'),
(60,	58,	2,	0,	10000,	'admin',	'RecycleBin',	'delete',	'',	'回收站彻底删除',	'',	'回收站彻底删除'),
(61,	6,	1,	0,	10000,	'admin',	'Route',	'index',	'',	'URL美化',	'',	'URL规则管理'),
(62,	61,	1,	0,	10000,	'admin',	'Route',	'add',	'',	'添加路由规则',	'',	'添加路由规则'),
(63,	61,	2,	0,	10000,	'admin',	'Route',	'addPost',	'',	'添加路由规则提交',	'',	'添加路由规则提交'),
(64,	61,	1,	0,	10000,	'admin',	'Route',	'edit',	'',	'路由规则编辑',	'',	'路由规则编辑'),
(65,	61,	2,	0,	10000,	'admin',	'Route',	'editPost',	'',	'路由规则编辑提交',	'',	'路由规则编辑提交'),
(66,	61,	2,	0,	10000,	'admin',	'Route',	'delete',	'',	'路由规则删除',	'',	'路由规则删除'),
(67,	61,	2,	0,	10000,	'admin',	'Route',	'ban',	'',	'路由规则禁用',	'',	'路由规则禁用'),
(68,	61,	2,	0,	10000,	'admin',	'Route',	'open',	'',	'路由规则启用',	'',	'路由规则启用'),
(69,	61,	2,	0,	10000,	'admin',	'Route',	'listOrder',	'',	'路由规则排序',	'',	'路由规则排序'),
(70,	61,	1,	0,	10000,	'admin',	'Route',	'select',	'',	'选择URL',	'',	'选择URL'),
(71,	6,	1,	1,	0,	'admin',	'Setting',	'site',	'',	'网站信息',	'',	'网站信息'),
(72,	71,	2,	0,	10000,	'admin',	'Setting',	'sitePost',	'',	'网站信息设置提交',	'',	'网站信息设置提交'),
(73,	6,	1,	0,	10000,	'admin',	'Setting',	'password',	'',	'密码修改',	'',	'密码修改'),
(74,	73,	2,	0,	10000,	'admin',	'Setting',	'passwordPost',	'',	'密码修改提交',	'',	'密码修改提交'),
(75,	6,	1,	0,	10000,	'admin',	'Setting',	'upload',	'',	'上传设置',	'',	'上传设置'),
(76,	75,	2,	0,	10000,	'admin',	'Setting',	'uploadPost',	'',	'上传设置提交',	'',	'上传设置提交'),
(77,	6,	1,	0,	10000,	'admin',	'Setting',	'clearCache',	'',	'清除缓存',	'',	'清除缓存'),
(78,	6,	1,	0,	40,	'admin',	'Slide',	'index',	'',	'幻灯片管理',	'',	'幻灯片管理'),
(79,	78,	1,	0,	10000,	'admin',	'Slide',	'add',	'',	'添加幻灯片',	'',	'添加幻灯片'),
(80,	78,	2,	0,	10000,	'admin',	'Slide',	'addPost',	'',	'添加幻灯片提交',	'',	'添加幻灯片提交'),
(81,	78,	1,	0,	10000,	'admin',	'Slide',	'edit',	'',	'编辑幻灯片',	'',	'编辑幻灯片'),
(82,	78,	2,	0,	10000,	'admin',	'Slide',	'editPost',	'',	'编辑幻灯片提交',	'',	'编辑幻灯片提交'),
(83,	78,	2,	0,	10000,	'admin',	'Slide',	'delete',	'',	'删除幻灯片',	'',	'删除幻灯片'),
(84,	78,	1,	0,	10000,	'admin',	'SlideItem',	'index',	'',	'幻灯片页面列表',	'',	'幻灯片页面列表'),
(85,	84,	1,	0,	10000,	'admin',	'SlideItem',	'add',	'',	'幻灯片页面添加',	'',	'幻灯片页面添加'),
(86,	84,	2,	0,	10000,	'admin',	'SlideItem',	'addPost',	'',	'幻灯片页面添加提交',	'',	'幻灯片页面添加提交'),
(87,	84,	1,	0,	10000,	'admin',	'SlideItem',	'edit',	'',	'幻灯片页面编辑',	'',	'幻灯片页面编辑'),
(88,	84,	2,	0,	10000,	'admin',	'SlideItem',	'editPost',	'',	'幻灯片页面编辑提交',	'',	'幻灯片页面编辑提交'),
(89,	84,	2,	0,	10000,	'admin',	'SlideItem',	'delete',	'',	'幻灯片页面删除',	'',	'幻灯片页面删除'),
(90,	84,	2,	0,	10000,	'admin',	'SlideItem',	'ban',	'',	'幻灯片页面隐藏',	'',	'幻灯片页面隐藏'),
(91,	84,	2,	0,	10000,	'admin',	'SlideItem',	'cancelBan',	'',	'幻灯片页面显示',	'',	'幻灯片页面显示'),
(92,	84,	2,	0,	10000,	'admin',	'SlideItem',	'listOrder',	'',	'幻灯片页面排序',	'',	'幻灯片页面排序'),
(93,	6,	1,	0,	10000,	'admin',	'Storage',	'index',	'',	'文件存储',	'',	'文件存储'),
(94,	93,	2,	0,	10000,	'admin',	'Storage',	'settingPost',	'',	'文件存储设置提交',	'',	'文件存储设置提交'),
(95,	6,	1,	0,	20,	'admin',	'Theme',	'index',	'',	'模板管理',	'',	'模板管理'),
(96,	95,	1,	0,	10000,	'admin',	'Theme',	'install',	'',	'安装模板',	'',	'安装模板'),
(97,	95,	2,	0,	10000,	'admin',	'Theme',	'uninstall',	'',	'卸载模板',	'',	'卸载模板'),
(98,	95,	2,	0,	10000,	'admin',	'Theme',	'installTheme',	'',	'模板安装',	'',	'模板安装'),
(99,	95,	2,	0,	10000,	'admin',	'Theme',	'update',	'',	'模板更新',	'',	'模板更新'),
(100,	95,	2,	0,	10000,	'admin',	'Theme',	'active',	'',	'启用模板',	'',	'启用模板'),
(101,	95,	1,	0,	10000,	'admin',	'Theme',	'files',	'',	'模板文件列表',	'',	'启用模板'),
(102,	95,	1,	0,	10000,	'admin',	'Theme',	'fileSetting',	'',	'模板文件设置',	'',	'模板文件设置'),
(103,	95,	1,	0,	10000,	'admin',	'Theme',	'fileArrayData',	'',	'模板文件数组数据列表',	'',	'模板文件数组数据列表'),
(104,	95,	2,	0,	10000,	'admin',	'Theme',	'fileArrayDataEdit',	'',	'模板文件数组数据添加编辑',	'',	'模板文件数组数据添加编辑'),
(105,	95,	2,	0,	10000,	'admin',	'Theme',	'fileArrayDataEditPost',	'',	'模板文件数组数据添加编辑提交保存',	'',	'模板文件数组数据添加编辑提交保存'),
(106,	95,	2,	0,	10000,	'admin',	'Theme',	'fileArrayDataDelete',	'',	'模板文件数组数据删除',	'',	'模板文件数组数据删除'),
(107,	95,	2,	0,	10000,	'admin',	'Theme',	'settingPost',	'',	'模板文件编辑提交保存',	'',	'模板文件编辑提交保存'),
(108,	95,	1,	0,	10000,	'admin',	'Theme',	'dataSource',	'',	'模板文件设置数据源',	'',	'模板文件设置数据源'),
(109,	0,	0,	0,	10,	'user',	'AdminIndex',	'default',	'',	'用户管理',	'group',	'用户管理'),
(110,	49,	1,	1,	10000,	'admin',	'User',	'index',	'',	'管理员',	'',	'管理员管理'),
(111,	110,	1,	0,	10000,	'admin',	'User',	'add',	'',	'管理员添加',	'',	'管理员添加'),
(112,	110,	2,	0,	10000,	'admin',	'User',	'addPost',	'',	'管理员添加提交',	'',	'管理员添加提交'),
(113,	110,	1,	0,	10000,	'admin',	'User',	'edit',	'',	'管理员编辑',	'',	'管理员编辑'),
(114,	110,	2,	0,	10000,	'admin',	'User',	'editPost',	'',	'管理员编辑提交',	'',	'管理员编辑提交'),
(115,	110,	1,	0,	10000,	'admin',	'User',	'userInfo',	'',	'个人信息',	'',	'管理员个人信息修改'),
(116,	110,	2,	0,	10000,	'admin',	'User',	'userInfoPost',	'',	'管理员个人信息修改提交',	'',	'管理员个人信息修改提交'),
(117,	110,	2,	0,	10000,	'admin',	'User',	'delete',	'',	'管理员删除',	'',	'管理员删除'),
(118,	110,	2,	0,	10000,	'admin',	'User',	'ban',	'',	'停用管理员',	'',	'停用管理员'),
(119,	110,	2,	0,	10000,	'admin',	'User',	'cancelBan',	'',	'启用管理员',	'',	'启用管理员'),
(120,	0,	0,	0,	30,	'portal',	'AdminIndex',	'default',	'',	'门户管理',	'th',	'门户管理'),
(121,	120,	1,	1,	10000,	'portal',	'AdminArticle',	'index',	'',	'文章管理',	'',	'文章列表'),
(122,	121,	1,	0,	10000,	'portal',	'AdminArticle',	'add',	'',	'添加文章',	'',	'添加文章'),
(123,	121,	2,	0,	10000,	'portal',	'AdminArticle',	'addPost',	'',	'添加文章提交',	'',	'添加文章提交'),
(124,	121,	1,	0,	10000,	'portal',	'AdminArticle',	'edit',	'',	'编辑文章',	'',	'编辑文章'),
(125,	121,	2,	0,	10000,	'portal',	'AdminArticle',	'editPost',	'',	'编辑文章提交',	'',	'编辑文章提交'),
(126,	121,	2,	0,	10000,	'portal',	'AdminArticle',	'delete',	'',	'文章删除',	'',	'文章删除'),
(127,	121,	2,	0,	10000,	'portal',	'AdminArticle',	'publish',	'',	'文章发布',	'',	'文章发布'),
(128,	121,	2,	0,	10000,	'portal',	'AdminArticle',	'top',	'',	'文章置顶',	'',	'文章置顶'),
(129,	121,	2,	0,	10000,	'portal',	'AdminArticle',	'recommend',	'',	'文章推荐',	'',	'文章推荐'),
(130,	121,	2,	0,	10000,	'portal',	'AdminArticle',	'listOrder',	'',	'文章排序',	'',	'文章排序'),
(131,	120,	1,	1,	10000,	'portal',	'AdminCategory',	'index',	'',	'分类管理',	'',	'文章分类列表'),
(132,	131,	1,	0,	10000,	'portal',	'AdminCategory',	'add',	'',	'添加文章分类',	'',	'添加文章分类'),
(133,	131,	2,	0,	10000,	'portal',	'AdminCategory',	'addPost',	'',	'添加文章分类提交',	'',	'添加文章分类提交'),
(134,	131,	1,	0,	10000,	'portal',	'AdminCategory',	'edit',	'',	'编辑文章分类',	'',	'编辑文章分类'),
(135,	131,	2,	0,	10000,	'portal',	'AdminCategory',	'editPost',	'',	'编辑文章分类提交',	'',	'编辑文章分类提交'),
(136,	131,	1,	0,	10000,	'portal',	'AdminCategory',	'select',	'',	'文章分类选择对话框',	'',	'文章分类选择对话框'),
(137,	131,	2,	0,	10000,	'portal',	'AdminCategory',	'listOrder',	'',	'文章分类排序',	'',	'文章分类排序'),
(138,	131,	2,	0,	10000,	'portal',	'AdminCategory',	'delete',	'',	'删除文章分类',	'',	'删除文章分类'),
(139,	120,	1,	1,	10000,	'portal',	'AdminPage',	'index',	'',	'页面管理',	'',	'页面管理'),
(140,	139,	1,	0,	10000,	'portal',	'AdminPage',	'add',	'',	'添加页面',	'',	'添加页面'),
(141,	139,	2,	0,	10000,	'portal',	'AdminPage',	'addPost',	'',	'添加页面提交',	'',	'添加页面提交'),
(142,	139,	1,	0,	10000,	'portal',	'AdminPage',	'edit',	'',	'编辑页面',	'',	'编辑页面'),
(143,	139,	2,	0,	10000,	'portal',	'AdminPage',	'editPost',	'',	'编辑页面提交',	'',	'编辑页面提交'),
(144,	139,	2,	0,	10000,	'portal',	'AdminPage',	'delete',	'',	'删除页面',	'',	'删除页面'),
(145,	120,	1,	1,	10000,	'portal',	'AdminTag',	'index',	'',	'文章标签',	'',	'文章标签'),
(146,	145,	1,	0,	10000,	'portal',	'AdminTag',	'add',	'',	'添加文章标签',	'',	'添加文章标签'),
(147,	145,	2,	0,	10000,	'portal',	'AdminTag',	'addPost',	'',	'添加文章标签提交',	'',	'添加文章标签提交'),
(148,	145,	2,	0,	10000,	'portal',	'AdminTag',	'upStatus',	'',	'更新标签状态',	'',	'更新标签状态'),
(149,	145,	2,	0,	10000,	'portal',	'AdminTag',	'delete',	'',	'删除文章标签',	'',	'删除文章标签'),
(150,	0,	1,	0,	10000,	'user',	'AdminAsset',	'index',	'',	'资源管理',	'file',	'资源管理列表'),
(151,	150,	2,	0,	10000,	'user',	'AdminAsset',	'delete',	'',	'删除文件',	'',	'删除文件'),
(152,	109,	0,	0,	10000,	'user',	'AdminIndex',	'default1',	'',	'用户组',	'',	'用户组'),
(153,	0,	1,	1,	10000,	'user',	'AdminIndex',	'index',	'',	'本站用户',	'',	'本站用户'),
(154,	153,	2,	0,	10000,	'user',	'AdminIndex',	'ban',	'',	'本站用户拉黑',	'',	'本站用户拉黑'),
(155,	153,	2,	0,	10000,	'user',	'AdminIndex',	'cancelBan',	'',	'本站用户启用',	'',	'本站用户启用'),
(156,	152,	1,	0,	10000,	'user',	'AdminOauth',	'index',	'',	'第三方用户',	'',	'第三方用户'),
(157,	156,	2,	0,	10000,	'user',	'AdminOauth',	'delete',	'',	'删除第三方用户绑定',	'',	'删除第三方用户绑定'),
(158,	6,	1,	0,	10000,	'user',	'AdminUserAction',	'index',	'',	'用户操作管理',	'',	'用户操作管理'),
(159,	158,	1,	0,	10000,	'user',	'AdminUserAction',	'edit',	'',	'编辑用户操作',	'',	'编辑用户操作'),
(160,	158,	2,	0,	10000,	'user',	'AdminUserAction',	'editPost',	'',	'编辑用户操作提交',	'',	'编辑用户操作提交'),
(161,	158,	1,	0,	10000,	'user',	'AdminUserAction',	'sync',	'',	'同步用户操作',	'',	'同步用户操作'),
(162,	0,	1,	1,	40,	'Admin',	'Members',	'default',	'',	'会员管理',	'arrows',	''),
(163,	162,	1,	0,	10000,	'Admin',	'Members',	'index',	'',	'会员列表',	'',	''),
(164,	6,	1,	1,	10000,	'Admin',	'Systems',	'index',	'',	'公共配置',	'',	''),
(165,	0,	1,	0,	60,	'Admin',	'Download',	'default',	'',	'下载管理',	'download',	''),
(166,	165,	1,	0,	10000,	'Admin',	'Download',	'index',	'',	'下载列表',	'',	''),
(167,	0,	1,	1,	10000,	'Admin',	'members',	'charge',	'',	'充值记录',	'',	''),
(168,	165,	1,	0,	10000,	'Admin',	'Download',	'charge',	'',	'手动添加下载数',	'',	''),
(169,	0,	0,	0,	50,	'Admin',	'App',	'default',	'',	'应用管理',	'android',	''),
(170,	0,	1,	1,	10000,	'Admin',	'App',	'index',	'',	'应用列表',	'',	''),
(171,	109,	1,	0,	10000,	'User',	'admin_index',	'auth_info_manage',	'',	'认证信息管理',	'',	''),
(172,	0,	1,	1,	10000,	'Admin',	'Certificate',	'index',	'',	'证书管理',	'certificate',	''),
(173,	0,	1,	0,	10000,	'Admin',	'Report',	'index',	'',	'举报管理',	'envelope-open-o',	''),
(174,	0,	1,	1,	10000,	'admin',	'Download',	'supindex',	'',	'费用管理',	'',	''),
(175,	0,	1,	1,	10000,	'admin',	'Download',	'sup_add_charge',	'',	'下载明细',	'',	''),
(176,	162,	1,	0,	10000,	'admin',	'members',	'agent',	'',	'代理管理',	'',	''),
(177,	162,	1,	1,	10000,	'admin',	'members',	'consume',	'',	'消费记录',	'',	'');

DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='资源表';

INSERT INTO `cmf_asset` (`id`, `user_id`, `file_size`, `create_time`, `status`, `download_times`, `file_key`, `filename`, `file_path`, `file_md5`, `file_sha1`, `suffix`, `more`) VALUES
(65,	1,	76606,	1577906863,	1,	0,	'4ee8d547c38d7b014b0e80c6e8f6fcc7264a2ecfb1c463c68829a589d92a716e',	'Admin.php',	'20200102/291d022ef76c11508a93f32eb7c50fca.php',	'4ee8d547c38d7b014b0e80c6e8f6fcc7',	'f08a5e252b18910ad707fa67aeca4b78cfe25b08',	'php',	NULL),
(66,	1,	41869,	1592388809,	1,	0,	'7b2316bef9988165579857a5d39ad1d417be839522e2ebeb403a00d8503fbb22',	'阿奇魔签.png',	'admin/20200617/623864957c41efe75ac0139f024626bf.png',	'7b2316bef9988165579857a5d39ad1d4',	'574435ac522d1dbcdc7edece807d1874b449711f',	'png',	NULL);

DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='权限授权表';


DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='权限规则表';

INSERT INTO `cmf_auth_rule` (`id`, `status`, `app`, `type`, `name`, `param`, `title`, `condition`) VALUES
(1,	1,	'admin',	'admin_url',	'admin/Hook/index',	'',	'钩子管理',	''),
(2,	1,	'admin',	'admin_url',	'admin/Hook/plugins',	'',	'钩子插件管理',	''),
(3,	1,	'admin',	'admin_url',	'admin/Hook/pluginListOrder',	'',	'钩子插件排序',	''),
(4,	1,	'admin',	'admin_url',	'admin/Hook/sync',	'',	'同步钩子',	''),
(5,	1,	'admin',	'admin_url',	'admin/Link/index',	'',	'友情链接',	''),
(6,	1,	'admin',	'admin_url',	'admin/Link/add',	'',	'添加友情链接',	''),
(7,	1,	'admin',	'admin_url',	'admin/Link/addPost',	'',	'添加友情链接提交保存',	''),
(8,	1,	'admin',	'admin_url',	'admin/Link/edit',	'',	'编辑友情链接',	''),
(9,	1,	'admin',	'admin_url',	'admin/Link/editPost',	'',	'编辑友情链接提交保存',	''),
(10,	1,	'admin',	'admin_url',	'admin/Link/delete',	'',	'删除友情链接',	''),
(11,	1,	'admin',	'admin_url',	'admin/Link/listOrder',	'',	'友情链接排序',	''),
(12,	1,	'admin',	'admin_url',	'admin/Link/toggle',	'',	'友情链接显示隐藏',	''),
(13,	1,	'admin',	'admin_url',	'admin/Mailer/index',	'',	'邮箱配置',	''),
(14,	1,	'admin',	'admin_url',	'admin/Mailer/indexPost',	'',	'邮箱配置提交保存',	''),
(15,	1,	'admin',	'admin_url',	'admin/Mailer/template',	'',	'邮件模板',	''),
(16,	1,	'admin',	'admin_url',	'admin/Mailer/templatePost',	'',	'邮件模板提交',	''),
(17,	1,	'admin',	'admin_url',	'admin/Mailer/test',	'',	'邮件发送测试',	''),
(18,	1,	'admin',	'admin_url',	'admin/Menu/index',	'',	'后台菜单',	''),
(19,	1,	'admin',	'admin_url',	'admin/Menu/lists',	'',	'所有菜单',	''),
(20,	1,	'admin',	'admin_url',	'admin/Menu/add',	'',	'后台菜单添加',	''),
(21,	1,	'admin',	'admin_url',	'admin/Menu/addPost',	'',	'后台菜单添加提交保存',	''),
(22,	1,	'admin',	'admin_url',	'admin/Menu/edit',	'',	'后台菜单编辑',	''),
(23,	1,	'admin',	'admin_url',	'admin/Menu/editPost',	'',	'后台菜单编辑提交保存',	''),
(24,	1,	'admin',	'admin_url',	'admin/Menu/delete',	'',	'后台菜单删除',	''),
(25,	1,	'admin',	'admin_url',	'admin/Menu/listOrder',	'',	'后台菜单排序',	''),
(26,	1,	'admin',	'admin_url',	'admin/Menu/getActions',	'',	'导入新后台菜单',	''),
(27,	1,	'admin',	'admin_url',	'admin/Nav/index',	'',	'导航管理',	''),
(28,	1,	'admin',	'admin_url',	'admin/Nav/add',	'',	'添加导航',	''),
(29,	1,	'admin',	'admin_url',	'admin/Nav/addPost',	'',	'添加导航提交保存',	''),
(30,	1,	'admin',	'admin_url',	'admin/Nav/edit',	'',	'编辑导航',	''),
(31,	1,	'admin',	'admin_url',	'admin/Nav/editPost',	'',	'编辑导航提交保存',	''),
(32,	1,	'admin',	'admin_url',	'admin/Nav/delete',	'',	'删除导航',	''),
(33,	1,	'admin',	'admin_url',	'admin/NavMenu/index',	'',	'导航菜单',	''),
(34,	1,	'admin',	'admin_url',	'admin/NavMenu/add',	'',	'添加导航菜单',	''),
(35,	1,	'admin',	'admin_url',	'admin/NavMenu/addPost',	'',	'添加导航菜单提交保存',	''),
(36,	1,	'admin',	'admin_url',	'admin/NavMenu/edit',	'',	'编辑导航菜单',	''),
(37,	1,	'admin',	'admin_url',	'admin/NavMenu/editPost',	'',	'编辑导航菜单提交保存',	''),
(38,	1,	'admin',	'admin_url',	'admin/NavMenu/delete',	'',	'删除导航菜单',	''),
(39,	1,	'admin',	'admin_url',	'admin/NavMenu/listOrder',	'',	'导航菜单排序',	''),
(40,	1,	'admin',	'admin_url',	'admin/Plugin/default',	'',	'插件管理',	''),
(41,	1,	'admin',	'admin_url',	'admin/Plugin/index',	'',	'插件列表',	''),
(42,	1,	'admin',	'admin_url',	'admin/Plugin/toggle',	'',	'插件启用禁用',	''),
(43,	1,	'admin',	'admin_url',	'admin/Plugin/setting',	'',	'插件设置',	''),
(44,	1,	'admin',	'admin_url',	'admin/Plugin/settingPost',	'',	'插件设置提交',	''),
(45,	1,	'admin',	'admin_url',	'admin/Plugin/install',	'',	'插件安装',	''),
(46,	1,	'admin',	'admin_url',	'admin/Plugin/update',	'',	'插件更新',	''),
(47,	1,	'admin',	'admin_url',	'admin/Plugin/uninstall',	'',	'卸载插件',	''),
(48,	1,	'admin',	'admin_url',	'admin/Rbac/index',	'',	'角色管理',	''),
(49,	1,	'admin',	'admin_url',	'admin/Rbac/roleAdd',	'',	'添加角色',	''),
(50,	1,	'admin',	'admin_url',	'admin/Rbac/roleAddPost',	'',	'添加角色提交',	''),
(51,	1,	'admin',	'admin_url',	'admin/Rbac/roleEdit',	'',	'编辑角色',	''),
(52,	1,	'admin',	'admin_url',	'admin/Rbac/roleEditPost',	'',	'编辑角色提交',	''),
(53,	1,	'admin',	'admin_url',	'admin/Rbac/roleDelete',	'',	'删除角色',	''),
(54,	1,	'admin',	'admin_url',	'admin/Rbac/authorize',	'',	'设置角色权限',	''),
(55,	1,	'admin',	'admin_url',	'admin/Rbac/authorizePost',	'',	'角色授权提交',	''),
(56,	1,	'admin',	'admin_url',	'admin/RecycleBin/index',	'',	'回收站',	''),
(57,	1,	'admin',	'admin_url',	'admin/RecycleBin/restore',	'',	'回收站还原',	''),
(58,	1,	'admin',	'admin_url',	'admin/RecycleBin/delete',	'',	'回收站彻底删除',	''),
(59,	1,	'admin',	'admin_url',	'admin/Route/index',	'',	'URL美化',	''),
(60,	1,	'admin',	'admin_url',	'admin/Route/add',	'',	'添加路由规则',	''),
(61,	1,	'admin',	'admin_url',	'admin/Route/addPost',	'',	'添加路由规则提交',	''),
(62,	1,	'admin',	'admin_url',	'admin/Route/edit',	'',	'路由规则编辑',	''),
(63,	1,	'admin',	'admin_url',	'admin/Route/editPost',	'',	'路由规则编辑提交',	''),
(64,	1,	'admin',	'admin_url',	'admin/Route/delete',	'',	'路由规则删除',	''),
(65,	1,	'admin',	'admin_url',	'admin/Route/ban',	'',	'路由规则禁用',	''),
(66,	1,	'admin',	'admin_url',	'admin/Route/open',	'',	'路由规则启用',	''),
(67,	1,	'admin',	'admin_url',	'admin/Route/listOrder',	'',	'路由规则排序',	''),
(68,	1,	'admin',	'admin_url',	'admin/Route/select',	'',	'选择URL',	''),
(69,	1,	'admin',	'admin_url',	'admin/Setting/default',	'',	'设置',	''),
(70,	1,	'admin',	'admin_url',	'admin/Setting/site',	'',	'网站信息',	''),
(71,	1,	'admin',	'admin_url',	'admin/Setting/sitePost',	'',	'网站信息设置提交',	''),
(72,	1,	'admin',	'admin_url',	'admin/Setting/password',	'',	'密码修改',	''),
(73,	1,	'admin',	'admin_url',	'admin/Setting/passwordPost',	'',	'密码修改提交',	''),
(74,	1,	'admin',	'admin_url',	'admin/Setting/upload',	'',	'上传设置',	''),
(75,	1,	'admin',	'admin_url',	'admin/Setting/uploadPost',	'',	'上传设置提交',	''),
(76,	1,	'admin',	'admin_url',	'admin/Setting/clearCache',	'',	'清除缓存',	''),
(77,	1,	'admin',	'admin_url',	'admin/Slide/index',	'',	'幻灯片管理',	''),
(78,	1,	'admin',	'admin_url',	'admin/Slide/add',	'',	'添加幻灯片',	''),
(79,	1,	'admin',	'admin_url',	'admin/Slide/addPost',	'',	'添加幻灯片提交',	''),
(80,	1,	'admin',	'admin_url',	'admin/Slide/edit',	'',	'编辑幻灯片',	''),
(81,	1,	'admin',	'admin_url',	'admin/Slide/editPost',	'',	'编辑幻灯片提交',	''),
(82,	1,	'admin',	'admin_url',	'admin/Slide/delete',	'',	'删除幻灯片',	''),
(83,	1,	'admin',	'admin_url',	'admin/SlideItem/index',	'',	'幻灯片页面列表',	''),
(84,	1,	'admin',	'admin_url',	'admin/SlideItem/add',	'',	'幻灯片页面添加',	''),
(85,	1,	'admin',	'admin_url',	'admin/SlideItem/addPost',	'',	'幻灯片页面添加提交',	''),
(86,	1,	'admin',	'admin_url',	'admin/SlideItem/edit',	'',	'幻灯片页面编辑',	''),
(87,	1,	'admin',	'admin_url',	'admin/SlideItem/editPost',	'',	'幻灯片页面编辑提交',	''),
(88,	1,	'admin',	'admin_url',	'admin/SlideItem/delete',	'',	'幻灯片页面删除',	''),
(89,	1,	'admin',	'admin_url',	'admin/SlideItem/ban',	'',	'幻灯片页面隐藏',	''),
(90,	1,	'admin',	'admin_url',	'admin/SlideItem/cancelBan',	'',	'幻灯片页面显示',	''),
(91,	1,	'admin',	'admin_url',	'admin/SlideItem/listOrder',	'',	'幻灯片页面排序',	''),
(92,	1,	'admin',	'admin_url',	'admin/Storage/index',	'',	'文件存储',	''),
(93,	1,	'admin',	'admin_url',	'admin/Storage/settingPost',	'',	'文件存储设置提交',	''),
(94,	1,	'admin',	'admin_url',	'admin/Theme/index',	'',	'模板管理',	''),
(95,	1,	'admin',	'admin_url',	'admin/Theme/install',	'',	'安装模板',	''),
(96,	1,	'admin',	'admin_url',	'admin/Theme/uninstall',	'',	'卸载模板',	''),
(97,	1,	'admin',	'admin_url',	'admin/Theme/installTheme',	'',	'模板安装',	''),
(98,	1,	'admin',	'admin_url',	'admin/Theme/update',	'',	'模板更新',	''),
(99,	1,	'admin',	'admin_url',	'admin/Theme/active',	'',	'启用模板',	''),
(100,	1,	'admin',	'admin_url',	'admin/Theme/files',	'',	'模板文件列表',	''),
(101,	1,	'admin',	'admin_url',	'admin/Theme/fileSetting',	'',	'模板文件设置',	''),
(102,	1,	'admin',	'admin_url',	'admin/Theme/fileArrayData',	'',	'模板文件数组数据列表',	''),
(103,	1,	'admin',	'admin_url',	'admin/Theme/fileArrayDataEdit',	'',	'模板文件数组数据添加编辑',	''),
(104,	1,	'admin',	'admin_url',	'admin/Theme/fileArrayDataEditPost',	'',	'模板文件数组数据添加编辑提交保存',	''),
(105,	1,	'admin',	'admin_url',	'admin/Theme/fileArrayDataDelete',	'',	'模板文件数组数据删除',	''),
(106,	1,	'admin',	'admin_url',	'admin/Theme/settingPost',	'',	'模板文件编辑提交保存',	''),
(107,	1,	'admin',	'admin_url',	'admin/Theme/dataSource',	'',	'模板文件设置数据源',	''),
(108,	1,	'admin',	'admin_url',	'admin/User/default',	'',	'管理组',	''),
(109,	1,	'admin',	'admin_url',	'admin/User/index',	'',	'管理员',	''),
(110,	1,	'admin',	'admin_url',	'admin/User/add',	'',	'管理员添加',	''),
(111,	1,	'admin',	'admin_url',	'admin/User/addPost',	'',	'管理员添加提交',	''),
(112,	1,	'admin',	'admin_url',	'admin/User/edit',	'',	'管理员编辑',	''),
(113,	1,	'admin',	'admin_url',	'admin/User/editPost',	'',	'管理员编辑提交',	''),
(114,	1,	'admin',	'admin_url',	'admin/User/userInfo',	'',	'个人信息',	''),
(115,	1,	'admin',	'admin_url',	'admin/User/userInfoPost',	'',	'管理员个人信息修改提交',	''),
(116,	1,	'admin',	'admin_url',	'admin/User/delete',	'',	'管理员删除',	''),
(117,	1,	'admin',	'admin_url',	'admin/User/ban',	'',	'停用管理员',	''),
(118,	1,	'admin',	'admin_url',	'admin/User/cancelBan',	'',	'启用管理员',	''),
(119,	1,	'portal',	'admin_url',	'portal/AdminArticle/index',	'',	'文章管理',	''),
(120,	1,	'portal',	'admin_url',	'portal/AdminArticle/add',	'',	'添加文章',	''),
(121,	1,	'portal',	'admin_url',	'portal/AdminArticle/addPost',	'',	'添加文章提交',	''),
(122,	1,	'portal',	'admin_url',	'portal/AdminArticle/edit',	'',	'编辑文章',	''),
(123,	1,	'portal',	'admin_url',	'portal/AdminArticle/editPost',	'',	'编辑文章提交',	''),
(124,	1,	'portal',	'admin_url',	'portal/AdminArticle/delete',	'',	'文章删除',	''),
(125,	1,	'portal',	'admin_url',	'portal/AdminArticle/publish',	'',	'文章发布',	''),
(126,	1,	'portal',	'admin_url',	'portal/AdminArticle/top',	'',	'文章置顶',	''),
(127,	1,	'portal',	'admin_url',	'portal/AdminArticle/recommend',	'',	'文章推荐',	''),
(128,	1,	'portal',	'admin_url',	'portal/AdminArticle/listOrder',	'',	'文章排序',	''),
(129,	1,	'portal',	'admin_url',	'portal/AdminCategory/index',	'',	'分类管理',	''),
(130,	1,	'portal',	'admin_url',	'portal/AdminCategory/add',	'',	'添加文章分类',	''),
(131,	1,	'portal',	'admin_url',	'portal/AdminCategory/addPost',	'',	'添加文章分类提交',	''),
(132,	1,	'portal',	'admin_url',	'portal/AdminCategory/edit',	'',	'编辑文章分类',	''),
(133,	1,	'portal',	'admin_url',	'portal/AdminCategory/editPost',	'',	'编辑文章分类提交',	''),
(134,	1,	'portal',	'admin_url',	'portal/AdminCategory/select',	'',	'文章分类选择对话框',	''),
(135,	1,	'portal',	'admin_url',	'portal/AdminCategory/listOrder',	'',	'文章分类排序',	''),
(136,	1,	'portal',	'admin_url',	'portal/AdminCategory/delete',	'',	'删除文章分类',	''),
(137,	1,	'portal',	'admin_url',	'portal/AdminIndex/default',	'',	'门户管理',	''),
(138,	1,	'portal',	'admin_url',	'portal/AdminPage/index',	'',	'页面管理',	''),
(139,	1,	'portal',	'admin_url',	'portal/AdminPage/add',	'',	'添加页面',	''),
(140,	1,	'portal',	'admin_url',	'portal/AdminPage/addPost',	'',	'添加页面提交',	''),
(141,	1,	'portal',	'admin_url',	'portal/AdminPage/edit',	'',	'编辑页面',	''),
(142,	1,	'portal',	'admin_url',	'portal/AdminPage/editPost',	'',	'编辑页面提交',	''),
(143,	1,	'portal',	'admin_url',	'portal/AdminPage/delete',	'',	'删除页面',	''),
(144,	1,	'portal',	'admin_url',	'portal/AdminTag/index',	'',	'文章标签',	''),
(145,	1,	'portal',	'admin_url',	'portal/AdminTag/add',	'',	'添加文章标签',	''),
(146,	1,	'portal',	'admin_url',	'portal/AdminTag/addPost',	'',	'添加文章标签提交',	''),
(147,	1,	'portal',	'admin_url',	'portal/AdminTag/upStatus',	'',	'更新标签状态',	''),
(148,	1,	'portal',	'admin_url',	'portal/AdminTag/delete',	'',	'删除文章标签',	''),
(149,	1,	'user',	'admin_url',	'user/AdminAsset/index',	'',	'资源管理',	''),
(150,	1,	'user',	'admin_url',	'user/AdminAsset/delete',	'',	'删除文件',	''),
(151,	1,	'user',	'admin_url',	'user/AdminIndex/default',	'',	'用户管理',	''),
(152,	1,	'user',	'admin_url',	'user/AdminIndex/default1',	'',	'用户组',	''),
(153,	1,	'user',	'admin_url',	'user/AdminIndex/index',	'',	'本站用户',	''),
(154,	1,	'user',	'admin_url',	'user/AdminIndex/ban',	'',	'本站用户拉黑',	''),
(155,	1,	'user',	'admin_url',	'user/AdminIndex/cancelBan',	'',	'本站用户启用',	''),
(156,	1,	'user',	'admin_url',	'user/AdminOauth/index',	'',	'第三方用户',	''),
(157,	1,	'user',	'admin_url',	'user/AdminOauth/delete',	'',	'删除第三方用户绑定',	''),
(158,	1,	'user',	'admin_url',	'user/AdminUserAction/index',	'',	'用户操作管理',	''),
(159,	1,	'user',	'admin_url',	'user/AdminUserAction/edit',	'',	'编辑用户操作',	''),
(160,	1,	'user',	'admin_url',	'user/AdminUserAction/editPost',	'',	'编辑用户操作提交',	''),
(161,	1,	'user',	'admin_url',	'user/AdminUserAction/sync',	'',	'同步用户操作',	''),
(162,	1,	'Admin',	'admin_url',	'Admin/Members/default',	'',	'会员管理',	''),
(163,	1,	'Admin',	'admin_url',	'Admin/Members/index',	'',	'会员列表',	''),
(164,	1,	'Admin',	'admin_url',	'Admin/Systems/index',	'',	'公共配置',	''),
(165,	1,	'Admin',	'admin_url',	'Admin/Download/default',	'',	'下载管理',	''),
(166,	1,	'Admin',	'admin_url',	'Admin/Download/index',	'',	'下载列表',	''),
(167,	1,	'Admin',	'admin_url',	'Admin/members/charge',	'',	'充值记录',	''),
(168,	1,	'Admin',	'admin_url',	'Admin/Download/charge',	'',	'手动添加下载数',	''),
(169,	1,	'Admin',	'admin_url',	'Admin/App/default',	'',	'应用管理',	''),
(170,	1,	'Admin',	'admin_url',	'Admin/App/index',	'',	'应用列表',	''),
(171,	1,	'User',	'admin_url',	'User/admin_index/auth_info_manage',	'',	'认证信息管理',	''),
(172,	1,	'Admin',	'admin_url',	'Admin/Certificate/index',	'',	'证书管理',	''),
(173,	1,	'Admin',	'admin_url',	'Admin/Report/index',	'',	'举报管理',	''),
(174,	1,	'admin',	'admin_url',	'admin/Download/supindex',	'',	'超级签名下载次数',	''),
(175,	1,	'admin',	'admin_url',	'admin/Download/sup_add_charge',	'',	'手动添加超级签名次数',	''),
(176,	1,	'admin',	'admin_url',	'admin/members/agent',	'',	'代理管理',	'');

DROP TABLE IF EXISTS `cmf_charge`;
CREATE TABLE `cmf_charge` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `uid` int(100) DEFAULT NULL COMMENT '用户id',
  `download` varchar(100) DEFAULT NULL COMMENT '手动添加下载数',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_charge_log`;
CREATE TABLE `cmf_charge_log` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单号：创建订单时生成',
  `trade_id` varchar(50) DEFAULT NULL COMMENT '支付商家订单ID，支付成功后由支付商家返回',
  `trade_time` int(11) DEFAULT NULL COMMENT '支付成功的时间',
  `uid` int(100) DEFAULT NULL COMMENT '充值用户id',
  `download_id` int(100) DEFAULT NULL,
  `download_download` varchar(100) DEFAULT NULL COMMENT '下载次数',
  `d_gift` varchar(10) DEFAULT NULL COMMENT '赠送次数',
  `download_coin` varchar(100) DEFAULT NULL COMMENT '购买金额',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `subject` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `body` varchar(255) DEFAULT NULL COMMENT '订单描述',
  `type` varchar(255) DEFAULT NULL COMMENT '充值类型',
  `status` int(2) DEFAULT '1' COMMENT '1充值成功 2充值失败 3订单未支付 4订单支付失败 5订单支付成功',
  `goods_type` int(1) NOT NULL DEFAULT '1' COMMENT '1普通下载，2超级签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text CHARACTER SET utf8 COMMENT '原文地址',
  `content` text CHARACTER SET utf8 COMMENT '评论内容',
  `more` text CHARACTER SET utf8 COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `comment_post_ID` (`object_id`) USING BTREE,
  KEY `comment_approved_date_gmt` (`status`) USING BTREE,
  KEY `comment_parent` (`parent_id`) USING BTREE,
  KEY `table_id_status` (`table_name`,`object_id`,`status`) USING BTREE,
  KEY `createtime` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='评论表';


DROP TABLE IF EXISTS `cmf_config`;
CREATE TABLE `cmf_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '系统设置',
  `code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '配置名称',
  `title` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '标题',
  `group_id` varchar(50) CHARACTER SET gbk DEFAULT NULL COMMENT '分组名称',
  `val` text CHARACTER SET gbk COMMENT '配置值',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `value_scope` varchar(50) CHARACTER SET gbk DEFAULT NULL COMMENT '值的范围',
  `title_scope` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '对应value_scope的中文解释',
  `desc` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '描述',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

INSERT INTO `cmf_config` (`id`, `code`, `title`, `group_id`, `val`, `type`, `sort`, `value_scope`, `title_scope`, `desc`, `status`) VALUES
(239,	'system_message',	'系统公告',	'手机端设置',	'系统公告',	0,	0,	'',	'',	'手机端设置',	1),
(264,	'alipay_appId',	'appId',	'支付宝支付配置',	'appId',	0,	0,	'',	'',	'支付配置',	1),
(241,	'system_sms',	'短信开启',	'手机端设置',	'0',	4,	0,	'0,1',	'是,否',	'是否开启短信功能',	1),
(242,	'system_sms_key',	'短信key值',	'手机端设置',	'短信key值',	0,	0,	'',	'',	'短信key值',	1),
(243,	'system_sms_id',	'短信id',	'手机端设置',	'短信id',	0,	0,	'',	'',	'短信id',	1),
(244,	'system_sms_ip',	'短信发送IP限制',	'手机端设置',	'0',	4,	0,	'0,1',	'限制,不限制',	'短信发送IP限制',	1),
(245,	'system_sms_sum',	'短信发送每天限制条数',	'手机端设置',	'5',	0,	0,	'',	'',	'短信发送每天限制条数',	1),
(246,	'system_parsing',	'软件包解析地址',	'软件包解析地址',	'',	0,	0,	'',	'',	'软件包解析地址',	0),
(247,	'app_file_max_size',	'APP文件上传的最大限制',	'上传设置',	'900',	0,	0,	'',	'',	'',	1),
(248,	'service_qq',	'客服QQ',	'手机端设置',	'8888888888',	0,	0,	'',	'',	'',	1),
(249,	'new_reg_give_count',	'新注册赠送下载数量',	'手机端设置',	'10',	0,	0,	'',	'',	'',	1),
(250,	'app_key_shield',	'app名称',	'关键词屏蔽',	'app名称',	1,	0,	'',	'',	'app名称关键词屏蔽',	1),
(251,	'ipa_name',	'包名关键词',	'关键词屏蔽',	'包名关键词',	1,	0,	'',	'',	'包名关键词屏蔽',	1),
(252,	'ali_save_access_key',	'阿里云存储key',	'存储配置',	'阿里云存储key',	0,	0,	NULL,	NULL,	NULL,	1),
(253,	'ali_save_access_secret',	'阿里云存储Secret',	'存储配置',	'阿里云存储Secret',	0,	0,	NULL,	NULL,	NULL,	1),
(254,	'ali_save_upload_url',	'阿里云存储上传地址',	'存储配置',	'阿里云存储上传地址',	0,	0,	NULL,	NULL,	NULL,	1),
(255,	'ali_save_down_url',	'阿里云存储下载地址',	'存储配置',	'阿里云存储下载地址',	0,	0,	NULL,	NULL,	NULL,	1),
(256,	'ali_save_bucket',	'阿里云存储空间',	'存储配置',	'阿里云存储空间',	0,	0,	NULL,	NULL,	NULL,	1),
(257,	'system_type',	'短信发送方式',	'手机端设置',	'1',	4,	0,	'0,1',	'互亿无线,阿里云',	'',	1),
(258,	'aliyun_access_key_id',	'阿里云短信账号',	'短信配置',	'阿里云短信账号',	0,	0,	NULL,	NULL,	NULL,	1),
(259,	'aliyun_access_secret',	'阿里云短信密钥',	'短信配置',	'阿里云短信密钥',	0,	0,	NULL,	NULL,	NULL,	1),
(260,	'aliyun_sms_tpl_id',	'阿里云短信模板ID',	'短信配置',	'阿里云短信模板ID',	0,	0,	NULL,	NULL,	NULL,	1),
(261,	'aliyun_sms_sign',	'阿里云短信签名',	'短信配置',	'阿里云短信签名',	0,	0,	NULL,	NULL,	NULL,	1),
(262,	'down_max_num',	'并发最大下载数',	'超级签名下载配置',	'50',	0,	0,	NULL,	NULL,	'并发最大下载数',	1),
(263,	'down_cancel_time',	'取消下载时长',	'超级签名下载配置',	'60',	0,	0,	NULL,	NULL,	'点击取消下载取消下载状态 秒',	1),
(265,	'alipay_gatewayUrl',	'支付宝网关',	'支付宝支付配置',	'https://openapi.alipay.com/gateway.do',	0,	0,	NULL,	NULL,	NULL,	1),
(266,	'alipay_charset',	'编码格式',	'支付宝支付配置',	'UTF-8',	0,	0,	NULL,	NULL,	'编码格式',	1),
(267,	'alipay_signType',	'签名方式',	'支付宝支付配置',	'RSA2',	0,	0,	NULL,	NULL,	NULL,	1),
(268,	'alipay_notifyUrl',	'异步通知地址',	'支付宝支付配置',	'http://38356.4aq.cn/user/pay/notify.html',	0,	0,	NULL,	NULL,	NULL,	1),
(274,	'sup_api_domain',	'接口域名',	'签名域名',	'www.hnymwl.com',	0,	0,	'',	'',	'',	1),
(269,	'alipay_returnUrl',	'同步通知地址',	'支付宝支付配置',	'http://38356.4aq.cn/user/pay/return_s.html',	0,	0,	NULL,	NULL,	NULL,	1),
(270,	'alipay_url',	'支付域名',	'支付宝支付配置',	'www.hnymwl.com',	0,	0,	NULL,	NULL,	NULL,	1),
(271,	'alipay_merchantPrivateKey',	'商户私钥',	'支付宝支付配置',	'商户私钥',	1,	0,	NULL,	NULL,	NULL,	1),
(272,	'alipay_publicKey',	'支付宝公钥',	'支付宝支付配置',	'支付宝公钥',	1,	0,	NULL,	NULL,	NULL,	1),
(273,	'aliyun_warning_tpl_id',	'阿里云短信预警模板ID',	'短信配置',	'阿里云短信预警模板ID',	0,	0,	'',	'',	'',	1);

DROP TABLE IF EXISTS `cmf_domain`;
CREATE TABLE `cmf_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) DEFAULT NULL COMMENT '域名',
  `title` varchar(32) NOT NULL COMMENT '网站名',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo地址',
  `more` text COMMENT '更多参数',
  `is_true` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否可以访问',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员账号id（管理员账号主站代理站通用）',
  `qq_img` varchar(255) DEFAULT NULL,
  `wechat_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_download`;
CREATE TABLE `cmf_download` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `coin` varchar(255) DEFAULT NULL COMMENT '金额',
  `download` int(11) DEFAULT NULL COMMENT '购买下载次数',
  `gift` int(11) DEFAULT NULL COMMENT '购买赠送下载次数：大于0有效',
  `recommend` smallint(2) DEFAULT NULL COMMENT '推荐购买状态：0-不推荐；1-推荐',
  `status` smallint(2) DEFAULT NULL COMMENT '下载购买状态：0-不显示；1-显示',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_downloading`;
CREATE TABLE `cmf_downloading` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `appid` int(255) DEFAULT NULL,
  `addtime` int(32) DEFAULT NULL COMMENT '时间',
  `num` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='正在下载表';


DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统钩子表';

INSERT INTO `cmf_hook` (`id`, `type`, `once`, `name`, `hook`, `app`, `description`) VALUES
(1,	1,	0,	'应用初始化',	'app_init',	'cmf',	'应用初始化'),
(2,	1,	0,	'应用开始',	'app_begin',	'cmf',	'应用开始'),
(3,	1,	0,	'模块初始化',	'module_init',	'cmf',	'模块初始化'),
(4,	1,	0,	'控制器开始',	'action_begin',	'cmf',	'控制器开始'),
(5,	1,	0,	'视图输出过滤',	'view_filter',	'cmf',	'视图输出过滤'),
(6,	1,	0,	'应用结束',	'app_end',	'cmf',	'应用结束'),
(7,	1,	0,	'日志write方法',	'log_write',	'cmf',	'日志write方法'),
(8,	1,	0,	'输出结束',	'response_end',	'cmf',	'输出结束'),
(9,	1,	0,	'后台控制器初始化',	'admin_init',	'cmf',	'后台控制器初始化'),
(10,	1,	0,	'前台控制器初始化',	'home_init',	'cmf',	'前台控制器初始化'),
(11,	1,	1,	'发送手机验证码',	'send_mobile_verification_code',	'cmf',	'发送手机验证码'),
(12,	3,	0,	'模板 body标签开始',	'body_start',	'',	'模板 body标签开始'),
(13,	3,	0,	'模板 head标签结束前',	'before_head_end',	'',	'模板 head标签结束前'),
(14,	3,	0,	'模板底部开始',	'footer_start',	'',	'模板底部开始'),
(15,	3,	0,	'模板底部开始之前',	'before_footer',	'',	'模板底部开始之前'),
(16,	3,	0,	'模板底部结束之前',	'before_footer_end',	'',	'模板底部结束之前'),
(17,	3,	0,	'模板 body 标签结束之前',	'before_body_end',	'',	'模板 body 标签结束之前'),
(18,	3,	0,	'模板左边栏开始',	'left_sidebar_start',	'',	'模板左边栏开始'),
(19,	3,	0,	'模板左边栏结束之前',	'before_left_sidebar_end',	'',	'模板左边栏结束之前'),
(20,	3,	0,	'模板右边栏开始',	'right_sidebar_start',	'',	'模板右边栏开始'),
(21,	3,	0,	'模板右边栏结束之前',	'before_right_sidebar_end',	'',	'模板右边栏结束之前'),
(22,	3,	1,	'评论区',	'comment',	'',	'评论区'),
(23,	3,	1,	'留言区',	'guestbook',	'',	'留言区'),
(24,	2,	0,	'后台首页仪表盘',	'admin_dashboard',	'admin',	'后台首页仪表盘'),
(25,	4,	0,	'后台模板 head标签结束前',	'admin_before_head_end',	'',	'后台模板 head标签结束前'),
(26,	4,	0,	'后台模板 body 标签结束之前',	'admin_before_body_end',	'',	'后台模板 body 标签结束之前'),
(27,	2,	0,	'后台登录页面',	'admin_login',	'admin',	'后台登录页面'),
(28,	1,	1,	'前台模板切换',	'switch_theme',	'cmf',	'前台模板切换'),
(29,	3,	0,	'主要内容之后',	'after_content',	'',	'主要内容之后'),
(30,	2,	0,	'文章显示之前',	'portal_before_assign_article',	'portal',	'文章显示之前'),
(31,	2,	0,	'后台文章保存之后',	'portal_admin_after_save_article',	'portal',	'后台文章保存之后');

DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统钩子插件表';

INSERT INTO `cmf_hook_plugin` (`id`, `list_order`, `status`, `hook`, `plugin`) VALUES
(1,	10000,	1,	'send_mobile_verification_code',	'MobileCodeDemo');

DROP TABLE IF EXISTS `cmf_ios_certificate`;
CREATE TABLE `cmf_ios_certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `team_id` varchar(255) NOT NULL,
  `iss` varchar(255) NOT NULL,
  `kid` varchar(255) NOT NULL,
  `tid` varchar(255) NOT NULL,
  `p12_pwd` varchar(255) NOT NULL,
  `p12_file` varchar(255) NOT NULL,
  `p8_file` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0私有1共有',
  `status` tinyint(1) NOT NULL COMMENT '0未启用1启用',
  `total_count` int(11) NOT NULL,
  `limit_count` int(11) NOT NULL,
  `mark` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_ios_udid_list`;
CREATE TABLE `cmf_ios_udid_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `app_id` int(11) NOT NULL COMMENT '对应的应用ID',
  `udid` varchar(100) NOT NULL COMMENT 'UDID',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `device` varchar(50) NOT NULL COMMENT '设备',
  `certificate` int(11) NOT NULL COMMENT '证书ID',
  `version` varchar(255) DEFAULT NULL COMMENT '版本号',
  `ip` varchar(32) NOT NULL COMMENT 'ip',
  `ios_version` varchar(32) DEFAULT NULL COMMENT 'ios版本',
  `device_name` varchar(32) DEFAULT NULL COMMENT '设备名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `cmf_ios_udid_list` (`id`, `user_id`, `app_id`, `udid`, `create_time`, `device`, `certificate`, `version`, `ip`, `ios_version`, `device_name`) VALUES
(1,	2,	20,	'00008030-00091D6A3A10802E',	1578669658,	'7LSYU3CKDU',	2,	'0.0.9',	'171.114.189.26',	'17A577',	'iPhone12,1'),
(2,	1,	9,	'00008030-00091D6A3A10802E',	1578670051,	'7LSYU3CKDU',	2,	'1.0',	'171.114.189.26',	'17A577',	'iPhone12,1'),
(3,	1,	9,	'296dc8108bed4ab5fc075812c6e2c4a2c53b400a',	1578670144,	'FFLABDG77U',	2,	'1.0',	'183.92.251.161',	'17C54',	'iPhone8,2'),
(4,	1,	9,	'00008020-00126CCE1E98002E',	1578670390,	'43ZS5Z9YHF',	2,	'1.0',	'117.136.91.222',	'17C54',	'iPhone11,2'),
(5,	2,	20,	'00008020-00126CCE1E98002E',	1578670555,	'43ZS5Z9YHF',	2,	'0.0.9',	'117.136.91.222',	'17C54',	'iPhone11,2'),
(6,	1,	9,	'00008030-001A108E3C30802E',	1578671244,	'GQ278662W5',	2,	'1.0',	'171.114.189.26',	'17C54',	'iPhone12,1');

DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `link_visible` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='友情链接表';


DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='前台导航位置表';

INSERT INTO `cmf_nav` (`id`, `is_main`, `name`, `remark`) VALUES
(1,	1,	'主导航',	'主导航'),
(2,	0,	'底部导航',	'');

DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='前台导航菜单表';

INSERT INTO `cmf_nav_menu` (`id`, `nav_id`, `parent_id`, `status`, `list_order`, `name`, `target`, `href`, `icon`, `path`) VALUES
(1,	1,	0,	1,	0,	'首页',	'',	'home',	'',	'0-1');

DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `option_name` (`option_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

INSERT INTO `cmf_option` (`id`, `autoload`, `option_name`, `option_value`) VALUES
(7,	1,	'site_info',	'{\"site_name\":\"\\u963f\\u5947\\u9b54\\u7b7e | \\u514d\\u5b9e\\u540d\\u5206|\\u53d1\\u8d85\\u7ea7\\u7b7e\\u540d|\\u79fb\\u52a8\\u5e94\\u7528\\u5185\\u6d4b|\\u514d\\u8d39App\\u5e94\\u7528\\u5206\\u53d1\\u6258\\u7ba1|iOS\\u8bc1\\u4e66\\u7b7e\\u540d|\\u7f51\\u9875\\u5c01\\u5305\",\"site_seo_title\":\"\\u963f\\u5947\\u9b54\\u7b7e | \\u514d\\u5b9e\\u540d\\u5206|\\u53d1\\u8d85\\u7ea7\\u7b7e\\u540d|\\u79fb\\u52a8\\u5e94\\u7528\\u5185\\u6d4b|\\u514d\\u8d39App\\u5e94\\u7528\\u5206\\u53d1\\u6258\\u7ba1|iOS\\u8bc1\\u4e66\\u7b7e\\u540d|\\u7f51\\u9875\\u5c01\\u5305\",\"site_seo_keywords\":\"\\u514d\\u5b9e\\u540d\\u5206\\u53d1,\\u8d85\\u7ea7\\u7b7e\\u540d,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u7b7e\\u540d,APP\\u7b7e\\u540d,\\u7b7e\\u540d,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u8d26\\u53f7,app\\u4f01\\u4e1a\\u7b7e\\u540d,\\u8d85\\u7ea7VIP\\u7b7e\\u540d,\\u5185\\u6d4b\\u5206\\u53d1\\u6258\\u7ba1,app\\u5185\\u6d4b,app\\u6258\\u7ba1\\u5206\\u53d1,app\\u6d4b\\u8bd5,\\u5185\\u6d4b,android\\u5185\\u6d4b,betatest,Betaapp,testflight,\\u514d\\u8d39\\u5185\\u6d4b,app\\u4e0b\\u8f7d,\\u5185\\u6d4bSDK,udid\\u83b7\\u53d6\\uff0cpgy,\\u5b89\\u5353\\u5185\\u6d4b,\\u5185\\u6d4b,\\u4f01\\u4e1a\\u7b7e\\u540d,APP\\u4f01\\u4e1a\\u7b7e\\u540d,\\u84b2\\u516c\\u82f1\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u8bc1\\u4e66,\\u4f01\\u4e1a\\u8bc1\\u4e66,\\u4f01\\u4e1a\\u8bc1\\u4e66\\u7b7e\\u540d,apple\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u8d26\\u53f7,\\u4f01\\u4e1a\\u7b7e\\u540d,\\u4f01\\u4e1a\\u8d26\\u53f7,apple\\u4f01\\u4e1a\\u8d26\\u53f7,apple\\u4f01\\u4e1a\\u8d26\\u53f7,apple\\u4f01\\u4e1a\\u8bc1\\u4e66,apple\\u4f01\\u4e1a\\u8bc1\\u4e66,\\u4f01\\u4e1a\\u8d26\\u53f7,\\u4f01\\u4e1a\\u5206\\u53d1,\\u4f01\\u4e1a\\u5206\\u53d1,\\u4f01\\u4e1a\\u5206\\u53d1\",\"site_seo_description\":\"\\u514d\\u5b9e\\u540d\\u79d1\\u6280-\\u4e13\\u4e1a\\u5e94\\u7528\\u5206\\u53d1\\u5185\\u6d4b\\u7b7e\\u540d\\u670d\\u52a1\\u5546\\uff0c\\u63d0\\u4f9b\\u4e00\\u7ad9\\u5f0f\\u5e94\\u7528\\u4f01\\u4e1a\\u7b7e\\u540d\\uff0c\\u8d85\\u7ea7VIP\\u7b7e\\u540d\\uff0c\\u626b\\u7801\\u4e0b\\u8f7d\\u5b89\\u88c5\\uff0c\\u5e94\\u7528\\u6258\\u7ba1\\uff0c\\u7f51\\u9875\\u5c01\\u88c5\\uff0c\\u5e94\\u7528\\u5ba1\\u6838\\u4e0a\\u67b6\\u7b49\\u670d\\u52a1\\u3002\\u4e13\\u4e1a\\u6280\\u672f\\u56e2\\u961f\\u4e3a\\u4f60\\u5e94\\u7528\\u5206\\u53d1\\u5185\\u6d4b\\u4fdd\\u9a7e\\u62a4\\u822a\\uff0c\\u89e3\\u51b3\\u5f00\\u53d1\\u8005app\\u5185\\u6d4b\\u5206\\u53d1\\u6258\\u7ba1\\u65f6\\u7e41\\u6742\\u4f4e\\u6548\\u7684\\u95ee\\u9898\",\"site_icp\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\",\"urlmode\":\"1\",\"html_suffix\":\"\",\"site_logo\":\"\\/upload\\/admin\\/20200617\\/623864957c41efe75ac0139f024626bf.png\"}'),
(8,	1,	'storage',	'{\"storages\":{\"Qiniu\":{\"name\":\"\\u4e03\\u725b\\u4e91\\u5b58\\u50a8\",\"driver\":\"\\\\plugins\\\\qiniu\\\\lib\\\\Qiniu\"}},\"type\":\"Qiniu\"}'),
(9,	1,	'cmf_settings',	'{\"open_registration\":\"1\",\"banned_usernames\":\"\"}'),
(10,	1,	'cdn_settings',	'{\"cdn_static_root\":\"\"}'),
(11,	1,	'admin_settings',	'{\"admin_password\":\"HNYMWL001\",\"admin_style\":\"flatadmin\"}'),
(12,	1,	'upload_setting',	'{\"max_files\":\"20\",\"chunk_size\":\"512\",\"file_types\":{\"image\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"jpg,jpeg,png,gif,bmp4\"},\"video\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv\"},\"audio\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"1024000\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar\"}}}'),
(13,	1,	'smtp_setting',	'{\"from_name\":\"88888888@qq.com\",\"from\":\"\\u90ae\\u7bb1\\u5730\\u5740\",\"host\":\"smtp.qq.com\",\"smtp_secure\":\"ssl\",\"port\":\"465\",\"username\":\"88888888@qq.com\",\"password\":\"88888888\"}');

DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='插件表';

INSERT INTO `cmf_plugin` (`id`, `type`, `has_admin`, `status`, `create_time`, `name`, `title`, `demo_url`, `hooks`, `author`, `author_url`, `version`, `description`, `config`) VALUES
(14,	1,	0,	1,	0,	'Qiniu',	'七牛云存储',	'',	'',	'ThinkCMF',	'',	'1.0',	'七牛云存储',	'{\"accessKey\":\"BbCF_vfaMCZdB4t-G7ld6s6SrCAxA381GATjsn8d\",\"secretKey\":\"uKkMvKuHiXzvFenCMay1PJaAbNrWiDXaz2AD3fgi\",\"protocol\":\"https\",\"domain\":\"img001.leshangbao.com\",\"bucket\":\"shanqian001\",\"style_separator\":\"!\",\"styles_watermark\":\"watermark\",\"styles_avatar\":\"avatar\",\"styles_thumbnail120x120\":\"thumbnail120x120\",\"styles_thumbnail300x300\":\"thumbnail300x300\",\"styles_thumbnail640x640\":\"thumbnail640x640\",\"styles_thumbnail1080x1080\":\"thumbnail1080x1080\"}'),
(15,	1,	0,	1,	0,	'MobileCodeDemo',	'手机验证码演示插件',	'',	'',	'ThinkCMF',	'',	'1.0',	'手机验证码演示插件',	'{\"account_sid\":\"\",\"auth_token\":\"\",\"app_id\":\"\",\"template_id\":\"\",\"expire_minute\":\"30\"}');

DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='portal应用 文章分类表';


DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `term_taxonomy_id` (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='portal应用 分类文章对应表';

INSERT INTO `cmf_portal_category_post` (`id`, `post_id`, `category_id`, `list_order`, `status`) VALUES
(1,	1,	1,	10000,	1),
(2,	2,	2,	10000,	1);

DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`) USING BTREE,
  KEY `post_parent` (`parent_id`) USING BTREE,
  KEY `post_author` (`user_id`) USING BTREE,
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';


DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='portal应用 文章标签表';


DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `term_taxonomy_id` (`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='portal应用 标签文章对应表';


DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT=' 回收站';


DROP TABLE IF EXISTS `cmf_report_record`;
CREATE TABLE `cmf_report_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL COMMENT '举报人邮箱',
  `reason` varchar(50) NOT NULL COMMENT '原因',
  `content` varchar(255) NOT NULL COMMENT '描述内容',
  `app_id` int(11) NOT NULL COMMENT '举报的应用ID',
  `file` varchar(255) NOT NULL COMMENT '证据文件',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parentId` (`parent_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色表';

INSERT INTO `cmf_role` (`id`, `parent_id`, `status`, `create_time`, `update_time`, `list_order`, `name`, `remark`) VALUES
(1,	0,	1,	1329633709,	1329633709,	0,	'超级管理员',	'拥有网站最高管理员权限！'),
(2,	0,	1,	1329633709,	1329633709,	0,	'普通管理员',	'权限由最高管理员分配！');

DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `group_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户角色对应表';

INSERT INTO `cmf_role_user` (`id`, `role_id`, `user_id`) VALUES
(11,	2,	8);

DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='url路由表';

INSERT INTO `cmf_route` (`id`, `list_order`, `status`, `type`, `full_url`, `url`) VALUES
(1,	5000,	1,	2,	'portal/List/index?id=1',	'123'),
(2,	4999,	1,	2,	'portal/Article/index?cid=1',	'123/:id'),
(3,	5000,	1,	2,	'portal/List/index?id=2',	'法律法规'),
(4,	4999,	1,	2,	'portal/Article/index?cid=2',	'法律法规/:id'),
(5,	5000,	1,	2,	'admin/Index/index',	'HNYMWL001$');

DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='幻灯片表';


DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `slide_cid` (`slide_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='幻灯片子项表';


DROP TABLE IF EXISTS `cmf_super_download_log`;
CREATE TABLE `cmf_super_download_log` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `uid` int(32) NOT NULL COMMENT '上传app用户ID',
  `app_id` int(32) NOT NULL COMMENT 'appid',
  `device` varchar(50) NOT NULL COMMENT '设备',
  `type` int(1) NOT NULL COMMENT '1公有，2私有',
  `ip` varchar(50) NOT NULL COMMENT '下载IP地址',
  `addtime` int(32) NOT NULL,
  `version` varchar(255) DEFAULT NULL COMMENT '版本号',
  `ios_version` varchar(32) DEFAULT NULL COMMENT 'ios版本',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='超级签名下载使用下载池记录';


DROP TABLE IF EXISTS `cmf_super_num`;
CREATE TABLE `cmf_super_num` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL COMMENT '1公有，2私有',
  `num` int(32) DEFAULT NULL COMMENT '次数',
  `coin` varchar(255) DEFAULT NULL COMMENT '金额',
  `gift` int(32) DEFAULT '0' COMMENT '赠送次数',
  `orderno` int(11) DEFAULT NULL COMMENT '排序',
  `addtime` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

INSERT INTO `cmf_super_num` (`id`, `type`, `num`, `coin`, `gift`, `orderno`, `addtime`) VALUES
(1,	1,	1,	'15',	0,	0,	1578101519),
(2,	1,	10,	'140',	0,	0,	1578101532);

DROP TABLE IF EXISTS `cmf_super_signature_ipa`;
CREATE TABLE `cmf_super_signature_ipa` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `appid` int(32) NOT NULL COMMENT '原始文件ipaid',
  `supurl` varchar(255) NOT NULL COMMENT '生成的ipa',
  `udid` varchar(50) NOT NULL COMMENT 'udid',
  `addtime` int(32) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_sup_charge_log`;
CREATE TABLE `cmf_sup_charge_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(32) DEFAULT NULL COMMENT '用户ID',
  `puid` int(11) DEFAULT '0' COMMENT '进行充值的用户（上线）',
  `num` int(32) DEFAULT NULL COMMENT '次数',
  `type` int(1) DEFAULT NULL COMMENT '1公有，2私有',
  `addtime` int(32) DEFAULT NULL COMMENT '添加时间',
  `addtype` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0手动，1自动，2上线操作',
  `is_add` int(11) NOT NULL DEFAULT '1' COMMENT '0扣减操作，1增加操作',
  `msg` varchar(255) DEFAULT NULL COMMENT '操作信息备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='手动添加超级签名下载记录';


DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

INSERT INTO `cmf_theme` (`id`, `create_time`, `update_time`, `status`, `is_compiled`, `theme`, `name`, `version`, `demo_url`, `thumbnail`, `author`, `author_url`, `lang`, `keywords`, `description`) VALUES
(19,	0,	0,	0,	0,	'simpleboot3',	'simpleboot3',	'1.0.2',	'http://demo.thinkcmf.com',	'',	'ThinkCMF',	'http://www.thinkcmf.com',	'zh-cn',	'ThinkCMF模板',	'ThinkCMF默认模板');

DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='第三方用户表';


DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text COMMENT '扩展属性',
  `accessKey` varchar(255) DEFAULT NULL COMMENT '七牛 ak密钥',
  `secretKey` varchar(255) DEFAULT NULL COMMENT '七牛sk密钥',
  `bucket` varchar(255) DEFAULT NULL COMMENT '七牛储存名称',
  `valid_time` int(100) DEFAULT '1' COMMENT '有效时间',
  `domain` varchar(255) DEFAULT NULL COMMENT '七牛储存外链默认域名',
  `downloads` varchar(255) DEFAULT '0' COMMENT '总下载数',
  `sup_down_prive` varchar(32) NOT NULL DEFAULT '0' COMMENT '超级签名私有',
  `sup_down_public` varchar(32) NOT NULL DEFAULT '0' COMMENT '超级签名公有',
  `pid` int(11) NOT NULL DEFAULT '0',
  `from_domain` int(11) NOT NULL DEFAULT '0' COMMENT '所属域名，0为总站用户，其他为代理站用户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_login` (`user_login`) USING BTREE,
  KEY `user_nickname` (`user_nickname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户表';

INSERT INTO `cmf_user` (`id`, `user_type`, `sex`, `birthday`, `last_login_time`, `score`, `coin`, `create_time`, `user_status`, `user_login`, `user_pass`, `user_nickname`, `user_email`, `user_url`, `avatar`, `signature`, `last_login_ip`, `user_activation_key`, `mobile`, `more`, `accessKey`, `secretKey`, `bucket`, `valid_time`, `domain`, `downloads`, `sup_down_prive`, `sup_down_public`, `pid`, `from_domain`) VALUES
(1,	1,	0,	-28800,	1592389583,	0,	0,	1513673890,	1,	'admin',	'###92074732b13ecedbceb9189b002d5026',	'超级管理员',	'8888',	'hnymwl@foxmail.com',	'',	'阿奇源码www.hnymwl.com',	'119.134.47.46',	'',	'13800138000',	NULL,	'H-',	'',	'clientapp',	1,	'',	'100111',	'0',	'628',	0,	0),
(19,	2,	0,	0,	1592389583,	0,	0,	1592389574,	1,	'',	'###01488860af4bd8ae599b7a8ae2ecec43',	'',	'',	'',	'',	'',	'119.134.47.46',	'',	'18888888888',	NULL,	NULL,	NULL,	NULL,	1,	NULL,	'0',	'0',	'0',	0,	0);

DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户操作表';


DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_object_action` (`user_id`,`object`,`action`) USING BTREE,
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='访问记录表';


DROP TABLE IF EXISTS `cmf_user_auth_info`;
CREATE TABLE `cmf_user_auth_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `user_real_name` varchar(50) NOT NULL COMMENT '用户真实姓名',
  `card_number` varchar(50) NOT NULL COMMENT '身份证号码',
  `card_img1` varchar(255) NOT NULL COMMENT '身份证正面',
  `card_img2` varchar(255) NOT NULL COMMENT '身份证反面',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态0审核中,1审核通过,2拒绝',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户收藏表';


DROP TABLE IF EXISTS `cmf_user_link_log`;
CREATE TABLE `cmf_user_link_log` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `uid` int(32) NOT NULL,
  `appid` int(32) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '1失效',
  `addtime` int(32) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户生成链接记录';


DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';


DROP TABLE IF EXISTS `cmf_user_posted`;
CREATE TABLE `cmf_user_posted` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '七牛上传文件的地址',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `uid` int(100) DEFAULT NULL COMMENT '用户id',
  `way` int(2) DEFAULT '0' COMMENT '0公开 1密码安装 2邀请安装',
  `instructions` varchar(255) DEFAULT NULL COMMENT '版本更新说明',
  `introduce` varchar(255) DEFAULT NULL COMMENT '应用介绍',
  `version` varchar(255) DEFAULT NULL COMMENT '版本号',
  `big` varchar(255) DEFAULT NULL COMMENT '文件大小  单位MB',
  `build` varchar(255) DEFAULT NULL COMMENT '编译版本号',
  `bundle` varchar(255) DEFAULT NULL COMMENT '文件包名',
  `endtime` int(11) DEFAULT NULL COMMENT '结束时间',
  `type` varchar(100) DEFAULT NULL COMMENT '0 android 1 ios 类型',
  `img` longtext COMMENT '???????base64',
  `er_img` varchar(255) DEFAULT NULL COMMENT '二维码图片路径',
  `er_logo` varchar(255) DEFAULT '' COMMENT '二维码标识',
  `posted_id` int(100) DEFAULT NULL COMMENT '合并id ',
  `url_name` varchar(100) DEFAULT '0' COMMENT '文件原文件名',
  `status` int(2) DEFAULT '1' COMMENT '状态：0下架，1正常，2审核中，3已删除，4官方删除',
  `download_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1超级签名公有，2私有',
  `only_download` int(1) NOT NULL DEFAULT '0' COMMENT '是否开启唯一下载1',
  `test_type` int(1) NOT NULL DEFAULT '0' COMMENT '1内测，2企业',
  `andriod_url` varchar(255) DEFAULT NULL COMMENT '安卓下载地址',
  `warning` bigint(11) NOT NULL DEFAULT '0' COMMENT '预警下载值',
  `is_open_super_sign` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_user_posted_log`;
CREATE TABLE `cmf_user_posted_log` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `uid` int(100) NOT NULL COMMENT '用户id',
  `posted_id` int(100) DEFAULT NULL COMMENT '文件包id',
  `creattime` int(11) DEFAULT NULL COMMENT '下载时间',
  `version` varchar(255) DEFAULT NULL COMMENT '版本号',
  `big` varchar(255) NOT NULL COMMENT '文件大小  单位MB',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户操作积分等奖励日志表';


DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户客户端登录 token 表';

INSERT INTO `cmf_user_token` (`id`, `user_id`, `expire_time`, `create_time`, `token`, `device_type`) VALUES
(1,	1,	1607938842,	1592386842,	'315c37823552ae552303572c125eed90703ecded278dc05fb4a8a542b3632a0b',	'web');

DROP TABLE IF EXISTS `cmf_user_warning`;
CREATE TABLE `cmf_user_warning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '预警值',
  `sms_num` int(11) NOT NULL DEFAULT '0' COMMENT '上次预警时的数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

INSERT INTO `cmf_user_warning` (`id`, `uid`, `num`, `sms_num`) VALUES
(3,	6,	50,	0),
(4,	1,	5,	0);

DROP TABLE IF EXISTS `cmf_valid_time`;
CREATE TABLE `cmf_valid_time` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `mun` int(100) DEFAULT '1' COMMENT '有效时间 天',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=FIXED;

INSERT INTO `cmf_valid_time` (`id`, `mun`, `addtime`) VALUES
(1,	20,	NULL);

DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='手机邮箱数字验证码表';

INSERT INTO `cmf_verification_code` (`id`, `count`, `send_time`, `expire_time`, `code`, `account`) VALUES
(1,	1,	1578036146,	1578037946,	'197433',	'17683988636'),
(2,	1,	1578101285,	1578103085,	'972329',	'18178293177'),
(3,	1,	1578155281,	1578157081,	'121803',	'15559075444'),
(4,	1,	1578166376,	1578168176,	'131295',	'15905006237'),
(5,	1,	1578179933,	1578181733,	'571379',	'13286441638'),
(6,	1,	1578234175,	1578235975,	'455036',	'18925373175'),
(7,	2,	1578254653,	1578256453,	'765674',	'15600315831'),
(8,	1,	1579070151,	1579071951,	'627313',	'17123131313'),
(9,	1,	1578304023,	1578305823,	'254704',	'13377082647'),
(10,	1,	1578376679,	1578378479,	'162539',	'17010288531'),
(11,	1,	1578405805,	1578407605,	'462976',	'13263106139'),
(12,	1,	1578651976,	1578653776,	'415360',	'13014999471'),
(13,	1,	1578733021,	1578734821,	'281784',	'17117832316'),
(14,	1,	1578764399,	1578766199,	'600507',	'15578456320'),
(15,	1,	1579096821,	1579098621,	'966504',	'15220364274'),
(16,	1,	1579161232,	1579163032,	'753958',	'18962626822'),
(17,	1,	1579515300,	1579517100,	'876236',	'18250741832'),
(18,	1,	1580273388,	1580275188,	'148696',	'17611398799'),
(19,	2,	1580322724,	1580324524,	'912926',	'18051561026');

-- 2020-06-17 11:32:38
