-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2014 at 08:02 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` varchar(25) NOT NULL DEFAULT '',
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `permission` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `permission`) VALUES
('1234567890123456789012345', 'Brooke', 'Engle', 1);

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
  `401k_location` varchar(50) NOT NULL,
  `id` varchar(25) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `last_modified` date NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `social_security` varchar(9) NOT NULL,
  `cell_phone` varchar(10) NOT NULL,
  `home_phone` varchar(10) NOT NULL,
  `driver_license` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `driver_license_state` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `local_tax` tinyint(1) NOT NULL,
  `bank_account` varchar(25) NOT NULL,
  `bank_type` varchar(25) NOT NULL,
  `marital_status` varchar(25) NOT NULL,
  `accept_stc_policy` tinyint(1) NOT NULL,
  `accept_stc_policy_date` date NOT NULL,
  `branch` varchar(25) NOT NULL,
  `dept` varchar(25) NOT NULL,
  `file_number` varchar(25) NOT NULL,
  `company_email` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `adjusted_seniority` date NOT NULL,
  `job_title` varchar(25) NOT NULL,
  `officer` tinyint(1) NOT NULL,
  `eeo_class` varchar(25) NOT NULL,
  `pay_type_salary` tinyint(1) NOT NULL,
  `resident_psd_code` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `ethnicity` varchar(25) NOT NULL,
  `veteran_status` varchar(25) NOT NULL,
  `fringe_cell_phone` tinyint(1) NOT NULL,
  `fringe_travel_stipend` tinyint(1) NOT NULL,
  `fringe_medical_prem_deduction` tinyint(1) NOT NULL,
  `employment_proposal` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `hire_date` date NOT NULL,
  `w4_exemptions` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`401k_location`, `id`, `photo`, `last_modified`, `first_name`, `last_name`, `address`, `city`, `state`, `zip`, `social_security`, `cell_phone`, `home_phone`, `driver_license`, `issue_date`, `expiration_date`, `driver_license_state`, `email`, `local_tax`, `bank_account`, `bank_type`, `marital_status`, `accept_stc_policy`, `accept_stc_policy_date`, `branch`, `dept`, `file_number`, `company_email`, `type`, `adjusted_seniority`, `job_title`, `officer`, `eeo_class`, `pay_type_salary`, `resident_psd_code`, `gender`, `ethnicity`, `veteran_status`, `fringe_cell_phone`, `fringe_travel_stipend`, `fringe_medical_prem_deduction`, `employment_proposal`, `status`, `hire_date`, `w4_exemptions`) VALUES
('', '123456789012345678901234', '', '2014-02-13', 'Brooke', 'Engle', '580 Haysmill Road', 'Meyersdale', 'PA', '15552', '123456789', '8142339185', '8146348138', '1234567', '2013-05-13', '2017-05-13', 'Pennsylvania', 'ENG1585@calu.edu', 1, 'Somerset Trust', 'checking', 'married', 1, '2014-02-13', 'Johnstown', 'IT', '12345', 'engle@somersettrust.com', 'full time', '2014-02-13', 'DBA', 1, '123', 1, '123abc', 'Female', 'White', '0', 1, 1, 1, 'i don''t know', 'active', '2014-01-01', 'i don''t know');

-- --------------------------------------------------------

--
-- Table structure for table `employee_affirmative_action`
--

CREATE TABLE IF NOT EXISTS `employee_affirmative_action` (
  `positions_applied` varchar(25) NOT NULL,
  `referral_source` varchar(25) NOT NULL,
  `referral_extra_info` varchar(25) NOT NULL,
  `employee_ethnicity` varchar(25) NOT NULL,
  `american_indian_options` varchar(25) NOT NULL,
  `notes` varchar(25) NOT NULL,
  `afirmative_action_completed_by_sig` varchar(25) NOT NULL,
  `affirmative_action_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_health_welfare`
--

CREATE TABLE IF NOT EXISTS `employee_health_welfare` (
  `id` varchar(25) NOT NULL,
  `opt_out` tinyint(1) NOT NULL,
  `insurance_type` varchar(25) NOT NULL,
  `insurance_coverage` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_health_welfare_dependents`
--

CREATE TABLE IF NOT EXISTS `employee_health_welfare_dependents` (
  `id` varchar(25) NOT NULL,
  `dependent_first)name` varchar(25) NOT NULL,
  `dependent_last_name` varchar(25) NOT NULL,
  `dependent_middle_name` varchar(25) NOT NULL,
  `dependent_dob` date NOT NULL,
  `dependent_ssn` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_reference`
--

CREATE TABLE IF NOT EXISTS `employee_reference` (
  `id` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `organization` varchar(25) NOT NULL,
  `position` varchar(25) NOT NULL,
  `home_telephone` varchar(10) NOT NULL,
  `work_phone` varchar(10) NOT NULL,
  `cell_telephone` varchar(10) NOT NULL,
  `date_called` date NOT NULL,
  `reference_type` varchar(25) NOT NULL,
  `position_held` varchar(25) NOT NULL,
  `relationship_length` varchar(25) NOT NULL,
  `good_absentee_record` tinyint(1) NOT NULL,
  `professional` tinyint(1) NOT NULL,
  `analytical_skills` tinyint(1) NOT NULL,
  `trustworthy` tinyint(1) NOT NULL,
  `good_work_ethics` tinyint(1) NOT NULL,
  `dependable` tinyint(1) NOT NULL,
  `quick_learner` tinyint(1) NOT NULL,
  `motivated` tinyint(1) NOT NULL,
  `good_comm_skills` tinyint(1) NOT NULL,
  `good_cust_service_skills` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_stock_ownership`
--

CREATE TABLE IF NOT EXISTS `employee_stock_ownership` (
  `id` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` varchar(25) NOT NULL,
  `vacation_start` date NOT NULL,
  `vacation_end` date NOT NULL,
  `location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
