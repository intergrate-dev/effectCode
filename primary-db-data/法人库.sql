/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : corporate

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-10-15 19:33:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_fr_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_basic_info`;
CREATE TABLE `t_fr_basic_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) DEFAULT NULL COMMENT '注册号',
  `social_credit_number` varchar(50) DEFAULT NULL COMMENT '统一社会信用代码',
  `orgcode` varchar(25) DEFAULT NULL COMMENT '组织机构代码',
  `org_name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `org_type` varchar(100) DEFAULT NULL COMMENT '机构类型',
  `legal_representative_name` varchar(100) DEFAULT NULL COMMENT '法定代表人姓名',
  `business_scope` varchar(500) DEFAULT NULL COMMENT '经营或业务范围',
  `register_type` varchar(100) DEFAULT NULL COMMENT '登记注册类型',
  `register_orgname` varchar(100) DEFAULT NULL COMMENT '登记机关名称',
  `register_name` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登记注册日期',
  `belonging_relation` varchar(30) DEFAULT NULL COMMENT '隶属关系',
  `office_areacode` varchar(100) DEFAULT NULL COMMENT '办公地行政区划',
  `office_address` varchar(250) DEFAULT NULL COMMENT '办公地详细地址',
  `office_zipcode` varchar(50) DEFAULT NULL COMMENT '办公地邮政编码',
  `contact_name` varchar(100) DEFAULT NULL COMMENT '联系人',
  `contact_tel` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `fax` varchar(18) DEFAULT NULL COMMENT '传真',
  `website` varchar(50) DEFAULT NULL COMMENT '网址',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `belong_network` varchar(100) DEFAULT NULL COMMENT '所属网格',
  `company_social_number` varchar(16) DEFAULT NULL COMMENT '单位社保号',
  `corporate_type` int(11) DEFAULT NULL COMMENT '法人类型',
  `composing_form` varchar(100) DEFAULT NULL COMMENT '组成形式',
  `approve_form` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '核准日期',
  `regist_status` varchar(50) DEFAULT NULL COMMENT '登记状态',
  `industry_type` varchar(50) DEFAULT NULL COMMENT '行业类型',
  `sydwfrzsh` varchar(50) DEFAULT NULL COMMENT '事业单位法人证书号',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='法人基本信息';

-- ----------------------------
-- Records of t_fr_basic_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_branch
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_branch`;
CREATE TABLE `t_fr_branch` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) DEFAULT NULL COMMENT '注册号',
  `branch_orgcode` varchar(50) DEFAULT NULL COMMENT '分支机构组织机构代码',
  `branch_name` varchar(255) DEFAULT NULL COMMENT '分支机构名称',
  `branch_register_number` varchar(50) DEFAULT NULL COMMENT '分支机构登记或注册号',
  `branch_address` varchar(500) DEFAULT NULL COMMENT '分支机构住所',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分支机构';

-- ----------------------------
-- Records of t_fr_branch
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_capture_info
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_capture_info`;
CREATE TABLE `t_fr_capture_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `org_code` varchar(52) DEFAULT NULL COMMENT '组织机构代码',
  `dwmc` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `unit_account` varchar(50) DEFAULT NULL COMMENT '单位公积金账号',
  `region` varchar(50) DEFAULT NULL COMMENT '所在地区',
  `start_year_month` varchar(50) DEFAULT NULL COMMENT '起始缴存年月',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公积金缴存单位信息';

-- ----------------------------
-- Records of t_fr_capture_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_certificate_info
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_certificate_info`;
CREATE TABLE `t_fr_certificate_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) DEFAULT NULL COMMENT '注册号',
  `social_credit_number` varchar(50) DEFAULT NULL COMMENT '统一社会信用代码',
  `company_name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `production_address` varchar(200) DEFAULT NULL COMMENT '生产地址',
  `license_key` varchar(25) DEFAULT NULL COMMENT '许可证号',
  `legal_person` varchar(25) DEFAULT NULL COMMENT '法人',
  `project_approval` varchar(100) DEFAULT NULL COMMENT '许可项目',
  `register_address` varchar(255) DEFAULT NULL COMMENT '注册地址',
  `license_limit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '许可证有限期',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电子证照信息';

-- ----------------------------
-- Records of t_fr_certificate_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_compile_info
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_compile_info`;
CREATE TABLE `t_fr_compile_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `social_credit_number` varchar(50) DEFAULT NULL COMMENT '单位统一社会信用代码',
  `company_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `legal_person` varchar(50) DEFAULT NULL COMMENT '法定代表人',
  `business_scope` varchar(500) DEFAULT NULL COMMENT '宗旨和业务范围',
  `expertise_event` varchar(50) DEFAULT NULL COMMENT '举办单位',
  `initial_fund` varchar(50) DEFAULT NULL COMMENT '开办资金',
  `fund_sources` varchar(50) DEFAULT NULL COMMENT '经费来源',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='编制办法人信息';

-- ----------------------------
-- Records of t_fr_compile_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_enterprise_info
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_enterprise_info`;
CREATE TABLE `t_fr_enterprise_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) DEFAULT NULL COMMENT '注册号',
  `etps_name` varchar(500) DEFAULT NULL COMMENT '企业名称',
  `sub_obj_id` varchar(50) DEFAULT NULL COMMENT '经济类型',
  `etps_type_gb` varchar(255) DEFAULT NULL COMMENT '企业类型',
  `leader_name` varchar(500) DEFAULT NULL COMMENT '法定代表人',
  `cptl_total` decimal(18,0) DEFAULT NULL COMMENT '注册资金',
  `trade_start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '成立日期',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工商企业信息';

-- ----------------------------
-- Records of t_fr_enterprise_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_individual_info
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_individual_info`;
CREATE TABLE `t_fr_individual_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) DEFAULT NULL COMMENT '注册号',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `fj_operator_name` varchar(50) DEFAULT NULL COMMENT '经营者',
  `address` varchar(255) DEFAULT NULL COMMENT '经营场所',
  `pe_type_id` varchar(50) DEFAULT NULL COMMENT '组成形式',
  `cptl_total` decimal(18,2) DEFAULT NULL COMMENT '注册资本',
  `establish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册日期',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工商个体信息';

-- ----------------------------
-- Records of t_fr_individual_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_legal_representative
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_legal_representative`;
CREATE TABLE `t_fr_legal_representative` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) DEFAULT NULL COMMENT '注册号',
  `idcard_type` varchar(50) DEFAULT NULL COMMENT '身份证类型',
  `idcard_number` varchar(30) DEFAULT NULL COMMENT '身份证件号码',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='法定代表人';

-- ----------------------------
-- Records of t_fr_legal_representative
-- ----------------------------

-- ----------------------------
-- Table structure for t_fr_tax_register
-- ----------------------------
DROP TABLE IF EXISTS `t_fr_tax_register`;
CREATE TABLE `t_fr_tax_register` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) DEFAULT NULL COMMENT '注册号',
  `taxpayer_number` varchar(50) DEFAULT NULL COMMENT '纳税人识别号',
  `tax_register_orgname` varchar(255) DEFAULT NULL COMMENT '税务登记机关名称',
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '税务登记日期',
  `cancel_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注销税务登记日期',
  `source_id` decimal(10,0) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='税务登记';

-- ----------------------------
-- Records of t_fr_tax_register
-- ----------------------------

