-- MySQL dump 10.13  Distrib 5.7.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: renren_security
-- ------------------------------------------------------
-- Server version	5.7.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job`
--

DROP TABLE IF EXISTS `schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '任务状态  0：暂停  1：正常',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
INSERT INTO `schedule_job` VALUES (1067246875800000076,'testTask','renren','0 0/30 * * * ?',0,'有参测试，多个参数使用json',1067246875800000001,'2024-01-31 15:48:58',1067246875800000001,'2024-01-31 15:48:58');
/*!40000 ALTER TABLE `schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job_log`
--

DROP TABLE IF EXISTS `schedule_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job_log` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(3) unsigned NOT NULL COMMENT '任务状态    0：失败    1：成功',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_job_id` (`job_id`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级ID',
  `pids` varchar(500) DEFAULT NULL COMMENT '所有上级ID，用逗号分开',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `sort` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_pid` (`pid`),
  KEY `idx_sort` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (1067246875800000062,1067246875800000063,'1067246875800000066,1067246875800000063','技术部',2,1067246875800000001,'2024-01-31 15:48:37',1067246875800000001,'2024-01-31 15:48:37'),(1067246875800000063,1067246875800000066,'1067246875800000066','长沙分公司',1,1067246875800000001,'2024-01-31 15:48:38',1067246875800000001,'2024-01-31 15:48:38'),(1067246875800000064,1067246875800000066,'1067246875800000066','上海分公司',0,1067246875800000001,'2024-01-31 15:48:39',1067246875800000001,'2024-01-31 15:48:39'),(1067246875800000065,1067246875800000064,'1067246875800000066,1067246875800000064','市场部',0,1067246875800000001,'2024-01-31 15:48:41',1067246875800000001,'2024-01-31 15:48:41'),(1067246875800000066,0,'0','人人开源集团',0,1067246875800000001,'2024-01-31 15:48:42',1067246875800000001,'2024-01-31 15:48:42'),(1067246875800000067,1067246875800000064,'1067246875800000066,1067246875800000064','销售部',0,1067246875800000001,'2024-01-31 15:48:43',1067246875800000001,'2024-01-31 15:48:43'),(1067246875800000068,1067246875800000063,'1067246875800000066,1067246875800000063','产品部',1,1067246875800000001,'2024-01-31 15:48:44',1067246875800000001,'2024-01-31 15:48:44');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_data` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `dict_type_id` bigint(20) NOT NULL COMMENT '字典类型ID',
  `dict_label` varchar(255) NOT NULL COMMENT '字典标签',
  `dict_value` varchar(255) DEFAULT NULL COMMENT '字典值',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_dict_type_value` (`dict_type_id`,`dict_value`),
  KEY `idx_sort` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1160061112075464705,1160061077912858625,'男','0','',0,1067246875800000001,'2024-01-31 15:48:47',1067246875800000001,'2024-01-31 15:48:47'),(1160061146967879681,1160061077912858625,'女','1','',1,1067246875800000001,'2024-01-31 15:48:48',1067246875800000001,'2024-01-31 15:48:48'),(1160061190127267841,1160061077912858625,'保密','2','',2,1067246875800000001,'2024-01-31 15:48:49',1067246875800000001,'2024-01-31 15:48:49'),(1225814069634195457,1225813644059140097,'公告','0','',0,1067246875800000001,'2024-01-31 15:48:52',1067246875800000001,'2024-01-31 15:48:52'),(1225814107559092225,1225813644059140097,'会议','1','',1,1067246875800000001,'2024-01-31 15:48:53',1067246875800000001,'2024-01-31 15:48:53'),(1225814271879340034,1225813644059140097,'其他','2','',2,1067246875800000001,'2024-01-31 15:48:55',1067246875800000001,'2024-01-31 15:48:55');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_type` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `dict_type` varchar(100) NOT NULL COMMENT '字典类型',
  `dict_name` varchar(255) NOT NULL COMMENT '字典名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` int(10) unsigned DEFAULT NULL COMMENT '排序',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1160061077912858625,'gender','性别','',0,1067246875800000001,'2024-01-31 15:48:46',1067246875800000001,'2024-01-31 15:48:46'),(1225813644059140097,'notice_type','站内通知-类型','',1,1067246875800000001,'2024-01-31 15:48:50',1067246875800000001,'2024-01-31 15:48:50');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log_error`
--

DROP TABLE IF EXISTS `sys_log_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log_error` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `request_uri` varchar(200) DEFAULT NULL COMMENT '请求URI',
  `request_method` varchar(20) DEFAULT NULL COMMENT '请求方式',
  `request_params` text COMMENT '请求参数',
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户代理',
  `ip` varchar(32) DEFAULT NULL COMMENT '操作IP',
  `error_info` text COMMENT '异常信息',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='异常日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log_error`
--

LOCK TABLES `sys_log_error` WRITE;
/*!40000 ALTER TABLE `sys_log_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log_login`
--

DROP TABLE IF EXISTS `sys_log_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log_login` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `operation` tinyint(3) unsigned DEFAULT NULL COMMENT '用户操作   0：用户登录   1：用户退出',
  `status` tinyint(3) unsigned NOT NULL COMMENT '状态  0：失败    1：成功    2：账号已锁定',
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户代理',
  `ip` varchar(32) DEFAULT NULL COMMENT '操作IP',
  `creator_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log_login`
--

LOCK TABLES `sys_log_login` WRITE;
/*!40000 ALTER TABLE `sys_log_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log_operation`
--

DROP TABLE IF EXISTS `sys_log_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log_operation` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `request_uri` varchar(200) DEFAULT NULL COMMENT '请求URI',
  `request_method` varchar(20) DEFAULT NULL COMMENT '请求方式',
  `request_params` text COMMENT '请求参数',
  `request_time` int(10) unsigned NOT NULL COMMENT '请求时长(毫秒)',
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户代理',
  `ip` varchar(32) DEFAULT NULL COMMENT '操作IP',
  `status` tinyint(3) unsigned NOT NULL COMMENT '状态  0：失败   1：成功',
  `creator_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log_operation`
--

LOCK TABLES `sys_log_operation` WRITE;
/*!40000 ALTER TABLE `sys_log_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级ID，一级菜单为0',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `permissions` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:list,sys:user:save)',
  `menu_type` tinyint(3) unsigned DEFAULT NULL COMMENT '类型   0：菜单   1：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_pid` (`pid`),
  KEY `idx_sort` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1067246875800000002,0,'权限管理',NULL,NULL,0,'icon-safetycertificate',0,1067246875800000001,'2024-01-31 15:45:46',1067246875800000001,'2024-01-31 15:45:46'),(1067246875800000003,1067246875800000055,'新增',NULL,'sys:user:save,sys:dept:list,sys:role:list',1,NULL,1,1067246875800000001,'2024-01-31 15:45:53',1067246875800000001,'2024-01-31 15:45:53'),(1067246875800000004,1067246875800000055,'修改',NULL,'sys:user:update,sys:dept:list,sys:role:list',1,NULL,2,1067246875800000001,'2024-01-31 15:46:15',1067246875800000001,'2024-01-31 15:46:15'),(1067246875800000005,1067246875800000055,'删除',NULL,'sys:user:delete',1,NULL,3,1067246875800000001,'2024-01-31 15:46:18',1067246875800000001,'2024-01-31 15:46:18'),(1067246875800000006,1067246875800000055,'导出',NULL,'sys:user:export',1,NULL,4,1067246875800000001,'2024-01-31 15:46:20',1067246875800000001,'2024-01-31 15:46:20'),(1067246875800000007,1067246875800000002,'角色管理','sys/role',NULL,0,'icon-team',2,1067246875800000001,'2024-01-31 15:46:23',1067246875800000001,'2024-01-31 15:46:23'),(1067246875800000008,1067246875800000007,'查看',NULL,'sys:role:page,sys:role:info',1,NULL,0,1067246875800000001,'2024-01-31 15:46:26',1067246875800000001,'2024-01-31 15:46:26'),(1067246875800000009,1067246875800000007,'新增',NULL,'sys:role:save,sys:menu:select,sys:dept:list',1,NULL,1,1067246875800000001,'2024-01-31 15:46:28',1067246875800000001,'2024-01-31 15:46:28'),(1067246875800000010,1067246875800000007,'修改',NULL,'sys:role:update,sys:menu:select,sys:dept:list',1,NULL,2,1067246875800000001,'2024-01-31 15:46:33',1067246875800000001,'2024-01-31 15:46:33'),(1067246875800000011,1067246875800000007,'删除',NULL,'sys:role:delete',1,NULL,3,1067246875800000001,'2024-01-31 15:46:37',1067246875800000001,'2024-01-31 15:46:37'),(1067246875800000012,1067246875800000002,'部门管理','sys/dept',NULL,0,'icon-apartment',1,1067246875800000001,'2024-01-31 15:46:42',1067246875800000001,'2024-01-31 15:46:42'),(1067246875800000014,1067246875800000012,'查看',NULL,'sys:dept:list,sys:dept:info',1,NULL,0,1067246875800000001,'2024-01-31 15:46:40',1067246875800000001,'2024-01-31 15:46:40'),(1067246875800000015,1067246875800000012,'新增',NULL,'sys:dept:save',1,NULL,1,1067246875800000001,'2024-01-31 15:46:52',1067246875800000001,'2024-01-31 15:46:52'),(1067246875800000016,1067246875800000012,'修改',NULL,'sys:dept:update',1,NULL,2,1067246875800000001,'2024-01-31 15:46:54',1067246875800000001,'2024-01-31 15:46:54'),(1067246875800000017,1067246875800000012,'删除',NULL,'sys:dept:delete',1,NULL,3,1067246875800000001,'2024-01-31 15:46:57',1067246875800000001,'2024-01-31 15:46:57'),(1067246875800000025,1067246875800000035,'菜单管理','sys/menu',NULL,0,'icon-unorderedlist',0,1067246875800000001,'2024-01-31 15:47:00',1067246875800000001,'2024-01-31 15:47:00'),(1067246875800000026,1067246875800000025,'查看',NULL,'sys:menu:list,sys:menu:info',1,NULL,0,1067246875800000001,'2024-01-31 15:47:02',1067246875800000001,'2024-01-31 15:47:02'),(1067246875800000027,1067246875800000025,'新增',NULL,'sys:menu:save',1,NULL,1,1067246875800000001,'2024-01-31 15:47:05',1067246875800000001,'2024-01-31 15:47:05'),(1067246875800000028,1067246875800000025,'修改',NULL,'sys:menu:update',1,NULL,2,1067246875800000001,'2024-01-31 15:47:07',1067246875800000001,'2024-01-31 15:47:07'),(1067246875800000029,1067246875800000025,'删除',NULL,'sys:menu:delete',1,NULL,3,1067246875800000001,'2024-01-31 15:47:10',1067246875800000001,'2024-01-31 15:47:10'),(1067246875800000030,1067246875800000035,'定时任务','job/schedule',NULL,0,'icon-dashboard',3,1067246875800000001,'2024-01-31 15:47:12',1067246875800000001,'2024-01-31 15:47:12'),(1067246875800000031,1067246875800000030,'查看',NULL,'sys:schedule:page,sys:schedule:info',1,NULL,0,1067246875800000001,'2024-01-31 15:47:16',1067246875800000001,'2024-01-31 15:47:16'),(1067246875800000032,1067246875800000030,'新增',NULL,'sys:schedule:save',1,NULL,1,1067246875800000001,'2024-01-31 15:47:19',1067246875800000001,'2024-01-31 15:47:19'),(1067246875800000033,1067246875800000030,'修改',NULL,'sys:schedule:update',1,NULL,2,1067246875800000001,'2024-01-31 15:47:22',1067246875800000001,'2024-01-31 15:47:22'),(1067246875800000034,1067246875800000030,'删除',NULL,'sys:schedule:delete',1,NULL,3,1067246875800000001,'2024-01-31 15:47:24',1067246875800000001,'2024-01-31 15:47:24'),(1067246875800000035,0,'系统设置',NULL,NULL,0,'icon-setting',1,1067246875800000001,'2024-01-31 15:47:27',1067246875800000001,'2024-01-31 15:47:27'),(1067246875800000036,1067246875800000030,'暂停',NULL,'sys:schedule:pause',1,NULL,4,1067246875800000001,'2024-01-31 15:47:29',1067246875800000001,'2024-01-31 15:47:29'),(1067246875800000037,1067246875800000030,'恢复',NULL,'sys:schedule:resume',1,NULL,5,1067246875800000001,'2024-01-31 15:47:32',1067246875800000001,'2024-01-31 15:47:32'),(1067246875800000038,1067246875800000030,'立即执行',NULL,'sys:schedule:run',1,NULL,6,1067246875800000001,'2024-01-31 15:47:35',1067246875800000001,'2024-01-31 15:47:35'),(1067246875800000039,1067246875800000030,'日志列表',NULL,'sys:schedule:log',1,NULL,7,1067246875800000001,'2024-01-31 15:47:38',1067246875800000001,'2024-01-31 15:47:38'),(1067246875800000040,1067246875800000035,'参数管理','sys/params','',0,'icon-fileprotect',1,1067246875800000001,'2024-01-31 15:47:40',1067246875800000001,'2024-01-31 15:47:40'),(1067246875800000041,1067246875800000035,'字典管理','sys/dict-type',NULL,0,'icon-golden-fill',2,1067246875800000001,'2024-01-31 15:47:43',1067246875800000001,'2024-01-31 15:47:43'),(1067246875800000042,1067246875800000041,'查看',NULL,'sys:dict:page,sys:dict:info',1,NULL,0,1067246875800000001,'2024-01-31 15:47:48',1067246875800000001,'2024-01-31 15:47:48'),(1067246875800000043,1067246875800000041,'新增',NULL,'sys:dict:save',1,NULL,1,1067246875800000001,'2024-01-31 15:47:50',1067246875800000001,'2024-01-31 15:47:50'),(1067246875800000044,1067246875800000041,'修改',NULL,'sys:dict:update',1,NULL,2,1067246875800000001,'2024-01-31 15:47:53',1067246875800000001,'2024-01-31 15:47:53'),(1067246875800000045,1067246875800000041,'删除',NULL,'sys:dict:delete',1,NULL,3,1067246875800000001,'2024-01-31 15:47:55',1067246875800000001,'2024-01-31 15:47:55'),(1067246875800000046,0,'日志管理',NULL,NULL,0,'icon-container',2,1067246875800000001,'2024-01-31 15:47:57',1067246875800000001,'2024-01-31 15:47:57'),(1067246875800000047,1067246875800000035,'文件上传','oss/oss','sys:oss:all',0,'icon-upload',4,1067246875800000001,'2024-01-31 15:47:59',1067246875800000001,'2024-01-31 15:47:59'),(1067246875800000048,1067246875800000046,'登录日志','sys/log-login','sys:log:login',0,'icon-filedone',0,1067246875800000001,'2024-01-31 15:48:02',1067246875800000001,'2024-01-31 15:48:02'),(1067246875800000049,1067246875800000046,'操作日志','sys/log-operation','sys:log:operation',0,'icon-solution',1,1067246875800000001,'2024-01-31 15:48:04',1067246875800000001,'2024-01-31 15:48:04'),(1067246875800000050,1067246875800000046,'异常日志','sys/log-error','sys:log:error',0,'icon-file-exception',2,1067246875800000001,'2024-01-31 15:48:07',1067246875800000001,'2024-01-31 15:48:07'),(1067246875800000051,1067246875800000053,'SQL监控','{{ApiUrl}}/druid/sql.html',NULL,0,'icon-database',0,1067246875800000001,'2024-01-31 15:48:21',1067246875800000001,'2024-01-31 15:48:21'),(1067246875800000053,0,'系统监控',NULL,NULL,0,'icon-desktop',3,1067246875800000001,'2024-01-31 15:48:23',1067246875800000001,'2024-01-31 15:48:23'),(1067246875800000055,1067246875800000002,'用户管理','sys/user',NULL,0,'icon-user',0,1067246875800000001,'2024-01-31 15:48:26',1067246875800000001,'2024-01-31 15:48:26'),(1067246875800000056,1067246875800000055,'查看',NULL,'sys:user:page,sys:user:info',1,NULL,0,1067246875800000001,'2024-01-31 15:48:27',1067246875800000001,'2024-01-31 15:48:27'),(1067246875800000057,1067246875800000040,'新增',NULL,'sys:params:save',1,NULL,1,1067246875800000001,'2024-01-31 15:48:28',1067246875800000001,'2024-01-31 15:48:28'),(1067246875800000058,1067246875800000040,'导出',NULL,'sys:params:export',1,NULL,4,1067246875800000001,'2024-01-31 15:48:29',1067246875800000001,'2024-01-31 15:48:29'),(1067246875800000059,1067246875800000040,'查看','','sys:params:page,sys:params:info',1,NULL,0,1067246875800000001,'2024-01-31 15:48:30',1067246875800000001,'2024-01-31 15:48:30'),(1067246875800000060,1067246875800000040,'修改',NULL,'sys:params:update',1,NULL,2,1067246875800000001,'2024-01-31 15:48:33',1067246875800000001,'2024-01-31 15:48:33'),(1067246875800000061,1067246875800000040,'删除','','sys:params:delete',1,'',3,1067246875800000001,'2024-01-31 15:48:34',1067246875800000001,'2024-01-31 15:48:34'),(1156748733921165314,1067246875800000053,'接口文档','{{ApiUrl}}/doc.html','',0,'icon-file-word',1,1067246875800000001,'2024-01-31 15:48:35',1067246875800000001,'2024-01-31 15:48:35');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oss`
--

DROP TABLE IF EXISTS `sys_oss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文件上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oss`
--

LOCK TABLES `sys_oss` WRITE;
/*!40000 ALTER TABLE `sys_oss` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_oss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_params`
--

DROP TABLE IF EXISTS `sys_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_params` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `param_code` varchar(32) DEFAULT NULL COMMENT '参数编码',
  `param_value` varchar(2000) DEFAULT NULL COMMENT '参数值',
  `param_type` tinyint(3) unsigned DEFAULT '1' COMMENT '类型   0：系统参数   1：非系统参数',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_param_code` (`param_code`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='参数管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_params`
--

LOCK TABLES `sys_params` WRITE;
/*!40000 ALTER TABLE `sys_params` DISABLE KEYS */;
INSERT INTO `sys_params` VALUES (1067246875800000073,'CLOUD_STORAGE_CONFIG_KEY','{\"type\":1,\"qiniuDomain\":\"http://test.oss.renren.io\",\"qiniuPrefix\":\"upload\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"qiniuBucketName\":\"renren-oss\",\"aliyunDomain\":\"\",\"aliyunPrefix\":\"\",\"aliyunEndPoint\":\"\",\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\"}',0,'云存储配置信息',1067246875800000001,'2024-01-31 15:48:57',1067246875800000001,'2024-01-31 15:48:57');
/*!40000 ALTER TABLE `sys_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_data_scope`
--

DROP TABLE IF EXISTS `sys_role_data_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_data_scope` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色数据权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_data_scope`
--

LOCK TABLES `sys_role_data_scope` WRITE;
/*!40000 ALTER TABLE `sys_role_data_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_data_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色菜单关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_user`
--

DROP TABLE IF EXISTS `sys_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_user` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色用户关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_user`
--

LOCK TABLES `sys_role_user` WRITE;
/*!40000 ALTER TABLE `sys_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `real_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `head_url` varchar(200) DEFAULT NULL COMMENT '头像',
  `gender` tinyint(3) unsigned DEFAULT NULL COMMENT '性别   0：男   1：女    2：保密',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `super_admin` tinyint(3) unsigned DEFAULT NULL COMMENT '超级管理员   0：否   1：是',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：停用   1：正常',
  `creator` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`username`),
  KEY `idx_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1067246875800000001,'admin','$2a$10$012Kx2ba5jzqr9gLlG4MX.bnQJTD9UWqF57XDo2N3.fPtLne02u/m','管理员',NULL,0,'root@renren.io','13612345678',NULL,1,1,1067246875800000001,'2024-01-31 15:45:37',1067246875800000001,'2024-01-31 15:45:37');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_token`
--

DROP TABLE IF EXISTS `sys_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_token` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `token` varchar(100) NOT NULL COMMENT '用户token',
  `expire_date` datetime DEFAULT NULL COMMENT '过期时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统用户Token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_token`
--

LOCK TABLES `sys_user_token` WRITE;
/*!40000 ALTER TABLE `sys_user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'renren_security'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-31 15:56:57
