-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2014 at 10:52 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stem`
--
CREATE DATABASE `stem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stem`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `permission` tinyint(1) NOT NULL,
  `password` varchar(25) NOT NULL,
  `roles` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123457 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `permission`, `password`, `roles`) VALUES
(123456, 'Brooke', 'Engle', 1, 'pass', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `american_indian_options`
--

CREATE TABLE IF NOT EXISTS `american_indian_options` (
  `id` varchar(25) NOT NULL,
  `permission` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eeo_job_classifications`
--

CREATE TABLE IF NOT EXISTS `eeo_job_classifications` (
  `id` varchar(25) NOT NULL,
  `eeo_job_classification` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `401k_location` varchar(250) DEFAULT NULL,
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `password` varchar(25) DEFAULT NULL,
  `roles` varchar(25) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `last_modified` date DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `address_1` varchar(25) DEFAULT NULL,
  `address_2` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `social_security` varchar(9) DEFAULT NULL,
  `cell_phone` varchar(10) DEFAULT NULL,
  `home_phone` varchar(10) DEFAULT NULL,
  `driver_license` varchar(250) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `driver_license_state` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `local_tax` tinyint(1) DEFAULT NULL,
  `bank_account` varchar(25) DEFAULT NULL,
  `bank_type` varchar(25) DEFAULT NULL,
  `marital_status` varchar(25) DEFAULT NULL,
  `accept_stc_policy` tinyint(1) DEFAULT NULL,
  `accept_stc_policy_date` date DEFAULT NULL,
  `branch` varchar(25) DEFAULT NULL,
  `dept` varchar(25) DEFAULT NULL,
  `file_number` varchar(25) DEFAULT NULL,
  `company_email` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `adjusted_seniority` date DEFAULT NULL,
  `job_title` varchar(25) DEFAULT NULL,
  `officer` tinyint(1) DEFAULT NULL,
  `eeo_class` varchar(25) DEFAULT NULL,
  `pay_type_salary` tinyint(1) DEFAULT NULL,
  `resident_psd_code` varchar(25) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `ethnicity` varchar(25) DEFAULT NULL,
  `veteran_status` varchar(25) DEFAULT NULL,
  `fringe_cell_phone` tinyint(1) DEFAULT NULL,
  `fringe_travel_stipend` tinyint(1) DEFAULT NULL,
  `fringe_medical_prem_deduction` tinyint(1) DEFAULT NULL,
  `employment_proposal` varchar(250) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `w4_exemptions` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1247 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`401k_location`, `id`, `password`, `roles`, `photo`, `last_modified`, `birthdate`, `first_name`, `last_name`, `address_1`, `address_2`, `city`, `state`, `zip`, `social_security`, `cell_phone`, `home_phone`, `driver_license`, `issue_date`, `expiration_date`, `driver_license_state`, `email`, `local_tax`, `bank_account`, `bank_type`, `marital_status`, `accept_stc_policy`, `accept_stc_policy_date`, `branch`, `dept`, `file_number`, `company_email`, `type`, `adjusted_seniority`, `job_title`, `officer`, `eeo_class`, `pay_type_salary`, `resident_psd_code`, `gender`, `ethnicity`, `veteran_status`, `fringe_cell_phone`, `fringe_travel_stipend`, `fringe_medical_prem_deduction`, `employment_proposal`, `status`, `hire_date`, `w4_exemptions`) VALUES
('', 123, 'password', '', '', '2014-02-13', '2014-04-27', 'Brooke', 'Engle', '580 Haysmill Road', '', 'Meyersdale', 'PA', '15552', '123456789', '7248756148', '8146348138', '1234567', '2013-05-13', '2017-05-13', 'Pennsylvania', 'ENG1585@calu.edu', 1, 'Somerset Trust', 'checking', 'married', 1, '2014-02-13', 'Johnstown', 'IT', '12345', 'engle@somersettrust.com', 'full time', '2014-02-13', 'DBA', 1, '123', 1, '123abc', 'Female', 'White', '0', 1, 1, 1, 'blah blah blarg', 'active', '2014-01-01', 'i don''t know');

-- --------------------------------------------------------

--
-- Table structure for table `employee_affirmative_action`
--

CREATE TABLE IF NOT EXISTS `employee_affirmative_action` (
  `id` int(25) NOT NULL,
  `positions_applied` varchar(25) DEFAULT NULL,
  `referral_source` varchar(25) DEFAULT NULL,
  `referral_extra_info` varchar(25) DEFAULT NULL,
  `employee_ethnicity` varchar(25) DEFAULT NULL,
  `american_indian_options` varchar(25) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `afirmative_action_completed_by_sig` varchar(25) DEFAULT NULL,
  `affirmative_action_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_affirmative_action`
--

INSERT INTO `employee_affirmative_action` (`id`, `positions_applied`, `referral_source`, `referral_extra_info`, `employee_ethnicity`, `american_indian_options`, `notes`, `afirmative_action_completed_by_sig`, `affirmative_action_date`) VALUES
(123, 'position applied', 'referral source', 'extra', 'white', 'something', 'notes', 'signature', '2014-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `employee_health_welfare`
--

CREATE TABLE IF NOT EXISTS `employee_health_welfare` (
  `id` int(25) NOT NULL,
  `opt_out` tinyint(1) DEFAULT NULL,
  `insurance_type` varchar(25) DEFAULT NULL,
  `insurance_coverage` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_health_welfare`
--

INSERT INTO `employee_health_welfare` (`id`, `opt_out`, `insurance_type`, `insurance_coverage`) VALUES
(123, 0, 'insurance', 'coverage');

-- --------------------------------------------------------

--
-- Table structure for table `employee_health_welfare_dependents`
--

CREATE TABLE IF NOT EXISTS `employee_health_welfare_dependents` (
  `dependent_type` varchar(30) DEFAULT NULL,
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `employee_id` int(25) DEFAULT NULL,
  `dependent_name` varchar(40) DEFAULT NULL,
  `dependent_birthdate` date DEFAULT NULL,
  `dependent_social_security` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `employee_health_welfare_dependents`
--

INSERT INTO `employee_health_welfare_dependents` (`dependent_type`, `id`, `employee_id`, `dependent_name`, `dependent_birthdate`, `dependent_social_security`) VALUES
('child', 1, 123, 'Adam', '2014-04-02', '0120120123');

-- --------------------------------------------------------

--
-- Table structure for table `employee_indian_options`
--

CREATE TABLE IF NOT EXISTS `employee_indian_options` (
  `id` varchar(25) NOT NULL,
  `options` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_pension_plan`
--

CREATE TABLE IF NOT EXISTS `employee_pension_plan` (
  `id` int(25) NOT NULL,
  `location` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_pension_plan`
--

INSERT INTO `employee_pension_plan` (`id`, `location`) VALUES
(123, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_reference`
--

CREATE TABLE IF NOT EXISTS `employee_reference` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `employee_id` int(25) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `organization` varchar(25) DEFAULT NULL,
  `position` varchar(25) DEFAULT NULL,
  `home_telephone` varchar(10) DEFAULT NULL,
  `work_phone` varchar(10) DEFAULT NULL,
  `cell_telephone` varchar(10) DEFAULT NULL,
  `date_called` date DEFAULT NULL,
  `reference_type` varchar(25) DEFAULT NULL,
  `position_held` varchar(25) DEFAULT NULL,
  `relationship_length` varchar(25) DEFAULT NULL,
  `good_absentee_record` tinyint(1) DEFAULT NULL,
  `professional` tinyint(1) DEFAULT NULL,
  `analytical_skills` tinyint(1) DEFAULT NULL,
  `trustworthy` tinyint(1) DEFAULT NULL,
  `good_work_ethics` tinyint(1) DEFAULT NULL,
  `dependable` tinyint(1) DEFAULT NULL,
  `quick_learner` tinyint(1) DEFAULT NULL,
  `motivated` tinyint(1) DEFAULT NULL,
  `good_comm_skills` tinyint(1) DEFAULT NULL,
  `good_cust_service_skills` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `employee_reference`
--

INSERT INTO `employee_reference` (`id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `organization`, `position`, `home_telephone`, `work_phone`, `cell_telephone`, `date_called`, `reference_type`, `position_held`, `relationship_length`, `good_absentee_record`, `professional`, `analytical_skills`, `trustworthy`, `good_work_ethics`, `dependable`, `quick_learner`, `motivated`, `good_comm_skills`, `good_cust_service_skills`) VALUES
(1, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_stock_ownership`
--

CREATE TABLE IF NOT EXISTS `employee_stock_ownership` (
  `id` int(25) NOT NULL,
  `location` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_stock_ownership`
--

INSERT INTO `employee_stock_ownership` (`id`, `location`) VALUES
(123, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE IF NOT EXISTS `employee_type` (
  `id` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_vacation`
--

CREATE TABLE IF NOT EXISTS `employee_vacation` (
  `id` int(25) NOT NULL,
  `vacation_start` date DEFAULT NULL,
  `vacation_end` date DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_vacation`
--

INSERT INTO `employee_vacation` (`id`, `vacation_start`, `vacation_end`, `location`) VALUES
(123, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ethnicity`
--

CREATE TABLE IF NOT EXISTS `ethnicity` (
  `id` varchar(25) NOT NULL,
  `ethnicity` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reference_type`
--

CREATE TABLE IF NOT EXISTS `reference_type` (
  `id` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referral_source`
--

CREATE TABLE IF NOT EXISTS `referral_source` (
  `id` varchar(25) NOT NULL,
  `referral_source` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `veteran_status`
--

CREATE TABLE IF NOT EXISTS `veteran_status` (
  `id` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
