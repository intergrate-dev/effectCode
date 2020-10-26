-- ----------------------------
-- Table structure for sys_oper_assign_worker
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_assign_worker`;
CREATE TABLE `sys_oper_assign_worker` (
  `id` bigint(64) NOT NULL COMMENT '金融产品id',
  `oper_org_id` bigint(64) NOT NULL COMMENT '运营机构id',
  `oper_manag_id` bigint(64) NOT NULL COMMENT '运营经理id',
  `oper_worker_id` varchar(64) NOT NULL COMMENT '运营人员id',
  `manager_name` varchar(128) NOT NULL COMMENT '运营经理用户名',
  `worker_name` varchar(255) NOT NULL COMMENT '运营人员用户名',
  `oper_area` varchar(255) NOT NULL COMMENT '运营推广区域（市/区县）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='指派运营业务员表';

-- ----------------------------
-- Table structure for sys_area_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_area_data`;
CREATE TABLE `sys_area_data` (
  `id` int(11) NOT NULL COMMENT '区域id',
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典数据表id主键',
  `type_id` bigint(20) DEFAULT NULL COMMENT '字典类型id',
  `code` char(2) DEFAULT NULL COMMENT '字典数据代码',
  `eng_name` varchar(255) DEFAULT NULL COMMENT '字典数据英文名称',
  `cn_name` varchar(32) DEFAULT NULL COMMENT '字典数据中文名称',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_date` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_type_data` (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------

DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典类型id',
  `eng_name` varchar(32) DEFAULT NULL COMMENT '字典类型名称',
  `cn_name` varchar(64) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_date` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------

DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `log_type` varchar(128) DEFAULT NULL COMMENT '日志类型',
  `method` varchar(255) DEFAULT NULL COMMENT '方法',
  `params` varchar(500) DEFAULT NULL COMMENT '参数',
  `request_ip` varchar(255) DEFAULT NULL COMMENT '请求的IP地址',
  `time` bigint(20) DEFAULT NULL COMMENT '耗时时间',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `browser` varchar(255) DEFAULT NULL COMMENT '记录操作浏览器',
  `exception_detail` mediumtext COMMENT '异常详细信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `exception` varchar(300) DEFAULT NULL COMMENT '异常原因',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `log_create_time_index` (`create_time`) USING BTREE,
  KEY `inx_log_type` (`log_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='系统日志表';

-- ----------------------------
-- Table structure for sys_log_audit
-- ----------------------------

DROP TABLE IF EXISTS `sys_log_audit`;
CREATE TABLE `sys_log_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志审计',
  `caller_identity` varchar(255) DEFAULT NULL COMMENT '调用者身份',
  `call_result` varchar(255) DEFAULT NULL COMMENT '调用结果',
  `call_params` mediumtext COMMENT '调用参数',
  `return_value` mediumtext COMMENT '调用返回值',
  `call_time` bigint(20) DEFAULT NULL COMMENT '调用耗时时间',
  `call_method` varchar(255) DEFAULT NULL COMMENT '调用 API',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `log_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='日志审计表';

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------

DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `org_id` int(11) NOT NULL COMMENT '机构id',
  `pid` int(11) DEFAULT NULL COMMENT '父级机构id',
  `org_code` varchar(255) DEFAULT NULL COMMENT '组织机构代码',
  `org_name` varchar(255) NOT NULL COMMENT '组织机构名称',
  `org_type` char(255) NOT NULL COMMENT '机构类型：0 企业；1 金融机构； 2 运营机构；3 政府部门。',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) NOT NULL COMMENT '市',
  `county` varchar(255) NOT NULL COMMENT '县/区',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='组织机构表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------

DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int(5) DEFAULT 0 COMMENT '子菜单数目',
  `type` int(11) DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(255) DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `menu_sort` int(5) DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `path` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '隐藏',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE KEY `uniq_title` (`title`),
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单表';

DROP TABLE IF EXISTS `sys_permission_menu`;
CREATE TABLE `sys_permission_menu` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `perm_id` bigint(64) NOT NULL COMMENT '权限id',
  `menu_id` bigint(64) NOT NULL COMMENT '菜单id',
  `available` bool default false comment '是否锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限菜单关联表';


-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(64) NOT NULL COMMENT '权限id',
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '权限名称',
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '权限描述',
  `available` bool default false comment '是否锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限表';


DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `role_id` bigint comment '角色id',
  `permission_id` bigint comment '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(64) NOT NULL COMMENT '角色id',
  `name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '角色名称',
  `description` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '角色描述',
  `pid` bigint(64) DEFAULT NULL COMMENT '父级角色id',
  `available` bool default false COMMENT '是否锁定',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(64) NOT NULL COMMENT 'id',
  `user_id` datetime DEFAULT NULL COMMENT '用户id',
  `role_id` datetime DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `fk_role_perm` (`role_id`),
  KEY `fk_user_role` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关联表';


DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='一般用户表';


DROP TABLE IF EXISTS `sys_user_relation`;
CREATE TABLE `sys_user_relation` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `enterp_type` int(2) NOT NULL COMMENT '企业类型：0 个体户；1 企业；2 金融类机构；3 政府部门；4 金融监管局；5 运营机构；6 运维部门',
  `pers_categ` int(2) NOT NULL COMMENT '人员类别：0 管理员；1 法人代表人；2 户主；3 经办人；4 产品经理；5 运营经理；6 业务员',
  `org_categ` int(2) NOT NULL COMMENT '机构类别：0 金融机构；1 信用机构；2 投资机构；3 担保机构；4 保险机构',
  `real_id` bigint(64) NOT NULL COMMENT '用户实际id',
  `comp_id` bigint(64) NOT NULL COMMENT '个体户企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `compy_name` varchar(64) DEFAULT NULL COMMENT '企业名称',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `county` int(11) DEFAULT NULL COMMENT '区',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_phone` (`phone`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户关联表';


DROP TABLE IF EXISTS `sys_user_indiv_ower`;
CREATE TABLE `sys_user_indiv_ower` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '个体户企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '法人名称',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_comp_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个体户户主表';


DROP TABLE IF EXISTS `sys_user_indiv_admin`;
CREATE TABLE `sys_user_indiv_admin` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '个体户企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_comp_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个体户管理员表';


DROP TABLE IF EXISTS `sys_user_indiv_oper`;
CREATE TABLE `sys_user_indiv_oper` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '个体户企业id',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个体户经办人表';


DROP TABLE IF EXISTS `sys_user_comp_admin`;
CREATE TABLE `sys_user_comp_admin` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_comp_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业管理员表';


DROP TABLE IF EXISTS `sys_user_comp_legpers`;
CREATE TABLE `sys_user_comp_legpers` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '法人名称',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_comp_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业管法人代表表';


DROP TABLE IF EXISTS `sys_user_comp_oper`;
CREATE TABLE `sys_user_comp_oper` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业经办人表';


DROP TABLE IF EXISTS `sys_user_org_admin`;
CREATE TABLE `sys_user_org_admin` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `org_categ` bigint(64) NOT NULL COMMENT '机构类别',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_org_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构管理员表';


DROP TABLE IF EXISTS `sys_user_org_legpers`;
CREATE TABLE `sys_user_org_legpers` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '法人名称',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `org_categ` bigint(64) NOT NULL COMMENT '机构类别',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_org_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构法人代表表';


DROP TABLE IF EXISTS `sys_user_org_oper`;
CREATE TABLE `sys_user_org_oper` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `org_categ` bigint(64) NOT NULL COMMENT '机构类别',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构经办人表';


DROP TABLE IF EXISTS `sys_user_org_prodmanag`;
CREATE TABLE `sys_user_org_prodmanag` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `org_categ` bigint(64) NOT NULL COMMENT '机构类别',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  KEY `fk_org_finance_manager` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构产品经理表';


DROP TABLE IF EXISTS `sys_user_org_worker`;
CREATE TABLE `sys_user_org_worker` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `org_categ` bigint(64) NOT NULL COMMENT '机构类别',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构业务员表';


DROP TABLE IF EXISTS `sys_user_operorg_admin`;
CREATE TABLE `sys_user_operorg_admin` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_org_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构管理员表';


DROP TABLE IF EXISTS `sys_user_operorg_legpers`;
CREATE TABLE `sys_user_operorg_legpers` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '法人名称',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_org_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构法人代表表';


DROP TABLE IF EXISTS `sys_user_operorg_oper`;
CREATE TABLE `sys_user_operorg_oper` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `card_type` char(2) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `card_valid_date` datetime DEFAULT NULL COMMENT '证件有效期',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构经办人表';


DROP TABLE IF EXISTS `sys_user_operorg_manag`;
CREATE TABLE `sys_user_operorg_manag` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构业务经理表';


DROP TABLE IF EXISTS `sys_user_operorg_worker`;
CREATE TABLE `sys_user_operorg_worker` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构业务员表';


DROP TABLE IF EXISTS `sys_user_operorg_sales`;
CREATE TABLE `sys_user_org_sales` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构推广员表';


DROP TABLE IF EXISTS `sys_user_regulator_admin`;
CREATE TABLE `sys_user_regulator_admin` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_org_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='监管机构管理员表';


DROP TABLE IF EXISTS `sys_user_regulator_leader`;
CREATE TABLE `sys_user_regulator_leader` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='监管机构领导表';


DROP TABLE IF EXISTS `sys_user_regulator_worker`;
CREATE TABLE `sys_user_regulator_worker` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='监管机构业务员表';


DROP TABLE IF EXISTS `sys_user_gov_admin`;
CREATE TABLE `sys_user_gov_admin` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  KEY `inx_org_id` (`comp_id`) USING BTREE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='政府部门管理员表';


DROP TABLE IF EXISTS `sys_user_gov_leader`;
CREATE TABLE `sys_user_gov_leader` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='政府部门领导表';


DROP TABLE IF EXISTS `sys_user_gov_worker`;
CREATE TABLE `sys_user_gov_worker` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='政府部门业务员表';


DROP TABLE IF EXISTS `sys_user_maint_admin`;
CREATE TABLE `sys_user_maint_admin` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `comp_id` bigint(64) NOT NULL COMMENT '企业id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运维管理员表';


DROP TABLE IF EXISTS `sys_user_maint_worker`;
CREATE TABLE `sys_user_maint_worker` (
  `id` bigint(64) NOT NULL COMMENT '用户id',
  `name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `id_num` int(11) DEFAULT NULL COMMENT '身份证号',
  `gender` char(4) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `reg_date` datetime DEFAULT NULL COMMENT '注册时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运维专员表';

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
  KEY `fk_collect_user` (`user_id`),
  KEY `fk_collect_prod` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人收藏表';


-- ----------------------------
-- Table structure for my_message
-- ----------------------------
DROP TABLE IF EXISTS `my_message`;
CREATE TABLE `my_message` (
  `id` varchar(64) NOT NULL COMMENT '消息id',
  `user_id` varchar(64) NOT NULL COMMENT '用户id',
  `title` varchar(64) NOT NULL COMMENT '消息标题',
  `content` varchar(255) NOT NULL COMMENT '消息内容',
  `time` datetime NOT NULL COMMENT '消息收到的时候',
  `stat` char(2) NOT NULL COMMENT '消息状态',
  PRIMARY KEY (`id`),
  KEY `fk_message_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='我的消息';

