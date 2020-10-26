/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : firm

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-10-15 19:34:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fr_administrative_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_administrative_info`;
CREATE TABLE `fr_administrative_info` (
  `ID` int(11) NOT NULL,
  `accept_num` varchar(20) DEFAULT NULL COMMENT '行政审批许可文(证)件编号',
  `accept_name` varchar(50) DEFAULT NULL COMMENT '行政审批许荷文(证)件名称',
  `accept_content` mediumtext COMMENT '行政许可文(证)内容',
  `audit_org` varchar(50) DEFAULT NULL COMMENT '行政许可(证)件核发机关',
  `audit_date` datetime DEFAULT NULL COMMENT '行政许可(证)件核发日期',
  `accept_status` varchar(10) DEFAULT NULL COMMENT '行政许可文(证)状态',
  `valid_date` datetime DEFAULT NULL COMMENT '行政许可有效期限',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='行政许可';

-- ----------------------------
-- Records of fr_administrative_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_authentication_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_authentication_info`;
CREATE TABLE `fr_authentication_info` (
  `ID` int(11) NOT NULL,
  `auth_num` varchar(20) DEFAULT NULL COMMENT '认证证书编号',
  `auth_name` varchar(50) DEFAULT NULL COMMENT '认证名称',
  `auth_org` varchar(50) DEFAULT NULL COMMENT '认证机构',
  `auth_date` datetime DEFAULT NULL COMMENT '认证时间',
  `Issue_date` datetime DEFAULT NULL COMMENT '证书核发日期',
  `valid_date` datetime DEFAULT NULL COMMENT '有效日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='认证信息';

-- ----------------------------
-- Records of fr_authentication_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_charity_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_charity_info`;
CREATE TABLE `fr_charity_info` (
  `ID` int(11) NOT NULL,
  `donation_sum` double DEFAULT NULL COMMENT '公益捐款总金额',
  `join_num` varchar(10) DEFAULT NULL COMMENT '参加次数',
  `donation_num` varchar(10) DEFAULT NULL COMMENT '捐款次数',
  `charity` datetime DEFAULT NULL COMMENT '获取日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公益信息';

-- ----------------------------
-- Records of fr_charity_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_court_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_court_info`;
CREATE TABLE `fr_court_info` (
  `ID` int(11) NOT NULL,
  `judge_num` varchar(20) DEFAULT NULL COMMENT '判决书编号',
  `judge_name` varchar(50) DEFAULT NULL COMMENT '判决书名称',
  `judge_org` varchar(50) DEFAULT NULL COMMENT '审判机关',
  `case_type` varchar(10) DEFAULT NULL COMMENT '案件类型',
  `lawsuit_status` varchar(20) DEFAULT NULL COMMENT '诉讼地位',
  `start_date` datetime DEFAULT NULL COMMENT '立案日期',
  `finish_date` datetime DEFAULT NULL COMMENT '结案日期',
  `judge_result` varchar(500) DEFAULT NULL COMMENT '判决结果',
  `execute_org` varchar(50) DEFAULT NULL COMMENT '执行机构',
  `legal_mark` varchar(20) DEFAULT NULL COMMENT '案件号',
  `execute_reason` varchar(200) DEFAULT NULL COMMENT '执行事由',
  `coerce_date` datetime DEFAULT NULL COMMENT '强制日期',
  `coerce_execute` varchar(200) DEFAULT NULL COMMENT '强制执行',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉诉信息';

-- ----------------------------
-- Records of fr_court_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_credit_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_credit_info`;
CREATE TABLE `fr_credit_info` (
  `ID` int(11) NOT NULL,
  `appraise_name` varchar(20) DEFAULT NULL COMMENT '信用评价名称',
  `credit_grade` varchar(10) DEFAULT NULL COMMENT '信用评价(级)等级',
  `appraise_org` varchar(50) DEFAULT NULL COMMENT '信用评价(级)机构',
  `appraise_date` datetime DEFAULT NULL COMMENT '信用评价(级)日期',
  `scope` varchar(50) DEFAULT NULL COMMENT '信用评价(级)结果适用范围',
  `start_date` datetime DEFAULT NULL COMMENT '信用评价(级)结果有效起始日期',
  `finish_date` datetime DEFAULT NULL COMMENT '信用评价(级)结果有效终止日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业信用评价信息';

-- ----------------------------
-- Records of fr_credit_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_else_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_else_info`;
CREATE TABLE `fr_else_info` (
  `ID` int(11) NOT NULL,
  `message` text COMMENT '信息内容',
  `created_data` datetime DEFAULT NULL COMMENT '信息生成日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='其他交易信息';

-- ----------------------------
-- Records of fr_else_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_equity_pledge_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_equity_pledge_info`;
CREATE TABLE `fr_equity_pledge_info` (
  `ID` int(11) NOT NULL,
  `pledge_name` varchar(20) DEFAULT NULL COMMENT '出质人名称',
  `pledgee` varchar(20) DEFAULT NULL COMMENT '质权人名称',
  `pledge_org` varchar(50) DEFAULT NULL COMMENT '出质股权所在公司的名称',
  `pledge_money` double DEFAULT NULL COMMENT '股权出质额度',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='股权出质登记信息';

-- ----------------------------
-- Records of fr_equity_pledge_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_finance_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_finance_info`;
CREATE TABLE `fr_finance_info` (
  `ID` int(11) NOT NULL,
  `total_assets` double DEFAULT NULL COMMENT '资产总额',
  `total_debt` double DEFAULT NULL COMMENT '负债总额',
  `total_tax` double DEFAULT NULL COMMENT '纳税总额',
  `total_overseas` double DEFAULT NULL COMMENT '境外投资总额',
  `total_owner` double DEFAULT NULL COMMENT '所有者权益合计',
  `total_sale` double DEFAULT NULL COMMENT '销售总额',
  `income` double DEFAULT NULL COMMENT '营业收入',
  `profit` double DEFAULT NULL COMMENT '营业利润',
  `profit_sum` double DEFAULT NULL COMMENT '利润总额',
  `net_profit` double DEFAULT NULL COMMENT '净利润',
  `busi_enter_sum` double DEFAULT NULL COMMENT '经营活动现金流入总额',
  `busi_outflow_sum` double DEFAULT NULL COMMENT '经营活动现金流出总额',
  `invest_enter_sum` double DEFAULT NULL COMMENT '投资活动现金流入总额',
  `invest_outflow_sum` double DEFAULT NULL COMMENT '投资活动现金流出总额',
  `finance_enter_sum` double DEFAULT NULL COMMENT '筹资活动现金流入总额',
  `finance_outflow_sum` double DEFAULT NULL COMMENT '筹资活动现金流出总额',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='财务信息';

-- ----------------------------
-- Records of fr_finance_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_government_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_government_info`;
CREATE TABLE `fr_government_info` (
  `ID` int(11) NOT NULL,
  `mess_type` varchar(20) DEFAULT NULL COMMENT '信息类型',
  `mess_content` text COMMENT '信息内容',
  `issue_org` varchar(50) DEFAULT NULL COMMENT '发布单位',
  `issue_date` datetime DEFAULT NULL COMMENT '发布时间',
  `else_content` text COMMENT '其他信用相关内容',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='政府其他管理信息';

-- ----------------------------
-- Records of fr_government_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_honor_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_honor_info`;
CREATE TABLE `fr_honor_info` (
  `ID` int(11) NOT NULL,
  `honor_name` varchar(50) DEFAULT NULL COMMENT '荣誉名称',
  `honor_matter` varchar(100) DEFAULT NULL COMMENT '荣誉事项',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证书编号',
  `grant_org` varchar(30) DEFAULT NULL COMMENT '发放机构',
  `grant_date` datetime DEFAULT NULL COMMENT '发放时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='荣誉信息';

-- ----------------------------
-- Records of fr_honor_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_hypothecate_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_hypothecate_info`;
CREATE TABLE `fr_hypothecate_info` (
  `ID` int(11) NOT NULL,
  `guarantee_kind` varchar(20) DEFAULT NULL COMMENT '被担保债权种类',
  `guarantee_num` double DEFAULT NULL COMMENT '被担保债权金额',
  `pawn_name` varchar(50) DEFAULT NULL COMMENT '抵押财产名称',
  `pawn_num` varchar(20) DEFAULT NULL COMMENT '抵押财产数量',
  `debt_limit` datetime DEFAULT NULL COMMENT '履行债务的期限',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='抵押担保信息';

-- ----------------------------
-- Records of fr_hypothecate_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_internet_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_internet_info`;
CREATE TABLE `fr_internet_info` (
  `ID` int(11) NOT NULL,
  `filing_mark` varchar(20) DEFAULT NULL COMMENT 'ICP备案号/许可证号',
  `website` varchar(50) DEFAULT NULL COMMENT '网站/网站名称',
  `site` varchar(200) DEFAULT NULL COMMENT '网址',
  `website_name` varchar(20) DEFAULT NULL COMMENT '网站负责人',
  `domain` varchar(200) DEFAULT NULL COMMENT '域名',
  `server_address` varchar(100) DEFAULT NULL COMMENT '服务器地址',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉网信息';

-- ----------------------------
-- Records of fr_internet_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_invest_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_invest_info`;
CREATE TABLE `fr_invest_info` (
  `ID` int(11) NOT NULL,
  `sponsor_name` varchar(20) DEFAULT NULL COMMENT '出资人姓名',
  `sponsor_type` varchar(10) DEFAULT NULL COMMENT '出资人类型',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `sponsor_way` varchar(10) DEFAULT NULL COMMENT '出资方式',
  `quota` double DEFAULT NULL COMMENT '认缴出资额',
  `invest_ratio` varchar(10) DEFAULT NULL COMMENT '出资比例',
  `invest_date` datetime DEFAULT NULL COMMENT '出资时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='出资人及出资信息';

-- ----------------------------
-- Records of fr_invest_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_linkman_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_linkman_info`;
CREATE TABLE `fr_linkman_info` (
  `ID` int(11) NOT NULL,
  `linkman` varchar(20) DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `mailbox` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `postal_code` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业联系人';

-- ----------------------------
-- Records of fr_linkman_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_loans_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_loans_info`;
CREATE TABLE `fr_loans_info` (
  `ID` int(11) NOT NULL,
  `none_loans_sum` double DEFAULT NULL COMMENT '期末未偿还信贷总额',
  `already_loans_sum` double DEFAULT NULL COMMENT '期末已偿还信贷总额',
  `none_bond_sum` double DEFAULT NULL COMMENT '期末未付债券总额',
  `already_bond_sum` double DEFAULT NULL COMMENT '期末已付债券总额',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='信贷信息';

-- ----------------------------
-- Records of fr_loans_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_main_staff_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_main_staff_info`;
CREATE TABLE `fr_main_staff_info` (
  `ID` int(11) NOT NULL,
  `position` varchar(20) DEFAULT NULL COMMENT '职位',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `nationality` varchar(20) DEFAULT NULL COMMENT '国籍',
  `date_birth` datetime DEFAULT NULL COMMENT '出生日期',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `education` varchar(10) DEFAULT NULL COMMENT '学历',
  `society_position` varchar(255) DEFAULT NULL COMMENT '主要社会职务',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主要人员信息';

-- ----------------------------
-- Records of fr_main_staff_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_owing_taxes_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_owing_taxes_info`;
CREATE TABLE `fr_owing_taxes_info` (
  `ID` int(11) NOT NULL,
  `taxation_org` varchar(50) DEFAULT NULL COMMENT '税款所属机关',
  `debt_sum` varchar(10) DEFAULT NULL COMMENT '欠税次数',
  `debt_balance` double DEFAULT NULL COMMENT '欠款余额',
  `debt_type` varchar(2) DEFAULT NULL COMMENT '欠税税种',
  `back_duty_date` datetime DEFAULT NULL COMMENT '补缴税款日期',
  `taxes_debt_money` double DEFAULT NULL COMMENT '税收滞纳金欠缴金额',
  `debt_start_date` datetime DEFAULT NULL COMMENT '税收滞纳金欠缴起始日期',
  `debt_replenish_date` datetime DEFAULT NULL COMMENT '欠缴税收滞纳金补缴日期',
  `charity` datetime DEFAULT NULL COMMENT '获得日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='欠税信息';

-- ----------------------------
-- Records of fr_owing_taxes_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_patent_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_patent_info`;
CREATE TABLE `fr_patent_info` (
  `ID` int(11) NOT NULL,
  `patent_name` varchar(20) DEFAULT NULL COMMENT '知识产权名称',
  `patent_attr` varchar(50) DEFAULT NULL COMMENT '知识产权属性',
  `patent_owner` varchar(50) DEFAULT NULL COMMENT '知识产权所有人姓名',
  `audit_org` varchar(50) DEFAULT NULL COMMENT '知识产权批准部门',
  `audit_method` varchar(20) DEFAULT NULL COMMENT '知识产权批准方式',
  `audit_date` datetime DEFAULT NULL COMMENT '知识产权批准时间',
  `patent_region` varchar(50) DEFAULT NULL COMMENT '知识产权使用地域范围',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='知识产权信息';

-- ----------------------------
-- Records of fr_patent_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_public_pay_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_public_pay_info`;
CREATE TABLE `fr_public_pay_info` (
  `ID` int(11) NOT NULL,
  `org_name` varchar(50) DEFAULT NULL COMMENT '公共事业单位名称',
  `debt_type` varchar(10) DEFAULT NULL COMMENT '欠费类别',
  `debt_money` double DEFAULT NULL COMMENT '欠费金额',
  `debt_sum` varchar(10) DEFAULT NULL COMMENT '欠费总数',
  `debt_scope` varchar(30) DEFAULT NULL COMMENT '欠费所属时段',
  `debt_day` date DEFAULT NULL COMMENT '拖欠天数',
  `payment_date` datetime DEFAULT NULL COMMENT '补缴日期',
  `obtain_date` datetime DEFAULT NULL COMMENT '获取日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公共事业缴费信息';

-- ----------------------------
-- Records of fr_public_pay_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_punish_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_punish_info`;
CREATE TABLE `fr_punish_info` (
  `ID` int(11) NOT NULL,
  `penalize_num` varchar(20) DEFAULT NULL COMMENT '处罚决定书编号',
  `penalize_org` varchar(50) DEFAULT NULL COMMENT '处罚机关',
  `penalize_reason` varchar(500) DEFAULT NULL,
  `penalize_type` varchar(255) DEFAULT NULL COMMENT '处罚种类',
  `penalize_content` text COMMENT '处罚内容',
  `penalize_date` datetime DEFAULT NULL COMMENT '处罚日期',
  `execute_case` varchar(20) DEFAULT NULL COMMENT '执行情况',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='行政处罚信息';

-- ----------------------------
-- Records of fr_punish_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_qualifi_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_qualifi_info`;
CREATE TABLE `fr_qualifi_info` (
  `ID` int(11) NOT NULL,
  `qualifi_num` varchar(20) DEFAULT NULL COMMENT '专业资质证书编号',
  `qualifi_name` varchar(50) DEFAULT NULL COMMENT '专业资质名称',
  `audit_org` varchar(50) DEFAULT NULL COMMENT '专业资质签发机关',
  `audit_date` datetime DEFAULT NULL COMMENT '专业资质签发日期',
  `valid_date` datetime DEFAULT NULL COMMENT '专业资质有效期限',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资质信息';

-- ----------------------------
-- Records of fr_qualifi_info
-- ----------------------------

-- ----------------------------
-- Table structure for fr_social_security_info
-- ----------------------------
DROP TABLE IF EXISTS `fr_social_security_info`;
CREATE TABLE `fr_social_security_info` (
  `ID` int(11) NOT NULL,
  `staff_num` varchar(20) DEFAULT NULL COMMENT '职工人数',
  `insured_num` varchar(20) DEFAULT NULL COMMENT '社会保险参保人数',
  `insured_type` varchar(2) DEFAULT NULL COMMENT '社会保险种类',
  `insured_state` varchar(2) DEFAULT NULL COMMENT '社会保险缴费状态',
  `indi_fund_ratio` varchar(10) DEFAULT NULL COMMENT '住房公积金个人缴存比例',
  `org__fund_ratio` varchar(10) DEFAULT NULL COMMENT '住房公积金单位缴存比例',
  `fund_state` varchar(2) DEFAULT NULL COMMENT '单位住房公积金缆存状态',
  `debt_type` varchar(2) DEFAULT NULL COMMENT '欠费类别',
  `debt_money` double DEFAULT NULL COMMENT '欠费金额',
  `debt_stage` varchar(10) DEFAULT NULL COMMENT '欠费阶段',
  `debt_total` double DEFAULT NULL COMMENT '欠薪总额',
  `debt_sum` varchar(50) DEFAULT NULL COMMENT '欠薪人数（次）',
  `debt_org` varchar(50) DEFAULT NULL COMMENT '欠薪记录机关',
  `charity` datetime DEFAULT NULL COMMENT '获得日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='劳动和社会保障缴费信息';

-- ----------------------------
-- Records of fr_social_security_info
-- ----------------------------

-- ----------------------------
-- Table structure for enter_company_operation
-- ----------------------------
DROP TABLE IF EXISTS `auth_company_operation`;
CREATE TABLE `auth_company_operation` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `last_year_income` decimal(30,2) DEFAULT NULL COMMENT '上一年销售收入',
  `net_profit` decimal(30,2) DEFAULT NULL COMMENT '上一年净利润',
  `cooper_bank_num` int(20) DEFAULT NULL COMMENT '合作银行机构数(个)',
  `cooper__not_bank_num` int(20) DEFAULT NULL COMMENT '合作非银行机构数(个)',
  `qualif_msg` varchar(255) DEFAULT NULL COMMENT '资质信息',
  `industry` varchar(255) DEFAULT NULL COMMENT '所属行业',
  `main_busi` varchar(255) DEFAULT NULL COMMENT '主营业务',
  `main_prod` varchar(255) DEFAULT NULL COMMENT '主要产品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='企业经营情况表';


-- ----------------------------
-- Table structure for enter_tax_info
-- ----------------------------
DROP TABLE IF EXISTS `enter_tax_info`;
CREATE TABLE `enter_tax_info` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comp_id` bigint(36) NOT NULL COMMENT '企业id',
  `tax_reg_num` varchar(255) DEFAULT NULL COMMENT '税务登记证号',
  `name` varchar(255) DEFAULT NULL COMMENT '纳税人名称',
  `legal_repr` varchar(255) DEFAULT NULL COMMENT '法定代表人',
  `reg_type` varchar(255) DEFAULT NULL COMMENT '登记注册类型',
  `busi_scope` varchar(255) DEFAULT NULL COMMENT '经营范围',
  `month_ added-value_tax` decimal(30,2) DEFAULT NULL COMMENT '月均增值税应纳税额',
  `month_income_tax` varchar(255) DEFAULT NULL COMMENT '月均企业所得税应纳税额',
  `tax_grade` char(2) DEFAULT NULL COMMENT '纳税评级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='税务信息表';


