/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : individual_credit

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-10-15 19:36:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_gr_communication_info
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_communication_info`;
CREATE TABLE `t_gr_communication_info` (
  `ID` int(11) NOT NULL,
  `phone_num` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `send_org` varchar(50) DEFAULT NULL COMMENT '报送机构',
  `service_type` varchar(10) DEFAULT NULL COMMENT '业务类型',
  `open_date` datetime DEFAULT NULL COMMENT '开户时间',
  `org_site` varchar(200) DEFAULT NULL COMMENT '机构所在地',
  `month_consume` double DEFAULT NULL COMMENT '月消费金额',
  `default_money` double DEFAULT NULL COMMENT '最后一次欠费金额',
  `default_date` datetime DEFAULT NULL COMMENT '最后一次欠费时间',
  `max_default` double DEFAULT NULL COMMENT '最高欠费金额',
  `max_date` datetime DEFAULT NULL COMMENT '最大欠费日期',
  `closing_date` datetime DEFAULT NULL COMMENT '截至日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通讯缴费信息';

-- ----------------------------
-- Records of t_gr_communication_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_gr_credit_card
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_credit_card`;
CREATE TABLE `t_gr_credit_card` (
  `ID` int(11) NOT NULL COMMENT '信用卡id',
  `credit_id` varchar(50) DEFAULT NULL COMMENT '信用卡卡号',
  `credit_name` varchar(50) DEFAULT NULL COMMENT '开户人姓名',
  `id_number` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `open_card_date` datetime DEFAULT NULL COMMENT '开卡时间',
  `open_card_org` varchar(50) DEFAULT NULL COMMENT '开卡机构',
  `currency` varchar(20) DEFAULT NULL COMMENT '币种',
  `guaranty_style` varchar(20) DEFAULT NULL COMMENT '担保方式',
  `credit_quota` double DEFAULT NULL COMMENT '信用额度',
  `credit_status` varchar(2) DEFAULT NULL COMMENT '信用卡状态',
  `status_finish_date` datetime DEFAULT NULL COMMENT '状态结束日期',
  `overdraft_quota` double DEFAULT NULL COMMENT '透支额度',
  `max_overdraft` double DEFAULT NULL COMMENT '最大透支额度',
  `month_repay` double DEFAULT NULL COMMENT '本月还款金额',
  `month_real_repay` double DEFAULT NULL COMMENT '本月实际还款金额',
  `finally_repay_date` datetime DEFAULT NULL COMMENT '最后还款日期',
  `overdue_num` varchar(20) DEFAULT NULL COMMENT '当前逾期期数',
  `overdue_sum` double DEFAULT NULL COMMENT '当前逾期总额',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='信用卡业务';

-- ----------------------------
-- Records of t_gr_credit_card
-- ----------------------------

-- ----------------------------
-- Table structure for t_gr_fraud_info
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_fraud_info`;
CREATE TABLE `t_gr_fraud_info` (
  `ID` int(11) NOT NULL,
  `fraud_number` varchar(50) DEFAULT NULL COMMENT '欺诈信息编号',
  `fraud_name` varchar(50) DEFAULT NULL COMMENT '欺诈人姓名',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `fraud_type` varchar(2) DEFAULT NULL COMMENT '欺诈类型',
  `fraud_money` double NOT NULL COMMENT '欺诈金额',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='欺诈信息';

-- ----------------------------
-- Records of t_gr_fraud_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_gr_individual_info
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_individual_info`;
CREATE TABLE `t_gr_individual_info` (
  `ID` bigint(20) NOT NULL COMMENT '个人身份信息id',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `full_name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `birth_date` datetime DEFAULT NULL COMMENT '出生日期',
  `family_address` varchar(500) DEFAULT NULL COMMENT '户籍地址',
  `marital_status` varchar(50) DEFAULT NULL COMMENT '婚姻状况',
  `region` varchar(50) DEFAULT NULL COMMENT '所在地区',
  `contact _address` varchar(250) DEFAULT NULL COMMENT '联系地址',
  `work_unit` varchar(50) DEFAULT NULL COMMENT '工作单位',
  `education` varchar(50) DEFAULT NULL COMMENT '学历',
  `politics_status` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `contact_number` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `firm_number` varchar(50) DEFAULT NULL COMMENT '单位电话',
  `spouse_name` varchar(50) DEFAULT NULL COMMENT '配偶姓名',
  `spouse_card_type` varchar(50) DEFAULT NULL COMMENT '配偶证件类型',
  `spouse_card_num` varchar(50) DEFAULT NULL COMMENT '配偶证件号码',
  `spouse_contact_num` varchar(50) DEFAULT NULL COMMENT '配偶联系电话',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人身份信息';

-- ----------------------------
-- Records of t_gr_individual_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_gr_lawsuit_info
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_lawsuit_info`;
CREATE TABLE `t_gr_lawsuit_info` (
  `ID` int(11) NOT NULL,
  `case_id` varchar(50) DEFAULT NULL COMMENT '案件编号',
  `case_name` varchar(50) DEFAULT NULL COMMENT '案件人姓名',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `register_court` varchar(50) DEFAULT NULL COMMENT '立案法院',
  `register_date` datetime DEFAULT NULL,
  `judge_pro` varchar(20) DEFAULT NULL COMMENT '审判程序',
  `whether_finish` varchar(2) DEFAULT NULL COMMENT '是否结案',
  `finish_way` varchar(20) DEFAULT NULL COMMENT '结束方式',
  `finish_date` datetime DEFAULT NULL COMMENT '结束日期',
  `lawsuit_type` varchar(2) DEFAULT NULL COMMENT '诉讼类型',
  `lawsuit_status` varchar(50) DEFAULT NULL COMMENT '诉讼地位',
  `lawsuit_relation` varchar(100) DEFAULT NULL COMMENT '诉讼标的',
  `relation_money` double DEFAULT NULL COMMENT '诉讼标的金额',
  `judgment` mediumtext NOT NULL COMMENT '判决/调解金额应付金额案由',
  `judgment_result` mediumtext COMMENT '判决结果',
  `case_cause` varchar(300) DEFAULT NULL COMMENT '案由',
  `case_result` varchar(300) DEFAULT NULL COMMENT '案件结果',
  `start_relation` varchar(100) DEFAULT NULL COMMENT '执行标的',
  `start_money` double DEFAULT NULL COMMENT '执行标的金额',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='法院诉讼及执行信息';

-- ----------------------------
-- Records of t_gr_lawsuit_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_gr_loans_info
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_loans_info`;
CREATE TABLE `t_gr_loans_info` (
  `ID` int(11) NOT NULL COMMENT '消费贷款id',
  `full_name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `loan_type` varchar(2) DEFAULT NULL COMMENT '贷款类型',
  `grant_org` varchar(30) DEFAULT NULL COMMENT '发放机构',
  `currency` varchar(20) DEFAULT NULL COMMENT '币种',
  `guaranty_style` varchar(20) DEFAULT NULL COMMENT '担保方式',
  `contract_amount` double DEFAULT NULL COMMENT '合同金额',
  `contract_limit` datetime DEFAULT NULL COMMENT '合同期限',
  `repayment_date` datetime DEFAULT NULL COMMENT '还款时间',
  `want_repayment` double DEFAULT NULL COMMENT '未还本金',
  `month_repay` double DEFAULT NULL COMMENT '本月还款金额',
  `month_real_repay` double DEFAULT NULL COMMENT '本月实际还款金额',
  `last_repay` double DEFAULT NULL COMMENT '上一次还款金额',
  `account_status` varchar(2) DEFAULT NULL COMMENT '账户状态',
  `status_finish_date` datetime DEFAULT NULL COMMENT '状态结束日期',
  `present_over_num` varchar(20) DEFAULT NULL COMMENT '当前逾期期数',
  `present_over_sum` double DEFAULT NULL COMMENT '当前逾期总额',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消费贷款信息';

-- ----------------------------
-- Records of t_gr_loans_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_gr_penalize_info
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_penalize_info`;
CREATE TABLE `t_gr_penalize_info` (
  `ID` int(11) NOT NULL,
  `penalize_num` varchar(50) DEFAULT NULL COMMENT '处罚编号',
  `penalize_name` varchar(50) DEFAULT NULL COMMENT '处罚人姓名',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `penalize_date` datetime DEFAULT NULL COMMENT '处罚日期',
  `penalize_content` varchar(500) DEFAULT NULL COMMENT '处罚内容',
  `penalize_result` varchar(200) DEFAULT NULL COMMENT '处罚结果',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公安处罚信息';

-- ----------------------------
-- Records of t_gr_penalize_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_gr_time_info
-- ----------------------------
DROP TABLE IF EXISTS `t_gr_time_info`;
CREATE TABLE `t_gr_time_info` (
  `ID` int(11) NOT NULL,
  `date_coding` varchar(50) DEFAULT NULL COMMENT '时间编码',
  `year` date NOT NULL COMMENT '年',
  `quarter` varchar(2) NOT NULL COMMENT '季度',
  `month` varchar(255) DEFAULT NULL COMMENT '月',
  `week` varchar(255) DEFAULT NULL COMMENT '周',
  `day` varchar(255) DEFAULT NULL COMMENT '日',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='时间维度信息';

-- ----------------------------
-- Records of t_gr_time_info
-- ----------------------------
