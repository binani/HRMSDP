CREATE DATABASE  IF NOT EXISTS `hrmsdp_10` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hrmsdp_10`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: hrmsdp_10
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `deduction_master`
--

DROP TABLE IF EXISTS `deduction_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deduction_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empd_id` int(11) DEFAULT NULL,
  `deptd_id` int(11) DEFAULT NULL,
  `deduction_id` int(11) NOT NULL,
  `deduction_name` varchar(20) DEFAULT NULL,
  `deduction_code` varchar(10) DEFAULT NULL,
  `pf` int(11) DEFAULT NULL,
  `pf_no` int(11) DEFAULT NULL,
  `ppp` int(11) DEFAULT NULL,
  `salary_advance` int(11) DEFAULT NULL,
  `total_sanctioned_amount` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `meals` int(11) DEFAULT NULL,
  `tiffin` int(11) DEFAULT NULL,
  `tea` int(11) DEFAULT NULL,
  `store` int(11) DEFAULT NULL,
  `medicines` int(11) DEFAULT NULL,
  `cable` int(11) DEFAULT NULL,
  `gas` int(11) DEFAULT NULL,
  `adv2` int(11) DEFAULT NULL,
  `eggs` int(11) DEFAULT NULL,
  `uniform` int(11) DEFAULT NULL,
  `total_deductions` int(11) DEFAULT NULL,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6kieqdylrxl5329x2f9u6j10t` (`empd_id`),
  KEY `FK_cj2iqrlod4w3m0fxwwdbd36uy` (`deptd_id`),
  CONSTRAINT `FK_6kieqdylrxl5329x2f9u6j10t` FOREIGN KEY (`empd_id`) REFERENCES `employee_profile` (`emp_id`),
  CONSTRAINT `FK_cj2iqrlod4w3m0fxwwdbd36uy` FOREIGN KEY (`deptd_id`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduction_master`
--

LOCK TABLES `deduction_master` WRITE;
/*!40000 ALTER TABLE `deduction_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `deduction_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deduction_rules`
--

DROP TABLE IF EXISTS `deduction_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deduction_rules` (
  `deduction_Rule_id` int(11) NOT NULL,
  `emp_grade` varchar(5) DEFAULT NULL,
  `flat_deduction_amount` int(11) DEFAULT NULL,
  `basic_rate` float DEFAULT NULL,
  PRIMARY KEY (`deduction_Rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduction_rules`
--

LOCK TABLES `deduction_rules` WRITE;
/*!40000 ALTER TABLE `deduction_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `deduction_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `dept_scope` longtext,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1001,'Company Management','Company Management Team'),(1002,'HR Management','HR People Team'),(1003,'Marketing Team','Marketing People Team'),(1004,'Development Team','Development People Team');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependents`
--

DROP TABLE IF EXISTS `dependents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependents` (
  `family_head_id` int(11) NOT NULL,
  PRIMARY KEY (`family_head_id`),
  CONSTRAINT `FK_qt5wejmcto6wuvmbpak8i1etc` FOREIGN KEY (`family_head_id`) REFERENCES `family_identity` (`family_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependents`
--

LOCK TABLES `dependents` WRITE;
/*!40000 ALTER TABLE `dependents` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependents_information`
--

DROP TABLE IF EXISTS `dependents_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependents_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `family_head_id` int(11) NOT NULL,
  `dep_name` varchar(20) DEFAULT NULL,
  `dep_age` int(11) DEFAULT NULL,
  `dep_status` varchar(4) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6hp537pldsy2vyrr6ng400pfj` (`family_head_id`),
  CONSTRAINT `FK_6hp537pldsy2vyrr6ng400pfj` FOREIGN KEY (`family_head_id`) REFERENCES `family_identity` (`family_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependents_information`
--

LOCK TABLES `dependents_information` WRITE;
/*!40000 ALTER TABLE `dependents_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependents_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_profile`
--

DROP TABLE IF EXISTS `employee_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_profile` (
  `emp_id` int(11) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `emp_type_id` int(11) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `emp_name` varchar(30) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aadhar_number` varchar(20) DEFAULT NULL,
  `maritial_status` varchar(8) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `quarter_type` varchar(30) DEFAULT NULL,
  `perminent_address` varchar(255) DEFAULT NULL,
  `self_contact_number` varchar(15) DEFAULT NULL,
  `emergency_contact_number` varchar(15) DEFAULT NULL,
  `OT_eligibility` varchar(4) DEFAULT NULL,
  `proof_type` varchar(11) DEFAULT NULL,
  `proof_number` varchar(20) DEFAULT NULL,
  `proof_scanned_copy` tinyblob,
  `emp_grade` varchar(5) DEFAULT NULL,
  `record_creation_date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK_t9rs4aok0jghwv88ifq0rbcad` (`dept_id`),
  KEY `FK_bgv8igvyib7i74bhhnln78isv` (`emp_type_id`),
  CONSTRAINT `FK_bgv8igvyib7i74bhhnln78isv` FOREIGN KEY (`emp_type_id`) REFERENCES `employee_type` (`emp_type_id`),
  CONSTRAINT `FK_t9rs4aok0jghwv88ifq0rbcad` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_profile`
--

LOCK TABLES `employee_profile` WRITE;
/*!40000 ALTER TABLE `employee_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_type` (
  `emp_type_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emp_type_id`),
  UNIQUE KEY `UK_paqgricesnp7v575k89rlip1q` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_identity`
--

DROP TABLE IF EXISTS `family_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_identity` (
  `family_unit_id` int(11) NOT NULL,
  `family_head_id` int(11) NOT NULL,
  PRIMARY KEY (`family_unit_id`),
  KEY `FK_cuv7h8j73vwvuhpehepmtwivg` (`family_head_id`),
  CONSTRAINT `FK_cuv7h8j73vwvuhpehepmtwivg` FOREIGN KEY (`family_head_id`) REFERENCES `employee_profile` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_identity`
--

LOCK TABLES `family_identity` WRITE;
/*!40000 ALTER TABLE `family_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas_allotment`
--

DROP TABLE IF EXISTS `gas_allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gas_allotment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `connection_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `alloted_date` date NOT NULL,
  `closed_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4tvrvtr6mw50ck8jwmnghnooo` (`emp_id`),
  KEY `FK_h0fsayiius0q4ijkcx1lveoq8` (`connection_id`),
  CONSTRAINT `FK_4tvrvtr6mw50ck8jwmnghnooo` FOREIGN KEY (`emp_id`) REFERENCES `employee_profile` (`emp_id`),
  CONSTRAINT `FK_h0fsayiius0q4ijkcx1lveoq8` FOREIGN KEY (`connection_id`) REFERENCES `gas_connection_master` (`connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas_allotment`
--

LOCK TABLES `gas_allotment` WRITE;
/*!40000 ALTER TABLE `gas_allotment` DISABLE KEYS */;
/*!40000 ALTER TABLE `gas_allotment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas_connection_master`
--

DROP TABLE IF EXISTS `gas_connection_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gas_connection_master` (
  `connection_id` int(11) NOT NULL,
  `gas_company_name` varchar(50) DEFAULT NULL,
  `gas_stove_id` int(11) DEFAULT NULL,
  `gas_connection_amount` int(11) DEFAULT NULL,
  `gas_cylinder_count` int(11) DEFAULT NULL,
  `gas_connection_holder_name` varchar(50) DEFAULT NULL,
  `gas_connection_validate_date` date DEFAULT NULL,
  `consumer_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`connection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas_connection_master`
--

LOCK TABLES `gas_connection_master` WRITE;
/*!40000 ALTER TABLE `gas_connection_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `gas_connection_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incentive_rules`
--

DROP TABLE IF EXISTS `incentive_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incentive_rules` (
  `Incentive_Rule_id` int(11) NOT NULL,
  `emp_grade` varchar(5) DEFAULT NULL,
  `flat_incentive_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`Incentive_Rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incentive_rules`
--

LOCK TABLES `incentive_rules` WRITE;
/*!40000 ALTER TABLE `incentive_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `incentive_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incentives`
--

DROP TABLE IF EXISTS `incentives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incentives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empi_id` int(11) DEFAULT NULL,
  `depti_id` int(11) DEFAULT NULL,
  `incentive_id` int(11) NOT NULL,
  `incentive_name` varchar(20) DEFAULT NULL,
  `incentive_code` varchar(10) DEFAULT NULL,
  `wage` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `inc` int(11) DEFAULT NULL,
  `earn` int(11) DEFAULT NULL,
  `inc_amount` int(11) DEFAULT NULL,
  `gross_salary` int(11) DEFAULT NULL,
  `net_salary` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_58c2p6jqrg6k04vwdbsjdn8x5` (`empi_id`),
  KEY `FK_j9tg0r16nrykuu5gnk7dffew6` (`depti_id`),
  CONSTRAINT `FK_58c2p6jqrg6k04vwdbsjdn8x5` FOREIGN KEY (`empi_id`) REFERENCES `employee_profile` (`emp_id`),
  CONSTRAINT `FK_j9tg0r16nrykuu5gnk7dffew6` FOREIGN KEY (`depti_id`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incentives`
--

LOCK TABLES `incentives` WRITE;
/*!40000 ALTER TABLE `incentives` DISABLE KEYS */;
/*!40000 ALTER TABLE `incentives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_master`
--

DROP TABLE IF EXISTS `leave_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_master` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `emp_grade` varchar(5) DEFAULT NULL,
  `number_of_days` int(11) DEFAULT NULL,
  `excluded_days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_no21w6qqv5pt9qogbni6f0ae2` (`emp_id`),
  CONSTRAINT `FK_no21w6qqv5pt9qogbni6f0ae2` FOREIGN KEY (`emp_id`) REFERENCES `employee_profile` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_master`
--

LOCK TABLES `leave_master` WRITE;
/*!40000 ALTER TABLE `leave_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_allotment`
--

DROP TABLE IF EXISTS `loan_allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_allotment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empl_id` int(11) DEFAULT NULL,
  `deptl_id` int(11) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `loan_type` varchar(25) DEFAULT NULL,
  `gas_loan` int(11) DEFAULT NULL,
  `tra_loan` int(11) DEFAULT NULL,
  `cash_loan` int(11) DEFAULT NULL,
  `requested_amt` int(11) DEFAULT NULL,
  `sanctioned_amt` int(11) DEFAULT NULL,
  `loan_status` varchar(50) DEFAULT NULL,
  `loan_approval_date` date DEFAULT NULL,
  `loan_creation_date` date DEFAULT NULL,
  `household_things` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ou6sms698lgovn7e2b6s4gqmm` (`empl_id`),
  KEY `FK_pl8pnbpip6ow6urltlkqycbtn` (`deptl_id`),
  KEY `FK_ixl3ow0aja34a9jjskc8ldwwa` (`loan_id`),
  CONSTRAINT `FK_ixl3ow0aja34a9jjskc8ldwwa` FOREIGN KEY (`loan_id`) REFERENCES `loans_master` (`loan_id`),
  CONSTRAINT `FK_ou6sms698lgovn7e2b6s4gqmm` FOREIGN KEY (`empl_id`) REFERENCES `employee_profile` (`emp_id`),
  CONSTRAINT `FK_pl8pnbpip6ow6urltlkqycbtn` FOREIGN KEY (`deptl_id`) REFERENCES `departments` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_allotment`
--

LOCK TABLES `loan_allotment` WRITE;
/*!40000 ALTER TABLE `loan_allotment` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_allotment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_eligibility`
--

DROP TABLE IF EXISTS `loan_eligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_eligibility` (
  `eligibility_rule_id` int(11) NOT NULL,
  `flat_amt_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`eligibility_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_eligibility`
--

LOCK TABLES `loan_eligibility` WRITE;
/*!40000 ALTER TABLE `loan_eligibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_eligibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_master`
--

DROP TABLE IF EXISTS `loans_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loans_master` (
  `loan_id` int(11) NOT NULL,
  `loan_type_name` varchar(20) DEFAULT NULL,
  `emp_grade` varchar(5) DEFAULT NULL,
  `eligibility_rule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_master`
--

LOCK TABLES `loans_master` WRITE;
/*!40000 ALTER TABLE `loans_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ot_payout_schedule`
--

DROP TABLE IF EXISTS `ot_payout_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ot_payout_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wage_id` int(11) NOT NULL,
  `payout_days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n5urymalj55vxllwerw17h4bh` (`wage_id`),
  CONSTRAINT `FK_n5urymalj55vxllwerw17h4bh` FOREIGN KEY (`wage_id`) REFERENCES `wage_definitions` (`wage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ot_payout_schedule`
--

LOCK TABLES `ot_payout_schedule` WRITE;
/*!40000 ALTER TABLE `ot_payout_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ot_payout_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtime`
--

DROP TABLE IF EXISTS `overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `OT` varchar(7) DEFAULT NULL,
  `OTrate` int(11) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `wage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tjxdmmqmo6l5385d3od72lmc1` (`emp_id`),
  CONSTRAINT `FK_tjxdmmqmo6l5385d3od72lmc1` FOREIGN KEY (`emp_id`) REFERENCES `employee_profile` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtime`
--

LOCK TABLES `overtime` WRITE;
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarter_allotment`
--

DROP TABLE IF EXISTS `quarter_allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarter_allotment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `family_unit_id` int(11) DEFAULT NULL,
  `quarter_id` int(11) DEFAULT NULL,
  `alloted` varchar(4) DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9dq80fmsjyflcyn9t8mkbtv2v` (`emp_id`),
  KEY `FK_4syyu467uswsrm4a33kgsnn4` (`family_unit_id`),
  KEY `FK_q594lutvldg2vy9yb3ohbdn4w` (`quarter_id`),
  CONSTRAINT `FK_4syyu467uswsrm4a33kgsnn4` FOREIGN KEY (`family_unit_id`) REFERENCES `family_identity` (`family_unit_id`),
  CONSTRAINT `FK_9dq80fmsjyflcyn9t8mkbtv2v` FOREIGN KEY (`emp_id`) REFERENCES `employee_profile` (`emp_id`),
  CONSTRAINT `FK_q594lutvldg2vy9yb3ohbdn4w` FOREIGN KEY (`quarter_id`) REFERENCES `residential_quarters` (`quarter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarter_allotment`
--

LOCK TABLES `quarter_allotment` WRITE;
/*!40000 ALTER TABLE `quarter_allotment` DISABLE KEYS */;
/*!40000 ALTER TABLE `quarter_allotment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residential_quarters`
--

DROP TABLE IF EXISTS `residential_quarters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residential_quarters` (
  `quarter_id` int(11) NOT NULL,
  `quarter_type` varchar(9) DEFAULT NULL,
  `quarter_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`quarter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residential_quarters`
--

LOCK TABLES `residential_quarters` WRITE;
/*!40000 ALTER TABLE `residential_quarters` DISABLE KEYS */;
/*!40000 ALTER TABLE `residential_quarters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1001,'Madhu Babu','mad5ind4','Active');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rolls`
--

DROP TABLE IF EXISTS `user_rolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_rolls` (
  `roll_id` int(11) NOT NULL,
  PRIMARY KEY (`roll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rolls`
--

LOCK TABLES `user_rolls` WRITE;
/*!40000 ALTER TABLE `user_rolls` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_rolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wage_definitions`
--

DROP TABLE IF EXISTS `wage_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wage_definitions` (
  `wage_id` int(11) NOT NULL,
  `emp_type` varchar(11) DEFAULT NULL,
  `wage_calculation` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wage_definitions`
--

LOCK TABLES `wage_definitions` WRITE;
/*!40000 ALTER TABLE `wage_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wage_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wages`
--

DROP TABLE IF EXISTS `wages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `wage_id` int(11) NOT NULL,
  `basic_rate` int(11) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_25fvxrtrt84jmy046c9jyoify` (`emp_id`),
  KEY `FK_75dxbhul7j2xs91unioehypcf` (`wage_id`),
  CONSTRAINT `FK_25fvxrtrt84jmy046c9jyoify` FOREIGN KEY (`emp_id`) REFERENCES `employee_profile` (`emp_id`),
  CONSTRAINT `FK_75dxbhul7j2xs91unioehypcf` FOREIGN KEY (`wage_id`) REFERENCES `wage_definitions` (`wage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wages`
--

LOCK TABLES `wages` WRITE;
/*!40000 ALTER TABLE `wages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hrmsdp_10'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-30 22:11:33
