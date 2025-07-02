-- MySQL dump 10.13  Distrib 8.4.5, for macos14.7 (arm64)
--
-- Host: localhost    Database: test_db
-- ------------------------------------------------------
-- Server version	8.4.5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `test_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `test_db`;

--
-- Table structure for table `v1_test_db`
--

DROP TABLE IF EXISTS `v1_test_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v1_test_db` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `demo_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `demo_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `demo_db`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `address_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `country` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `state` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `street_1` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `street_2` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `lock_id` int DEFAULT '0',
  `org_code` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `bkyc_latitude` decimal(10,0) DEFAULT NULL,
  `vkyc_latitude` decimal(10,0) DEFAULT NULL,
  `bkyc_longitude` decimal(10,0) DEFAULT NULL,
  `vkyc_longitude` decimal(10,0) DEFAULT NULL,
  `bkyc_date` datetime DEFAULT NULL,
  `updated_at` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_uk` (`org_code`,`address_type`),
  KEY `idx_address_org` (`org_code`),
  KEY `idx_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `april_nine`
--

DROP TABLE IF EXISTS `april_nine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `april_nine` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `april_ten`
--

DROP TABLE IF EXISTS `april_ten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `april_ten` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_db_v1`
--

DROP TABLE IF EXISTS `demo_db_v1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo_db_v1` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_db_v2`
--

DROP TABLE IF EXISTS `demo_db_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo_db_v2` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_testing`
--

DROP TABLE IF EXISTS `demo_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo_testing` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dev_test`
--

DROP TABLE IF EXISTS `dev_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dev_test` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_records`
--

DROP TABLE IF EXISTS `employee_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `salary` bigint DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `salary_block_size` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_updated_at` (`updated_at`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `finaaaall_test`
--

DROP TABLE IF EXISTS `finaaaall_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finaaaall_test` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `finaal_test`
--

DROP TABLE IF EXISTS `finaal_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finaal_test` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_testing_v1`
--

DROP TABLE IF EXISTS `final_testing_v1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_testing_v1` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_testing_v2`
--

DROP TABLE IF EXISTS `final_testing_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_testing_v2` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `generic_json_entity`
--

DROP TABLE IF EXISTS `generic_json_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generic_json_entity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `json_val` text,
  `beanClass` varchar(200) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_json_entity_beanclass_idx` (`beanClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ip_test`
--

DROP TABLE IF EXISTS `ip_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_test` (
  `id` char(14) NOT NULL,
  `demo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `makethour`
--

DROP TABLE IF EXISTS `makethour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makethour` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `lock_id` int DEFAULT '0',
  `modified_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `allow_override` bit(1) DEFAULT b'0',
  `code` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `description` varchar(512) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `entities` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `locale` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT 'en',
  `message_template` varchar(4096) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `message_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `org_code` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `severity` int DEFAULT '0',
  `ref_message_id` bigint DEFAULT NULL,
  `tc_required` bit(1) DEFAULT b'0',
  `custom_config_code` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_uk1` (`org_code`,`code`,`locale`,`custom_config_code`),
  KEY `idx_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `multiple_create_test_3april`
--

DROP TABLE IF EXISTS `multiple_create_test_3april`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiple_create_test_3april` (
  `id` char(14) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `multiple_create_test_4april`
--

DROP TABLE IF EXISTS `multiple_create_test_4april`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiple_create_test_4april` (
  `id` char(14) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `multiple_create_test_5april`
--

DROP TABLE IF EXISTS `multiple_create_test_5april`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiple_create_test_5april` (
  `id` char(14) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `multiple_create_test_6april`
--

DROP TABLE IF EXISTS `multiple_create_test_6april`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiple_create_test_6april` (
  `id` char(14) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_demo_testing`
--

DROP TABLE IF EXISTS `new_demo_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_demo_testing` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_schedule_testing`
--

DROP TABLE IF EXISTS `new_schedule_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_schedule_testing` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_test`
--

DROP TABLE IF EXISTS `new_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_test` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_utc_test`
--

DROP TABLE IF EXISTS `new_utc_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_utc_test` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `normal_scheduler_test_two`
--

DROP TABLE IF EXISTS `normal_scheduler_test_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normal_scheduler_test_two` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_offers`
--

DROP TABLE IF EXISTS `payment_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_offers` (
  `id` char(14) NOT NULL,
  `payment_id` char(14) NOT NULL,
  `offer_id` char(14) NOT NULL,
  `benefit_applied` int NOT NULL,
  `benefit_type` varchar(50) NOT NULL,
  `merchant_id` char(14) NOT NULL,
  `created_at` bigint NOT NULL,
  `updated_at` bigint DEFAULT NULL,
  `deleted_at` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pos_testing`
--

DROP TABLE IF EXISTS `pos_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos_testing` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pos_testing_one`
--

DROP TABLE IF EXISTS `pos_testing_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos_testing_one` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pos_testing_three`
--

DROP TABLE IF EXISTS `pos_testing_three`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos_testing_three` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `posAdmin_testing_one`
--

DROP TABLE IF EXISTS `posAdmin_testing_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posAdmin_testing_one` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `postgres_dev`
--

DROP TABLE IF EXISTS `postgres_dev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postgres_dev` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scd_pos_one`
--

DROP TABLE IF EXISTS `scd_pos_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scd_pos_one` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule_testing`
--

DROP TABLE IF EXISTS `schedule_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_testing` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule_testing_upi_one`
--

DROP TABLE IF EXISTS `schedule_testing_upi_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_testing_upi_one` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduler`
--

DROP TABLE IF EXISTS `scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduler_test_one`
--

DROP TABLE IF EXISTS `scheduler_test_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_test_one` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schemas`
--

DROP TABLE IF EXISTS `schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schemas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `binlog_file` varchar(255) DEFAULT NULL,
  `binlog_position` int unsigned DEFAULT NULL,
  `last_heartbeat_read` bigint DEFAULT '0',
  `gtid_set` varchar(4096) DEFAULT NULL,
  `base_schema_id` bigint DEFAULT NULL,
  `deltas` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `server_id` int unsigned DEFAULT NULL,
  `position_sha` char(40) DEFAULT NULL,
  `charset` varchar(255) DEFAULT NULL,
  `version` smallint unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `position_sha` (`position_sha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seed_testing`
--

DROP TABLE IF EXISTS `seed_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seed_testing` (
  `id` char(14) NOT NULL,
  `test` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seed_testing_us_sg`
--

DROP TABLE IF EXISTS `seed_testing_us_sg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seed_testing_us_sg` (
  `id` char(14) NOT NULL,
  `test` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_demo`
--

DROP TABLE IF EXISTS `test_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_demo` (
  `id` char(14) NOT NULL,
  `test` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_makethour`
--

DROP TABLE IF EXISTS `test_makethour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_makethour` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_new`
--

DROP TABLE IF EXISTS `test_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_new` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_one`
--

DROP TABLE IF EXISTS `test_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_one` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_three`
--

DROP TABLE IF EXISTS `test_three`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_three` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_two`
--

DROP TABLE IF EXISTS `test_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_two` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_users`
--

DROP TABLE IF EXISTS `test_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_users` (
  `id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `encrypted_data` varbinary(200) DEFAULT NULL,
  `updated_at` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge`
--

DROP TABLE IF EXISTS `testing_merge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_10`
--

DROP TABLE IF EXISTS `testing_merge_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_10` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_11`
--

DROP TABLE IF EXISTS `testing_merge_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_11` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_8`
--

DROP TABLE IF EXISTS `testing_merge_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_8` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_9`
--

DROP TABLE IF EXISTS `testing_merge_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_9` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_five`
--

DROP TABLE IF EXISTS `testing_merge_five`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_five` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_four`
--

DROP TABLE IF EXISTS `testing_merge_four`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_four` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_one`
--

DROP TABLE IF EXISTS `testing_merge_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_one` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_seven`
--

DROP TABLE IF EXISTS `testing_merge_seven`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_seven` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_six`
--

DROP TABLE IF EXISTS `testing_merge_six`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_six` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_three`
--

DROP TABLE IF EXISTS `testing_merge_three`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_three` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_merge_two`
--

DROP TABLE IF EXISTS `testing_merge_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_merge_two` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_scd`
--

DROP TABLE IF EXISTS `testing_scd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_scd` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_scd_three`
--

DROP TABLE IF EXISTS `testing_scd_three`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_scd_three` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_scd_two`
--

DROP TABLE IF EXISTS `testing_scd_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_scd_two` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v01`
--

DROP TABLE IF EXISTS `testing_v01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v01` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v1`
--

DROP TABLE IF EXISTS `testing_v1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v1` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v2`
--

DROP TABLE IF EXISTS `testing_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v2` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v222`
--

DROP TABLE IF EXISTS `testing_v222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v222` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v2227`
--

DROP TABLE IF EXISTS `testing_v2227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v2227` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v2228`
--

DROP TABLE IF EXISTS `testing_v2228`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v2228` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v3`
--

DROP TABLE IF EXISTS `testing_v3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v3` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v6`
--

DROP TABLE IF EXISTS `testing_v6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v6` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v7`
--

DROP TABLE IF EXISTS `testing_v7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v7` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_v78`
--

DROP TABLE IF EXISTS `testing_v78`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_v78` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upi_testing`
--

DROP TABLE IF EXISTS `upi_testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upi_testing` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `encrypted_data` varbinary(200) DEFAULT NULL,
  `updated_at` bigint DEFAULT NULL,
  `address` text,
  `new_address` text,
  `age` int DEFAULT NULL,
  `age_block_size` int DEFAULT NULL,
  `test` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_12`
--

DROP TABLE IF EXISTS `v_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_12` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_eight`
--

DROP TABLE IF EXISTS `v_eight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_eight` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_five`
--

DROP TABLE IF EXISTS `v_five`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_five` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_four`
--

DROP TABLE IF EXISTS `v_four`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_four` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_nine`
--

DROP TABLE IF EXISTS `v_nine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_nine` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_seven`
--

DROP TABLE IF EXISTS `v_seven`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_seven` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_six`
--

DROP TABLE IF EXISTS `v_six`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_six` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_three`
--

DROP TABLE IF EXISTS `v_three`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_three` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `versiong_fix_v1`
--

DROP TABLE IF EXISTS `versiong_fix_v1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versiong_fix_v1` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `versiong_fix_v2`
--

DROP TABLE IF EXISTS `versiong_fix_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versiong_fix_v2` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `gandalf`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gandalf` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `gandalf`;

--
-- Table structure for table `_test_magic_ghc`
--

DROP TABLE IF EXISTS `_test_magic_ghc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_test_magic_ghc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hint` varchar(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `value` varchar(4096) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hint_uidx` (`hint`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_test_magic_gho`
--

DROP TABLE IF EXISTS `_test_magic_gho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_test_magic_gho` (
  `id` char(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `address_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `country` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `state` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `street_1` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `street_2` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `lock_id` int DEFAULT '0',
  `org_code` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `bkyc_latitude` decimal(10,0) DEFAULT NULL,
  `vkyc_latitude` decimal(10,0) DEFAULT NULL,
  `bkyc_longitude` decimal(10,0) DEFAULT NULL,
  `vkyc_longitude` decimal(10,0) DEFAULT NULL,
  `bkyc_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_uk` (`org_code`,`address_type`),
  KEY `idx_address_org` (`org_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adminconsole_owner_info`
--

DROP TABLE IF EXISTS `adminconsole_owner_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminconsole_owner_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(50) DEFAULT NULL,
  `owner_email` varchar(50) DEFAULT NULL,
  `approval_type` varchar(25) DEFAULT NULL,
  `secondary_email` varchar(30) DEFAULT NULL,
  `secondaryapprovalType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instance_name` (`instance_name`,`owner_email`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `batch_log`
--

DROP TABLE IF EXISTS `batch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `batch_no` int NOT NULL,
  `total_rows_updated` int DEFAULT '0',
  `log_message` text,
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_log_time` (`log_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cluster_vpc_mapping`
--

DROP TABLE IF EXISTS `cluster_vpc_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cluster_vpc_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cluster_name` text,
  `region` text,
  `vpc_group` text,
  `vpc_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cronAdminQueries`
--

DROP TABLE IF EXISTS `cronAdminQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cronAdminQueries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issueKey` varchar(20) DEFAULT NULL,
  `cronName` varchar(100) DEFAULT NULL,
  `cronschedule` varchar(20) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jobStatus` varchar(20) DEFAULT NULL,
  `instanceIP` varchar(100) GENERATED ALWAYS AS (substring_index(substring_index(`cronName`,_utf8mb4':',2),_utf8mb4':',-(1))) VIRTUAL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drDrill_status`
--

DROP TABLE IF EXISTS `drDrill_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drDrill_status` (
  `issueID` int NOT NULL AUTO_INCREMENT,
  `issueKey` varchar(20) NOT NULL,
  `clusterList` json DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dsjdsajkfd32`
--

DROP TABLE IF EXISTS `dsjdsajkfd32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dsjdsajkfd32` (
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_data`
--

DROP TABLE IF EXISTS `employee_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation_plain` varchar(255) DEFAULT NULL,
  `designation_encrypted` blob,
  `designation_hex_encrypted` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_record_backup`
--

DROP TABLE IF EXISTS `employee_record_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_record_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2079 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_records`
--

DROP TABLE IF EXISTS `employee_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `new_column` text,
  `column_one` text,
  `column_two` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_aws_account_region`
--

DROP TABLE IF EXISTS `gandalf_aws_account_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_aws_account_region` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `aws_account_name` varchar(20) DEFAULT NULL,
  `aws_region` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_aws_instance_type`
--

DROP TABLE IF EXISTS `gandalf_aws_instance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_aws_instance_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `aws_instance_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_jira_analytics_flow`
--

DROP TABLE IF EXISTS `gandalf_jira_analytics_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_jira_analytics_flow` (
  `id` char(14) NOT NULL,
  `merchant_name` varchar(20) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_ppt`
--

DROP TABLE IF EXISTS `gandalf_ppt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_ppt` (
  `id` char(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_query_execution_slots`
--

DROP TABLE IF EXISTS `gandalf_query_execution_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_query_execution_slots` (
  `slot_id` int NOT NULL AUTO_INCREMENT,
  `slotStartTime` datetime DEFAULT NULL,
  `slotEndTime` datetime DEFAULT NULL,
  `query_count` int DEFAULT '0',
  `status` enum('available','full') DEFAULT 'available',
  PRIMARY KEY (`slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_RSPLAdmins`
--

DROP TABLE IF EXISTS `gandalf_RSPLAdmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_RSPLAdmins` (
  `owner_email` varchar(50) NOT NULL,
  PRIMARY KEY (`owner_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_service_mapping_table`
--

DROP TABLE IF EXISTS `gandalf_service_mapping_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_service_mapping_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `databaseName` varchar(100) DEFAULT NULL,
  `MUM_instance_name` varchar(100) DEFAULT NULL,
  `MUM_instance_ip` varchar(225) DEFAULT NULL,
  `SG_instance_name` varchar(100) DEFAULT NULL,
  `SG_instance_ip` varchar(225) DEFAULT NULL,
  `US_instance_name` varchar(100) DEFAULT NULL,
  `US_instance_ip` varchar(225) DEFAULT NULL,
  `exception_owner_email` varchar(100) DEFAULT 'varun.saluja@razorpay.com',
  `datastore` enum('MYSQL','POSTGRESQL') DEFAULT NULL,
  `MUM_instance_reader_ip` varchar(225) DEFAULT NULL,
  `SG_instance_reader_ip` varchar(225) DEFAULT NULL,
  `US_instance_reader_ip` varchar(225) DEFAULT NULL,
  `drift_cron_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_databaseName` (`databaseName`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_service_type`
--

DROP TABLE IF EXISTS `gandalf_service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_service_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` text,
  `instance_ip` text,
  `final_score` int DEFAULT NULL,
  `service_type` varchar(10) DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_versioning`
--

DROP TABLE IF EXISTS `gandalf_versioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_versioning` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issueKey` varchar(20) NOT NULL,
  `operationType` varchar(20) DEFAULT 'DDL',
  `instance_name` varchar(100) DEFAULT '',
  `databaseName` varchar(100) DEFAULT '',
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `region` varchar(255) DEFAULT 'MUM',
  `version` varchar(20) DEFAULT NULL,
  `pr_link` text,
  `repo_file_path` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_region_instance_db_version` (`region`,`instance_name`,`databaseName`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_versioning_old`
--

DROP TABLE IF EXISTS `gandalf_versioning_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_versioning_old` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operationType` varchar(20) DEFAULT 'DDL',
  `instance_name` text,
  `databaseName` text,
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `region` varchar(255) DEFAULT 'MUM',
  `version` varchar(20) DEFAULT NULL,
  `pr_link` text,
  `repo_file_path` text,
  `issueKey` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_versioning_postgres`
--

DROP TABLE IF EXISTS `gandalf_versioning_postgres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_versioning_postgres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issueKey` varchar(20) NOT NULL,
  `operationType` varchar(20) DEFAULT 'DDL',
  `instance_name` varchar(100) DEFAULT '',
  `databaseName` varchar(100) DEFAULT '',
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `region` varchar(255) DEFAULT 'MUM',
  `version` varchar(20) DEFAULT NULL,
  `pr_link` text,
  `repo_file_path` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_region_instance_db_version` (`region`,`instance_name`,`databaseName`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalf_versioning_v2`
--

DROP TABLE IF EXISTS `gandalf_versioning_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalf_versioning_v2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issueKey` varchar(20) NOT NULL,
  `operationType` varchar(20) DEFAULT 'DDL',
  `instance_name` text,
  `databaseName` text,
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `region` varchar(255) DEFAULT 'MUM',
  `version` varchar(20) DEFAULT NULL,
  `pr_link` text,
  `repo_file_path` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfCrossRegionFailoverQueries`
--

DROP TABLE IF EXISTS `gandalfCrossRegionFailoverQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfCrossRegionFailoverQueries` (
  `issueID` int NOT NULL AUTO_INCREMENT,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `approvalType` varchar(10) DEFAULT NULL,
  `hadErrors` int DEFAULT '0',
  `clusterNames` text,
  `clusterConfigurations` text,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfDataMaskingQueries`
--

DROP TABLE IF EXISTS `gandalfDataMaskingQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfDataMaskingQueries` (
  `operation` varchar(255) DEFAULT NULL,
  `instanceName` varchar(255) DEFAULT NULL,
  `instanceIP` text,
  `databaseName` varchar(255) DEFAULT NULL,
  `tableName` varchar(255) DEFAULT NULL,
  `columnNames` varchar(255) DEFAULT NULL,
  `selectedConditionType` varchar(255) DEFAULT NULL,
  `typeOfColumnInWhereCondition` varchar(255) DEFAULT NULL,
  `startDate` varchar(25) DEFAULT NULL,
  `endDate` varchar(25) DEFAULT NULL,
  `whereCondition` varchar(255) DEFAULT NULL,
  `dummyValues` varchar(255) DEFAULT NULL,
  `issueID` int NOT NULL,
  `issueKey` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `jobStatus` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `approvedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hadErrors` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfGlobalClusterCreationDetails`
--

DROP TABLE IF EXISTS `gandalfGlobalClusterCreationDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfGlobalClusterCreationDetails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `clusterIdentifier` varchar(255) NOT NULL,
  `engine` varchar(50) NOT NULL,
  `globalClusterExists` tinyint(1) NOT NULL,
  `globalClusterName` varchar(255) NOT NULL,
  `hyderabadClusterName` varchar(255) NOT NULL,
  `parameterGroup` varchar(255) NOT NULL,
  `parameterGroupForHyd` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `headExistsForHyd` varchar(255) DEFAULT NULL,
  `infraSetup` varchar(20) DEFAULT NULL,
  `cellName` varchar(255) DEFAULT NULL,
  `globalClusterEndpoint` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfGlobalClusterCreationDetailsOLD`
--

DROP TABLE IF EXISTS `gandalfGlobalClusterCreationDetailsOLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfGlobalClusterCreationDetailsOLD` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `clusterIdentifier` varchar(255) NOT NULL,
  `engine` varchar(50) NOT NULL,
  `globalClusterExists` tinyint(1) NOT NULL,
  `globalClusterName` varchar(255) NOT NULL,
  `hyderabadClusterName` varchar(255) NOT NULL,
  `parameterGroup` varchar(255) NOT NULL,
  `parameterGroupForHyd` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `headExistsForHyd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfGlobalClusterCreationQueries`
--

DROP TABLE IF EXISTS `gandalfGlobalClusterCreationQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfGlobalClusterCreationQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `approvalType` varchar(10) DEFAULT NULL,
  `hadErrors` int NOT NULL DEFAULT '0',
  `globalClusterCreationConfig` text,
  `cellName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfHeaderAutomationQueries`
--

DROP TABLE IF EXISTS `gandalfHeaderAutomationQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfHeaderAutomationQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `approvalType` varchar(10) DEFAULT NULL,
  `hadErrors` int NOT NULL DEFAULT '0',
  `mumbaiHeaderConfig` text,
  `hyderabadHeaderConfig` text,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfInfraSetupQueries`
--

DROP TABLE IF EXISTS `gandalfInfraSetupQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfInfraSetupQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `aws_account_name` varchar(20) DEFAULT NULL,
  `aws_region` varchar(20) DEFAULT NULL,
  `aws_env` varchar(10) DEFAULT NULL,
  `aws_service_name` varchar(50) DEFAULT NULL,
  `aws_node_type` varchar(20) DEFAULT NULL,
  `aws_instance_type` varchar(20) DEFAULT NULL,
  `carca_jira` varchar(20) DEFAULT NULL,
  `aws_bu` varchar(20) DEFAULT NULL,
  `aws_cost_owner` varchar(50) DEFAULT NULL,
  `aws_engg_manager` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `aws_datastore` varchar(30) DEFAULT NULL,
  `approvalType` varchar(10) DEFAULT NULL,
  `instanceIP` text,
  `hadErrors` int NOT NULL DEFAULT '0',
  `branch_name` text,
  `pr_link` text,
  `aws_cost_value` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfInstanceSizeList`
--

DROP TABLE IF EXISTS `gandalfInstanceSizeList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfInstanceSizeList` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instanceSizeName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfIssues`
--

DROP TABLE IF EXISTS `gandalfIssues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfIssues` (
  `issueID` varchar(30) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `attachmentID` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `issueKey` varchar(255) DEFAULT NULL,
  `sourceInstanceIP` varchar(50) DEFAULT NULL,
  `sourceDatabase` varchar(50) DEFAULT NULL,
  `migration_type` varchar(50) DEFAULT NULL,
  `source_jira_key_diff` varchar(20) DEFAULT NULL,
  `destinationInstanceIP` varchar(50) DEFAULT NULL,
  `destinationDatabase` varchar(50) DEFAULT NULL,
  `hadErrors` int NOT NULL DEFAULT '0',
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `sourceRegion` varchar(50) DEFAULT NULL,
  `destinationRegion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfMindeedOwners`
--

DROP TABLE IF EXISTS `gandalfMindeedOwners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfMindeedOwners` (
  `owner` varchar(50) NOT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfMindeedQueries`
--

DROP TABLE IF EXISTS `gandalfMindeedQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfMindeedQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `instanceName` text,
  `instanceIP` text,
  `databaseName` varchar(100) DEFAULT '',
  `fileName` text,
  `approvalType` varchar(10) DEFAULT NULL,
  `hadErrors` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfPostgresQueries`
--

DROP TABLE IF EXISTS `gandalfPostgresQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfPostgresQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `instanceName` varchar(100) DEFAULT '',
  `dbName` varchar(100) DEFAULT '',
  `queriesText` text,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `hadErrors` int NOT NULL DEFAULT '0',
  `usedGhost` int NOT NULL DEFAULT '0',
  `instanceIP` varchar(100) DEFAULT '',
  `queriesType` varchar(10) DEFAULT '',
  `databaseName` varchar(100) DEFAULT '',
  `cab_approval_required` varchar(10) DEFAULT NULL,
  `secondaryapprovedBy` text,
  `secondaryapprovalType` varchar(30) DEFAULT NULL,
  `gandalfQueriesText` text,
  `tidbChangeStatus` varchar(100) DEFAULT NULL,
  `jiraTiDBTicketNumber` varchar(100) DEFAULT NULL,
  `thirdapprovedBy` text,
  `thirdapprovalType` varchar(30) DEFAULT NULL,
  `isGhostQuery` varchar(10) DEFAULT 'False',
  `slotStartTime` varchar(100) DEFAULT '',
  `slotEndTime` varchar(100) DEFAULT '',
  `isScheduledQuery` varchar(10) DEFAULT 'No',
  `scheduledQueryExecutionTime` varchar(100) DEFAULT '',
  `cron_status` varchar(10) DEFAULT NULL,
  `pr_link` text,
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `region` varchar(20) DEFAULT '',
  `flowType` varchar(20) DEFAULT 'normal',
  `cellList` json DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfQROwners`
--

DROP TABLE IF EXISTS `gandalfQROwners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfQROwners` (
  `owner` varchar(50) NOT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfQRQueries`
--

DROP TABLE IF EXISTS `gandalfQRQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfQRQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `hadErrors` int NOT NULL DEFAULT '0',
  `snapshotList` longtext,
  `secondaryapprovedBy` varchar(30) DEFAULT NULL,
  `secondaryapprovalType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfQueries`
--

DROP TABLE IF EXISTS `gandalfQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `instanceName` varchar(100) DEFAULT '',
  `dbName` varchar(100) DEFAULT '',
  `queriesText` text NOT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `hadErrors` int NOT NULL DEFAULT '0',
  `usedGhost` int NOT NULL DEFAULT '0',
  `instanceIP` varchar(100) DEFAULT '',
  `queriesType` varchar(10) DEFAULT '',
  `databaseName` varchar(100) DEFAULT '',
  `cab_approval_required` varchar(10) DEFAULT NULL,
  `secondaryapprovedBy` varchar(30) DEFAULT NULL,
  `secondaryapprovalType` varchar(30) DEFAULT NULL,
  `thirdapprovedBy` varchar(130) DEFAULT NULL,
  `thirdapprovalType` varchar(30) DEFAULT 'NA',
  `partition_flag` int NOT NULL DEFAULT '0',
  `partition_type` text,
  `partition_query` text,
  `partition_granularity` varchar(20) DEFAULT NULL,
  `partition_key` varchar(100) DEFAULT NULL,
  `isGhostQuery` varchar(10) DEFAULT 'False',
  `slotStartTime` varchar(100) DEFAULT '',
  `slotEndTime` varchar(100) DEFAULT '',
  `isScheduledQuery` varchar(10) DEFAULT 'No',
  `scheduledQueryExecutionTime` varchar(100) DEFAULT '',
  `cron_status` varchar(10) DEFAULT NULL,
  `application_port` int DEFAULT NULL,
  `bulkQueries` varchar(10) DEFAULT '',
  `fileName` text,
  `pr_link` text,
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `region` varchar(20) DEFAULT '',
  `flowType` varchar(20) DEFAULT 'normal',
  `cellList` json DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfQueries_backup`
--

DROP TABLE IF EXISTS `gandalfQueries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfQueries_backup` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `instanceName` varchar(100) DEFAULT '',
  `dbName` varchar(100) DEFAULT '',
  `queriesText` text NOT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `hadErrors` int NOT NULL DEFAULT '0',
  `usedGhost` int NOT NULL DEFAULT '0',
  `instanceIP` varchar(100) DEFAULT '',
  `queriesType` varchar(10) DEFAULT '',
  `databaseName` varchar(100) DEFAULT '',
  `cab_approval_required` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfRedashDataSourceOnboardingQueries`
--

DROP TABLE IF EXISTS `gandalfRedashDataSourceOnboardingQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfRedashDataSourceOnboardingQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `instanceName` varchar(100) DEFAULT '',
  `instanceIP` varchar(100) DEFAULT '',
  `databaseName` varchar(100) DEFAULT '',
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `hadErrors` int NOT NULL DEFAULT '0',
  `createNewGroup` varchar(10) DEFAULT '',
  `groupName` varchar(100) DEFAULT '',
  `groupOwnerEmail` varchar(50) DEFAULT NULL,
  `datastore` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfRedashGroupOwners`
--

DROP TABLE IF EXISTS `gandalfRedashGroupOwners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfRedashGroupOwners` (
  `groupName` varchar(100) DEFAULT '',
  `groupOwnerEmail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfRedashUserOnboardingQueries`
--

DROP TABLE IF EXISTS `gandalfRedashUserOnboardingQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfRedashUserOnboardingQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `hadErrors` int NOT NULL DEFAULT '0',
  `groupNameList` text,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfRedisQueries`
--

DROP TABLE IF EXISTS `gandalfRedisQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfRedisQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `instanceName` varchar(200) DEFAULT '',
  `instanceIP` varchar(200) DEFAULT '',
  `operationType` varchar(50) DEFAULT '',
  `clusterMode` varchar(10) DEFAULT '',
  `redisKey` text,
  `redisValue` text,
  `redisPattern` text,
  `jobStatus` varchar(20) DEFAULT 'PENDING',
  `hadErrors` int NOT NULL DEFAULT '0',
  `redisField` text,
  `redisKeyType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gandalfUserQueries`
--

DROP TABLE IF EXISTS `gandalfUserQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gandalfUserQueries` (
  `issueID` int NOT NULL,
  `issueKey` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `jobStatus` varchar(50) DEFAULT NULL,
  `instanceName` varchar(255) DEFAULT NULL,
  `instanceIP` text,
  `newDatabaseName` varchar(255) DEFAULT NULL,
  `userType` varchar(50) DEFAULT NULL,
  `newUserName` varchar(255) DEFAULT NULL,
  `credstashTableName` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approvedBy` varchar(50) DEFAULT NULL,
  `executedBy` varchar(50) DEFAULT NULL,
  `approvedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `queryText` text,
  `hadErrors` int NOT NULL DEFAULT '0',
  `applicationUserCredstashKeys` text,
  `de_view_manager_CredstashKeys` text,
  `sqoop_views_CredstashKeys` varchar(255) DEFAULT NULL,
  `datum_replication_CredstashKeys` varchar(255) DEFAULT NULL,
  `maxwell_replication_CredstashKeys` text,
  `userCreationType` varchar(255) DEFAULT NULL,
  `datastore` varchar(10) DEFAULT NULL,
  `commonUserCredstashKeys` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goose_db_version`
--

DROP TABLE IF EXISTS `goose_db_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goose_db_version` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `version_id` bigint NOT NULL,
  `is_applied` tinyint(1) NOT NULL,
  `tstamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(50) NOT NULL,
  `instance_ip` varchar(100) DEFAULT NULL,
  `instance_type` varchar(40) NOT NULL,
  `instance_role` varchar(40) DEFAULT NULL,
  `instance_status` varchar(25) NOT NULL,
  `DATABASE_VERSION` varchar(255) DEFAULT NULL,
  `ARCHIVE_BUCKET_NAME` varchar(255) DEFAULT NULL,
  `TEAM` varchar(255) DEFAULT NULL,
  `PROJECT` varchar(60) DEFAULT NULL,
  `cab_type` varchar(10) DEFAULT 'NON-CAB',
  `approval_type` varchar(25) DEFAULT 'single',
  `secondaryapprovalType` varchar(30) DEFAULT NULL,
  `thirdapprovalType` varchar(30) DEFAULT 'NA',
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `allowed_execution_days` json NOT NULL DEFAULT (json_array(_utf8mb4'Monday',_utf8mb4'Thursday')),
  `lock_status` varchar(3) DEFAULT 'No',
  `application_port` int DEFAULT '3306',
  `region` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=579 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `merchant_details`
--

DROP TABLE IF EXISTS `merchant_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_details` (
  `merchant_id` char(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contact_mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contact_landline` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_dba` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `additional_websites` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `business_international` tinyint(1) NOT NULL DEFAULT '0',
  `business_paymentdetails` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_registered_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_registered_address_l2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_registered_state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_registered_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_registered_district` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_registered_pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_registered_country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_operation_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_operation_address_l2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_operation_state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_operation_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_operation_district` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_operation_pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_operation_country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_doe` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gstin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `p_gstin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `company_cin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `company_pan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `company_pan_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_category` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_subcategory` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `transaction_volume` int unsigned DEFAULT NULL,
  `transaction_value` int unsigned DEFAULT NULL,
  `promoter_pan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `promoter_pan_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `date_of_birth` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_account_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_account_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_account_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_branch` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_branch_ifsc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_beneficiary_address1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_beneficiary_address2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_beneficiary_address3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_beneficiary_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_beneficiary_state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_beneficiary_pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website_about` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website_contact` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website_privacy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website_terms` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website_refund` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website_pricing` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website_login` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_proof_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_operation_proof_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `business_pan_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `address_proof_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `promoter_proof_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `promoter_pan_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `promoter_address_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `form_12a_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `form_80g_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `transaction_report_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `steps_finished` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '[]',
  `activation_progress` int DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `activation_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `poi_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `poa_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bank_details_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `activation_flow` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `international_activation_flow` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `live_transaction_done` tinyint(1) DEFAULT '0',
  `clarification_mode` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `kyc_clarification_reasons` json DEFAULT NULL,
  `kyc_additional_details` json DEFAULT NULL,
  `kyc_id` char(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `archived_at` int DEFAULT NULL,
  `reviewer_id` char(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `issue_fields` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `issue_fields_reason` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `internal_notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `custom_fields` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `marketplace_activation_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `virtual_accounts_activation_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `subscriptions_activation_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `submitted` tinyint(1) NOT NULL DEFAULT '0',
  `submitted_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `estd_year` smallint DEFAULT NULL,
  `authorized_signatory_residential_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `authorized_signatory_dob` date DEFAULT NULL,
  `platform` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fund_account_validation_id` char(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date_of_establishment` date DEFAULT NULL,
  `penny_testing_updated_at` int DEFAULT NULL,
  `company_pan_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gstin_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `cin_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `personal_pan_doc_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `company_pan_doc_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_details_doc_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `shop_establishment_number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `shop_establishment_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `client_applications` json DEFAULT NULL,
  `onboarding_milestone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_suggested_pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `business_suggested_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fraud_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bas_business_id` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `msme_doc_verification_status` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `activation_form_milestone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fund_addition_va_ids` json DEFAULT NULL,
  `iec_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `audit_id` char(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bank_branch_code_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bank_branch_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `industry_category_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `industry_category_code_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`merchant_id`),
  KEY `bank_details_verification_status_index` (`bank_details_verification_status`),
  KEY `merchant_details_activation_status_index` (`activation_status`),
  KEY `merchant_details_archived_at_index` (`archived_at`),
  KEY `merchant_details_created_at_index` (`created_at`),
  KEY `merchant_details_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `merchant_migration_approvers`
--

DROP TABLE IF EXISTS `merchant_migration_approvers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_migration_approvers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `approver_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `merchantMigrationCrons`
--

DROP TABLE IF EXISTS `merchantMigrationCrons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchantMigrationCrons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cronName` varchar(1000) DEFAULT NULL,
  `cronExpression` varchar(30) DEFAULT NULL,
  `issueKey` varchar(255) DEFAULT NULL,
  `cronStatus` varchar(50) DEFAULT NULL,
  `merchantId` varchar(255) DEFAULT NULL,
  `sourceCell` varchar(255) DEFAULT 'RSPL',
  `targetCell` varchar(255) DEFAULT NULL,
  `createdAt` varchar(30) DEFAULT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `merchantMigrationQueries`
--

DROP TABLE IF EXISTS `merchantMigrationQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchantMigrationQueries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issueID` varchar(255) DEFAULT NULL,
  `issueKey` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `jobStatus` varchar(50) DEFAULT NULL,
  `merchantId` varchar(255) DEFAULT NULL,
  `sourceCell` varchar(255) DEFAULT 'RSPL',
  `targetCell` varchar(255) DEFAULT NULL,
  `approvedBy` varchar(255) DEFAULT NULL,
  `executedBy` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mysql_instance_owner_info`
--

DROP TABLE IF EXISTS `mysql_instance_owner_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mysql_instance_owner_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(50) DEFAULT NULL,
  `instance_ip` varchar(100) DEFAULT NULL,
  `instance_role` varchar(20) DEFAULT NULL,
  `owner_email` varchar(50) DEFAULT NULL,
  `approval_type` varchar(25) DEFAULT NULL,
  `secondary_email` varchar(130) DEFAULT NULL,
  `secondaryapprovalType` varchar(30) DEFAULT NULL,
  `third_email` varchar(130) DEFAULT 'NA',
  `thirdapprovalType` varchar(30) DEFAULT 'NA',
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `rspl_admin_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `non_dynamic_params_table`
--

DROP TABLE IF EXISTS `non_dynamic_params_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `non_dynamic_params_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` text,
  `instance_ip` text,
  `params` json DEFAULT NULL,
  `partitions_score` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `postgres_instance_owner_info`
--

DROP TABLE IF EXISTS `postgres_instance_owner_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postgres_instance_owner_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(50) DEFAULT NULL,
  `instance_ip` varchar(100) DEFAULT NULL,
  `instance_role` varchar(20) DEFAULT NULL,
  `owner_email` varchar(50) DEFAULT NULL,
  `approval_type` varchar(25) DEFAULT NULL,
  `secondary_email` varchar(130) DEFAULT NULL,
  `secondaryapprovalType` varchar(30) DEFAULT NULL,
  `third_email` varchar(130) DEFAULT 'NA',
  `thirdapprovalType` varchar(30) DEFAULT 'NA',
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `rspl_admin_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `owner_name` (`instance_ip`,`owner_email`,`third_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `postgresInventory`
--

DROP TABLE IF EXISTS `postgresInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postgresInventory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(50) NOT NULL,
  `instance_ip` varchar(100) NOT NULL,
  `instance_type` varchar(40) NOT NULL,
  `instance_role` varchar(40) DEFAULT NULL,
  `instance_status` varchar(25) NOT NULL,
  `DATABASE_VERSION` varchar(255) DEFAULT NULL,
  `ARCHIVE_BUCKET_NAME` varchar(255) DEFAULT NULL,
  `TEAM` varchar(255) DEFAULT NULL,
  `PROJECT` varchar(60) DEFAULT NULL,
  `cab_type` varchar(40) DEFAULT NULL,
  `approval_type` varchar(40) DEFAULT NULL,
  `secondaryapprovalType` varchar(40) DEFAULT NULL,
  `database_name` varchar(50) DEFAULT NULL,
  `schema_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `thirdapprovalType` varchar(100) DEFAULT NULL,
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `allowed_execution_days` json NOT NULL DEFAULT (json_array(_utf8mb4'Monday',_utf8mb4'Thursday')),
  `lock_status` varchar(3) DEFAULT 'No',
  `region` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `redis_instance_owner_info`
--

DROP TABLE IF EXISTS `redis_instance_owner_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redis_instance_owner_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(50) DEFAULT NULL,
  `instance_ip` varchar(100) DEFAULT NULL,
  `instance_role` varchar(20) DEFAULT NULL,
  `owner_email` varchar(50) DEFAULT NULL,
  `approval_type` varchar(25) DEFAULT NULL,
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `redisInventory`
--

DROP TABLE IF EXISTS `redisInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redisInventory` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(100) NOT NULL,
  `instance_ip` varchar(200) DEFAULT NULL,
  `cluster_mode` varchar(40) NOT NULL,
  `instance_role` varchar(40) DEFAULT NULL,
  `instance_status` varchar(25) NOT NULL,
  `no_of_shards` varchar(25) NOT NULL,
  `no_of_nodes` varchar(25) NOT NULL,
  `DATABASE_VERSION` varchar(255) DEFAULT NULL,
  `ARCHIVE_BUCKET_NAME` varchar(255) DEFAULT NULL,
  `TEAM` varchar(255) DEFAULT NULL,
  `PROJECT` varchar(60) DEFAULT NULL,
  `approval_type` varchar(25) DEFAULT 'single',
  `aws_account_name` varchar(20) DEFAULT 'RSPL',
  `cluster_config` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduled_crons`
--

DROP TABLE IF EXISTS `scheduled_crons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_crons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue_key` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `execution_time` datetime NOT NULL,
  `cron_status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `score_card_monitoring_table`
--

DROP TABLE IF EXISTS `score_card_monitoring_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score_card_monitoring_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` text,
  `instance_ip` text,
  `cpu_score` int DEFAULT NULL,
  `connection_score` int DEFAULT NULL,
  `active_transaction_score` int DEFAULT NULL,
  `max_execution_time_score` int DEFAULT NULL,
  `partitions_score` int DEFAULT NULL,
  `read_write_split_score` int DEFAULT NULL,
  `memory_score` int DEFAULT NULL,
  `innodb_history_length_score` int DEFAULT NULL,
  `purging_score` int DEFAULT NULL,
  `db_cache_score` int DEFAULT NULL,
  `final_score` int DEFAULT NULL,
  `score_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scorecard_graph_data`
--

DROP TABLE IF EXISTS `scorecard_graph_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scorecard_graph_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_name` text,
  `instance_ip` text,
  `cpu_score` int DEFAULT NULL,
  `connection_score` int DEFAULT NULL,
  `active_transaction_score` int DEFAULT NULL,
  `max_execution_time_score` int DEFAULT NULL,
  `partitions_score` int DEFAULT NULL,
  `read_write_split_score` int DEFAULT NULL,
  `memory_score` int DEFAULT NULL,
  `innodb_history_length_score` int DEFAULT NULL,
  `purging_score` int DEFAULT NULL,
  `db_cache_score` int DEFAULT NULL,
  `final_score` int DEFAULT NULL,
  `score_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation_plain` varchar(255) DEFAULT NULL,
  `designation_encrypted` blob,
  `designation_hex_encrypted` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testing_versioning`
--

DROP TABLE IF EXISTS `testing_versioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testing_versioning` (
  `id` char(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vendor_payments`
--

DROP TABLE IF EXISTS `vendor_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_payments` (
  `id` varchar(21) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `invoice_number` varchar(140) DEFAULT NULL,
  `account_number` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contact_id` varchar(19) DEFAULT NULL,
  `fund_account_id` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `merchant_id` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `total_amount` bigint DEFAULT NULL,
  `subtotal_amount` bigint DEFAULT NULL,
  `tds_amount` bigint DEFAULT NULL,
  `sgst` float NOT NULL DEFAULT '0',
  `cgst` float NOT NULL DEFAULT '0',
  `currency` char(3) NOT NULL DEFAULT 'INR',
  `invoice_date` bigint DEFAULT NULL,
  `due_date` bigint DEFAULT NULL,
  `status` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `payout_mode` char(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `purpose` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `tds_category` int DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `cancelling_user_id` varchar(19) DEFAULT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `payment_terms` int DEFAULT NULL,
  `updated_at` bigint DEFAULT NULL,
  `created_at` bigint NOT NULL,
  `cancelled_at` bigint DEFAULT NULL,
  `invoice_file_id` varchar(40) DEFAULT NULL,
  `paid_at` bigint DEFAULT NULL,
  `ocr_reference_id` varchar(40) DEFAULT NULL,
  `manually_paid_user_id` varchar(19) DEFAULT NULL,
  `manually_paid_metadata` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `marked_as_paid` tinyint(1) DEFAULT '0',
  `source_type` varchar(50) DEFAULT NULL,
  `source_id` varchar(50) DEFAULT NULL,
  `gst_amount` bigint DEFAULT NULL,
  `gst_type` varchar(20) DEFAULT NULL,
  `unpaid_at` bigint DEFAULT NULL,
  `draft_created_at` bigint DEFAULT NULL,
  `expense_id` varchar(21) DEFAULT NULL,
  `gstin` char(15) DEFAULT NULL,
  `tds_deduction_on` varchar(21) DEFAULT NULL,
  `approval_id` char(21) DEFAULT NULL,
  `discount` bigint NOT NULL DEFAULT '0',
  `round_off` bigint NOT NULL DEFAULT '0',
  `cost_center_id` char(14) DEFAULT NULL,
  `entity_metadata` json DEFAULT NULL,
  `billing_branch_id` char(14) DEFAULT NULL,
  `merchant_billing_address` json DEFAULT NULL,
  `merchant_gstin` varchar(20) DEFAULT NULL,
  `requester_id` char(14) DEFAULT NULL,
  `is_rcm_applicable` tinyint DEFAULT '0',
  `gstr_2b_recon_status` varchar(50) DEFAULT NULL,
  `total_amount_block_size` bigint DEFAULT NULL,
  PRIMARY KEY (`id`,`created_at`),
  KEY `vendor_payments_created_at_index` (`created_at`),
  KEY `vendor_payments_merchant_id_created_at_index` (`merchant_id`,`created_at`,`invoice_date`,`due_date`),
  KEY `vendor_payments_contact_id_index` (`contact_id`),
  KEY `vendor_payments_tds_category_index` (`tds_category`),
  KEY `vendor_payments_merchant_id_requester_id_index` (`merchant_id`,`requester_id`),
  KEY `vendor_payments_merchant_id_user_id_index` (`merchant_id`,`user_id`),
  KEY `vendor_payments_invoice_number_created_id_index` (`invoice_number`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY RANGE (`created_at`)
(PARTITION p_vendor_payments_May20 VALUES LESS THAN (1590969600) ENGINE = InnoDB,
 PARTITION p_vendor_payments_Jun20 VALUES LESS THAN (1593561600) ENGINE = InnoDB,
 PARTITION p_vendor_payments_July20 VALUES LESS THAN (1596240000) ENGINE = InnoDB,
 PARTITION p_vendor_payments_Aug20 VALUES LESS THAN (1598918400) ENGINE = InnoDB,
 PARTITION p_vendor_payments_Sep20 VALUES LESS THAN (1601510400) ENGINE = InnoDB,
 PARTITION p_vendor_payments_Oct20 VALUES LESS THAN (1604188800) ENGINE = InnoDB,
 PARTITION p_vendor_payments_Nov20 VALUES LESS THAN (1606780800) ENGINE = InnoDB,
 PARTITION p_vendor_payments_Dec20 VALUES LESS THAN (1609459200) ENGINE = InnoDB,
 PARTITION p_vendor_payments_Max VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vendor_payments_stage`
--

DROP TABLE IF EXISTS `vendor_payments_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_payments_stage` (
  `id` varchar(21) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `invoice_number` varchar(140) DEFAULT NULL,
  `account_number` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contact_id` varchar(19) DEFAULT NULL,
  `fund_account_id` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `merchant_id` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `total_amount` bigint DEFAULT NULL,
  `subtotal_amount` bigint DEFAULT NULL,
  `tds_amount` bigint DEFAULT NULL,
  `sgst` float NOT NULL DEFAULT '0',
  `cgst` float NOT NULL DEFAULT '0',
  `currency` char(3) NOT NULL DEFAULT 'INR',
  `invoice_date` bigint DEFAULT NULL,
  `due_date` bigint DEFAULT NULL,
  `status` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `payout_mode` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `tds_category` int DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `payment_terms` int DEFAULT NULL,
  `updated_at` bigint DEFAULT NULL,
  `created_at` bigint DEFAULT NULL,
  `cancelled_at` bigint DEFAULT NULL,
  `paid_at` bigint DEFAULT NULL,
  `cancelling_user_id` varchar(19) DEFAULT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `invoice_file_id` varchar(40) DEFAULT NULL,
  `ocr_reference_id` varchar(40) DEFAULT NULL,
  `manually_paid_user_id` varchar(19) DEFAULT NULL,
  `manually_paid_metadata` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `marked_as_paid` tinyint(1) DEFAULT '0',
  `source_type` varchar(50) DEFAULT NULL,
  `source_id` varchar(50) DEFAULT NULL,
  `gst_amount` bigint DEFAULT NULL,
  `gst_type` varchar(20) DEFAULT NULL,
  `unpaid_at` bigint DEFAULT NULL,
  `draft_created_at` bigint DEFAULT NULL,
  `vendor_auto_linked` tinyint DEFAULT '0',
  `fa_auto_linked` tinyint DEFAULT '0',
  `expense_id` varchar(21) DEFAULT NULL,
  `gstin` varchar(40) DEFAULT NULL,
  `tds_deduction_on` varchar(21) DEFAULT NULL,
  `approval_id` char(21) DEFAULT NULL,
  `discount` bigint NOT NULL DEFAULT '0',
  `round_off` bigint NOT NULL DEFAULT '0',
  `cost_center_id` char(14) DEFAULT NULL,
  `entity_metadata` json DEFAULT NULL,
  `billing_branch_id` char(14) DEFAULT NULL,
  `merchant_billing_address` json DEFAULT NULL,
  `merchant_gstin` varchar(20) DEFAULT NULL,
  `requester_id` char(14) DEFAULT NULL,
  `is_rcm_applicable` tinyint DEFAULT '0',
  `gstr_2b_recon_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_payments_cancelled_at_index` (`cancelled_at`),
  KEY `vendor_payments_created_at_index` (`created_at`),
  KEY `vendor_payments_paid_at_index` (`paid_at`),
  KEY `vendor_payments_purpose_index` (`purpose`),
  KEY `vendor_payments_status_index` (`status`),
  KEY `vendor_payments_due_date_index` (`due_date`),
  KEY `vendor_payments_invoice_date_index` (`invoice_date`),
  KEY `vendor_payments_merchant_id_index` (`merchant_id`),
  KEY `vendor_payments_contact_id_index` (`contact_id`),
  KEY `vendor_payments_invoice_number_index` (`invoice_number`),
  KEY `vendor_payments_tds_category_index` (`tds_category`),
  KEY `vendor_payments_merchant_id_requester_id_index` (`merchant_id`,`requester_id`),
  KEY `vendor_payments_merchant_id_user_id_index` (`merchant_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-02 12:45:35
