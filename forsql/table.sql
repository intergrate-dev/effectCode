DROP TABLE IF EXISTS `task_exe_record`
CREATE TABLE `task_exe_record` (
 `taskDefId`  varchar(600)  COMMENT '任务定义id  单作业：同任务编号17位时间戳+R+6位顺序号 作业流：作业组编号（14位时间戳+F+6位顺序号）+3位顺序编号',
`resourceID`  varchar(50)  COMMENT '资源目录ID  ',
`executeWay`  char(2)  COMMENT '执行方式  0：一次性，1：周期性',
`jobState`  int(1)  COMMENT '作业运行状态  待执行，1-执行中，2-执行成功，3-执行失败，4-取消',
`extInfo`  text  COMMENT '扩展信息   包括连接节点、数据表、合约信息',
PRIMARY KEY (`taskDefId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ex_result`
CREATE TABLE `ex_result` (
 `taskID`  varchar(20)  COMMENT '任务定义id  ',
`resourceID`  varchar(50)  COMMENT '资源目录ID  ',
`exTotal`  char(2)  COMMENT '交换数据总量  ',
`sucCnt`  int(1)  COMMENT '交换成功的数据量  ',
`exState`  text  COMMENT '交换状态   0：交换失败，1：交换成功',
PRIMARY KEY (`taskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
