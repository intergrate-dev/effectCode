/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : macro-economy

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-10-15 19:35:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_jj_czjrbx_czszqk
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_czjrbx_czszqk`;
CREATE TABLE `t_jj_czjrbx_czszqk` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qnczsr` decimal(10,0) DEFAULT NULL COMMENT '去年财政收入',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `dnczsr` decimal(10,0) DEFAULT NULL COMMENT '当年财政收入',
  `zb` varchar(255) DEFAULT NULL COMMENT '指标',
  `fd` varchar(10) DEFAULT NULL COMMENT '浮动数 ',
  `lb` varchar(10) DEFAULT NULL COMMENT '类别',
  `sx` decimal(10,0) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='财政收支情况';

-- ----------------------------
-- Records of t_jj_czjrbx_czszqk
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_czjrbx_fxczsrqk
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_czjrbx_fxczsrqk`;
CREATE TABLE `t_jj_czjrbx_fxczsrqk` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shzylssrhj_qn` decimal(10,0) DEFAULT NULL COMMENT '上划中央两税收入合计_去年',
  `shzylssrhj_dn` decimal(10,0) DEFAULT NULL COMMENT '上划中央两税收入合计_当年',
  `shzylssrhj_fd` varchar(10) DEFAULT NULL COMMENT '上划中央两税收入合计_浮动',
  `shzysjsdssrhj_qn` decimal(10,0) DEFAULT NULL COMMENT '上划中央省级所得税收入合计_去年',
  `shzysjsdssrhj_dn` decimal(10,0) DEFAULT NULL COMMENT '上划中央省级所得税收入合计_当年',
  `shzysjsdssrhj_fd` varchar(10) DEFAULT NULL COMMENT '上划中央省级所得税收入合计_浮动',
  `ggczyssrhj_qn` decimal(10,0) DEFAULT NULL COMMENT '公共财政预算收入合计_去年',
  `ggczyssrhj_dn` decimal(10,0) DEFAULT NULL COMMENT '公共财政预算收入合计_当年',
  `ggczyssrhj_fd` varchar(10) DEFAULT NULL COMMENT '公共财政预算收入合计_浮动',
  `dq` varchar(100) DEFAULT NULL COMMENT '地区',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `zfxjjyssrhj_qn` decimal(10,0) DEFAULT NULL COMMENT '政府性基金预算收入合计_去年',
  `zfxjjyssrhj_dn` decimal(10,0) DEFAULT NULL COMMENT '政府性基金预算收入合计_当年',
  `zfxjjyssrhj_fd` varchar(10) DEFAULT NULL COMMENT '政府性基金预算收入合计_浮动',
  `czzsr_qn` decimal(10,0) DEFAULT NULL COMMENT '财政总收入_去年',
  `czzsr_dn` decimal(10,0) DEFAULT NULL COMMENT '财政总收入_当年',
  `czzsr_fd` varchar(10) DEFAULT NULL COMMENT '财政总收入_浮动',
  `sx` decimal(10,0) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分县财政收入情况';

-- ----------------------------
-- Records of t_jj_czjrbx_fxczsrqk
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_czjrbx_fxqczzcqk
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_czjrbx_fxqczzcqk`;
CREATE TABLE `t_jj_czjrbx_fxqczzcqk` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ggczyszchj_qn` decimal(10,0) DEFAULT NULL COMMENT '公共财政预算支出合计_去年',
  `ggczyszchj_dn` decimal(10,0) DEFAULT NULL COMMENT '公共财政预算支出合计_当年',
  `ggczyszchj_fd` varchar(10) DEFAULT NULL COMMENT '公共财政预算支出合计_浮动',
  `dq` varchar(100) DEFAULT NULL COMMENT '地区',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `zfxyszchj_qn` decimal(10,0) DEFAULT NULL COMMENT '政府性预算支出合计_去年',
  `zfxyszchj_dn` decimal(10,0) DEFAULT NULL COMMENT '政府性预算支出合计_当年',
  `zfxyszchj_fd` varchar(10) DEFAULT NULL COMMENT '政府性预算支出合计_浮动',
  `czcczj_qn` decimal(10,0) DEFAULT NULL COMMENT '财政支出总计_去年',
  `czcczj_dn` decimal(10,0) DEFAULT NULL COMMENT '财政支出总计_当年',
  `czcczj_fd` varchar(10) DEFAULT NULL COMMENT '财政支出总计_浮动',
  `sx` decimal(10,0) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分县区财政支出情况';

-- ----------------------------
-- Records of t_jj_czjrbx_fxqczzcqk
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_czjrbx_jrbxqk
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_czjrbx_jrbxqk`;
CREATE TABLE `t_jj_czjrbx_jrbxqk` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qn` decimal(10,0) DEFAULT NULL COMMENT '去年',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `dn` decimal(10,0) DEFAULT NULL COMMENT '当年',
  `zb` varchar(255) DEFAULT NULL COMMENT '指标',
  `fd` varchar(10) DEFAULT NULL COMMENT '浮动数 ',
  `lb` varchar(10) DEFAULT NULL COMMENT '类别',
  `sx` decimal(10,0) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='金融保险情况';

-- ----------------------------
-- Records of t_jj_czjrbx_jrbxqk
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_gy_qshzygycpcl
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_gy_qshzygycpcl`;
CREATE TABLE `t_jj_gy_qshzygycpcl` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cpmc` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `dw` varchar(255) DEFAULT NULL COMMENT '单位',
  `qn` varchar(255) DEFAULT NULL COMMENT '去年',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `dn` varchar(255) DEFAULT NULL COMMENT '当年',
  `fd` varchar(255) DEFAULT NULL COMMENT '浮动数 ',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='全社会主要工业产品产量';

-- ----------------------------
-- Records of t_jj_gy_qshzygycpcl
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_gy_zyywsrjysdlhsgqyjjzb_1
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_gy_zyywsrjysdlhsgqyjjzb_1`;
CREATE TABLE `t_jj_gy_zyywsrjysdlhsgqyjjzb_1` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qydws` varchar(255) DEFAULT NULL COMMENT '企业单位数',
  `gyzcz` varchar(255) DEFAULT NULL COMMENT '工业总产值',
  `zyxscz` varchar(255) DEFAULT NULL COMMENT '工业销售产值',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `zbmc` varchar(255) DEFAULT NULL COMMENT '指标名称',
  `zblx` varchar(255) DEFAULT NULL COMMENT '指标类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主营业务收入2000万元及以上独立核算工业企业主要经济指标_1';

-- ----------------------------
-- Records of t_jj_gy_zyywsrjysdlhsgqyjjzb_1
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_gy_zyywsrjysdlhsgqyjjzb_2
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_gy_zyywsrjysdlhsgqyjjzb_2`;
CREATE TABLE `t_jj_gy_zyywsrjysdlhsgqyjjzb_2` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zyywsr` varchar(255) DEFAULT NULL COMMENT '主营业务收入',
  `lrze` varchar(255) DEFAULT NULL COMMENT '利润总额',
  `lsze` varchar(255) DEFAULT NULL COMMENT '利税总额',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `zbmc` varchar(255) DEFAULT NULL COMMENT '指标名称',
  `zblx` varchar(255) DEFAULT NULL COMMENT '指标类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主营业务收入2000万元及以上独立核算工业企业主要经济指标_2';

-- ----------------------------
-- Records of t_jj_gy_zyywsrjysdlhsgqyjjzb_2
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_jzy_fdckf
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_jzy_fdckf`;
CREATE TABLE `t_jj_jzy_fdckf` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qn` varchar(255) DEFAULT NULL COMMENT '去年',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `dn` varchar(255) DEFAULT NULL COMMENT '当年',
  `zb` varchar(255) DEFAULT NULL COMMENT '指标',
  `zblx` varchar(255) DEFAULT NULL COMMENT '指标类型',
  `fd` varchar(255) DEFAULT NULL COMMENT '浮动数 ',
  `jldw` varchar(255) DEFAULT NULL COMMENT '计量单位',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房地产开发';

-- ----------------------------
-- Records of t_jj_jzy_fdckf
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_jzy_fdckfqyqk
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_jzy_fdckfqyqk`;
CREATE TABLE `t_jj_jzy_fdckfqyqk` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qs_fd` varchar(255) DEFAULT NULL COMMENT '全市 ',
  `qs_qn` varchar(255) DEFAULT NULL COMMENT '全市_去年',
  `qs_dn` varchar(255) DEFAULT NULL COMMENT '全市_当年',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `zb` varchar(255) DEFAULT NULL COMMENT '指标',
  `sdx_qn` varchar(255) DEFAULT NULL COMMENT '施甸县_去年',
  `sdx_dn` varchar(255) DEFAULT NULL COMMENT '施甸县_当年',
  `sdx_fd` varchar(255) DEFAULT NULL COMMENT '施甸县_浮动',
  `cnx_qn` varchar(255) DEFAULT NULL COMMENT '昌宁县_去年',
  `cnx_dn` varchar(255) DEFAULT NULL COMMENT '昌宁县_当年',
  `cnx_fd` varchar(255) DEFAULT NULL COMMENT '昌宁县_浮动',
  `jb` decimal(10,0) DEFAULT NULL COMMENT '级别',
  `tcx_qn` varchar(255) DEFAULT NULL COMMENT '腾冲县_去年',
  `tcx_dn` varchar(255) DEFAULT NULL COMMENT '腾冲县_当年',
  `tcx_fd` varchar(255) DEFAULT NULL COMMENT '腾冲县_浮动',
  `lyq_qn` varchar(255) DEFAULT NULL COMMENT '隆阳区_去年',
  `lyq_dn` varchar(255) DEFAULT NULL COMMENT '隆阳区_当年',
  `lyq_fd` varchar(255) DEFAULT NULL COMMENT '隆阳区_浮动',
  `llx_qn` varchar(255) DEFAULT NULL COMMENT '龙陵县_去年',
  `llx_dn` varchar(255) DEFAULT NULL COMMENT '龙陵县_当年',
  `llx_fd` varchar(255) DEFAULT NULL COMMENT '龙陵县_浮动',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房地产开发企业(单位)施工、销售和待售情况';

-- ----------------------------
-- Records of t_jj_jzy_fdckfqyqk
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_jzy_gdzctz
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_jzy_gdzctz`;
CREATE TABLE `t_jj_jzy_gdzctz` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qn` varchar(255) DEFAULT NULL COMMENT '去年',
  `fd` varchar(255) DEFAULT NULL COMMENT '同比',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `dn` varchar(255) DEFAULT NULL COMMENT '当年',
  `zb` varchar(255) DEFAULT NULL COMMENT '指标',
  `zblx` varchar(255) DEFAULT NULL COMMENT '指标类型',
  `jldw` varchar(255) DEFAULT NULL COMMENT '计量单位',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='固定资产投资、房地产、建筑业------>固定资产投资';

-- ----------------------------
-- Records of t_jj_jzy_gdzctz
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_jzy_xzscnl
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_jzy_xzscnl`;
CREATE TABLE `t_jj_jzy_xzscnl` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `jsgm` varchar(255) DEFAULT NULL COMMENT '建设规模',
  `xm` varchar(255) DEFAULT NULL COMMENT '新增生产能力（或效益）名称',
  `bnxz` varchar(255) DEFAULT NULL COMMENT '本年新增',
  `bnxkg` varchar(255) DEFAULT NULL COMMENT '本年新开工',
  `bnsggm` varchar(255) DEFAULT NULL COMMENT '本年施工规模',
  `llscnl` varchar(255) DEFAULT NULL COMMENT '累计生产能力（或效益）',
  `jldw` varchar(255) DEFAULT NULL COMMENT '计量单位',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='固定资产投资----->新增生产能力';

-- ----------------------------
-- Records of t_jj_jzy_xzscnl
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_ny_scphxmy
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_ny_scphxmy`;
CREATE TABLE `t_jj_ny_scphxmy` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dw` varchar(255) DEFAULT NULL COMMENT '单位',
  `qn` varchar(255) DEFAULT NULL COMMENT '去年',
  `fd` varchar(255) DEFAULT NULL COMMENT '增长率',
  `nf` varchar(50) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `dn` varchar(255) DEFAULT NULL COMMENT '当年',
  `zb` varchar(50) DEFAULT NULL COMMENT '指标',
  `lb` decimal(6,0) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='乡镇企业基本情况';

-- ----------------------------
-- Records of t_jj_ny_scphxmy
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_qsgzsgmjj_dfggczyssr
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_qsgzsgmjj_dfggczyssr`;
CREATE TABLE `t_jj_qsgzsgmjj_dfggczyssr` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rjdfggczyssr_qn_rjs` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-去年人均数',
  `rjdfggczyssr_qn_wc` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-去年位次',
  `rjdfggczyssr_dn_rjs` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-当年人均数',
  `rjdfggczyssr_dn_wc` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-当年位次',
  `dq` varchar(100) DEFAULT NULL COMMENT '地区',
  `dfggczyssr_qn_wc` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-去年位次',
  `dfggczyssr_qn_jds` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-去年绝对数',
  `dfggczyssr_dn_wc` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-当年位次',
  `dfggczyssr_dn_jds` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-当年绝对数',
  `nf` varchar(10) DEFAULT NULL COMMENT '年份',
  `ordervalue` decimal(10,0) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='地方公共财政预算收入';

-- ----------------------------
-- Records of t_jj_qsgzsgmjj_dfggczyssr
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_qsgzsgmjj_dfggczyszc
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_qsgzsgmjj_dfggczyszc`;
CREATE TABLE `t_jj_qsgzsgmjj_dfggczyszc` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rjdfggczyszc_qn_rjs` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算支出-去年人均数',
  `rjdfggczyszc_qn_wc` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算支出-去年位次',
  `rjdfggczyszc_dn_rjs` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算支出-当年人均数',
  `rjdfggczyszc_dn_wc` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算支出-当年位次',
  `dq` varchar(100) DEFAULT NULL COMMENT '地区',
  `dfggczyszc_qn_wc` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算支出-去年位次',
  `dfggczyszc_qn_jds` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算支出-去年绝对数',
  `dfggczyszc_dn_wc` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算支出-当年位次',
  `dfggczyszc_dn_jds` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算支出-当年绝对数',
  `nf` varchar(10) DEFAULT NULL COMMENT '年份',
  `ordervalue` decimal(10,0) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='地方公共财政预算支出';

-- ----------------------------
-- Records of t_jj_qsgzsgmjj_dfggczyszc
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_qsgzsgmjj_dfggczzsr
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_qsgzsgmjj_dfggczzsr`;
CREATE TABLE `t_jj_qsgzsgmjj_dfggczzsr` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bsnzz_qn_xds` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-去年人均数',
  `bsnzz_qn_wc` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-去年位次',
  `bsnzz_dn_xds` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-当年人均数',
  `bsnzz_dn_wc` varchar(100) DEFAULT NULL COMMENT '人均地方公共财政预算收入-当年位次',
  `dq` varchar(100) DEFAULT NULL COMMENT '地区',
  `dfggczzsr_qn_wc` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-去年位次',
  `dfggczzsr_qn_jds` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-去年绝对数',
  `dfggczzsr_dn_wc` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-当年位次',
  `dfggczzsr_dn_jds` varchar(100) DEFAULT NULL COMMENT '地方公共财政预算收入-当年绝对数',
  `nf` varchar(10) DEFAULT NULL COMMENT '年份',
  `ordervalue` decimal(10,0) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='地方公共财政总收入';

-- ----------------------------
-- Records of t_jj_qsgzsgmjj_dfggczzsr
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_qsgzsgmjj_dwgdpnh
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_qsgzsgmjj_dwgdpnh`;
CREATE TABLE `t_jj_qsgzsgmjj_dwgdpnh` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dwgdpnhxj_qn_wc` varchar(255) DEFAULT NULL COMMENT '单位GDP能耗下降_去年_位次',
  `dwgdpnhxj_qn_xds` varchar(255) DEFAULT NULL COMMENT '单位GDP能耗下降_去年_相对数',
  `dwgdpnhxj_dn_wc` varchar(255) DEFAULT NULL COMMENT '单位GDP能耗下降_当年_位次',
  `dwgdpnhxj_dn_xds` varchar(255) DEFAULT NULL COMMENT '单位GDP能耗下降_当年_相对数',
  `dq` varchar(255) DEFAULT NULL COMMENT '地区',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='单位GDP能耗';

-- ----------------------------
-- Records of t_jj_qsgzsgmjj_dwgdpnh
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_qsgzsgmjj_gynyxfhydl
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_qsgzsgmjj_gynyxfhydl`;
CREATE TABLE `t_jj_qsgzsgmjj_gynyxfhydl` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qshydl_qn_wc` varchar(255) DEFAULT NULL COMMENT '全社会用电量_去年_位次',
  `qshydl_qn_jds` varchar(255) DEFAULT NULL COMMENT '全社会用电量_去年_绝对数',
  `qshydl_dn_wc` varchar(255) DEFAULT NULL COMMENT '全社会用电量_当年_位次',
  `qshydl_dn_jds` varchar(255) DEFAULT NULL COMMENT '全社会用电量_当年_绝对数',
  `dq` varchar(255) DEFAULT NULL COMMENT '地区',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `gynyxfl_qn_wc` varchar(255) DEFAULT NULL COMMENT '规模以上工业能源消费量（万吨标准煤）等价热值_去年_位次',
  `gynyxfl_qn_jds` varchar(255) DEFAULT NULL COMMENT '规模以上工业能源消费量（万吨标准煤）等价热值_去年_绝对数',
  `gynyxfl_dn_wc` varchar(255) DEFAULT NULL COMMENT '规模以上工业能源消费量（万吨标准煤）等价热值_当年_位次',
  `gynyxfl_dn_jds` varchar(255) DEFAULT NULL COMMENT '规模以上工业能源消费量（万吨标准煤）等价热值_当年_绝对数',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工业能源消费和用电量';

-- ----------------------------
-- Records of t_jj_qsgzsgmjj_gynyxfhydl
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_rk_hjrkbdqk
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_rk_hjrkbdqk`;
CREATE TABLE `t_jj_rk_hjrkbdqk` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cs` decimal(10,0) DEFAULT NULL COMMENT '出生',
  `dq` varchar(100) DEFAULT NULL COMMENT '地区',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `sw` decimal(10,0) DEFAULT NULL COMMENT '死亡',
  `qr` decimal(10,0) DEFAULT NULL COMMENT '迁入',
  `qc` decimal(10,0) DEFAULT NULL COMMENT '迁出',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='户籍人口变动情况';

-- ----------------------------
-- Records of t_jj_rk_hjrkbdqk
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_rygz_qbcyryhgzze
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_rygz_qbcyryhgzze`;
CREATE TABLE `t_jj_rygz_qbcyryhgzze` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ldbc` decimal(10,0) DEFAULT NULL COMMENT '劳动报酬',
  `pjrs` decimal(10,0) DEFAULT NULL COMMENT '平均人数',
  `pjldbc` decimal(10,0) DEFAULT NULL COMMENT '平均劳动报酬',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `nmrs` decimal(10,0) DEFAULT NULL COMMENT '年末人数',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `zb` varchar(255) DEFAULT NULL COMMENT '指标',
  `lx` varchar(4) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='全部从业人员和工资总额';

-- ----------------------------
-- Records of t_jj_rygz_qbcyryhgzze
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_rygz_qshcyrs
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_rygz_qshcyrs`;
CREATE TABLE `t_jj_rygz_qshcyrs` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `nmcyrs` decimal(10,0) DEFAULT NULL COMMENT '年末从业人数',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `lx` varchar(4) DEFAULT NULL COMMENT '类型',
  `xm` varchar(255) DEFAULT NULL COMMENT '项目',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='全社会从业人数';

-- ----------------------------
-- Records of t_jj_rygz_qshcyrs
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_rygz_zgzgrshgz
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_rygz_zgzgrshgz`;
CREATE TABLE `t_jj_rygz_zgzgrshgz` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gzze` decimal(10,0) DEFAULT NULL COMMENT '工资总额',
  `pjrs` decimal(10,0) DEFAULT NULL COMMENT '平均人数',
  `pjgz` decimal(10,0) DEFAULT NULL COMMENT '平均工资',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `nmrs` decimal(10,0) DEFAULT NULL COMMENT '年末人数',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `zb` varchar(255) DEFAULT NULL COMMENT '指标',
  `lx` varchar(4) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='T_JJ_RYGZ_ZGZGRSHGZ';

-- ----------------------------
-- Records of t_jj_rygz_zgzgrshgz
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_rygz_zynfcyrysjzyrsg
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_rygz_zynfcyrysjzyrsg`;
CREATE TABLE `t_jj_rygz_zynfcyrysjzyrsg` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cyry` decimal(10,0) DEFAULT NULL COMMENT '从业人员',
  `nf` varchar(4) DEFAULT NULL COMMENT '年份',
  `xh` decimal(10,0) DEFAULT NULL COMMENT '序号',
  `zgrs` decimal(10,0) DEFAULT NULL COMMENT '职工人数',
  `zggzze` decimal(10,0) DEFAULT NULL COMMENT '职工工资总额',
  `zgpjgz` decimal(10,0) DEFAULT NULL COMMENT '职工平均工资',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主要年份从业人员数及职工人数、工资、平均工资';

-- ----------------------------
-- Records of t_jj_rygz_zynfcyrysjzyrsg
-- ----------------------------

-- ----------------------------
-- Table structure for t_jj_shsy_ldjy
-- ----------------------------
DROP TABLE IF EXISTS `t_jj_shsy_ldjy`;
CREATE TABLE `t_jj_shsy_ldjy` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qn` decimal(10,2) DEFAULT NULL COMMENT '2013',
  `dn` decimal(10,2) DEFAULT NULL COMMENT '2014',
  `fd` decimal(10,2) DEFAULT NULL COMMENT 'FD',
  `nf` decimal(4,0) DEFAULT NULL COMMENT '年份',
  `zb` varchar(200) DEFAULT NULL COMMENT '指标',
  `lb` varchar(50) DEFAULT NULL COMMENT '类别',
  `jldw` varchar(20) DEFAULT NULL COMMENT '计量单位',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='劳动就业';

-- ----------------------------
-- Records of t_jj_shsy_ldjy
-- ----------------------------
