DROP TABLE IF EXISTS `s_1`;
 CREATE TABLE `s_1` (
`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,`mdtrt_evt_id` varchar(30) COMMENT '就诊事件ID', `medcasno` varchar(30) COMMENT '病案号', `prfs` varchar(50) COMMENT '职业', `addr_prov_admdvs` VARCHAR(6) COMMENT '现住址-省（区、市）行政区划', `addr_city_admdvs` VARCHAR(6) COMMENT '现住址-市行政区划', `addr_coty_admdvs` VARCHAR(6) COMMENT '现住址-县行政区划', `detl_addr` varchar(200) COMMENT '现住址-详细地址', `coner_name` varchar(50) COMMENT '联系人姓名', `coner_rlts` varchar(20) COMMENT '联系人关系', `coner_addr_prov_admdvs` VARCHAR(6) COMMENT '联系人住址-省（区、市）行政区划', `coner_addr_city_admdvs` VARCHAR(6) COMMENT '联系人住址-市行政区划', `coner_addr_coty_admdvs` VARCHAR(6) COMMENT '联系人住址-县行政区划', `coner_detl_addr` varchar(200) COMMENT '联系人住址-详细地址', `coner_tel` varchar(20) COMMENT '联系人电话', `nwb_adm_type` varchar(3) COMMENT '新生儿入院类型', `nwb_bir_wt` numeric(8,2) COMMENT '新生儿出生体重', `nwb_adm_wt` numeric(8,2) COMMENT '新生儿入院体重', `dias_dept` varchar(50) COMMENT '诊断科别', `create_date` datetime COMMENT '创建日期', `update_date` datetime COMMENT '更新日期', PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `s_2`;
 CREATE TABLE `s_2` (
`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,`mdtrt_evt_id` varchar(30) COMMENT '就诊事件ID', `medcasno` varchar(30) COMMENT '病案号', `dise_code` varchar(20) COMMENT '诊断代码', `dise_name` VARCHAR(300) COMMENT '诊断名称', `oprn_name` varchar(300) COMMENT '手术操作名称', `oprn_code` varchar(30) COMMENT '手术操作代码', `create_date` datetime COMMENT '创建日期', `update_date` datetime COMMENT '更新日期', PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `s_3`;
 CREATE TABLE `s_3` (
`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,`adm_way` varchar(6) COMMENT '入院途径', `trt_type` varchar(6) COMMENT '治疗类别', `adm_time` datetime COMMENT '入院时间', `adm_dept` varchar(50) COMMENT '入院科室', `refl_dept` varchar(50) COMMENT '转院科别', `dscg_time` datetime COMMENT '出院时间', `dscg_dept` varchar(20) COMMENT '出院科别', `otp_wm_dise` varchar(200) COMMENT '门（急）诊诊断（西医诊断）', `wm_dise_code` varchar(20) COMMENT '门（急）诊诊断（西医诊断）疾病代码', `otp_tcm_dise` varchar(200) COMMENT '门（急）诊诊断（中医诊断）', `tcm_dise_code` varchar(20) COMMENT '门（急）诊诊断（中医诊断）疾病代码', `create_date` datetime COMMENT '创建日期', `update_date` datetime COMMENT '更新日期', PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
