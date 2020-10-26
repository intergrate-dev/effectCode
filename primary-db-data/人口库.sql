/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : population

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-10-15 19:35:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_rk_6995_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_6995_info`;
CREATE TABLE `t_rk_6995_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `help_call` varchar(25) DEFAULT NULL COMMENT '求助电话',
  `open_time` datetime DEFAULT NULL COMMENT '开户时间',
  `countries` varchar(100) DEFAULT NULL COMMENT '县区',
  `township` varchar(100) DEFAULT NULL COMMENT '乡镇',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(255) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='6995信息';

-- ----------------------------
-- Records of t_rk_6995_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_account_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_account_info`;
CREATE TABLE `t_rk_account_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `account_num` varchar(20) DEFAULT NULL COMMENT '户号',
  `account_type` varchar(50) DEFAULT NULL COMMENT '户口类别',
  `householder_name` varchar(50) DEFAULT NULL COMMENT '户主姓名',
  `id_card_num` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `head_relation` varchar(20) DEFAULT NULL COMMENT '与户主关系',
  `account_reg_address` varchar(250) DEFAULT NULL COMMENT '户籍登记地址',
  `police_name` varchar(50) DEFAULT NULL COMMENT '公安机关机构名称',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL,
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='户籍信息';

-- ----------------------------
-- Records of t_rk_account_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_car_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_car_info`;
CREATE TABLE `t_rk_car_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `phone_num` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `contact_address` varchar(250) DEFAULT NULL COMMENT '联系地址',
  `live_address` varchar(250) DEFAULT NULL COMMENT '现住地址',
  `e_mail` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='车辆信息';

-- ----------------------------
-- Records of t_rk_car_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_certificate_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_certificate_info`;
CREATE TABLE `t_rk_certificate_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `license_code` varchar(20) DEFAULT NULL COMMENT '证照编号',
  `qualifier_name` varchar(150) DEFAULT NULL COMMENT '认证名称',
  `issued_by` varchar(150) DEFAULT NULL COMMENT '颁发单位',
  `runholder` varchar(50) DEFAULT NULL COMMENT '持证者',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电子证照信息';

-- ----------------------------
-- Records of t_rk_certificate_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_credit_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_credit_info`;
CREATE TABLE `t_rk_credit_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `credit_card` varchar(100) DEFAULT NULL COMMENT '信用卡',
  `housing_loans` varchar(100) DEFAULT NULL COMMENT '住房贷款',
  `others_loans` varchar(100) DEFAULT NULL COMMENT '其他贷款',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人信用信息';

-- ----------------------------
-- Records of t_rk_credit_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_death_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_death_info`;
CREATE TABLE `t_rk_death_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `serial_num` varchar(20) DEFAULT NULL COMMENT '报告卡编号',
  `death_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '死亡时间',
  `death_cause` varchar(200) DEFAULT NULL COMMENT '死亡原因',
  `death_address` varchar(250) DEFAULT NULL COMMENT '死亡地点',
  `whether_death` varchar(5) DEFAULT NULL COMMENT '是否异地死亡',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='死亡信息';

-- ----------------------------
-- Records of t_rk_death_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_disability_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_disability_info`;
CREATE TABLE `t_rk_disability_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `race` varchar(6) DEFAULT NULL COMMENT '民族',
  `birthdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '出生年月',
  `marrige` varchar(4) DEFAULT NULL COMMENT '婚姻状况',
  `disability_num` varchar(20) DEFAULT NULL COMMENT '残疾证号',
  `disability_type` varchar(50) DEFAULT NULL COMMENT '残疾类型',
  `dislevel` varchar(4) DEFAULT NULL COMMENT '残疾等级',
  `disability_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '残疾时间',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='残疾信息';

-- ----------------------------
-- Records of t_rk_disability_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_education_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_education_info`;
CREATE TABLE `t_rk_education_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `enter_time` datetime DEFAULT NULL COMMENT '入学时间',
  `graduate_time` datetime DEFAULT NULL COMMENT '毕业时间',
  `graduate_sch` varchar(50) DEFAULT NULL COMMENT '毕业学校',
  `profession` varchar(30) DEFAULT NULL COMMENT '专业',
  `school_type` varchar(50) DEFAULT NULL COMMENT '学校类型',
  `info_type` int(2) DEFAULT NULL COMMENT '信息类型 1 学籍信息 2 学历信息',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL,
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='教育信息';

-- ----------------------------
-- Records of t_rk_education_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_fertility_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_fertility_info`;
CREATE TABLE `t_rk_fertility_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `bear_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '生育发生日期',
  `bear_category` varchar(10) DEFAULT NULL COMMENT '生育类别',
  `child_num` int(11) DEFAULT NULL COMMENT '子女数',
  `child_name` varchar(50) DEFAULT NULL COMMENT '子女姓名',
  `ippf_num` varchar(20) DEFAULT NULL COMMENT '计生证号',
  `single_card_num` varchar(20) DEFAULT NULL COMMENT '独生证号',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='生育信息';

-- ----------------------------
-- Records of t_rk_fertility_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_fund_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_fund_info`;
CREATE TABLE `t_rk_fund_info` (
  `id` int(11) NOT NULL,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `join_id` varchar(50) DEFAULT NULL COMMENT '公积金账号',
  `company_id` varchar(50) NOT NULL COMMENT '单位账号',
  `company_name` varchar(50) NOT NULL COMMENT '单位名称',
  `start_month` varchar(10) DEFAULT NULL COMMENT '起始汇缴年月',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='住房公积金信息个人信息';

-- ----------------------------
-- Records of t_rk_fund_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_health_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_health_info`;
CREATE TABLE `t_rk_health_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `blood_type` varchar(20) DEFAULT NULL COMMENT '血型',
  `drug_history` varchar(500) DEFAULT NULL COMMENT '药物过敏史',
  `family_history` varchar(500) DEFAULT NULL COMMENT '家族史',
  `genetic_history` varchar(500) DEFAULT NULL COMMENT '遗传病史',
  `privlous_history` varchar(500) DEFAULT NULL COMMENT '概往史',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='健康档案信息';

-- ----------------------------
-- Records of t_rk_health_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_house_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_house_info`;
CREATE TABLE `t_rk_house_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `house_type` varchar(50) DEFAULT NULL COMMENT '房屋类型',
  `house_address` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `total_area` varchar(50) DEFAULT NULL COMMENT '合同建筑面积',
  `contract_area` varchar(50) DEFAULT NULL COMMENT '合同套内面积',
  `contract_price` decimal(10,0) DEFAULT NULL COMMENT '合同总价',
  `building_date` datetime DEFAULT NULL COMMENT '交楼日期',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL,
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房产信息';

-- ----------------------------
-- Records of t_rk_house_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_insurance_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_insurance_info`;
CREATE TABLE `t_rk_insurance_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `insure_status` varchar(10) DEFAULT NULL COMMENT '参保状态',
  `insure_date` datetime DEFAULT NULL COMMENT '参保日期',
  `insure_num` varchar(20) DEFAULT NULL COMMENT '社会保险登记证号码',
  `insure_type` varchar(50) DEFAULT NULL COMMENT '险种类型 1 养老保险 2 医疗保险 3 失业保险 4工伤保险 5 生育保险 6 农村保险',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='参保信息';

-- ----------------------------
-- Records of t_rk_insurance_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_marriage_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_marriage_info`;
CREATE TABLE `t_rk_marriage_info` (
  `id` int(11) NOT NULL,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `marry_time` datetime DEFAULT NULL COMMENT '结婚时间',
  `spouse_name` varchar(50) DEFAULT NULL COMMENT '配偶姓名',
  `divorce_time` datetime DEFAULT NULL COMMENT '离婚时间',
  `original_spouse_name` varchar(50) DEFAULT NULL COMMENT '原配偶姓名',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL,
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='婚姻信息';

-- ----------------------------
-- Records of t_rk_marriage_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_people_ext
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_people_ext`;
CREATE TABLE `t_rk_people_ext` (
  `id` int(11) NOT NULL,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `native_place` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `family_address` varchar(500) DEFAULT NULL COMMENT '户籍地址',
  `current_address` varchar(500) DEFAULT NULL COMMENT '居住地址',
  `photo_src` varchar(200) DEFAULT NULL COMMENT '照片路径',
  `marital_status` varchar(50) DEFAULT NULL COMMENT '婚姻状况',
  `politics_status` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `religion` varchar(50) DEFAULT NULL COMMENT '宗教信仰',
  `height` varchar(50) DEFAULT NULL COMMENT '身高',
  `education` varchar(50) DEFAULT NULL COMMENT '学历',
  `degree` varchar(50) DEFAULT NULL COMMENT '学位',
  `specialty` varchar(50) DEFAULT NULL COMMENT '专业',
  `health_status` int(2) DEFAULT NULL COMMENT '健康状态 1 健康 0 疾病',
  `job_status` int(2) DEFAULT NULL COMMENT '在职状态 1 在职 0 未在职',
  `insured_status` int(2) DEFAULT NULL COMMENT '参保状态 1 参保 0 未参保',
  `military_status` int(2) DEFAULT NULL COMMENT '兵役状态 1 服兵役 0 未服兵役',
  `dead_status` int(2) DEFAULT NULL COMMENT '死亡状态',
  `work_date` datetime DEFAULT NULL COMMENT '参加工作时间',
  `work_unit` varchar(50) DEFAULT NULL COMMENT '工作单位',
  `company_address` varchar(200) DEFAULT NULL COMMENT '工作单位地址',
  `job` varchar(50) DEFAULT NULL COMMENT '职业',
  `domicile_code` varchar(50) DEFAULT NULL COMMENT '户籍地行政区划代码',
  `area_code` varchar(10) DEFAULT NULL COMMENT '行政区划代码',
  `residential_zip` varchar(10) DEFAULT NULL COMMENT '居住地邮编',
  `residence_start_date` datetime DEFAULT NULL COMMENT '居住证起始日期',
  `residence_end_date` datetime DEFAULT NULL COMMENT '居住证终止日期',
  `belongs_grid` varchar(50) DEFAULT NULL COMMENT '所属网格',
  `contact_number` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email_address` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_rk_people_ext
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_people_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_people_info`;
CREATE TABLE `t_rk_people_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) NOT NULL COMMENT '证件号码',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `full_name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `used_name` varchar(50) DEFAULT NULL COMMENT '曾用名',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `citizenship` varchar(40) DEFAULT NULL COMMENT '国籍',
  `nation` varchar(20) DEFAULT NULL COMMENT '民族',
  `birth_date` datetime DEFAULT NULL COMMENT '出生日期',
  `source_id` int(11) NOT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='人口基础信息';

-- ----------------------------
-- Records of t_rk_people_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_practitioners_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_practitioners_info`;
CREATE TABLE `t_rk_practitioners_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `industry_num` varchar(20) DEFAULT NULL COMMENT '就(失)业证号码',
  `employ_status` varchar(10) DEFAULT NULL COMMENT '就业状态 1 劳动力登记信息 2  失业登记信息',
  `employ_date` datetime DEFAULT NULL COMMENT '就业日期',
  `employ_company` varchar(100) DEFAULT NULL COMMENT '就业单位',
  `unemploy_time` datetime DEFAULT NULL COMMENT '失业日期',
  `reason` varchar(3) DEFAULT NULL COMMENT '失业原因',
  `political_name` varchar(60) DEFAULT NULL COMMENT '行政区划名称',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL,
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='就业（失业）信息';

-- ----------------------------
-- Records of t_rk_practitioners_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_service_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_service_info`;
CREATE TABLE `t_rk_service_info` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `enlistnemt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '入伍时间',
  `enlistnemt_mode` varchar(50) DEFAULT NULL COMMENT '入伍方式',
  `veteran_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '退伍时间',
  `setting_way` varchar(50) DEFAULT NULL COMMENT '安置方式',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL COMMENT '数据来源表',
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_rk_service_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_rk_support_info
-- ----------------------------
DROP TABLE IF EXISTS `t_rk_support_info`;
CREATE TABLE `t_rk_support_info` (
  `id` int(11) NOT NULL COMMENT '序号',
  `card_num` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `retire_time` datetime DEFAULT NULL COMMENT '退休时间',
  `low_num` varchar(20) DEFAULT NULL COMMENT '低保证号',
  `safeguard_way` varchar(50) DEFAULT NULL COMMENT '保障方式',
  `guarantee_time` datetime DEFAULT NULL COMMENT '保障时间',
  `source_id` int(11) DEFAULT NULL COMMENT '数据来源ID',
  `source_table` varchar(50) DEFAULT NULL,
  `source_depart` varchar(50) DEFAULT NULL COMMENT '数据来源部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='低保信息';

-- ----------------------------
-- Records of t_rk_support_info
-- ----------------------------
