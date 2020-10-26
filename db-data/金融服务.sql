/*
Navicat MySQL Data Transfer

Source Server         : conn-taiji
Source Server Version : 50731
Source Host           : 192.168.1.104:3306
Source Database       : finance_service

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2020-10-16 15:50:33
*/

-- CREATE DATABASE IF NOT EXISTS 'finace_service' DEFAULT CHARACTER SET 'utf8mb4';

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for enter_auth_recode
-- ----------------------------
DROP TABLE IF EXISTS `auth_indiv_recode`;
CREATE TABLE `auth_indiv_recode` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '企业认证记录id',
  `comp_id` bigint(11) DEFAULT NULL COMMENT '企业id',
  `user_id` bigint(64) DEFAULT NULL COMMENT '用户id',
  `sign_oper` varchar(100) DEFAULT NULL COMMENT '合同签约人',
  `elec_contr_url` varchar(100) DEFAULT NULL COMMENT '电子合同地址',
  `apply_date` datetime DEFAULT NULL COMMENT '认证申请时间',
  `audit_date` datetime DEFAULT NULL COMMENT '认证审核时间',
  `audit_stat` char(2) DEFAULT NULL COMMENT '认证状态',
  `auth_fail_reason` varchar(255) DEFAULT NULL COMMENT '认证失败原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个体户认证记录表';

-- ----------------------------
-- Table structure for enter_company
-- ----------------------------
DROP TABLE IF EXISTS `auth_indiv_househ`;
CREATE TABLE `auth_indiv_househ` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '企业主键id',
  `legal_person_id` bigint(64) DEFAULT NULL COMMENT '企业法人代表id',
  `name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `reg_num` varchar(255) DEFAULT NULL COMMENT '企业注册号',
  `credit_code` varchar(255) DEFAULT NULL COMMENT '统一社会信用代码',
  `taxpayer_num` varchar(255) DEFAULT NULL COMMENT '纳税人识别号',
  `reg_date` datetime DEFAULT NULL COMMENT '成立日期' COMMENT '注册时间',
  `license_auth_org` varchar(255) DEFAULT NULL COMMENT '执照发照机关',
  `reg_capi` double DEFAULT NULL COMMENT '注册资本(金)',
  `reg_capi_cucy` char(2) DEFAULT NULL COMMENT '注册资本币种',
  `eco_nature` varchar(255) DEFAULT NULL COMMENT '经济性质',
  `paid_capi` double(255,0) DEFAULT NULL COMMENT '实收资本',
  `busi_scope` varchar(255) DEFAULT NULL COMMENT '经营范围',
  `busi_period` datetime DEFAULT NULL COMMENT '经营期限',
  `busi_stat` char(255) DEFAULT NULL COMMENT '经营状态',
  `postal_code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `contact_num` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `fax_num` varchar(20) DEFAULT NULL COMMENT '传真号',
  `email` varchar(255) DEFAULT NULL COMMENT '企业邮箱',
  `comp_nature_type` char(2) DEFAULT NULL COMMENT '企业性质类型',
  `latest_inspect_msg` varchar(255) NOT NULL COMMENT '最新年检信息',
  `change_msg` varchar(255) DEFAULT NULL COMMENT '企业变更登记信息',
  `cancel_msg` varchar(255) DEFAULT NULL COMMENT '企业注销信息',
  `person_size` char(2) DEFAULT NULL COMMENT '企业人员规模:0 50人以下,1 50人以下,2  500至2000人,3 2000人以上',
  `reg_addr` varchar(255) DEFAULT NULL COMMENT '注册地址,企业住所',
  `actual_office_addr` varchar(255) DEFAULT NULL COMMENT '实际办公地址',
  `auth_state` char(2) DEFAULT NULL COMMENT '认证状态',
  `credit_report_url` varchar(255) DEFAULT NULL COMMENT '（平台）信用报告文件url地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='个体户企业表';

-- ----------------------------
-- Table structure for enter_company_attachment
-- ----------------------------
DROP TABLE IF EXISTS `auth_indiv_attachment`;
CREATE TABLE `auth_indiv_attachment` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `association` varchar(255) DEFAULT NULL COMMENT '公司章程(附件)',
  `capi_report` varchar(255) DEFAULT NULL COMMENT '验资报告（附件）',
  `credit_report` varchar(255) DEFAULT NULL COMMENT '企业人行征信报告（附件）',
  `loan_use` varchar(255) DEFAULT NULL COMMENT '贷款用途资料(附件)',
  `cust_ contract` varchar(255) DEFAULT NULL COMMENT '主要供销客户的销购合同/协议',
  `legal_person_credit_report` varchar(255) DEFAULT NULL COMMENT '法定代表人（实际控制人）人行征信报告',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='个体户企业附件表';

-- ----------------------------
-- Table structure for enter_company_extend
-- ----------------------------
DROP TABLE IF EXISTS `auth_indiv_extend`;
CREATE TABLE `auth_indiv_extend` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '企业主键id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `county` int(11) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='个体户企业扩展表';


-- ----------------------------
-- Table structure for enter_open_bank
-- ----------------------------
DROP TABLE IF EXISTS `auth_indiv_open_bank`;
CREATE TABLE `auth_indiv_open_bank` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `comp_name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户行',
  `bank_account` varchar(255) DEFAULT NULL COMMENT '企业银行账户',
  `open_lisence` varchar(200) DEFAULT NULL COMMENT '开户许可证(附件)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='个体户企业银行账户表';


-- ----------------------------
-- Table structure for enter_auth_recode
-- ----------------------------
DROP TABLE IF EXISTS `auth_comp_recode`;
CREATE TABLE `auth_comp_recode` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '企业认证记录id',
  `comp_id` bigint(11) DEFAULT NULL COMMENT '企业id',
  `user_id` bigint(64) DEFAULT NULL COMMENT '用户id',
  `sign_oper` varchar(100) DEFAULT NULL COMMENT '合同签约人',
  `elec_contr_url` varchar(100) DEFAULT NULL COMMENT '电子合同地址',
  `apply_date` datetime DEFAULT NULL COMMENT '认证申请时间',
  `audit_date` datetime DEFAULT NULL COMMENT '认证审核时间',
  `audit_stat` char(2) DEFAULT NULL COMMENT '认证状态',
  `auth_fail_reason` varchar(255) DEFAULT NULL COMMENT '认证失败原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业认证记录表';

-- ----------------------------
-- Table structure for enter_company
-- ----------------------------
DROP TABLE IF EXISTS `auth_company`;
CREATE TABLE `auth_company` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '企业主键id',
  `legal_person_id` bigint(64) DEFAULT NULL COMMENT '企业法人代表id',
  `name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `reg_num` varchar(255) DEFAULT NULL COMMENT '企业注册号',
  `credit_code` varchar(255) DEFAULT NULL COMMENT '统一社会信用代码',
  `taxpayer_num` varchar(255) DEFAULT NULL COMMENT '纳税人识别号',
  `reg_date` datetime DEFAULT NULL COMMENT '成立日期' COMMENT '注册时间',
  `license_auth_org` varchar(255) DEFAULT NULL COMMENT '执照发照机关',
  `reg_capi` double DEFAULT NULL COMMENT '注册资本(金)',
  `reg_capi_cucy` char(2) DEFAULT NULL COMMENT '注册资本币种',
  `eco_nature` varchar(255) DEFAULT NULL COMMENT '经济性质',
  `paid_capi` double(255,0) DEFAULT NULL COMMENT '实收资本',
  `busi_scope` varchar(255) DEFAULT NULL COMMENT '经营范围',
  `busi_period` datetime DEFAULT NULL COMMENT '经营期限',
  `busi_stat` char(255) DEFAULT NULL COMMENT '经营状态',
  `postal_code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `contact_num` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `fax_num` varchar(20) DEFAULT NULL COMMENT '传真号',
  `email` varchar(255) DEFAULT NULL COMMENT '企业邮箱',
  `comp_nature_type` char(2) DEFAULT NULL COMMENT '企业性质类型',
  `latest_inspect_msg` varchar(255) NOT NULL COMMENT '最新年检信息',
  `change_msg` varchar(255) DEFAULT NULL COMMENT '企业变更登记信息',
  `cancel_msg` varchar(255) DEFAULT NULL COMMENT '企业注销信息',
  `person_size` char(2) DEFAULT NULL COMMENT '企业人员规模:0 50人以下,1 50人以下,2  500至2000人,3 2000人以上',
  `reg_addr` varchar(255) DEFAULT NULL COMMENT '注册地址,企业住所',
  `actual_office_addr` varchar(255) DEFAULT NULL COMMENT '实际办公地址',
  `auth_state` char(2) DEFAULT NULL COMMENT '认证状态',
  `credit_report_url` varchar(255) DEFAULT NULL COMMENT '（平台）信用报告文件url地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='企业表';

-- ----------------------------
-- Table structure for enter_company_attachment
-- ----------------------------
DROP TABLE IF EXISTS `auth_comp_attachment`;
CREATE TABLE `auth_comp_attachment` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `association` varchar(255) DEFAULT NULL COMMENT '公司章程(附件)',
  `capi_report` varchar(255) DEFAULT NULL COMMENT '验资报告（附件）',
  `credit_report` varchar(255) DEFAULT NULL COMMENT '企业人行征信报告（附件）',
  `loan_use` varchar(255) DEFAULT NULL COMMENT '贷款用途资料(附件)',
  `cust_ contract` varchar(255) DEFAULT NULL COMMENT '主要供销客户的销购合同/协议',
  `legal_person_credit_report` varchar(255) DEFAULT NULL COMMENT '法定代表人（实际控制人）人行征信报告',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='企业附件表';

-- ----------------------------
-- Table structure for enter_company_extend
-- ----------------------------
DROP TABLE IF EXISTS `auth_comp_extend`;
CREATE TABLE `auth_comp_extend` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '企业主键id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `county` int(11) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='企业扩展表';


-- ----------------------------
-- Table structure for enter_company_stockholder
-- ----------------------------
DROP TABLE IF EXISTS `auth_comp_stockh`;
CREATE TABLE `auth_comp_stockh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '股东id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `holder_name` varchar(255) DEFAULT NULL COMMENT '股东名称',
  `holder_type` char(255) DEFAULT NULL COMMENT '股东类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业股东表';

-- ----------------------------
-- Table structure for enter_open_bank
-- ----------------------------
DROP TABLE IF EXISTS `auth_comp_open_bank`;
CREATE TABLE `auth_comp_open_bank` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `comp_name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户行',
  `bank_account` varchar(255) DEFAULT NULL COMMENT '企业银行账户',
  `open_lisence` varchar(200) DEFAULT NULL COMMENT '开户许可证(附件)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='企业银行账户表';


-- ----------------------------
-- Table structure for enter_auth_recode
-- ----------------------------
DROP TABLE IF EXISTS `auth_finan_org_recode`;
CREATE TABLE `auth_finan_org_recode` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '企业认证记录id',
  `comp_id` bigint(11) DEFAULT NULL COMMENT '企业id',
  `user_id` bigint(64) DEFAULT NULL COMMENT '用户id',
  `sign_oper` varchar(100) DEFAULT NULL COMMENT '合同签约人',
  `elec_contr_url` varchar(100) DEFAULT NULL COMMENT '电子合同地址',
  `apply_date` datetime DEFAULT NULL COMMENT '认证申请时间',
  `audit_date` datetime DEFAULT NULL COMMENT '认证审核时间',
  `audit_stat` char(2) DEFAULT NULL COMMENT '认证状态',
  `auth_fail_reason` varchar(255) DEFAULT NULL COMMENT '认证失败原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='金融机构认证记录表';

-- ----------------------------
-- Table structure for finance_org
-- ----------------------------
DROP TABLE IF EXISTS `auth_finance_org`;
CREATE TABLE `auth_finance_org` (
  `id` bigint(20) NOT NULL COMMENT '金融机构id',
  `legal_person_id` bigint(64) DEFAULT NULL COMMENT '企业法人代表id',
  `org_categ` int(11) DEFAULT NULL COMMENT '金融机构类型',
  `name` varchar(128) NOT NULL COMMENT '金融机构名称',
  `reg_num` varchar(255) DEFAULT NULL COMMENT '企业注册号',
  `credit_code` varchar(255) DEFAULT NULL COMMENT '统一社会信用代码',
  `taxpayer_num` varchar(255) DEFAULT NULL COMMENT '纳税人识别号',
  `reg_date` datetime DEFAULT NULL COMMENT '成立日期' COMMENT '注册时间',
  `license_auth_org` varchar(255) DEFAULT NULL COMMENT '执照发照机关',
  `reg_capi` double DEFAULT NULL COMMENT '注册资本(金)',
  `reg_capi_cucy` char(2) DEFAULT NULL COMMENT '注册资本币种',
  `eco_nature` varchar(255) DEFAULT NULL COMMENT '经济性质',
  `paid_capi` double(255,0) DEFAULT NULL COMMENT '实收资本',
  `busi_scope` varchar(255) DEFAULT NULL COMMENT '经营范围',
  `busi_period` datetime DEFAULT NULL COMMENT '经营期限',
  `busi_stat` char(255) DEFAULT NULL COMMENT '经营状态',
  `postal_code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `contact_num` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `fax_num` varchar(20) DEFAULT NULL COMMENT '传真号',
  `email` varchar(255) DEFAULT NULL COMMENT '企业邮箱',
  `comp_nature_type` char(2) DEFAULT NULL COMMENT '企业性质类型',
  `detail_addr` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `actual_office_addr` varchar(255) DEFAULT NULL COMMENT '实际办公地址',
  `latest_inspect_msg` varchar(255) NOT NULL COMMENT '最新年检信息',
  `change_msg` varchar(255) DEFAULT NULL COMMENT '企业变更登记信息',
  `cancel_msg` varchar(255) DEFAULT NULL COMMENT '企业注销信息',
  `person_size` char(2) DEFAULT NULL COMMENT '企业人员规模:0 50人以下,1 50人以下,2  500至2000人,3 2000人以上',
  `reg_addr` varchar(255) DEFAULT NULL COMMENT '注册地址,企业住所',
  `auth_state` char(2) DEFAULT NULL COMMENT '认证状态',
  `credit_report_url` varchar(255) DEFAULT NULL COMMENT '（平台）信用报告文件url地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='金融机构表';


-- ----------------------------
-- Table structure for enter_company_attachment
-- ----------------------------
DROP TABLE IF EXISTS `auth_finance_org_attachment`;
CREATE TABLE `auth_finance_org_attachment` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `association` varchar(255) DEFAULT NULL COMMENT '公司章程(附件)',
  `capi_report` varchar(255) DEFAULT NULL COMMENT '验资报告（附件）',
  `credit_report` varchar(255) DEFAULT NULL COMMENT '企业人行征信报告（附件）',
  `loan_use` varchar(255) DEFAULT NULL COMMENT '贷款用途资料(附件)',
  `cust_ contract` varchar(255) DEFAULT NULL COMMENT '主要供销客户的销购合同/协议',
  `legal_person_credit_report` varchar(255) DEFAULT NULL COMMENT '法定代表人（实际控制人）人行征信报告',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='金融机构附件表';

-- ----------------------------
-- Table structure for enter_company_extend
-- ----------------------------
DROP TABLE IF EXISTS `auth_finance_org_extend`;
CREATE TABLE `auth_finance_org_extend` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `county` int(11) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='金融机构扩展表';


-- ----------------------------
-- Table structure for enter_company_stockholder
-- ----------------------------
DROP TABLE IF EXISTS `auth_finance_org_stockh`;
CREATE TABLE `auth_finance_org_stockh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '股东id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `holder_name` varchar(255) DEFAULT NULL COMMENT '股东名称',
  `holder_type` char(255) DEFAULT NULL COMMENT '股东类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='金融机构股东表';

-- ----------------------------
-- Table structure for enter_open_bank
-- ----------------------------
DROP TABLE IF EXISTS `auth_finance_org_open_bank`;
CREATE TABLE `auth_finance_org_open_bank` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `comp_name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户行',
  `bank_account` varchar(255) DEFAULT NULL COMMENT '企业银行账户',
  `open_lisence` varchar(200) DEFAULT NULL COMMENT '开户许可证(附件)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='金融机构银行账户表';


-- ----------------------------
-- Table structure for enter_auth_recode
-- ----------------------------
DROP TABLE IF EXISTS `auth_finan_operorg_recode`;
CREATE TABLE `auth_finan_operorg_recode` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '企业认证记录id',
  `comp_id` bigint(11) DEFAULT NULL COMMENT '企业id',
  `user_id` bigint(64) DEFAULT NULL COMMENT '用户id',
  `sign_oper` varchar(100) DEFAULT NULL COMMENT '合同签约人',
  `elec_contr_url` varchar(100) DEFAULT NULL COMMENT '电子合同地址',
  `apply_date` datetime DEFAULT NULL COMMENT '认证申请时间',
  `audit_date` datetime DEFAULT NULL COMMENT '认证审核时间',
  `audit_stat` char(2) DEFAULT NULL COMMENT '认证状态',
  `auth_fail_reason` varchar(255) DEFAULT NULL COMMENT '认证失败原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构认证记录表';

-- ----------------------------
-- Table structure for finance_org
-- ----------------------------
DROP TABLE IF EXISTS `auth_oper_org`;
CREATE TABLE `auth_oper_org` (
  `id` bigint(20) NOT NULL COMMENT '金融机构id',
  `legal_person_id` bigint(64) DEFAULT NULL COMMENT '企业法人代表id',
  `reg_num` varchar(255) DEFAULT NULL COMMENT '企业注册号',
  `credit_code` varchar(255) DEFAULT NULL COMMENT '统一社会信用代码',
  `taxpayer_num` varchar(255) DEFAULT NULL COMMENT '纳税人识别号',
  `reg_date` datetime DEFAULT NULL COMMENT '成立日期' COMMENT '注册时间',
  `license_auth_org` varchar(255) DEFAULT NULL COMMENT '执照发照机关',
  `reg_capi` double DEFAULT NULL COMMENT '注册资本(金)',
  `reg_capi_cucy` char(2) DEFAULT NULL COMMENT '注册资本币种',
  `eco_nature` varchar(255) DEFAULT NULL COMMENT '经济性质',
  `paid_capi` double(255,0) DEFAULT NULL COMMENT '实收资本',
  `busi_scope` varchar(255) DEFAULT NULL COMMENT '经营范围',
  `busi_period` datetime DEFAULT NULL COMMENT '经营期限',
  `busi_stat` char(255) DEFAULT NULL COMMENT '经营状态',
  `postal_code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `contact_num` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `fax_num` varchar(20) DEFAULT NULL COMMENT '传真号',
  `email` varchar(255) DEFAULT NULL COMMENT '企业邮箱',
  `comp_nature_type` char(2) DEFAULT NULL COMMENT '企业性质类型',
  `detail_addr` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `actual_office_addr` varchar(255) DEFAULT NULL COMMENT '实际办公地址',
  `latest_inspect_msg` varchar(255) NOT NULL COMMENT '最新年检信息',
  `change_msg` varchar(255) DEFAULT NULL COMMENT '企业变更登记信息',
  `cancel_msg` varchar(255) DEFAULT NULL COMMENT '企业注销信息',
  `person_size` char(2) DEFAULT NULL COMMENT '企业人员规模:0 50人以下,1 50人以下,2  500至2000人,3 2000人以上',
  `reg_addr` varchar(255) DEFAULT NULL COMMENT '注册地址,企业住所',
  `auth_state` char(2) DEFAULT NULL COMMENT '认证状态',
  `credit_report_url` varchar(255) DEFAULT NULL COMMENT '（平台）信用报告文件url地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构表';


-- ----------------------------
-- Table structure for enter_company_attachment
-- ----------------------------
DROP TABLE IF EXISTS `auth_operorg_attachment`;
CREATE TABLE `auth_operorg_attachment` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `association` varchar(255) DEFAULT NULL COMMENT '公司章程(附件)',
  `capi_report` varchar(255) DEFAULT NULL COMMENT '验资报告（附件）',
  `credit_report` varchar(255) DEFAULT NULL COMMENT '企业人行征信报告（附件）',
  `loan_use` varchar(255) DEFAULT NULL COMMENT '贷款用途资料(附件)',
  `cust_ contract` varchar(255) DEFAULT NULL COMMENT '主要供销客户的销购合同/协议',
  `legal_person_credit_report` varchar(255) DEFAULT NULL COMMENT '法定代表人（实际控制人）人行征信报告',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='运营机构附件表';

-- ----------------------------
-- Table structure for enter_company_extend
-- ----------------------------
DROP TABLE IF EXISTS `auth_operorg_extend`;
CREATE TABLE `auth_operorg_extend` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `county` int(11) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='运营机构扩展表';


-- ----------------------------
-- Table structure for enter_company_stockholder
-- ----------------------------
DROP TABLE IF EXISTS `auth_operorg_stockh`;
CREATE TABLE `auth_operorg_stockh` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '股东id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `holder_name` varchar(255) DEFAULT NULL COMMENT '股东名称',
  `holder_type` char(255) DEFAULT NULL COMMENT '股东类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营机构股东表';

-- ----------------------------
-- Table structure for enter_open_bank
-- ----------------------------
DROP TABLE IF EXISTS `auth_operorg_open_bank`;
CREATE TABLE `auth_operorg_open_bank` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) DEFAULT NULL COMMENT '企业id',
  `comp_name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户行',
  `bank_account` varchar(255) DEFAULT NULL COMMENT '企业银行账户',
  `open_lisence` varchar(200) DEFAULT NULL COMMENT '开户许可证(附件)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='运营机构银行账户表';



-- ----------------------------
-- Table structure for finance_org
-- ----------------------------
DROP TABLE IF EXISTS `auth_regulator_org`;
CREATE TABLE `auth_regulator_org` (
  `id` bigint(20) NOT NULL COMMENT '政府部门id',
  `org_name` varchar(50) DEFAULT NULL COMMENT '机构名称',
  `org_categ` varchar(50) DEFAULT NULL COMMENT '监管机构分类',
  `primary_respon` varchar(50) DEFAULT NULL COMMENT '主要职能',
  `addr` varchar(255) DEFAULT NULL COMMENT '单位地址',
  `postal_code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `contact_num` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `website_link` varchar(20) DEFAULT NULL COMMENT '网站链接',
  `fax_num` varchar(20) DEFAULT NULL COMMENT '传真号',
  `email` varchar(255) DEFAULT NULL COMMENT '企业邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='金融监管部门表';

-- ----------------------------
-- Table structure for finance_org
-- ----------------------------
DROP TABLE IF EXISTS `auth_gov_org`;
CREATE TABLE `auth_gov_org` (
  `id` bigint(20) NOT NULL COMMENT '政府部门id',
  `org_name` varchar(50) DEFAULT NULL COMMENT '机构名称',
  `primary_respon` varchar(50) DEFAULT NULL COMMENT '主要职能',
  `addr` varchar(255) DEFAULT NULL COMMENT '单位地址',
  `postal_code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `contact_num` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `website_link` varchar(20) DEFAULT NULL COMMENT '网站链接',
  `fax_num` varchar(20) DEFAULT NULL COMMENT '传真号',
  `email` varchar(255) DEFAULT NULL COMMENT '企业邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='政府部门表';

-- ----------------------------
-- Table structure for finance_need
-- ----------------------------

DROP TABLE IF EXISTS `finance_need_invid`;
CREATE TABLE `finance_need_invid` (
  `id` varchar(64) NOT NULL COMMENT '融资需求id',
  `comp_id` bigint(11) NOT NULL COMMENT '融资需求发布的企业id',
  `oper_user_id` bigint(11) NOT NULL COMMENT '操作人id',
  `loan_channel` char(2) DEFAULT NULL COMMENT '贷款渠道',
  `loan_money` double NOT NULL COMMENT '融资金额',
  `annu_rate` double NOT NULL COMMENT '融资年利率',
  `loan_period` int(11) NOT NULL COMMENT '融资期限，单位是月',
  `bank_name` varchar(64) NOT NULL COMMENT '开户行',
  `half_year_income` double NOT NULL COMMENT '上半年开票营业收入',
  `tax_money` double NOT NULL COMMENT '纳税金额',
  `tax_grade` varchar(24) DEFAULT NULL COMMENT '纳税等级',
  `is_gain` tinyint(4) DEFAULT NULL COMMENT '是否盈利，0：亏损 1：盈利',
  `has_pawn` tinyint(4) DEFAULT NULL COMMENT '是否有抵押物',
  `pre_loan_bank` varchar(128) DEFAULT NULL COMMENT '之前贷款银行',
  `pre_loan_money` double DEFAULT NULL COMMENT '之前贷款金额，万元',
  `finance_stat` char(4) DEFAULT NULL COMMENT '融资进度 0：待选择金融产品 1：待金融顾问推送 2：对接中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个体户融资需求表';

-- ----------------------------
-- Table structure for finance_order
-- ----------------------------
DROP TABLE IF EXISTS `finance_order_invid`;
CREATE TABLE `finance_order_invid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '融资订单表id,主键',
  `need_id` bigint(20) DEFAULT NULL COMMENT '融资需求id，外键',
  `oper_user_id` bigint(11) NOT NULL COMMENT '操作人id',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '金融产品id，外键',
  `prod_name` varchar(255) DEFAULT NULL COMMENT '金融产品名称',comp bigint(20) DEFAULT NULL COMMENT '对接机构id',
  `org_name` varchar(255) DEFAULT NULL COMMENT '对接的金融机构的名称',
  `prod_manager_name` varchar(255) DEFAULT NULL COMMENT '产品经理名称',
  `order_stat` varchar(255) DEFAULT NULL COMMENT '订单状态，0：，1：',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `province` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '县/区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个体户融资订单表';


-- ----------------------------
-- Table structure for finance_need
-- ----------------------------

DROP TABLE IF EXISTS `finance_need_comp`;
CREATE TABLE `finance_need_comp` (
  `id` varchar(64) NOT NULL COMMENT '融资需求id',
  `comp_id` bigint(11) NOT NULL COMMENT '融资需求发布的企业id',
  `oper_user_id` bigint(11) NOT NULL COMMENT '操作人id',
  `loan_channel` char(2) DEFAULT NULL COMMENT '贷款渠道',
  `loan_money` double NOT NULL COMMENT '融资金额',
  `annu_rate` double NOT NULL COMMENT '融资年利率',
  `loan_period` int(11) NOT NULL COMMENT '融资期限，单位是月',
  `bank_name` varchar(64) NOT NULL COMMENT '开户行',
  `half_year_income` double NOT NULL COMMENT '上半年开票营业收入',
  `tax_money` double NOT NULL COMMENT '纳税金额',
  `tax_grade` varchar(24) DEFAULT NULL COMMENT '纳税等级',
  `is_gain` tinyint(4) DEFAULT NULL COMMENT '是否盈利，0：亏损 1：盈利',
  `has_pawn` tinyint(4) DEFAULT NULL COMMENT '是否有抵押物',
  `pre_loan_bank` varchar(128) DEFAULT NULL COMMENT '之前贷款银行',
  `pre_loan_money` double DEFAULT NULL COMMENT '之前贷款金额，万元',
  `finance_stat` char(4) DEFAULT NULL COMMENT '融资进度 0：待选择金融产品 1：待金融顾问推送 2：对接中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业融资需求表';

-- ----------------------------
-- Table structure for finance_order
-- ----------------------------
DROP TABLE IF EXISTS `finance_order_comp`;
CREATE TABLE `finance_order_comp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '融资订单表id,主键',
  `need_id` bigint(20) DEFAULT NULL COMMENT '融资需求id，外键',
  `oper_user_id` bigint(11) NOT NULL COMMENT '操作人id',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '金融产品id，外键',
  `prod_name` varchar(255) DEFAULT NULL COMMENT '金融产品名称',comp bigint(20) DEFAULT NULL COMMENT '对接机构id',
  `org_name` varchar(255) DEFAULT NULL COMMENT '对接的金融机构的名称',
  `prod_manager_name` varchar(255) DEFAULT NULL COMMENT '产品经理名称',
  `order_stat` varchar(255) DEFAULT NULL COMMENT '订单状态，0：，1：',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `province` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '县/区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业融资订单表';

-- ----------------------------
-- Table structure for prod_finance_product
-- ----------------------------
DROP TABLE IF EXISTS `prod_finance_product`;
CREATE TABLE `prod_finance_product` (
  `id` bigint(64) NOT NULL COMMENT '金融产品id',
  `comp_id` bigint(64) DEFAULT NULL COMMENT '金融机构id',
  `type` varchar(64) DEFAULT NULL COMMENT '产品类型',
  `name` varchar(128) NOT NULL COMMENT '金融产品名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '产品介绍/产品描述',
  `feature` varchar(255) DEFAULT NULL COMMENT '产品特色',
  `loan_range` varchar(64) DEFAULT NULL COMMENT '贷款额度，单位是万',
  `loan_period` varchar(64) DEFAULT NULL COMMENT '贷款期限，单位为月',
  `loan_rate_range` varchar(64) DEFAULT NULL COMMENT '贷款利率',
  `gua_mode` varchar(64) DEFAULT NULL COMMENT '担保方式',
  `repay_mode` varchar(128) DEFAULT NULL COMMENT '还款方式',
  `serv_area` varchar(64) DEFAULT NULL COMMENT '服务区域（金融产品具有区域性）',
  `enter_condition` varchar(128) DEFAULT NULL COMMENT '准入条件',
  `loan_channel` varchar(64) DEFAULT NULL COMMENT '贷款渠道',
  `apply_num` int(11) DEFAULT NULL COMMENT '申请次数',
  `is_pub` tinyint(1) DEFAULT NULL COMMENT '是否发布',
  `pub_time` datetime DEFAULT NULL COMMENT '金融产品发布时间',
  `sub_material` varchar(255) DEFAULT NULL COMMENT '提交材料',
  `case` varchar(255) DEFAULT NULL COMMENT '案例',
  `spec_explain` varchar(255) DEFAULT NULL COMMENT '特此说明',
  `province` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '县/区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='金融产品表';


-- ----------------------------
-- Table structure for match_record
-- ----------------------------
DROP TABLE IF EXISTS `match_record`;
CREATE TABLE `match_record` (
  `id` bigint(20) NOT NULL COMMENT '撮合记录表主键ID',
  `comp_id` bigint(20) DEFAULT NULL COMMENT '企业ID',
  `need_id` bigint(20) DEFAULT NULL COMMENT '融资需求ID',
  `match_stat` int(4) DEFAULT NULL COMMENT '撮合状态（0：撮合成功，；1：撮合中；2：撮合失败）',
  `real_loan_money` double(255,0) NOT NULL COMMENT '实际放款金额',
  `real_deadline` varchar(255) DEFAULT NULL COMMENT '实际期限',
  `real_rate` varchar(255) DEFAULT NULL COMMENT '实际利率',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `delete_time` varchar(255) DEFAULT NULL COMMENT '删除事件',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='撮合记录表';

