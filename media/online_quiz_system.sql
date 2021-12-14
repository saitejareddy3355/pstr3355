-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2018 at 04:58 PM
-- Server version: 5.7.20
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_quiz_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `answer_quiz_id` varchar(255) NOT NULL,
  `answer_question_id` varchar(255) NOT NULL,
  `answer_user_answer` varchar(255) NOT NULL,
  `answer_correct_answer` varchar(255) NOT NULL,
  `answer_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `answer_quiz_id`, `answer_question_id`, `answer_user_answer`, `answer_correct_answer`, `answer_status`) VALUES
(1, '1', '3', 'Option 2', 'Option 2', '1'),
(2, '1', '9', 'A3', 'A3', '1'),
(3, '2', '1', 'STATIC_URL = \'/static/\'', 'STATIC_URL = \'/static/\'', '1'),
(4, '2', '4', 'Using Django Command', 'Option 2', '0'),
(5, '2', '6', 'Python Web Framework', 'Python Web Framework', '1'),
(6, '2', '7', 'HTML View', 'HTML View', '1'),
(7, '1', '3', 'Option 2', 'Option 2', '1'),
(8, '1', '9', 'A1', 'A3', '0'),
(9, '3', '3', 'Option 4', 'Option 2', '0'),
(10, '3', '9', 'A1', 'A3', '0'),
(11, '4', '3', 'Option 4', 'Option 2', '0'),
(12, '4', '9', 'A1', 'A3', '0'),
(13, '5', '3', 'Option 4', 'Option 2', '0'),
(14, '5', '9', 'A1', 'A3', '0'),
(15, '1', '3', 'Option 3', 'Option 2', '0'),
(16, '1', '9', 'A2', 'A3', '0'),
(17, '2', '3', 'Option 3', 'Option 2', '0'),
(18, '2', '9', 'A1', 'A3', '0'),
(19, '3', '3', 'Option 2', 'Option 2', '1'),
(20, '3', '9', 'A2', 'A3', '0'),
(21, '4', '3', 'Option 2', 'Option 2', '1'),
(22, '4', '9', 'A2', 'A3', '0'),
(23, '5', '1', 'STATIC_URL = \'/static/\'', 'STATIC_URL = \'/static/\'', '1'),
(24, '5', '4', 'Using ASP', 'Option 2', '0'),
(25, '5', '6', 'ASP Web Framework', 'Python Web Framework', '0'),
(26, '5', '7', 'Models', 'HTML View', '0');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`) VALUES
(1, 'PHP', 'PHP Programming Language'),
(2, 'Java', 'Java Programming Language'),
(3, 'JSP', 'JSP Programming Language'),
(4, 'Python', 'Python Programming Language'),
(5, 'Django', 'Django Programming Framework'),
(6, 'ASP', 'ASP.Net');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_desc`) VALUES
(1, 'IT Department', 'IT Department'),
(2, 'Java Developement', 'Java Developement'),
(3, 'HR Department', 'HR Department'),
(4, 'Web Developement', 'Web Developement');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `designation_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`, `designation_desc`) VALUES
(1, 'Software Engineer', 'Software Engineer'),
(2, 'Sr. Software Engineer', 'Sr. Software Engineer'),
(3, 'Team Lead', 'Team Lead'),
(4, 'Lead Engineer', 'Lead Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3nydxueq651e5e1f6fi2m7ot7qr551kt', 'MmQ2NzE1MWUzZDg5ODhlMWMwNjA1NDY0NGI5ZmQ1YWE2NmMxNjE3Nzp7InVzZXJfaWQiOjE3LCJ1c2VyX2ZpcnN0X25hbWUiOiJKYXkiLCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX2xldmVsX2lkIjoyfQ==', '2017-12-09 16:28:09'),
('7xwuqbgziavwdy1pxkb1l9gw3ju4qqdi', 'YTE4ODU5NzhiNGQ0ZjQzYzRlYmUzMTM2ZjI2ZmFkYzQ1NzU1MWRkYTp7InVzZXJfaWQiOjI4LCJ1c2VyX2ZpcnN0X25hbWUiOiJhc2RmIiwiYXV0aGVudGljYXRlZCI6dHJ1ZSwidXNlcl9sZXZlbF9pZCI6MX0=', '2018-03-20 16:58:10'),
('8lg6u5d7u128egy5kj72ysszh182p908', 'NmYwMTg1YzkwNjMzOGM0MjEwNTlkNWIyN2U1YTY1YjA5MTYwNzA3MTp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-12-05 12:19:43'),
('a4bleeve4vy4s8yuqgcqb4lyd6z8cmdj', 'YzgyMjc0ZThmZTA5ODJlNTg2YjUyZWU5ZjMxYzU0MTVhMzE1MDhjMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-09-19 17:52:21'),
('eg60bzzadg4n1ujp7gs3di2mjycaskqx', 'MmQ2NzE1MWUzZDg5ODhlMWMwNjA1NDY0NGI5ZmQ1YWE2NmMxNjE3Nzp7InVzZXJfaWQiOjE3LCJ1c2VyX2ZpcnN0X25hbWUiOiJKYXkiLCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX2xldmVsX2lkIjoyfQ==', '2018-03-07 17:37:10'),
('i5307nyqqp0qrqq0ra7rvhketcp4j9va', 'NmYwMTg1YzkwNjMzOGM0MjEwNTlkNWIyN2U1YTY1YjA5MTYwNzA3MTp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-12-05 18:18:27'),
('jepc0gbw67i143r8kh9wxk20un3p6p5l', 'YzgyMjc0ZThmZTA5ODJlNTg2YjUyZWU5ZjMxYzU0MTVhMzE1MDhjMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-09-19 17:45:30'),
('l5jxmb32y1fhd78zmimye8pkfqlvmx07', 'ZDYxMDkzOWE2M2Q1ODgxMTQyZjFiYjMyMTc4NzA1ZDJmOWE3OWE1ODp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2ZpcnN0X25hbWUiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2V9', '2017-12-09 17:00:32'),
('qi4jui1wag7y5kjd3nal07b1h2jlc9ia', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-07-21 17:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `employee_project`
--

CREATE TABLE `employee_project` (
  `ep_id` int(11) NOT NULL,
  `ep_project_id` varchar(255) NOT NULL,
  `ep_employee_id` varchar(255) NOT NULL,
  `ep_from_date` varchar(255) NOT NULL,
  `ep_to_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `level_sccore` varchar(255) NOT NULL,
  `level_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`, `level_sccore`, `level_description`) VALUES
(1, 'Beginner', 'Level 1', 'Beginner'),
(2, 'Intermediate', 'Level 1', ''),
(3, 'Advanced', '', 'Advanced'),
(4, 'Expert', '', 'Expert');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_emp_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` int(11) NOT NULL DEFAULT '3',
  `login_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_emp_id`, `login_user`, `login_password`, `login_level`, `login_email`) VALUES
(1, 0, 'admin', 'test', 1, 'kaushal.rahuljaiswal@gmail.com'),
(6, 1002, 'kaushal', 'test', 3, 'kaushal.rahuljaiswal@gmail.com'),
(7, 1003, 'kaushal123', 'test', 3, 'aggarwal.neha@gmail.com'),
(8, 1004, 'neha', 'test', 3, 'aggarwal.neha@gmail.com'),
(9, 1005, 'test', 'test', 3, 'aggarwal.neha@gmail.com'),
(10, 1006, 'atul', 'test', 3, 'aatul@gmail.com'),
(11, 1007, 'sumit1', 'test', 3, 'sumit.singh@gmail.com'),
(12, 1008, 'neha123', 'test', 3, 'aggarwal.neha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `question_topic_id` varchar(255) NOT NULL,
  `question_title` text NOT NULL,
  `question_option1` text NOT NULL,
  `question_option2` text NOT NULL,
  `question_option3` text NOT NULL,
  `question_option4` text NOT NULL,
  `question_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question_topic_id`, `question_title`, `question_option1`, `question_option2`, `question_option3`, `question_option4`, `question_answer`) VALUES
(1, '4', 'Explain how you can setup static files in Django?', '{% load static %}', 'STATIC_URL = \'/static/\'', 'STATICFILES_FINDERS', 'from django.conf import settings', 'STATIC_URL = \'/static/\''),
(2, '5', 'Mention the architecture of Django architecture?', 'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 2'),
(3, '7', 'Why Django should be used for web-development?', 'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 2'),
(4, '4', 'Explain how you can create a project in Django?', 'Using Java Command', 'Using PHP Command', 'Using ASP', 'Using Django Command', 'Option 2'),
(5, '3', 'Give an example how you can write a VIEW in Django?', 'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 2'),
(6, '4', 'Explain what is Django', 'Python Web Framework', 'PHP Web Framework', 'Java Web Framework', 'ASP Web Framework', 'Python Web Framework'),
(7, '4', ' Mention what does the Django templates consists of?', 'Python Code', 'HTML View', 'Models', 'Database Connection', 'HTML View'),
(8, '5', 'Explain the use of session framework in Django?', 'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 2'),
(9, '7', 'What is form  ?', 'A1', 'A2', 'A3', 'A4', 'A3'),
(10, '9', 'ASP Level 1', 'Answer 1', 'Answer 2', 'Answer 3', 'Answer 4', 'Answer 1');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_topic_id` varchar(255) NOT NULL,
  `quiz_user_id` varchar(255) NOT NULL,
  `quiz_date` varchar(255) NOT NULL,
  `quiz_result` varchar(255) DEFAULT NULL,
  `quiz_marks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_topic_id`, `quiz_user_id`, `quiz_date`, `quiz_result`, `quiz_marks`) VALUES
(1, '7', '17', '2018-02-21', 'Fail', '0 out of 2'),
(2, '7', '17', '2018-02-21', 'Fail', '0 out of 2'),
(3, '7', '17', '2018-02-21', 'Pass', '2 out of 2'),
(4, '7', '17', '2018-02-21', 'Fail', '1 out of 2'),
(5, '4', '17', '2018-03-06', 'Fail', '1 out of 4');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL,
  `salary_user_id` varchar(255) NOT NULL,
  `salary_month` varchar(255) NOT NULL,
  `salary_working_days` varchar(255) NOT NULL,
  `salary_basic` varchar(255) NOT NULL,
  `salary_hra` varchar(255) NOT NULL,
  `salary_mediclaim` varchar(255) NOT NULL,
  `salary_ta` varchar(255) NOT NULL,
  `salary_da` varchar(255) NOT NULL,
  `salary_reimbursement` varchar(255) NOT NULL,
  `salary_ca` varchar(255) NOT NULL,
  `salary_others` varchar(255) NOT NULL,
  `salary_dpf` varchar(255) NOT NULL,
  `salary_dtax` varchar(255) NOT NULL,
  `salary_dedc` varchar(255) NOT NULL,
  `salary_total` varchar(255) NOT NULL,
  `salary_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_id`, `salary_user_id`, `salary_month`, `salary_working_days`, `salary_basic`, `salary_hra`, `salary_mediclaim`, `salary_ta`, `salary_da`, `salary_reimbursement`, `salary_ca`, `salary_others`, `salary_dpf`, `salary_dtax`, `salary_dedc`, `salary_total`, `salary_year`) VALUES
(1, '10', '6', '21', '12000', '3200', '500', '550', '610', '900', '700', '940', '1100', '1100', '2200', '20500', '2012'),
(2, '11', '4', '21', '12000', '3200', '500', '550', '610', '900', '700', '940', '1100', '1100', '2100', '55000', '2012'),
(3, '10', '5', '21', '12000', '3200', '500', '550', '610', '900', '700', '940', '1100', '1100', '2100', '55000', '2012'),
(4, '11', '3', '21', '12000', '3200', '500', '550', '610', '900', '700', '940', '1100', '1100', '2100', '55000', '2012'),
(5, '10', '1', '21', '12000', '3200', '500', '550', '610', '900', '700', '940', '1100', '1100', '2100', '55000', '2012'),
(6, '10', '2', '21', '12000', '3200', '500', '550', '610', '900', '700', '940', '1100', '1100', '2100', '55000', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `salutions`
--

CREATE TABLE `salutions` (
  `sl_id` int(11) NOT NULL,
  `sl_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salutions`
--

INSERT INTO `salutions` (`sl_id`, `sl_name`) VALUES
(1, 'Mr.'),
(2, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_emp_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topics_id` int(11) NOT NULL,
  `topics_course_id` int(11) NOT NULL,
  `topics_level_id` varchar(255) NOT NULL,
  `topics_name` text NOT NULL,
  `topics_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topics_id`, `topics_course_id`, `topics_level_id`, `topics_name`, `topics_desc`) VALUES
(1, 4, '1', 'How to install Django', 'How to install Django'),
(2, 4, '2', 'Models and databases', 'Models and databases'),
(3, 5, '4', 'Handling HTTP requests', 'Handling HTTP requests'),
(4, 5, '2', 'Working with forms', 'Working with forms'),
(5, 5, '3', 'Templates', 'Templates'),
(6, 4, '4', 'Class-based views', 'Class-based views'),
(7, 5, '1', 'Migrations', 'Migrations'),
(8, 4, '3', 'Managing files', 'Managing files'),
(9, 6, '1', 'ASP Level 1', 'ASP Level 1');

-- --------------------------------------------------------

--
-- Table structure for table `users_city`
--

CREATE TABLE `users_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_city`
--

INSERT INTO `users_city` (`city_id`, `city_name`) VALUES
(1, 'Allahabad'),
(2, 'Varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `users_country`
--

CREATE TABLE `users_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_country`
--

INSERT INTO `users_country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`role_id`, `role_title`, `role_description`) VALUES
(1, 'Tutor', 'Admin Roles and Permissions'),
(2, 'Student', 'Student Roles and Permission');

-- --------------------------------------------------------

--
-- Table structure for table `users_state`
--

CREATE TABLE `users_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_state`
--

INSERT INTO `users_state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_first_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_state` int(11) NOT NULL,
  `user_country` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_first_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`, `user_last_name`) VALUES
(8, 1, 'admin', 'test', 'Amit', 'Allahabad', 'Lunckonw', 1, 1, 1, 'amit@gmail.com', '9878987678', 'Male', '2 July,1987', '/uploads/p1.jpg', 'Kumar'),
(10, 2, 'manasa', 'test', 'Manasa Singh', 'House no : 768', 'Noida', 2, 1, 1, 'manasa@gmail.com', '9876543212', 'Female', '18 January,1968', '/uploads/p2.jpg', '1'),
(11, 2, 'aman', 'test', 'Aman Kumar', 'House No : 355, Sector 23', 'Noida', 1, 2, 1, 'aman@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p3.jpg', '1'),
(14, 2, 'pawan', 'test', 'Pawan Kumar', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'pawan@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p4.jpg', '1'),
(15, 1, 'vishal', 'test', 'Vishal Singh', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'vvishal@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p9.jpg', '1'),
(16, 2, 'alok', 'test', 'Alok Kumar', 'Pasco House,', '', 1, 1, 1, 'alok@gmail.com', '9876543212', 'Male', '17 July,1998', '/uploads/p6.jpg', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD PRIMARY KEY (`ep_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `salutions`
--
ALTER TABLE `salutions`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topics_id`);

--
-- Indexes for table `users_city`
--
ALTER TABLE `users_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `users_country`
--
ALTER TABLE `users_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users_state`
--
ALTER TABLE `users_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_project`
--
ALTER TABLE `employee_project`
  MODIFY `ep_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salutions`
--
ALTER TABLE `salutions`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_city`
--
ALTER TABLE `users_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_country`
--
ALTER TABLE `users_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_state`
--
ALTER TABLE `users_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
