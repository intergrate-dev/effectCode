/*
Navicat MySQL Data Transfer

Source Server         : conn-taiji
Source Server Version : 50724
Source Host           : 192.168.1.101:3306
Source Database       : user-center

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-11-05 16:22:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_area_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_area_data`;
CREATE TABLE `sys_area_data` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `pid` int(11) NOT NULL COMMENT '父id',
  `name` varchar(128) NOT NULL COMMENT '省/市/县名称',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='省市县三级联动数据表';

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `type_id` bigint(20) DEFAULT NULL COMMENT '字典类型id',
  `code` char(2) DEFAULT NULL COMMENT '字典数据代码',
  `eng_name` varchar(255) DEFAULT NULL COMMENT '字典数据英文名称',
  `cn_name` varchar(32) DEFAULT NULL COMMENT '字典数据中文名称',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` varchar(2) DEFAULT NULL COMMENT '字典数据状态0：可用1：不可用',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_type_data` (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `eng_name` varchar(32) DEFAULT NULL COMMENT '字典类型名称',
  `cn_name` varchar(64) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_date` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Table structure for my_collection
-- ----------------------------
DROP TABLE IF EXISTS `my_collection`;
CREATE TABLE `my_collection` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `user_id` bigint(64) NOT NULL COMMENT '用户id，外键',
  `prod_id` bigint(64) NOT NULL COMMENT '金融产品id，外键',
  `collect_date` datetime DEFAULT NULL COMMENT '收藏日期',
  `collect_stat` char(2) DEFAULT NULL COMMENT '收藏状态',
  PRIMARY KEY (`id`),
  KEY `fk_collect_user` (`user_id`),
  KEY `fk_collect_prod` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人收藏表';

-- ----------------------------
-- Table structure for my_message
-- ----------------------------
DROP TABLE IF EXISTS `my_message`;
CREATE TABLE `my_message` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `user_id` varchar(64) NOT NULL COMMENT '用户id',
  `title` varchar(64) NOT NULL COMMENT '消息标题',
  `content` varchar(255) NOT NULL COMMENT '消息内容',
  `time` datetime NOT NULL COMMENT '消息收到的时候',
  `stat` char(2) NOT NULL COMMENT '消息状态',
  PRIMARY KEY (`id`),
  KEY `fk_message_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='我的消息';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `parent_id` int(11) NOT NULL COMMENT '上级菜单id',
  `name` varchar(64) NOT NULL COMMENT '菜单/资源名称',
  `type` tinyint(1) NOT NULL COMMENT '菜单类型',
  `url` varchar(1024) DEFAULT NULL COMMENT 'url',
  `path` varchar(1024) DEFAULT NULL COMMENT '路径',
  `path_method` varchar(10) DEFAULT NULL COMMENT '资源请求方式',
  `css` varchar(32) DEFAULT NULL COMMENT '资源样式',
  `sort` int(11) NOT NULL COMMENT '排序',
  `hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `tenant_id` varchar(32) DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统菜单表';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `code` varchar(32) NOT NULL COMMENT '角色code',
  `name` varchar(50) NOT NULL COMMENT '角色名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `tenant_id` varchar(32) DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统角色表';

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色菜单表';

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(60) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `head_img_url` varchar(1024) DEFAULT NULL COMMENT '头像',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `gender` tinyint(1) DEFAULT NULL COMMENT '性别',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否激活',
  `source_type` varchar(16) DEFAULT NULL COMMENT '用户来源',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `open_id` varchar(32) DEFAULT NULL COMMENT 'open_id',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`),
  KEY `idx_mobile` (`mobile`),
  KEY `idx_open_id` (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统用户表';

-- ----------------------------
-- Table structure for sys_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_relation`;
CREATE TABLE `sys_user_relation` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `enterp_type` int(2) NOT NULL COMMENT '企业类型：0 个体户；1 企业；2 金融类机构；3 政府部门；4 金融监管局；5 运营机构；6 运维部门',
  `pers_categ` int(2) NOT NULL COMMENT '人员类别：0 管理员；1 法人代表人；2 户主；3 经办人；4 产品经理；5 运营经理；6 业务员',
  `org_categ` int(2) NOT NULL COMMENT '机构类别：0 金融机构；1 信用机构；2 投资机构；3 担保机构；4 保险机构',
  `user_id` bigint(64) NOT NULL COMMENT '用户实际id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业实际id',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `county` int(11) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户关联表';

