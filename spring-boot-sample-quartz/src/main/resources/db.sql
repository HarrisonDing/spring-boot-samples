-- ----------------------------
-- Table structure for t_job_info
-- ----------------------------
DROP TABLE IF EXISTS t_job_info;
CREATE TABLE t_job_info (
  id int(11) NOT NULL AUTO_INCREMENT,
  job_name varchar(255) DEFAULT NULL COMMENT '任务名称',
  job_group varchar(255) DEFAULT NULL COMMENT '任务分组',
  job_description varchar(255) DEFAULT NULL COMMENT '任务描述',
  job_status varchar(255) DEFAULT NULL COMMENT '任务状态',
  job_class varchar(255) DEFAULT NULL COMMENT '任务类',
  trigger_name varchar(255) DEFAULT NULL COMMENT '触发器名称',
  trigger_group varchar(255) DEFAULT NULL COMMENT '触发器分组',
  trigger_status varchar(255) DEFAULT NULL COMMENT '触发器状态',
  trigger_description varchar(255) DEFAULT NULL COMMENT '触发器描述',
  cron_expression varchar(255) DEFAULT NULL COMMENT 'Cron表达式',
  create_user varchar(100) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user varchar(100) DEFAULT NULL COMMENT '修改者',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_schedule_his
-- ----------------------------
DROP TABLE IF EXISTS t_schedule_his;
CREATE TABLE t_schedule_his (
  id int(11) NOT NULL AUTO_INCREMENT,
  job_name varchar(255) NOT NULL COMMENT '任务名称',
  job_group varchar(255) NOT NULL COMMENT '任务分组',
  trigger_name varchar(255) DEFAULT NULL COMMENT '触发器状态',
  trigger_group varchar(255) NOT NULL COMMENT '触发器分组',
  fired_time datetime DEFAULT NULL COMMENT '执行时间',
  create_user varchar(100) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_user varchar(100) DEFAULT NULL COMMENT '修改者',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Records of t_job_info
-- ----------------------------
INSERT INTO t_job_info VALUES ('1', 'Job1', 'JobGroup1', 'JobGroup.Job1', 'PAUSE', 'com.wxs.quartz.job.Job1', 'trigger1', 'TriggerGroup1', 'RUNNING', 'TriggerGroup.trigger1', '0/1 * * * * ?', null, '2017-08-08 15:25:10', null, '2017-08-08 15:25:10');
INSERT INTO t_job_info VALUES ('2', 'Job2', 'JobGroup2', 'JobGroup.Job2', 'PAUSE', 'com.wxs.quartz.job.Job2', 'trigger2', 'TriggerGroup2', 'RUNNING', 'TriggerGroup.trigger1', '0/1 * * * * ?', '', '2017-08-08 15:25:10', '', '2017-08-08 15:25:10');
INSERT INTO t_job_info VALUES ('3', 'Job3', 'JobGroup3', 'JobGroup3.Job3', 'RUNNING', 'com.wxs.quartz.job.Job3', 'trigger3', 'TriggerGroup3', 'RUNNING', 'TriggerGroup.trigger1', '0/3 * * * * ?', '', '2017-08-08 15:25:10', '', '2017-08-08 15:25:10');
INSERT INTO t_job_info VALUES ('4', 'Job4', 'JobGroup3', 'JobGroup3.Job3', 'RUNNING', 'com.wxs.quartz.job.Job3', 'trigger4', 'TriggerGroup3', 'RUNNING', 'TriggerGroup.trigger1', '0/3 * * * * ?', '', '2017-08-08 15:25:10', '', '2017-08-08 15:25:10');
