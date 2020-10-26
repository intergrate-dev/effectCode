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

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for enter_auth_recode
-- ----------------------------
DROP TABLE IF EXISTS `enter_auth_recode`;
CREATE TABLE `enter_auth_recode` (
`id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '企业认证记录id',
`comp_id` bigint(11) DEFAULT NULL COMMENT '企业id',
`user_id` bigint(64) DEFAULT NULL COMMENT '用户id',
`apply_date` datetime DEFAULT NULL COMMENT '认证申请时间',
`audit_date` datetime DEFAULT NULL COMMENT '认证审核时间',
`audit_stat` char(2) DEFAULT NULL COMMENT '认证状态',
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='认证记录表';

-- ----------------------------
-- Records of enter_auth_recode
-- ----------------------------

-- ----------------------------
-- Table structure for enter_company
-- ----------------------------
DROP TABLE IF EXISTS `enter_company`;
CREATE TABLE `enter_company` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '企业主键id',
  `legal_person_id` bigint(64) DEFAULT NULL COMMENT '企业法人代表id',
  `name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `reg_num` varchar(255) DEFAULT NULL COMMENT '企业注册号',
  `credit_code` varchar(255) DEFAULT NULL COMMENT '统一社会信用代码',
  `taxpayer_num` varchar(255) DEFAULT NULL COMMENT '纳税人识别号',
  `reg_date` datetime DEFAULT NULL COMMENT '成立日期',
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
  `comp_type` char(2) DEFAULT NULL COMMENT '企业类型',
  `latest_inspect_msg` varchar(255) NOT NULL COMMENT '最新年检信息',
  `change_msg` varchar(255) DEFAULT NULL COMMENT '企业变更登记信息',
  `cancel_msg` varchar(255) DEFAULT NULL COMMENT '企业注销信息',
  `person_size` char(2) DEFAULT NULL COMMENT '企业人员规模:0 50人以下,1 50人以下,2  500至2000人,3 2000人以上',
  `reg_addr` varchar(255) DEFAULT NULL COMMENT '注册地址,企业住所',
  `actual_office_addr` varchar(255) DEFAULT NULL COMMENT '实际办公地址',
  `is_auth` char(2) DEFAULT NULL COMMENT '企业是否认证',
  `auth_fail_reason` varchar(255) DEFAULT NULL COMMENT '认证失败原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='企业表';



