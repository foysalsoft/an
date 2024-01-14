-- phpMyAdmin SQL Dump
-- version 5.2.2-dev+20230408.0ff3f10134
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 10:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `ABOUT_NO` int(11) NOT NULL,
  `A_DESCRIPTION` text NOT NULL,
  `A_IMG` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`ABOUT_NO`, `A_DESCRIPTION`, `A_IMG`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(13, 'Radiant Communications Limited (R C L) is a licensed Internet Service Provider (ISP) approved by the Bangladesh Telecommunication Regulatory Commission (BTRC). \r\n\r\nRadiant Communications Limited (R C L) was established in 2005 to market the IP backbone connectivity based on satellite.  Right now, we incorporated the IP-Interconnectivity service using Submarine cable backbone and ITC Provider. \r\n\r\nHeadquartered in Banani, Dhaka, R C L serves the metropolitan customer base with representative country-wide offices in Bangladesh. Supported by a management team of highly skilled and experienced professionals, RCL offers a wide range of services, including IP transit based on ITC and Sub-marine cable, Fiber optics-based services and solutions as well as IPLC international connectivity.\r\n\r\nOur mission is to provide trouble-free access to the internet and all the opportunities it has to offer. We understand that in the internet world, speed is happiness, which is why we offer fast and reliable services that never sleep. \r\n\r\nWe are passionate to make our country as Smart Bangladesh. To make smart our country we strive to develop updated services and facilities to remain focused on providing online access to the world of information, business, excitement, and lifestyle.\r\n', 'd41d8cd98f00b204e9800998ecf8427e1702471398.jpg', 3, '2023-12-13 12:43:18', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `applicant_no` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(300) NOT NULL,
  `father` varchar(150) NOT NULL,
  `mother` varchar(150) NOT NULL,
  `nid` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `job_post` varchar(150) NOT NULL,
  `maritalStatus` varchar(150) NOT NULL,
  `email` varchar(260) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(300) NOT NULL,
  `expected_salary` double NOT NULL,
  `joining_date` date NOT NULL,
  `switch_job` varchar(500) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `CONTACT_NO` int(11) NOT NULL,
  `EMAIL` text NOT NULL,
  `PHONE` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`CONTACT_NO`, `EMAIL`, `PHONE`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, 'xxxx@xxx.com', '000-000000', 1, '2018-11-26 13:05:49', 1, 1, '2024-01-12 21:27:23', 0, 0, '2018-11-26 13:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `coverage_area`
--

CREATE TABLE `coverage_area` (
  `CA_NO` int(11) NOT NULL,
  `DISTRICT_NO` int(11) NOT NULL,
  `UPAZILA_NO` int(11) NOT NULL,
  `AREA_IMG` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coverage_area`
--

INSERT INTO `coverage_area` (`CA_NO`, `DISTRICT_NO`, `UPAZILA_NO`, `AREA_IMG`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(6, 1, 8, '1680412242savar.jpg', 2, '2023-04-02 07:10:42', 0, NULL, NULL, 1, 1, '2023-05-25 10:36:03'),
(7, 1, 7, '1680412828eqms.jpg', 2, '2023-04-02 07:20:28', 0, NULL, NULL, 1, 1, '2023-05-25 10:36:00'),
(8, 1, 7, '1680412848ucago.png', 2, '2023-04-02 07:20:48', 0, NULL, NULL, 1, 2, '2023-04-02 07:23:13'),
(9, 2, 9, '1680412895qatar.png', 2, '2023-04-02 07:21:35', 0, NULL, NULL, 1, 1, '2023-05-25 10:44:47'),
(10, 1, 10, '1685010850Banani.jpg', 1, '2023-05-25 10:34:10', 0, NULL, NULL, 0, NULL, NULL),
(11, 1, 12, '16850108787197_gulshan-club.jpg', 1, '2023-05-25 10:34:38', 0, NULL, NULL, 0, NULL, NULL),
(12, 1, 19, '1685011273Rose-Garden-Palace-Dhaka-05.jpg', 1, '2023-05-25 10:41:13', 0, NULL, NULL, 0, NULL, NULL),
(13, 1, 13, '1685011487dreamstime_xxl_55742473.jpg', 1, '2023-05-25 10:44:47', 0, NULL, NULL, 0, NULL, NULL),
(14, 2, 9, '1685012663khulna-test.jpg', 1, '2023-05-25 11:04:23', 0, NULL, NULL, 1, 3, '2023-11-06 05:02:29'),
(15, 10, 18, '1685016261download.jpg', 1, '2023-05-25 12:04:21', 0, NULL, NULL, 0, NULL, NULL),
(16, 10, 17, '1685016309Bogra-Tourist-Spots.webp', 1, '2023-05-25 12:05:09', 0, NULL, NULL, 0, NULL, NULL),
(17, 1, 21, '1685168897Dhanmindi.jpg', 1, '2023-05-27 06:09:13', 0, 1, '2023-05-27 06:28:17', 0, NULL, NULL),
(18, 1, 42, '1685169150rupayan_photo_noor_3.jpg', 1, '2023-05-27 06:32:30', 0, NULL, NULL, 0, NULL, NULL),
(19, 1, 27, '1685169249aerial-view-of-an-empty-junction-road-at-night-in-jatrabari-thana-district-in-dhaka-city-bangladesh-AAEF10805.jpg', 1, '2023-05-27 06:34:09', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `DISTRICT_NO` int(11) NOT NULL,
  `DISTRICT_NAME` text NOT NULL,
  `SERIAL` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DISTRICT_NO`, `DISTRICT_NAME`, `SERIAL`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, 'Dhaka', 1, 2, '2023-03-25 09:18:36', 1, 1, '2023-11-08 11:08:22', 0, NULL, NULL),
(2, 'Khulna', 0, 2, '2023-03-25 09:18:44', 1, 1, '2023-04-30 11:38:13', 0, NULL, NULL),
(3, 'Borishal', 0, 2, '2023-03-25 09:18:56', 0, NULL, NULL, 1, 2, '2023-03-25 09:21:31'),
(4, 'Barishal', 0, 2, '2023-03-30 09:06:58', 1, 1, '2023-04-30 11:37:59', 0, NULL, NULL),
(5, 'Kishoreganj', 0, 1, '2023-04-30 11:36:35', 0, NULL, NULL, 0, NULL, NULL),
(6, 'Narshingdi', 0, 1, '2023-04-30 11:37:23', 0, NULL, NULL, 0, NULL, NULL),
(7, 'Gazipur', 0, 1, '2023-04-30 11:37:31', 0, NULL, NULL, 0, NULL, NULL),
(8, 'test', 0, 1, '2023-04-30 11:47:02', 0, NULL, NULL, 1, 1, '2023-04-30 11:47:06'),
(9, 'Brahmanbaria', 0, 1, '2023-04-30 12:21:54', 0, NULL, NULL, 0, NULL, NULL),
(10, 'Bogura', 2, 1, '2023-04-30 12:23:03', 1, 1, '2023-11-08 11:08:33', 0, NULL, NULL),
(11, 'Feni', 0, 1, '2023-04-30 12:25:25', 0, NULL, NULL, 0, NULL, NULL),
(12, 'Habiganj', 0, 3, '2023-11-06 04:42:38', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `improve`
--

CREATE TABLE `improve` (
  `PRIVACY_NO` int(11) NOT NULL,
  `PRIVACY` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `improve`
--

INSERT INTO `improve` (`PRIVACY_NO`, `PRIVACY`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, '<p class=\"MsoNormal\"><strong><span lang=\"EN-GB\" style=\"font-size: 18.0pt; line-height: 107%; font-family: \'Cambria\',serif;\">Opportunities for growth our professionalism in workplace.</span></strong></p>\r\n<p class=\"MsoNormal\"><u><span lang=\"EN-GB\" style=\"font-size: 14.0pt; line-height: 107%; font-family: \'Bell MT\',serif;\">What are opportunities for growth?</span></u></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; text-justify: inter-ideograph;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Opportunities for growth refer to circumstances that make it possible for you to progress in your career. These opportunities provide you with avenues for expanding your knowledge base and skill set as a professional and typically take the form of new roles and experiences. Although they may seem challenging, taking advantage of growth opportunities can be critical to your career advancement.</span><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; mso-no-proof: yes;\"><!--[endif]--></span></p>\r\n<p class=\"MsoNormal\"><u><span lang=\"EN-GB\" style=\"font-size: 14.0pt; line-height: 107%; font-family: \'Cambria\',serif;\"><img src=\"data:image/jpeg;base64,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', 1, '2024-01-12 21:52:23', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `institution_no` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `institution` varchar(256) NOT NULL,
  `examination` varchar(256) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `year_of_study` varchar(15) NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`institution_no`, `applicant_id`, `institution`, `examination`, `subject`, `year_of_study`, `IS_UPDATED`, `IS_DELETED`) VALUES
(72, 63, 'MBHS', 'SSC', 'Science', '2011', 0, 0),
(73, 62, 'MBHS', 'SSC', 'Science', '2010', 0, 0),
(74, 62, 'BCIC', 'HSC', 'Science', '2012', 0, 0),
(75, 64, 'MBHS', 'SSC', 'Science', '2010', 0, 0),
(76, 64, 'BoBy Schoold', 'HSC', 'Science', '2011', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` int(11) NOT NULL,
  `email` varchar(260) NOT NULL,
  `verification_token` varchar(360) NOT NULL,
  `is_verified` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `email`, `verification_token`, `is_verified`) VALUES
(40, 'tareq.rahman.shovon@gmail.com', '799e3da5fc06c76f08d74a04e173322be14e63a93044f35b9212c22e9b1d51fe', 0),
(41, 'tareq.rahman.shovon@gmail.com', '80d93c7228621001ef50f7bbd12adbdb4c6ec30fe373659352a545328b62ae1a', 0),
(42, 'trahman393@gmail.com', 'c2b1020d85a07f68c69bd06d37926b074fdffec6ba1758a3fdb29b42cf39ed86', 0),
(43, 'tareq.rahman.shovon@gmail.com', 'cfce3f0b068d7fe2cb5dfc93eff9b8ad74f5aa7e06f93ce08ad27269d14ea602', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `job_experience_no` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `post_name` varchar(256) NOT NULL,
  `company` varchar(256) NOT NULL,
  `job_duration` varchar(15) NOT NULL,
  `job_description` varchar(500) NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`job_experience_no`, `applicant_id`, `post_name`, `company`, `job_duration`, `job_description`, `IS_UPDATED`, `IS_DELETED`) VALUES
(78, 63, 'Support Executive', 'ACI Limited', '2022', 'test', 0, 0),
(79, 62, 'Executive', 'ABC Limited', '1 year', '•  Reviewing financial documents to identify inaccuracies\r\n•  Analyzing financial data and tracing discrepancies\r\n•  Forecasting and preventing financial frauds\r\n', 0, 0),
(80, 62, 'Support Executive', 'ACI Motors', '2020-2022', '•  Reviewing financial documents to identify inaccuracies\r\n•  Analyzing financial data and tracing discrepancies\r\n•  Forecasting and preventing financial frauds\r\n', 0, 0),
(81, 64, 'Support Executive', 'ACI Limited', '2022', 'testing', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `JOB_POST_NO` int(11) NOT NULL,
  `JOB_POST` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`JOB_POST_NO`, `JOB_POST`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(11, '<p><span style=\"font-family: \'times new roman\', times, serif;\">Radiant Communications Ltd (RCL). is one of the best performing Internet Service and Solution provider in Bangladesh. Providing IP service based on Satellite and Submarine Cable [SEA-ME-WE4] serving the internet community excellently since 2004. Radiant Communications Ltd. presently serving the metropolitan customer based in Dhaka, Chittagong, Bogra, Sylhet and Rajshahi with its highly skilled professionals.&nbsp;</span></p>', 1, '2023-05-02 11:36:13', 0, NULL, NULL, 1, 1, '2023-05-03 05:39:43'),
(12, '<p><strong>Currently, No Vacancy is Available.&nbsp;</strong></p>', 1, '2023-05-03 05:39:43', 1, 1, '2023-11-08 11:12:26', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `user_no` int(11) NOT NULL,
  `pass` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `user_type_no` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `verification_token` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_user`
--

INSERT INTO `job_user` (`user_no`, `pass`, `user_email`, `user_type_no`, `is_active`, `verification_token`) VALUES
(35, '123456', 'lokmanhossainnahid@gmail.com', 1, 1, '3b64f27b988d95731b0c4f06fc9bda6ed24a22c9a95a934a1899ecc9d3d1aba0'),
(38, 'hello', 'tareq.rahman.shovon@gmail.com', 1, 0, '3fb3b552bffb5e29770534a9c1a69b17049062e949d0021dd3da066c484caaa7'),
(39, '1234', 'hasan@radiantbd.com', 1, 1, '132b8ca1c91e71163122090605c6fa7865bdc943c6c056f52b1c5ac905863629');

-- --------------------------------------------------------

--
-- Table structure for table `make_cv`
--

CREATE TABLE `make_cv` (
  `PRIVACY_NO` int(11) NOT NULL,
  `PRIVACY` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `make_cv`
--

INSERT INTO `make_cv` (`PRIVACY_NO`, `PRIVACY`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><iframe style=\"width: 653px; height: 366px;\" src=\"https://www.youtube.com/embed/_fP43gcBywU\" width=\"653\" height=\"366\" allowfullscreen=\"allowfullscreen\"></iframe></strong></p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Individual Data:&nbsp;</strong></p>\r\n<p class=\"MsoNormal\">In corporate your complete name, telephone number, email address, and area (city or city and country). You can likewise add a LinkedIn profile or other expert online entertainment joins in the event that they are important.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Individual Articulation or Goal</strong>:</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Compose a short assertion featuring your profession objectives, abilities, and what you offer that would be useful. This part is discretionary however can be helpful to provide bosses with a speedy outline of your goals.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Education:</strong></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>List your instructive foundation in turn around sequential request (latest first).</p>\r\n<p class=\"MsoNormal\">Incorporate the name of the establishment, degree procured, major, graduation date, and any pertinent distinctions or accomplishments.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Work Insight</strong>:</p>\r\n<p class=\"MsoNormal\">List your work insight in turn around sequential request.</p>\r\n<p class=\"MsoNormal\">Incorporate the name of the organization, your work title, the dates you worked there, and a short portrayal of your obligations and accomplishments.</p>\r\n<p class=\"MsoNormal\">Use activity action words to begin every list item in depicting your obligations.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Skills:</strong></p>\r\n<p class=\"MsoNormal\">Partition your abilities into classifications like specialized abilities, delicate abilities, and language capability.</p>\r\n<p class=\"MsoNormal\">Tailor the abilities segment to match the prerequisites of the gig you\'re applying for.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Affirmations and Preparing:</strong></p>\r\n<p class=\"MsoNormal\">If appropriate, list any applicable affirmations, studios, or preparing programs you have finished.</p>\r\n<p class=\"MsoNormal\">Projects (if significant):</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Incorporate any huge ventures you\'ve chipped away at, particularly assuming that they show your abilities and experience.</p>\r\n<p class=\"MsoNormal\">Grants and Respects (if appropriate):</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">List any honors or praises you have gotten that are applicable to your expert life.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Distributions or Introductions (if appropriate):</strong></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Incorporate any distributions or introductions you have added to, particularly on the off chance that they are pertinent to your field.</p>\r\n<p class=\"MsoNormal\">Languages:</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Assuming you are capable in dialects other than your local language, notice them alongside your capability level.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Leisure activities and Interests (discretionary):</strong></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Consider including a short segment about your leisure activities and interests. This can serve to exhibit your character and give ice breakers during interviews.</p>\r\n<p class=\"MsoNormal\">References:</p>\r\n<p class=\"MsoNormal\">Incorporate a proclamation like \"References accessible upon demand.\" This is a standard practice, and you can give references when mentioned.</p>\r\n<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\">Organizing Tips:</strong></p>\r\n<p class=\"MsoNormal\">Keep your CV compact and preferably restrict it to a couple of pages.</p>\r\n<p class=\"MsoNormal\">Utilize an expert textual style and keep a perfect, simple to-understand design.</p>\r\n<p class=\"MsoNormal\">Be predictable with arranging all through your CV.</p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Calibri\',sans-serif; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Save and present your CV in a typical configuration, like PDF.</span></p>', 1, '2024-01-12 21:45:39', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `office_visit`
--

CREATE TABLE `office_visit` (
  `OFFICE_VISIT_NO` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `OFFICE_LEAVE` datetime DEFAULT NULL,
  `BACK_IN` datetime DEFAULT NULL,
  `WHERE_TO_GO` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office_visit`
--

INSERT INTO `office_visit` (`OFFICE_VISIT_NO`, `CREATED_BY`, `CREATED_ON`, `OFFICE_LEAVE`, `BACK_IN`, `WHERE_TO_GO`) VALUES
(10, 2, '2023-06-05 12:48:10', '2023-06-05 12:48:10', '2023-06-05 12:48:31', 'going to eat singara...'),
(11, 2, '2023-06-05 12:48:40', '2023-06-05 12:48:40', '2023-06-05 12:48:44', 'going for a walk.. need to refresh myself!'),
(12, 37, '2023-06-05 15:13:39', '2023-06-05 15:13:39', NULL, 'TEST');

-- --------------------------------------------------------

--
-- Table structure for table `our_service`
--

CREATE TABLE `our_service` (
  `SERVICE_NO` int(11) NOT NULL,
  `SERVICE_TITLE` text NOT NULL,
  `SERVICE_DESCRIPTION` text NOT NULL,
  `SERVICE_IMG` varchar(200) NOT NULL,
  `URL` varchar(556) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `our_service`
--

INSERT INTO `our_service` (`SERVICE_NO`, `SERVICE_TITLE`, `SERVICE_DESCRIPTION`, `SERVICE_IMG`, `URL`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(11, 'Interview Preparation', '•	Research the Company:\r\n•	Learn about the company\'s history, values, and mission. Understand its products, services, and recent achievements. This knowledge demonstrates your genuine interest and commitment.\r\n•	Know the Job Description:\r\n•	Carefully review the job description to identify the key skills and qualifications required. Tailor your responses to showcase how your experiences align with the specific requirements.\r\n•	Understand the Industry:\r\n•	Stay informed about industry trends, challenges, and competitors. This knowledge helps you discuss the broader context and show that you are aware of the company\'s position in the industry.\r\n', '1705089306Interview-Preparation-Tips.png', 'interview_details.php', 1, '2024-01-12 20:55:06', 0, NULL, NULL, 0, NULL, NULL),
(12, 'Build Up Personality', 'Building up your personality is a continuous process that involves self-awareness, self-reflection, and intentional efforts to develop positive traits and behaviors. Here are some practical steps to help you build up your -personality.', '1705089563build_personality.jpg', 'build_up.php', 1, '2024-01-12 20:59:23', 0, NULL, NULL, 0, NULL, NULL),
(13, 'Method to Make CV', 'Individual Data:\r\nIn corporate your complete name, telephone number, email address, and area (city or city and country).\r\nYou can likewise add a LinkedIn profile or other expert online entertainment joins in the event that they\r\nare important.\r\nIndividual Articulation or Goal:\r\nCompose a short assertion featuring your profession objectives, abilities, and what you offer that would\r\nbe useful. This part is discretionary however can be helpful to provide bosses with a speedy outline of\r\nyour goals.', '1705090147cv_write.jpeg', 'make.php', 1, '2024-01-12 21:09:07', 0, NULL, NULL, 0, NULL, NULL),
(14, 'Professionalism in Workplace.', 'What are opportunities for growth?\r\nOpportunities for growth refer to circumstances that make it possible for you to progress\r\nin your career. These opportunities provide you with avenues for expanding your\r\nknowledge base and skill set as a professional and typically take the form of new roles\r\nand experiences. Although they may seem challenging, taking advantage of growth\r\nopportunities can be critical to your career advancement.', '1705090294professionalism-in-the-workplace.jpg', 'improve_all.php', 1, '2024-01-12 21:11:34', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `PACKAGE_NO` int(11) NOT NULL,
  `TITLE` varchar(150) NOT NULL,
  `SUB_TITLE` varchar(150) NOT NULL,
  `PRICE` int(20) NOT NULL,
  `BANDWIDTH` varchar(150) NOT NULL,
  `YOUTUBE_CACHE` varchar(150) NOT NULL,
  `FACEBOOK_CACHE` varchar(150) NOT NULL,
  `INSTALLATION_FEE` int(11) NOT NULL,
  `BDIX` int(11) NOT NULL,
  `MIGRATION` int(11) NOT NULL,
  `REAL_IP` varchar(150) NOT NULL,
  `SL_NUM` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`PACKAGE_NO`, `TITLE`, `SUB_TITLE`, `PRICE`, `BANDWIDTH`, `YOUTUBE_CACHE`, `FACEBOOK_CACHE`, `INSTALLATION_FEE`, `BDIX`, `MIGRATION`, `REAL_IP`, `SL_NUM`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(4, 'Offer-3000', '3 months free', 3000, '35', 'Buffer Free', 'Buffer Free', 0, 100, 0, 'YES', 1, 2, '2023-04-03 09:41:47', 1, 1, NULL, 0, NULL, NULL),
(5, 'Offer-2100', '60 days', 2100, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 2, 2, '2023-04-03 09:49:10', 1, 1, NULL, 0, NULL, NULL),
(6, 'Durjoy', 'per month', 1000, '35', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 4, 2, '2023-04-03 09:53:23', 1, 1, NULL, 0, NULL, NULL),
(7, 'Durbar', 'per month', 1050, '50', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 3, 2, '2023-04-03 10:00:50', 1, 1, NULL, 0, NULL, NULL),
(8, 'Samriddhi', 'per month', 1260, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 5, 2, '2023-04-03 10:05:59', 1, 1, NULL, 0, NULL, NULL),
(9, 'Bijoy', 'Per Month', 1260, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 6, 1, '2023-05-01 10:53:46', 1, 1, NULL, 0, NULL, NULL),
(10, 'Shikkha', 'Per Month', 525, '10', '15', '15', 3000, 15, 2250, 'NO', 0, 1, '2023-05-02 07:27:51', 0, NULL, NULL, 1, 1, '2023-05-02 07:38:48'),
(11, 'Shikkha', 'Per Month', 525, '10', '15 Mbps', '15 Mbps', 3000, 15, 2250, 'NO', 7, 1, '2023-05-02 07:34:01', 1, 1, NULL, 0, NULL, NULL),
(12, 'Limited-500', 'Per Month', 500, '5', '5 Mbps', '5 Mbps', 3000, 5, 2500, 'NO', 20, 3, '2023-11-09 07:53:44', 1, 3, NULL, 0, NULL, NULL),
(13, 'Limited-525', 'Per Month', 525, '10', '15 Mbps', '15 Mbps', 3000, 15, 2250, 'NO', 19, 3, '2023-11-09 09:24:02', 1, 3, NULL, 0, NULL, NULL),
(14, 'Limited-650', 'Per Month', 650, '12', '15 Mbps', '15 Mbps', 3000, 15, 2250, 'NO', 18, 3, '2023-11-09 11:12:47', 0, NULL, NULL, 0, NULL, NULL),
(15, 'Limited-680', 'Per Month', 680, '15', '20 Mbps', '20 Mbps', 3000, 20, 2250, 'NO', 17, 3, '2023-11-09 11:22:17', 0, NULL, NULL, 0, NULL, NULL),
(16, 'Limited-800', 'Per Month', 800, '20', '30 Mbps', '30 Mbps', 2500, 30, 1875, 'NO', 16, 3, '2023-11-09 11:24:03', 0, NULL, NULL, 0, NULL, NULL),
(17, 'Limited-840', 'Per Month', 840, '25', '40 Mbps', '40 Mbps', 2000, 40, 1500, 'NO', 15, 3, '2023-11-09 12:06:37', 0, NULL, NULL, 0, NULL, NULL),
(18, 'Basic-1000', 'Per Month', 1000, '35', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 14, 3, '2023-11-09 12:09:56', 1, 3, NULL, 0, NULL, NULL),
(19, 'Basic-1050', 'Per Month', 1050, '50', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 13, 3, '2023-11-09 12:17:41', 0, NULL, NULL, 0, NULL, NULL),
(20, 'Basic-1200', 'Per Month', 1200, '50', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 12, 3, '2023-11-09 12:33:58', 0, NULL, NULL, 0, NULL, NULL),
(21, 'Basic-1260', 'Per Month', 1260, '55', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 11, 3, '2023-11-09 12:35:12', 0, NULL, NULL, 0, NULL, NULL),
(22, 'Premium-1500', 'Per Month', 1500, '60', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 10, 3, '2023-11-09 13:00:06', 0, NULL, NULL, 0, NULL, NULL),
(23, 'Premium-1575', 'Per Month', 1575, '65', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 9, 3, '2023-11-09 13:01:35', 0, NULL, NULL, 0, NULL, NULL),
(24, 'Premium-2000', 'Per Month', 2000, '70', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 8, 3, '2023-11-09 13:07:49', 0, NULL, NULL, 0, NULL, NULL),
(25, 'Premium-2100', 'Per Month', 2100, '85', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 7, 3, '2023-11-09 13:09:23', 0, NULL, NULL, 0, NULL, NULL),
(26, 'Premium-2500', 'Per Month', 2500, '87', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 6, 3, '2023-11-09 13:10:26', 0, NULL, NULL, 0, NULL, NULL),
(27, 'Premium-2625', 'Per Month', 2625, '90', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 5, 3, '2023-11-09 13:11:30', 0, NULL, NULL, 0, NULL, NULL),
(28, 'Premium-3000', 'Per Month', 3000, '95', 'Buffer Free', 'Buffer Free', 1000, 100, 0, 'YES', 4, 3, '2023-11-09 13:17:18', 0, NULL, NULL, 0, NULL, NULL),
(29, 'Premium-3150', 'Per Month', 3150, '100', 'Buffer Free', 'Buffer Free', 1000, 200, 0, 'YES', 3, 3, '2023-11-09 13:21:00', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `PACKAGES_NO` int(11) NOT NULL,
  `DISTRICT_NO` int(11) NOT NULL,
  `UPAZILA_NO` int(11) NOT NULL,
  `TITLE` varchar(150) NOT NULL,
  `SUB_TITLE` varchar(150) NOT NULL,
  `PRICE` int(20) NOT NULL,
  `BANDWIDTH` varchar(150) NOT NULL,
  `YOUTUBE_CACHE` varchar(150) NOT NULL,
  `FACEBOOK_CACHE` varchar(150) NOT NULL,
  `INSTALLATION_FEE` int(11) NOT NULL,
  `BDIX` int(11) NOT NULL,
  `MIGRATION` int(11) NOT NULL,
  `REAL_IP` varchar(150) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`PACKAGES_NO`, `DISTRICT_NO`, `UPAZILA_NO`, `TITLE`, `SUB_TITLE`, `PRICE`, `BANDWIDTH`, `YOUTUBE_CACHE`, `FACEBOOK_CACHE`, `INSTALLATION_FEE`, `BDIX`, `MIGRATION`, `REAL_IP`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, 1, 8, 'Package for teenager', '', 1000, '5 Mbps', '24/7', '', 2000, 0, 0, '', 2, '2023-03-30 06:08:22', 0, 2, NULL, 1, 2, '2023-04-03 09:22:50'),
(2, 2, 9, 'test package', '', 5, '20 Mbps', '24/7', '', 1500, 0, 0, '', 2, '2023-03-30 06:43:35', 0, NULL, NULL, 1, 2, '2023-04-03 09:22:55'),
(3, 1, -1, 'Package 4', '', 450, '100 Mbps', '24/7', '', 3000, 0, 0, '', 2, '2023-03-30 08:49:18', 0, NULL, NULL, 1, 2, '2023-04-03 09:41:47'),
(4, 1, 10, 'Offer-3000', '3 months free', 3000, '35', 'Buffer Free', 'Buffer Free', 0, 100, 0, 'YES', 2, '2023-04-03 09:41:47', 1, 1, NULL, 0, NULL, NULL),
(5, 1, -1, 'Offer-2100', '60 days', 2100, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 2, '2023-04-03 09:49:10', 0, NULL, NULL, 0, NULL, NULL),
(6, 2, 9, 'Durjoy', 'per month', 1000, '35', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 2, '2023-04-03 09:53:23', 1, 2, NULL, 0, NULL, NULL),
(7, 4, 0, 'Durbar', 'per month', 1050, '50', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 2, '2023-04-03 10:00:50', 0, NULL, NULL, 0, NULL, NULL),
(8, 2, 9, 'Samriddhi', 'per month', 1260, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 2, '2023-04-03 10:05:59', 0, NULL, NULL, 0, NULL, NULL),
(9, 1, 12, 'Durjoy', 'Per Month', 1000, '35', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 1, '2023-05-02 09:51:26', 0, NULL, NULL, 0, NULL, NULL),
(10, 1, 12, 'Durbar', 'per month', 1050, '50', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 1, '2023-05-02 09:52:06', 0, NULL, NULL, 0, NULL, NULL),
(11, 1, 12, 'Samriddhi', 'Per Month', 1260, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 1, '2023-05-02 09:52:26', 0, NULL, NULL, 0, NULL, NULL),
(12, 1, 12, 'Bijoy', 'Per Month', 1260, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 1, '2023-05-02 09:52:52', 0, NULL, NULL, 0, NULL, NULL),
(13, 1, 12, 'Offer-3000', '3 Months free', 3000, '35', 'Buffer Free', 'Buffer Free', 0, 100, 0, 'YES', 1, '2023-05-02 09:53:40', 0, NULL, NULL, 0, NULL, NULL),
(14, 1, 12, 'Offer-2100', '60 days', 2100, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 1, '2023-05-02 09:56:33', 0, NULL, NULL, 0, NULL, NULL),
(15, 1, 10, 'Durjoy', 'per month', 1000, '35', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 1, '2023-05-30 06:29:19', 0, NULL, NULL, 0, NULL, NULL),
(16, 1, 10, 'Durbar', 'per month', 1050, '50', 'Buffer Free', 'Buffer Free', 1500, 100, 0, 'YES', 1, '2023-05-30 06:29:31', 0, NULL, NULL, 0, NULL, NULL),
(17, 1, 10, 'Samriddhi', 'per month', 1260, '55', 'Buffer Free', 'Buffer Free', 1000, 150, 0, 'YES', 1, '2023-05-30 06:31:11', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `PARTNER_NO` int(11) NOT NULL,
  `PARTNER_IMG` varchar(360) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`PARTNER_NO`, `PARTNER_IMG`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(8, 'd41d8cd98f00b204e9800998ecf8427e1685170914.png', 1, '2023-05-27 07:01:54', 0, NULL, NULL, 0, NULL, NULL),
(9, 'd41d8cd98f00b204e9800998ecf8427e1685170933.jpg', 1, '2023-05-27 07:02:13', 0, NULL, NULL, 0, NULL, NULL),
(10, 'd41d8cd98f00b204e9800998ecf8427e1685170942.jpg', 1, '2023-05-27 07:02:22', 0, NULL, NULL, 0, NULL, NULL),
(11, 'd41d8cd98f00b204e9800998ecf8427e1685170957.png', 1, '2023-05-27 07:02:37', 0, NULL, NULL, 0, NULL, NULL),
(12, 'd41d8cd98f00b204e9800998ecf8427e1701932461.jpg', 1, '2023-05-27 07:02:46', 0, NULL, NULL, 0, NULL, NULL),
(13, 'd41d8cd98f00b204e9800998ecf8427e1685170996.jpg', 1, '2023-05-27 07:03:16', 0, NULL, NULL, 0, NULL, NULL),
(14, 'd41d8cd98f00b204e9800998ecf8427e1685171022.jpg', 1, '2023-05-27 07:03:42', 0, NULL, NULL, 0, NULL, NULL),
(15, 'd41d8cd98f00b204e9800998ecf8427e1685176441.png', 1, '2023-05-27 08:34:01', 0, NULL, NULL, 0, NULL, NULL),
(16, 'd41d8cd98f00b204e9800998ecf8427e1685424677.png', 1, '2023-05-30 05:31:17', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `PRIVACY_NO` int(11) NOT NULL,
  `PRIVACY` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`PRIVACY_NO`, `PRIVACY`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, '<div class=\"flex-1 overflow-hidden\">\r\n<div class=\"react-scroll-to-bottom--css-zvjdg-79elbk h-full dark:bg-gray-800\">\r\n<div class=\"react-scroll-to-bottom--css-zvjdg-1n7m0yu\">\r\n<div class=\"flex flex-col items-center text-sm dark:bg-gray-800\">\r\n<div class=\"group w-full text-gray-800 dark:text-gray-100 border-b border-black/10 dark:border-gray-900/50 bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 md:max-w-2xl lg:max-w-xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0 m-auto\">\r\n<div class=\"relative flex w-[calc(100%-50px)] flex-col gap-1 md:gap-3 lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap break-words\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p>This Privacy Policy governs the manner in which [company name] (\"we,\" \"us,\" or \"our\") collects, uses, maintains, and discloses information collected from users (each, a \"User\") of our [website/application/service] (collectively, the \"Site\"). This Privacy Policy applies to the Site and all products and services offered by us.</p>\r\n<ol>\r\n<li>Personal Identification Information</li>\r\n</ol>\r\n<p>We may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our Site, register on the Site, subscribe to a newsletter, respond to a survey, fill out a form, and in connection with other activities, services, features or resources we make available on our Site. Users may be asked for, as appropriate, name, email address, mailing address, phone number, and credit card information. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personal identification information, except that it may prevent them from engaging in certain Site-related activities.</p>\r\n<ol start=\"2\">\r\n<li>Non-Personal Identification Information</li>\r\n</ol>\r\n<p>We may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about Users\' means of connection to our Site, such as the operating system and the Internet service providers utilized, and other similar information.</p>\r\n<ol start=\"3\">\r\n<li>Web Browser Cookies</li>\r\n</ol>\r\n<p>Our Site may use \"cookies\" to enhance the User experience. Users\' web browsers place cookies on their hard drives for record-keeping purposes and sometimes to track information about them. Users may choose to set their web browser to refuse cookies or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</p>\r\n<ol start=\"4\">\r\n<li>How We Use Collected Information</li>\r\n</ol>\r\n<p>We may collect and use Users\' personal identification information for the following purposes:</p>\r\n<ul>\r\n<li>To personalize user experience: We may use information in the aggregate to understand how our Users as a group use the services and resources provided on our Site.</li>\r\n<li>To improve our Site: We may use feedback you provide to improve our products and services.</li>\r\n<li>To process payments: We may use the information Users provide about themselves when placing an order only to provide service to that order. We do not share this information with outside parties except to the extent necessary to provide the service.</li>\r\n<li>To run a promotion, contest, survey or other Site feature: To send Users information they agreed to receive about topics we think will be of interest to them.</li>\r\n<li>To send periodic emails: We may use the email address to send User information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests.</li>\r\n</ul>\r\n<ol start=\"5\">\r\n<li>How We Protect Your Information</li>\r\n</ol>\r\n<p>We adopt appropriate data collection, storage, and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information, and data stored on our Site.</p>\r\n<ol start=\"6\">\r\n<li>Sharing Your Personal Information</li>\r\n</ol>\r\n<p>We do not sell, trade, or rent Users\' personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates, and advertisers for the purposes outlined above.</p>\r\n<ol start=\"7\">\r\n<li>Third-Party Websites</li>\r\n</ol>\r\n<p>Users may find advertising or other content on our Site that link to the sites and services of our partners, suppliers, advertisers, sponsors, licensors and other third parties. We do not control the content or links that appear on these sites and are not responsible for the practices employed by websites linked to or from our Site. In addition, these sites or services</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"flex justify-between lg:block\">\r\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center mt-2 gap-2 md:gap-3 lg:gap-1 lg:absolute lg:top-0 lg:translate-x-full lg:right-0 lg:mt-0 lg:pl-2 visible\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"w-full h-32 md:h-48 flex-shrink-0\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"absolute bottom-0 left-0 w-full border-t md:border-t-0 dark:border-white/20 md:border-transparent md:dark:border-transparent md:bg-vert-light-gradient bg-white dark:bg-gray-800 md:!bg-transparent dark:md:bg-vert-dark-gradient pt-2\"><form class=\"stretch mx-2 flex flex-row gap-3 last:mb-2 md:mx-4 md:last:mb-6 lg:mx-auto lg:max-w-2xl xl:max-w-3xl\">\r\n<div class=\"relative flex h-full flex-1 items-stretch md:flex-col\">\r\n<div class=\"\">\r\n<div class=\"h-full flex ml-1 md:w-full md:m-auto md:mb-2 gap-0 md:gap-2 justify-center\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</form></div>', 1, '2023-05-02 17:59:51', 0, NULL, NULL, 1, 1, '2023-05-03 04:03:15'),
(2, '<p class=\"MsoNormal\"><strong><span style=\"font-size: 14.0pt; line-height: 107%;\">Interview Preparation</span></strong>:</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Research the Company:</p>\r\n<p class=\"MsoNormal\">Learn about the company\'s history, values, and mission. Understand its products, services, and recent achievements. This knowledge demonstrates your genuine interest and commitment.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Know the Job Description:</p>\r\n<p class=\"MsoNormal\">Carefully review the job description to identify the key skills and qualifications required. Tailor your responses to showcase how your experiences align with the specific requirements.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Understand the Industry:</p>\r\n<p class=\"MsoNormal\">Stay informed about industry trends, challenges, and competitors. This knowledge helps you discuss the broader context and show that you are aware of the company\'s position in the industry.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Prepare Common Questions:</p>\r\n<p class=\"MsoNormal\">Practice answering common interview questions such as \"Tell me about yourself,\" \"What are your strengths and weaknesses,\" and \"Why should we hire you?\" This helps you articulate your thoughts confidently during the interview.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Your Own Questions:</p>\r\n<p class=\"MsoNormal\">Prepare thoughtful questions to ask the interviewer. This demonstrates your interest in the company and the role. Questions could be about the team, company culture, or the expectations for the role.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><a href=\"https://www.youtube.com/watch?v=o9aA4mB4JS4\"><iframe src=\"https://www.youtube.com/embed/o9aA4mB4JS4\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></a></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 16.0pt; line-height: 107%;\">Presentation:</span></strong></p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Dress Professionally:</p>\r\n<p class=\"MsoNormal\">Dress appropriately based on the company\'s dress code. This varies across industries, so research and choose attire that aligns with the company culture.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Body Language:</p>\r\n<p class=\"MsoNormal\">Maintain good eye contact to convey confidence and attentiveness. Offer a firm handshake, sit up straight, and avoid closed-off postures to exhibit openness.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Confidence and Positivity:</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Project confidence through your tone of voice and body language. Stay positive, even when discussing challenges, and convey enthusiasm about the opportunity.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Speak Clearly:</p>\r\n<p class=\"MsoNormal\">Articulate your thoughts clearly, avoiding unnecessary jargon. Be concise and ensure your responses directly address the question.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><iframe src=\"https://www.youtube.com/embed/UbcLJjxIpyU\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 16.0pt; line-height: 107%;\">During the Interview:</span></strong></p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Active Listening:</p>\r\n<p class=\"MsoNormal\">Pay close attention to the interviewer\'s questions. This allows you to provide relevant responses and shows that you are engaged in the conversation.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Highlight Achievements:</p>\r\n<p class=\"MsoNormal\">Share specific examples of how you\'ve contributed to previous projects or roles. Use the STAR method (Situation, Task, Action, Result) to structure your answers.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Adaptability:</p>\r\n<p class=\"MsoNormal\">Showcase instances where you\'ve successfully adapted to change or demonstrated flexibility in the workplace. Employers value candidates who can navigate challenges effectively.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Problem-Solving:</p>\r\n<p class=\"MsoNormal\">Illustrate your problem-solving skills by discussing how you\'ve overcome challenges or contributed to solving issues in previous roles.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Team Player:</p>\r\n<p class=\"MsoNormal\">Emphasize your ability to collaborate with others. Share examples of successful teamwork and highlight how you contribute to a positive team dynamic.</p>\r\n<p class=\"MsoNormal\"><iframe src=\"https://www.youtube.com/embed/enD8mK9Zvwo\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 14.0pt; line-height: 107%;\">Closing the Interview</span></strong>:</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Express Interest:</p>\r\n<p class=\"MsoNormal\">Clearly state your interest in the position. Summarize why you are a strong fit and reiterate your enthusiasm for the opportunity.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Follow-up:</p>\r\n<p class=\"MsoNormal\">Inquire about the next steps in the hiring process and express gratitude for the interviewer\'s time. Send a follow-up email after the interview to reiterate your interest and appreciation.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><a href=\"https://www.youtube.com/watch?v=0Is871FysC8\"><iframe src=\"https://www.youtube.com/embed/0Is871FysC8\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></a></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 14.0pt; line-height: 107%;\">Additional Tips:</span></strong></p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Stay Calm:</p>\r\n<p class=\"MsoNormal\">If you feel nervous, take a moment to breathe and compose yourself. It\'s okay to pause and gather your thoughts before responding to a question.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Be Authentic:</p>\r\n<p class=\"MsoNormal\">Be genuine and true to yourself during the interview. Authenticity is valued, and interviewers can often detect when someone is not being genuine.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -.25in; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Learn from Rejections:</p>\r\n<p class=\"MsoNormal\">If you don\'t get the job, don\'t be discouraged. Seek feedback if possible, as it can provide valuable insights for improvement. Use the experience as a learning opportunity for future interviews.</p>\r\n<p class=\"MsoNormal\"><iframe src=\"https://www.youtube.com/embed/ME-VbqEh6ME\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 1, '2023-05-03 04:03:00', 1, 1, '2024-01-12 18:15:15', 0, 1, '2024-01-12 19:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skills_no` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `skills` varchar(500) NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skills_no`, `applicant_id`, `skills`, `IS_UPDATED`, `IS_DELETED`) VALUES
(147, 63, 'laravel', 0, 0),
(148, 62, 'Ms Offfice', 0, 0),
(149, 62, 'php', 0, 0),
(150, 64, 'php', 0, 0),
(151, 64, 'laravel', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `SLIDE_NO` int(11) NOT NULL,
  `S_TITLE` text NOT NULL,
  `S_LINK` longtext NOT NULL,
  `S_LINK_TEXT` varchar(150) NOT NULL,
  `S_IMG` varchar(360) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`SLIDE_NO`, `S_TITLE`, `S_LINK`, `S_LINK_TEXT`, `S_IMG`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(7, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e1705095218.png', 2, '2023-04-06 08:11:30', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `SOCIAL_NO` int(11) NOT NULL,
  `FACEBOOK` text NOT NULL,
  `INSTAGRAM` text NOT NULL,
  `TWITTER` text NOT NULL,
  `LINKEDIN` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`SOCIAL_NO`, `FACEBOOK`, `INSTAGRAM`, `TWITTER`, `LINKEDIN`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 1, '2018-11-26 13:05:49', 1, 1, '2024-01-12 21:28:11', 0, 0, '2018-11-26 13:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TEAM_NO` int(11) NOT NULL,
  `T_NAME` text NOT NULL,
  `T_DESIGNATION` text NOT NULL,
  `T_IMG` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TEAM_NO`, `T_NAME`, `T_DESIGNATION`, `T_IMG`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(10, 'Prached Baidya', 'Support Executive', 'd41d8cd98f00b204e9800998ecf8427e1685425573.jpg', 1, '2023-05-30 05:46:13', 0, NULL, NULL, 0, NULL, NULL),
(11, 'Mohammad Shohel Rana', 'Manegar (Accounts)', 'd41d8cd98f00b204e9800998ecf8427e1696660228.jpg', 3, '2023-10-07 06:30:28', 1, 3, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms_of_use`
--

CREATE TABLE `terms_of_use` (
  `TERMS_NO` int(11) NOT NULL,
  `TERMS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `terms_of_use`
--

INSERT INTO `terms_of_use` (`TERMS_NO`, `TERMS`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, 'Dhaka', 2, '2023-03-25 09:18:36', 0, NULL, NULL, 1, 1, '2023-05-02 07:05:06'),
(2, 'Khulna', 2, '2023-03-25 09:18:44', 0, NULL, NULL, 1, 1, '2023-05-02 06:56:13'),
(3, 'Borishal', 2, '2023-03-25 09:18:56', 0, NULL, NULL, 1, 2, '2023-03-25 09:21:31'),
(4, 'Borishal', 2, '2023-03-30 09:06:58', 0, NULL, NULL, 1, 1, '2023-05-02 06:56:11'),
(5, '<p>aaaaaaaaaaaaa</p>', 1, '2023-05-02 07:06:41', 0, NULL, NULL, 1, 1, '2023-05-02 07:09:41'),
(6, '<p><strong>aaaaaaaaaaaaaaaa</strong></p>', 1, '2023-05-02 07:19:00', 0, NULL, NULL, 1, 1, '2023-05-02 07:48:39'),
(7, '<p><span style=\"color: #e03e2d;\">Please click here.&nbsp;</span></p>', 1, '2023-05-02 07:48:39', 0, NULL, NULL, 1, 1, '2023-05-02 07:48:44'),
(8, '', 1, '2023-05-02 10:55:11', 0, NULL, NULL, 1, 1, '2023-05-02 10:57:01');
INSERT INTO `terms_of_use` (`TERMS_NO`, `TERMS`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(9, '<figure class=\"image\"><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4QBKRXhpZgAASUkqAAgAAAABAJiCAgAnAAAAGgAAAAAAAABGcmVlcGlrIENvbXBhbnkgUy5MLiAtIHd3dy5mcmVlcGlrLmNvbQAA/9sAQwAIBgYHBgUIBwcHCQkICgwUDQwLCwwZEhMPFB0aHx4dGhwcICQuJyAiLCMcHCg3KSwwMTQ0NB8nOT04MjwuMzQy/9sAQwEJCQkMCwwYDQ0YMiEcITIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy/8AAEQgH0AfQAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A9/ooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKy9U1uz0lcTMWlIysSfeP19BXMz+Nb5mPk28Ea+jZY/nkfyrCpiKdN2b1Oqjgq1ZXitDuqK4SHxrfq376CCRfQAqf5mul0rXrPVRtjYxzgcxP1/D1op4mnN2T1HWwVaiuaS0NaiiitzkCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAqhq+oLpmmy3JALD5UU92PSr9cj45kYQWcQ+6zOx+oA/wATWVebhTckdGEpKrWjB7HITzSXMzzTOXkc5Zj3NR0UV4R9aklogp8UrwyrLExR1OVYHkGmUUA1fc9O0LU/7U0xJzgSKdkgH94f5zWnXG+Bnbdex/w/I34812Ve5h5udNSZ8njKSpV5QjsFFFFbHMFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFc54xs2uNKWdBkwPuP+6eD/SujpjosiMjgMrDBB7ioqQ54uL6mtGq6VRTXQ8horodb8Mz2MjT2iNLak5wOWT6+3vXP14c6coO0kfWUq0KseaDEoord0bw1c6hIstwjQ2vUlhgv7Af1ohCU3aKCrVhSjzTdkbnguzaGwmumGDMwC5/ur3/Mn8q6io4o0giWKNQqIAqqOgFSV7dKHJBRPlK9V1qjm+oUUUVoYhRRRQAUhOBk1mavrVvpEG6T55m+5EDyfc+g964PUdavtTY+fKRHniJOFH+P41zVsTClpuzuwuBqV1zbLuegTa1pkBIkvoMjqA24/pTI9f0qU4W+hH+8dv8AOvMaK5Pr0+yPR/sinb4mevRyJKgeN1ZT0KnINPrye0vrqxl8y2meM55weD9R0NdvoXiWPUitvcBYrrtj7r/T39q6aOLjUdnozhxOXVKK5o6o6Giiius84KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigDCfxbpUHik+HbqcW9+0SywiQ4WYNnhT65B4/Kt2vn/wCP9q0XiTSL4ZHm2rRBh6o5P/s9Q+CPjTe6SsWn+IlkvrMYVbkHM0Y98/fH6+56VfJdXRHPZ2Z9DUVn6Rrem6/YJe6XeRXVu38SHkH0I6g+xrQqCwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKpz6XYXLFprSB2PVigz+dXKKTSe44ylF3i7FKDS7C2YNDZwow6MEGfzq7RRQopaIcpSk7ydwooopkhRRRQAVBd3MdnaS3Epwkalj/AIVPXM+NLgx6XFApx5snPuAM/wA8VnVnyQcjbD0va1Yw7nG317NqF5JczNlnPTso7AVWoorwm23dn10YqKstgooopDClVmRg6EqynIIPINJRQB6XoGqf2rpqyMR5yHZIPf1/H/GtauE8FXBj1OaDPyyx5x7g8foTXd17eGqOdNN7nyuNoqjWcVsFFFFbnIFFFFABRRRQAUUVkeKNROkeFdW1BWCvb2kjoT/eCnb+uKAMHwd8RtM8WahfacuLe9t5pBFGW4niDHDL74xkfj06drXxLa3VxZXUV1az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7fqVzOp/gaQ7P++Rx+lZlFFdKioqyMW29woooqhBRRRQAUUUUAFFFafh7SzrXiCx04AkTyhXx2QcsfyBqZSUVdjSu7I9z+Hmk/2R4NskZcS3I+0ycd26f+O7a6qmoqogRQAqjAA7CnV8xObnJyfU9mMeVJIKKKKgoKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAqG4nitoHmmcJGgyzHtU1cH4t1c3V2bGJv3MJ+fH8T/8A1v8AGsa9VUocx04XDvEVORbdSprfiGfVJGjjLR2gPCDq3u3+FYtFFeLOcpu8j6mnShSjywVkFFFFSWFFFFAFmyvrjT7gTW0hRh19GHoR3r0PRdah1e23D5J0/wBZH6e49q8zq1YX0unXsdzCfmQ8jsw7iujD13SfkcWMwca8br4j1eioLS5jvLWK4iOUkUMKnr2U7q6PmGmnZhRRRTEFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABXzn8fP+R6sf+wbH/wCjZa+jK+d/j9GB4z0+TP3tPVcemJJP8aun8RE9jyiiiiugxCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAFVmRgykqwOQQeQa9J8IeLzqBTTtRcfacYilP/LT2P8AtfzrzWlVijBlJDA5BB5BrCvQjWjyyOnC4qeGnzR26rue+1ynjy2aTS7e4HSGTBHsw6/mB+dT+EPEQ1qwMM7D7bAAH/2x2b/H/wCvWxq1n/aGk3VrjJkjO3/eHI/XFeFTvh8Quboz6ity4vCvk6r8f+HPIKKCCDg0V9QfFnqXhW8+2+H7ck5eIeU3/Aen6YrZrhfAV7tubmyY8OokX6jg/wAx+Vd1XzGMp+zrSXzPtcvre1w0ZddvuCio57iG1iMs8iog7muY1HxS75jsV2L081hyfoKrC4GvinamtO/QMXj6GFV6j17dTpLm8trOPfcTLGPc8n6DrXP3nizqtnD/AMDk/wAK5qWWSaQySuzuerMck0yvpcLkVCnrV95/gfMYrPq9XSl7q/EtXWo3d6T587uP7ucD8hxVWiivahCMFywVkeJOcpvmm7vzCiiirICiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAcjvG25GZT6g4q3HrGpw/wCq1G7TjHyzsP61SoqWk9xptGsvijxAoAXXNTAHQfa3x/Opv+Ey8Sf9By//AO/xrDoqfZw7IfPLubn/AAmXiT/oOX//AH+NMfxb4jkAB1zURj+7cuv8jWNRR7KHZBzy7mlJ4h1uU5k1jUHOMfNcuf61UlvLqfPm3M0nGPncnioKKpRitkJtsKKKKoQUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABXpnwe0nztVvdVdflt4xFGT/ebqR9AP/Hq8zr6G+Hmk/wBkeDbJGXEtyPtMnHdun/ju2uHH1OSjbudOGhzVL9jqqKKK8E9MKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAqald/YdNuLnjMaErn17frivKmYsxZiSSckmvQfF8hTQWUdHkVT/P+lee15WOleaj2PoMpglSc+7CiiiuI9UKKKKACiiigAooooA7XwVeGS2ns2P+rIdPoev6/wA66yvP/BshTWyvZ4WB/Q/0r0CvYwkuakr9D5nMoKGIduuoUUUV1HAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUxmVFLMQqgZJPQVgaj4usrTKW2bmT1U4Qfj3/AAqJ1IwV5M1pUalV2grnRVjah4l06wyvm+dKP4IucfU9K4rUNe1DUcrLMUjP/LOP5V/H1/GsyuCpjukEetQynrVfyR0F/wCLdQuspBi2jP8Ac5b8/wDCvHPiaHe+sLh2LM6OpZuScEd/xr0OuJ+JMG7TbKfH3Jin/fQz/wCy1OEqyliIuTNsfh6cMJJU1bb8zzeiiivfPlQooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAvaPqcuj6pBexZ+RvnUH7ynqK9st547q2iuIW3RyKHUjuDyK8Fr034eambnSZbGRsvatlc/3G5H65/SvMzKjeKqLoe1k2IcZui9nt6nM+I7L7Dr11EBhGfzEx6Nz/AIj8Ky67Xx9Zf8et8o9YXP6r/wCzVxVd+Eqe0oxkedjqPssRKPT/ADNDQ737BrVrcE4UOFf/AHTwf0NejarrsGnAxpiW4x9wHhfrXlNbEEhlhVyckjknua1jl9LFVlKp0W3cmnmVXC0XCn1e/YuXl9cX83mXEhY9h2X6Cq9FFe7CEYRUYqyR485ynJyk7thRRRVkhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAafh7SzrXiCx04AkTyhXx2QcsfyBr6bRVRAigBVGAB2FeO/B7SfO1W91V1+W3jEUZP95upH0A/8er2SvDzGpzVOXselhIWhzdwooorzzqCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAMDxfGX0FmHRJFY/y/rXnteralai9024tuMyIQuex7frivKmUoxVgQQcEeleVjo2mpdz6DKaidJw7MSiii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eYRx9TGr7tdP0PpSoPs0H2r7V5Ef2jZs83aN+3JOM9cZJ496nrnfGfiC48NeH31C2to55BIqYkYhVznk4684GOOtePCLlJRjuzvk0ldnRUV4joHxS1SDXTLrM3n2M2FdEQDyfRlA/X1/CvZ7a6gvLaO4tpUlhkG5JEOQwrWvh50WlIinVjU2PN/Hfw3F6ZdW0OILcnLTWq9JfVl9G9u/16+PujRuyOpVlOCCMEH0NfVxIUEk4A9a8L+J+oaDqGsxNpISS6XcLqeL7jnjaPRiOeR7de3oYDEzk/ZyV/M5cTRivfWhwlFFFeqcQUUUUAafh7SzrXiCx04AkTyhXx2QcsfyBr6bRVRAigBVGAB2FeO/B7SfO1W91V1+W3jEUZP95upH0A/8er2SvDzGpzVOXselhIWhzdwooorzzqCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAorO1XXdL0OAS6lexW6n7oc/M30Ucn8BXF3nxi0OGQra2d7cAfxbVQH6ZOf0oNYUalT4Uei0V5va/GTRZJAtzYXsKk/fG1wPryDXa6Rr+l69AZtMvYrgD7wU4Zfqp5H5UXCdCpT1kjTooooMgooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigArO1TWLXSod87Zc/cjX7zf/W96ztc8TRafut7XbLc9Ceqp9fU+1cLPcS3UzTTyNJI3JZj1rixGLUPdhqz08Hl0qvv1NI/mXNV1m61aXMzbYgfliXoP8TWdRRXmSk5O7PoIQjCPLFWQUUUVJQUUUUAFFFFABRRRQAUUUUAFeffEfTCJLXU0Xg/uZCPXqv9fyFeg1S1fTo9W0q4spOPNX5W/usOQfzxW+Gq+yqqRy4yh7ejKHXp6nh1FSXEEtrcSQTIVkjYo6nsR1qOvpU7nxbVtGFFFFMAooooAK1v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t9DyP5H867GqGt2X9oaLdW4GWZCV/wB4cj9RW+GqezrRkcuNo+2oSh5HkdFFFfVHxBrWr+Zboe4GDU1UNPf78Z+oq/Xr0Jc1NM4qitJoKKKK2ICiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAFVijBlJVgcgg8g17R8P/iAurLHpOrShb8DbDM3Sceh/wBr+f16+LUqsUYMpKsDkEHkGsK9CNaPLI0pVXTd0fV9FecfD/4gLqyx6Tq0oW/A2wzN0nHof9r+f16+j189VpSpS5ZHqwmpq6CiiisywooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA474o6gdO+HmqMhw8yLbj3DsA3/AI7ur5fr6F+OMjJ4GtlHR9QjU/TZIf6Cvnqsp7nTRXuhRRRUmoUUVq+HNIbW9ct7MA+WTvlI7IOv+H4ik3YaVzt/h74bEMA1m6j/AHsgxbqw+6v976nt7fWu+pqIscaoihUUAKAOAB0FOrklLmdzqjHlVgooopFBVa+sLXUrN7W7hWWFxyp7e4PY1ZooA8c8TeDbvQma4g3XFhn/AFgHzJ7MP61zFfRJAYEEAg9Qe9cN4h+Hlvdl7nSStvMeTA3+rb6f3f5fStoVejMJUusTy+irV9p93plybe8t3hkHZh19wehFVa3MQooooAKKKKACiiigC/pw/wBYfpV+qWnD9y5/2qu1a2PVw6tTQUUUUGwVjuMSMPQmtisu6XbcN78104d6tHk5vG9OMuzIqKKK6jwAratYvJt1U9ep+tZ1jB5swYj5U5P9K160gupLYUUUVYgqvfPstX9+KsVn6m/CJ+JpS2BbmfWlose66Zz/AAr+p/yaza3NFj22ryd3b9B/k1y1naDPUyqn7TFR8tTTooorhPswooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACmyNsjdz/C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AD88/wCFbtZGgJi1lf1fH5D/AOvWvXBDY8PFO9VhRRRVGAUUUUAFFFFABRRRQBheJvCWmeKbQRXsZWZB+6uI+HT/ABHsam8N2Gp6XpK2Wp3iXkkLFYp1BDNH23Z79e/pWvRVcztYVuoUUUVIwooooAKKKKACiiigAooooAKKKKACiiigAooooA4z4j+E5/E+jRPZANfWjF40JxvU/eXPrwCPp7157b+IfiDDp8ehQWl6jRr5auLRvNC9ANxHHHf9a91orWNSys1clxuebeAvh1Npd4NZ1whr/lood27yyerMe7fy+vT0miiolJyd2NKwVy2rXP2i+bB+RPkH9a2tVvha25VD+9cYX2HrXMVjN9D0sFS/5eMSiiisz0AooooAKKKKACiiigDH8U2f23w/cqBl4h5q/wDAev6Zryyva2UMpVhlSMEHvXjuo2hsdRuLU/8ALKQqD6jsfyr2sqqXjKn8z5zPKNpRqrroVq0NPfMbIexzWfU9m+y5X0bivdoS5aiZ89UV4s1aKKK9c4gooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooopAFFWYdPvJ8eVaysPUIcfnWhD4Z1GXG9I4h/tv/hmuepi6FL45pfM6aWExFX4IN/IxqK9S0T4SwX1nDd3WsMUkGSkEWCPUbiT39q62w+GXhexALWcl04/iuJSf0GB+lYyzGgleLuP6pVvaSseBIjyOERWZicBVGSa39P8AA3iXU8GDSZ0U/wAcw8ofX5sZ/CvoOy0yw05NllZW9svpDEEz+VXK5p5m/sRNY4NfaZ43p3wbv5cNqOpwQD+7ChkP5nH9a63TfhZ4asdrTxTXrjnM8nGfouB+ea7eiuSeMrT3kbxw9OPQqWWnWWnReXZWcFsndYowoP5Vboormbb1ZslYKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAEIDAggEHqDXyX4w0J/Dfiu/0wqRHHIWhJ7xtyv6HH1Br61ryn40+FDqGkxeILWPNxZDZOAOWhJ6/wDAT+jH0qZq6NKUrOx4JRRRWR1CgFiAASSeAO9fUNvCttbRQJ92NAg+gGK+Z9Mi8/VbOLGd86Lj1ywFfTtcuI6FwCsbX/FOkeGoBJqNyFdhlIUG6R/oP6nis7xn4t/4R+3itLGL7VrF38tvbqCxHbcQO3oO/wCBrnND+Gcuo3Tav4vuJLm7mO82wfgf7zD+Q4FZRirc0tht9EIPjRp32jadJuhB/fEi7v8Avnp+tdroHijSPEsBk026Duoy8LDbIn1H9RxSTeEPDs9n9kfRbIRYwNkIVh9GGDn8a8x8S/D/AFPwpdDW/DdxO8MJ3kKf3sP/AMUvr+o71aVOWi0YryR7JJDHKPnUE+veqcunsOYmyPQ1jeBfFyeK9HMkgVL63wlwi9CT0YexwfyNdTWTvF2Zal2MR43jOHUr9abW4QGGCAR6Gq0ljE/K5Q+1NSNFPuZlFWpLCVeVw49qrMjIcMpB9xVXKTTEooopjCsvWfEGmaDCJL+5VGYfLGOXb6Afzqh4x8Tr4b0sPGA95OSsCHoMdWPsMj9K4nQvBeo+J7n+1tdnlSGU7vm/1ko7Y/ur6fpVxirXexnKbvyx3L138SNEvJts+gm4h/vTBC35c/zrS0yx8E+KVP2O2WOcDJi3NG6/8BBwfwzXRW/hfQra2+zx6VaGPGDviDk/UnJNcxrXw6jWQX/h6ZrO7jO5Yt52k/7LdVP5j6VScdloJqW71MjxHotpoWopa2fmeU8QkIdskEkj+grIq5qOrX+pTJFqtsYL+1XypcjG7nIbH49uPTrVOumF+VXO+k04KwUUUVRoFQz/AMNTVHMPkH1oBFeiiigsKKKKAHLI69GI/GpFupB1wfqKhoq41JR2ZhUw1Gp8cUx13db4Nm3BY+vaqFPmbdJjsKZXdBycU5Hy2KVONaSpqyRp6LDuneUjhRgfU1uVS0uHybFCRy/zH+lXa46sryZ9dltH2WGinu9fvCiiiszuCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAhuphb2skvcDj69q5bryeta2tT5KQA9Pmb+lZNdlCNo37nyWc4j2lfkW0fz6hRRRWx5AUUUUAFFFFABRRT4YzNMkY6swFBUU5NJG/pcXlWCZHL/Mf8/TFXaRVCqFAwAMAUtefJ3dz72jTVKnGmuiCiiipNQooooAK7LTI/K02BT/dz+fP9a5K2hNxcxwj+NgPpXbgBQABgAcCuDHS0URM6fRk26ah/vEn9cf0rQqrpy7dOgH+xmrVcy2Pn6rvUk/MKKKKZAUUUUAFFFFABRRRQAUUUUAFFFFABRRSEgDJOAO5oAWiojcwAZM8eP98VF/aNj/z+2/8A39X/ABp2YWZaoqC3vbW7z9muYZtvXy5A2PyNT0AFFFFIAooooAKKKKAELBcZIGeBmlrK12TbZxoDyz/y/wAiqdprcsShJ18xR/EDz/8AXqXJJ2Z0Qw050+eJ0NFZ661ZMMlnU+hWmSa5aKPkDufYY/nT5kR7Crtys06p32oxWSkE7peyD+tZFzrdxMNsQES+3J/OswksSSSSe5qHPsdVLBO96hJPPJcTNLI2WP6VFRRWZ6SSSsgooooAKKKKACiiigAooooAK898dWfk6tFdAfLPHgn/AGl4/ltr0Kue8Z2X2rQXlUZe3cSD6dD/ADz+FdeBqezrx89DgzOj7XDSXVa/d/wDzWgEggjqDRRX0x8abaMHjVh0IzS1VsH3Qbe6mrVezTlzRUjhkrNoKKKK0JCiiigAooqeC0ubo4ggkk91XIH41MpRirydkVGMpO0VdkFFbdv4Xv5cGTy4', 1, '2023-05-02 10:58:01', 0, NULL, NULL, 1, 1, '2023-05-02 10:59:33');
INSERT INTO `terms_of_use` (`TERMS_NO`, `TERMS`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(10, '<p>&nbsp;</p>\r\n<table border=\"0\" width=\"98%\" cellspacing=\"0\" cellpadding=\"3\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" width=\"4%\">1</td>\r\n<td align=\"left\" valign=\"middle\" width=\"65%\"><strong><a href=\"https://ebl.bdjobs.com/JobDetailNew.asp?W1oVq=HGJH\" target=\"_blank\" rel=\"noopener\">Project Manager (Assistant Vice President-Senior Vice President)</a></strong></td>\r\n<td align=\"left\" valign=\"middle\" width=\"31%\"><form id=\"form1\" action=\"https://ebl.bdjobs.com/default.asp?Section=Login\" method=\"post\" name=\"form1\"><input id=\"btnApply\" name=\"btnApply\" type=\"submit\" value=\"Apply now\"></form></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" width=\"4%\">2</td>\r\n<td align=\"left\" valign=\"middle\" width=\"65%\"><strong><a href=\"https://ebl.bdjobs.com/JobDetailNew.asp?W1oVq=HGJI\" target=\"_blank\" rel=\"noopener\">Manager-Software Quality Assurance (Principal Officer-Assistant Vice President)</a></strong></td>\r\n<td align=\"left\" valign=\"middle\" width=\"31%\"><form id=\"form1\" action=\"https://ebl.bdjobs.com/default.asp?Section=Login\" method=\"post\" name=\"form1\"><input id=\"btnApply\" name=\"btnApply\" type=\"submit\" value=\"Apply now\"></form></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" width=\"4%\">3</td>\r\n<td align=\"left\" valign=\"middle\" width=\"65%\"><strong><a href=\"https://ebl.bdjobs.com/JobDetailNew.asp?W1oVq=HGJJ\" target=\"_blank\" rel=\"noopener\">Manager-FinTech Engagement (Assistant Vice President-Senior Vice President)</a></strong></td>\r\n<td align=\"left\" valign=\"middle\" width=\"31%\"><form id=\"form1\" action=\"https://ebl.bdjobs.com/default.asp?Section=Login\" method=\"post\" name=\"form1\"><input id=\"btnApply\" name=\"btnApply\" type=\"submit\" value=\"Apply now\"></form></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br>EBL is an equal opportunity employer and welcomes applications from female candidates. Any persuasion will disqualify the candidature. Only short listed candidates shall be invited for the interview. \" type=\"text\"&gt;</p>', 1, '2023-05-02 11:33:14', 1, 1, '2023-05-02 11:33:33', 1, 1, '2023-05-02 11:36:13'),
(11, '<p>Radiant Communications Ltd (RCL). is one of the best performing Internet Service and Solution provider in Bangladesh. Providing IP service based on Satellite and Submarine Cable [SEA-ME-WE4] serving the internet community excellently since 2004. Radiant Communications Ltd. presently serving the metropolitan customer based in Dhaka, Chittagong, Bogra, Sylhet and Rajshahi with its highly skilled professionals.&nbsp;</p>\r\n<p>&nbsp;</p>', 1, '2023-05-02 11:36:13', 1, 1, '2023-05-02 12:09:56', 1, 1, '2023-05-02 17:43:27'),
(12, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">Welcome to Radiant Communication Limited! These terms and conditions outline the rules and regulations for the use of our website and services.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">By accessing this website or using our services, you agree to be bound by these terms and conditions. If you do not agree with any part of these terms and conditions, you must not use our website or services.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">1. Definitions</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">Radiant Communication Limited\", \"we\", \"us\" or \"our\" refers to Radiant Communication Limited, a company registered in [insert country of registration], with company registration number [insert registration number].</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">Website\" refers to the website owned and operated by Radiant Communication Limited, which can be accessed at [insert website address].</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">Services\" refers to the products and services offered by Radiant Communication Limited, as described on our website.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">2. Use of Website and Services</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l3 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You may use our website and services for lawful purposes only.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l3 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You may not use our website or services for any illegal, fraudulent, or unauthorized purpose.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l3 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You may not attempt to interfere with or disrupt the operation of our website or services.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">3. Intellectual Property</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l4 level1 lfo3;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">All content and materials on our website are the property of Radiant Communication Limited, unless otherwise stated.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l4 level1 lfo3;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You may not use, copy, reproduce, or distribute any content or materials from our website without our prior written consent.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">4. User Accounts</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo4;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You may be required to create a user account in order to access certain parts of our website or services.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo4;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You are responsible for maintaining the confidentiality of your account information, including your username and password.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo4;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You agree to notify us immediately if you suspect any unauthorized use of your account.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">5. Disclaimer</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">We make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore strictly at your own risk.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">6. Limitation of Liability</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">We shall not be liable for any direct, indirect, incidental, consequential or punitive damages, including but not limited to, damages for loss of profits, data, or other intangible losses, arising out of or in connection with your use or inability to use our website or services.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">7. Indemnification</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">You agree to indemnify, defend, and hold harmless Radiant Communication Limited and its affiliates, officers, directors, employees, and agents from any claims, liabilities, damages, and expenses (including reasonable attorneys\' fees) arising out of or in connection with your use of our website or services.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">8. Termination</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">We may terminate or suspend your access to our website or services at any time, without prior notice and for any reason.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">9. Governing Law and Jurisdiction</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo5;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">These terms and conditions shall be governed by and construed in accordance with the laws of [insert country of registration].</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo5;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">Any disputes arising out of or in connection with these terms and conditions shall be subject to the exclusive jurisdiction of the courts of [insert country of registration].</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">10. Changes to Terms and Conditions</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l5 level1 lfo6;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">We reserve the right to update or modify these terms and conditions at any time, without prior notice.</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .75in; mso-add-space: auto; text-indent: -.25in; line-height: normal; mso-list: l5 level1 lfo6;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">Your continued use of our website or services after any such changes constitutes your acceptance</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 1, '2023-05-02 17:43:18', 1, 1, '2023-05-03 06:36:43', 1, 1, '2024-01-12 22:05:47'),
(13, '<p class=\"MsoNormal\"><strong><span style=\"font-size: 16.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #ed0000;\">How to build up your personality. </span></strong></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Building up your personality is a continuous process that involves self-awareness, self-reflection, and intentional efforts to develop positive traits and behaviors. Here are some practical steps to help you build up your -personality. </span></strong></p>\r\n<p class=\"MsoNormal\"><img src=\"https://www.iimtindia.net/Blog/wp-content/uploads/2021/10/Personality-Development.png\" alt=\"\" width=\"484\" height=\"290\"></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\">Self-awareness: </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; line-height: 115%;\"><strong><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Self-awareness is the ability to recognize and understand one&rsquo;s own thoughts, feelings, behaviors and values. It involves being conscious of your strengths, weaknesses, motivations and impact you have on others. Cultivating self-awareness is a valuable skill that can lead to personal growth, better decision making and improved relationships. <span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;</span></span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; text-align: justify; text-indent: -.25in; line-height: 115%; mso-list: l2 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif;\">Reflection: Understand your strengths and weaknesses. Take time regularly to reflect on your thoughts, emotions and actions. Consider journaling to capture your experiences and insights. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; text-align: justify; line-height: 115%;\"><strong><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; text-align: justify; text-indent: -.25in; line-height: 115%; mso-list: l2 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif;\">Mindfulness: Practice mindfulness techniques such as meditation or deep breathing to stay present in the moment. This can help become more aware of your thoughts and feelings as they arise. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; line-height: 115%;\"><strong><span style=\"font-size: 3.0pt; line-height: 115%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; text-align: justify; text-indent: -.25in; line-height: 150%; mso-list: l2 level1 lfo2;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 150%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',serif;\">Set Goals: Define clear goals for yourself and regularly assess your progress. <span style=\"mso-spacerun: yes;\">&nbsp;</span>This can help you understand your priorities and what truly matters to you. <span style=\"mso-spacerun: yes;\">&nbsp;</span></span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\">Set your own personal goals:</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify;\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Setting your own personal goals is an important aspect of personal development and growth. Here&rsquo;s a guide on how to set your own personal goals. To set your goals, define them clearly. Make sure to track your progress and create realistic goals. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify;\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 87.45pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l4 level1 lfo3;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Establish short-term and long-term goals personal development.</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 87.45pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l4 level1 lfo3;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Break down larger goals into smallest manageable steps. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 87.45pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l4 level1 lfo3;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Regularly sided and adjust your goals as needed. </span></strong></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 200%;\"><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 200%;\"><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">&nbsp;<iframe src=\"https://www.youtube.com/embed/PTIElBXyl-4\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></span></strong></p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\">Develop emotional intelligence: </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"line-height: 200%;\"><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; line-height: 150%;\"><strong><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',serif;\">This refers to the ability to recognize, understand and manage our own emotions as well as the ability to empathize with and influence the emotions of others. It involves self-awareness, self-regulation, motivation, empathy and effective interpersonal skills. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l3 level1 lfo4;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Understand and manage your emotions effectively. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l3 level1 lfo4;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Empathize with others and develop strong interpersonal relationships. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 90.25pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l3 level1 lfo4;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Communicate assertively and resolve conflicts constructively.</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\">Cultivate Positive Habits. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; line-height: 150%;\"><strong><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span><span style=\"mso-spacerun: yes;\">&nbsp; </span></span></strong><strong><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',serif;\">Cultivating positive habits involves intentionally adopting behaviors that contribute to your well-being and personal growth. These habits can have a positive impact on various aspects of your life, including physical health, mental well-being, productivity and relationships. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 87.45pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l1 level1 lfo5;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Establish routines that contribute to your well-being. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 87.45pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l1 level1 lfo5;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Practice good time management and organizational skills. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 87.45pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l1 level1 lfo5;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Adopt healthy lifestyle habits such as regular exercise and a balanced diet. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: #4472c4; mso-themecolor: accent1;\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; color: #4472c4; mso-themecolor: accent1;\">Build Confidence</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; line-height: 150%;\"><strong><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align: justify; line-height: 150%;\"><strong><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Times New Roman\',serif;\">Building confidence is the process of developing a positive and realistic perception of one&rsquo;s abilities, skill and worth. Confidence plays a crucial role in various aspects of life, including personal relationships success and overall well-being. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 83.7pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l5 level1 lfo6;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Celebrate your achievements, no matter how small. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 83.7pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l5 level1 lfo6;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Take on challenges that push you out of your comfort zone. </span></strong></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 83.7pt; mso-add-space: auto; text-indent: -.25in; line-height: 200%; mso-list: l5 level1 lfo6;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 200%; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; mso-bidi-font-weight: bold;\"><span style=\"mso-list: Ignore;\">&sect;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 200%; font-family: \'Times New Roman\',serif;\">Surround yourself with positive influences and supportive individuals. </span></strong></p>', 1, '2024-01-12 22:05:47', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upazila`
--

CREATE TABLE `upazila` (
  `UPAZILA_NO` int(11) NOT NULL,
  `DISTRICT_NO` int(11) NOT NULL,
  `UPAZILA_NAME` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazila`
--

INSERT INTO `upazila` (`UPAZILA_NO`, `DISTRICT_NO`, `UPAZILA_NAME`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(7, 1, 'Dohar ', 0, '0000-00-00 00:00:00', 0, NULL, NULL, 1, 3, '2023-11-06 04:59:05'),
(8, 1, 'Savar', 0, '0000-00-00 00:00:00', 0, NULL, NULL, 1, 3, '2023-11-06 04:59:09'),
(9, 2, 'Khulna Sadar', 0, '0000-00-00 00:00:00', 1, NULL, NULL, 1, 3, '2023-11-06 04:58:50'),
(10, 1, 'Banani', 1, '2023-04-30 12:11:39', 0, NULL, NULL, 0, NULL, NULL),
(11, 6, 'Palash', 1, '2023-04-30 12:12:06', 1, NULL, NULL, 0, NULL, NULL),
(12, 1, 'Gulshan', 1, '2023-04-30 12:15:53', 0, NULL, NULL, 0, NULL, NULL),
(13, 1, 'Lalbagh', 1, '2023-04-30 12:21:03', 0, NULL, NULL, 0, NULL, NULL),
(14, 9, 'Brahmanbaria Sadar', 1, '2023-04-30 12:22:24', 0, NULL, NULL, 0, NULL, NULL),
(15, 9, 'Poirtola', 1, '2023-04-30 12:22:36', 0, NULL, NULL, 0, NULL, NULL),
(16, 11, 'Feni Sadar', 1, '2023-04-30 12:25:46', 0, NULL, NULL, 0, NULL, NULL),
(17, 10, 'Bogura Sadar', 1, '2023-04-30 12:26:10', 0, NULL, NULL, 0, NULL, NULL),
(18, 10, 'Sherpur', 1, '2023-04-30 12:26:21', 0, NULL, NULL, 0, NULL, NULL),
(19, 1, 'Wari', 1, '2023-04-30 12:26:33', 0, NULL, NULL, 0, NULL, NULL),
(20, 1, 'Kafrul', 1, '2023-04-30 12:26:52', 0, NULL, NULL, 0, NULL, NULL),
(21, 1, 'Dhanmondi', 1, '2023-04-30 12:29:13', 0, NULL, NULL, 0, NULL, NULL),
(22, 1, 'Bhasan Tek', 1, '2023-04-30 12:29:25', 0, NULL, NULL, 1, 3, '2023-11-06 04:59:30'),
(23, 1, 'Cantonment', 1, '2023-04-30 12:29:40', 0, NULL, NULL, 1, 3, '2023-11-06 04:59:40'),
(24, 1, 'Bangshal', 1, '2023-04-30 12:29:55', 0, NULL, NULL, 0, NULL, NULL),
(25, 1, 'Gendaria', 1, '2023-04-30 12:30:18', 0, NULL, NULL, 0, NULL, NULL),
(26, 1, 'Hazaribagh', 1, '2023-04-30 12:30:40', 0, NULL, NULL, 0, NULL, NULL),
(27, 1, 'Jatrabari', 1, '2023-04-30 12:30:50', 0, NULL, NULL, 0, NULL, NULL),
(28, 1, 'Kadamtali', 1, '2023-04-30 12:31:01', 0, NULL, NULL, 0, NULL, NULL),
(29, 1, 'Kalabagan', 1, '2023-04-30 12:31:16', 0, NULL, NULL, 0, NULL, NULL),
(30, 1, 'Mohammadpur', 1, '2023-04-30 12:31:56', 0, NULL, NULL, 0, NULL, NULL),
(31, 1, 'Motijheel', 1, '2023-04-30 12:32:05', 0, NULL, NULL, 0, NULL, NULL),
(32, 1, 'Nawabganj', 1, '2023-04-30 12:32:19', 0, NULL, NULL, 0, NULL, NULL),
(33, 1, 'New Market', 1, '2023-04-30 12:32:28', 0, NULL, NULL, 0, NULL, NULL),
(34, 1, 'Pallabi', 1, '2023-04-30 12:32:40', 0, NULL, NULL, 0, NULL, NULL),
(35, 1, 'Paltan', 1, '2023-04-30 12:32:47', 0, NULL, NULL, 0, NULL, NULL),
(36, 1, 'Ramna', 1, '2023-04-30 12:33:00', 0, NULL, NULL, 0, NULL, NULL),
(37, 1, 'Shah Ali', 1, '2023-04-30 12:33:46', 0, NULL, NULL, 0, NULL, NULL),
(38, 1, 'Sutrapur', 1, '2023-04-30 12:34:10', 0, NULL, NULL, 0, NULL, NULL),
(39, 1, 'Tejgaon', 1, '2023-04-30 12:34:22', 0, NULL, NULL, 0, NULL, NULL),
(40, 1, 'Tejgaon Ind. Area', 1, '2023-04-30 12:34:30', 0, NULL, NULL, 0, NULL, NULL),
(41, 1, 'Turag', 1, '2023-04-30 12:34:54', 0, NULL, NULL, 0, NULL, NULL),
(42, 1, 'Uttara Purba', 1, '2023-04-30 12:35:07', 0, NULL, NULL, 0, NULL, NULL),
(43, 12, 'Baniachong', 3, '2023-11-06 04:45:54', 0, NULL, NULL, 0, NULL, NULL),
(44, 5, 'Bhairab', 3, '2023-12-07 11:04:57', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `USER_REG_NO` int(11) NOT NULL,
  `DISTRICT_NO` int(11) NOT NULL,
  `UPAZILA_NO` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `SUB_PRICE` int(11) NOT NULL,
  `EMAIL` varchar(300) NOT NULL,
  `INSTALLATION_FEE` varchar(150) NOT NULL,
  `TOTAL_PRICE` int(11) NOT NULL,
  `PACKAGES_NO` int(11) NOT NULL,
  `MOBILE` varchar(100) NOT NULL,
  `LANDMARK` varchar(200) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`USER_REG_NO`, `DISTRICT_NO`, `UPAZILA_NO`, `NAME`, `PRICE`, `SUB_PRICE`, `EMAIL`, `INSTALLATION_FEE`, `TOTAL_PRICE`, `PACKAGES_NO`, `MOBILE`, `LANDMARK`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(14, 1, 10, 'fod96', 3000, 3000, 'xitd96f97@gmail.com', '0', 3000, 4, '01750123456', '', '2023-10-21 17:09:56', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `working_hour`
--

CREATE TABLE `working_hour` (
  `WORK_NO` int(11) NOT NULL,
  `OFFICE_DAY` text NOT NULL,
  `WEEKEND` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_ON` datetime NOT NULL,
  `IS_UPDATED` int(1) NOT NULL DEFAULT 0,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_ON` datetime DEFAULT NULL,
  `IS_DELETED` int(1) NOT NULL DEFAULT 0,
  `DELETED_BY` int(11) DEFAULT NULL,
  `DELETED_ON` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `working_hour`
--

INSERT INTO `working_hour` (`WORK_NO`, `OFFICE_DAY`, `WEEKEND`, `CREATED_BY`, `CREATED_ON`, `IS_UPDATED`, `UPDATED_BY`, `UPDATED_ON`, `IS_DELETED`, `DELETED_BY`, `DELETED_ON`) VALUES
(1, 'Sat-Thurs : 9 am to 5 pm', 'Friday: closed', 1, '2018-11-26 13:05:49', 1, 2, '2023-03-21 10:53:01', 0, 0, '2018-11-26 13:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `xxx_user`
--

CREATE TABLE `xxx_user` (
  `user_no` int(11) NOT NULL,
  `EMPLOYEE_NO` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_full_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `user_contact` text COLLATE utf8_unicode_ci NOT NULL,
  `user_type_no` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xxx_user`
--

INSERT INTO `xxx_user` (`user_no`, `EMPLOYEE_NO`, `user_name`, `pass`, `user_full_name`, `user_address`, `user_email`, `user_contact`, `user_type_no`, `is_active`, `active_from`, `active_to`) VALUES
(1, 0, 'admin', '23df7fa4466179f2d051ea773ef37ce7', 'Admin', '', '', '1234567890', 1, 1, '2017-10-10', '2018-11-30'),
(2, 2, 'tareq', '23df7fa4466179f2d051ea773ef37ce7', 'tareq', '', '', '', 1, 1, '0000-00-00', '0000-00-00'),
(3, 5, 'hasan', '6b3855b88d71aeb47206fbdb738408b0', 'Fakhruddin Hasan', '', 'hasan@radiantbd.com', '', 1, 1, '2023-10-01', '2026-01-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`ABOUT_NO`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`applicant_no`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`CONTACT_NO`);

--
-- Indexes for table `coverage_area`
--
ALTER TABLE `coverage_area`
  ADD PRIMARY KEY (`CA_NO`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`DISTRICT_NO`);

--
-- Indexes for table `improve`
--
ALTER TABLE `improve`
  ADD PRIMARY KEY (`PRIVACY_NO`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`institution_no`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`job_experience_no`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`JOB_POST_NO`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`user_no`),
  ADD UNIQUE KEY `USER_NO` (`user_no`),
  ADD UNIQUE KEY `USER_NO_2` (`user_no`);

--
-- Indexes for table `make_cv`
--
ALTER TABLE `make_cv`
  ADD PRIMARY KEY (`PRIVACY_NO`);

--
-- Indexes for table `office_visit`
--
ALTER TABLE `office_visit`
  ADD PRIMARY KEY (`OFFICE_VISIT_NO`);

--
-- Indexes for table `our_service`
--
ALTER TABLE `our_service`
  ADD PRIMARY KEY (`SERVICE_NO`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`PACKAGE_NO`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`PACKAGES_NO`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`PARTNER_NO`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`PRIVACY_NO`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skills_no`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`SLIDE_NO`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`SOCIAL_NO`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TEAM_NO`);

--
-- Indexes for table `terms_of_use`
--
ALTER TABLE `terms_of_use`
  ADD PRIMARY KEY (`TERMS_NO`);

--
-- Indexes for table `upazila`
--
ALTER TABLE `upazila`
  ADD PRIMARY KEY (`UPAZILA_NO`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`USER_REG_NO`);

--
-- Indexes for table `working_hour`
--
ALTER TABLE `working_hour`
  ADD PRIMARY KEY (`WORK_NO`);

--
-- Indexes for table `xxx_user`
--
ALTER TABLE `xxx_user`
  ADD PRIMARY KEY (`user_no`),
  ADD UNIQUE KEY `USER_NAME` (`user_name`),
  ADD UNIQUE KEY `USER_NO` (`user_no`),
  ADD UNIQUE KEY `USER_NO_2` (`user_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `ABOUT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `applicant_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `CONTACT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coverage_area`
--
ALTER TABLE `coverage_area`
  MODIFY `CA_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `DISTRICT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `improve`
--
ALTER TABLE `improve`
  MODIFY `PRIVACY_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `institution_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `job_experience_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `JOB_POST_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `user_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `make_cv`
--
ALTER TABLE `make_cv`
  MODIFY `PRIVACY_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `office_visit`
--
ALTER TABLE `office_visit`
  MODIFY `OFFICE_VISIT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `our_service`
--
ALTER TABLE `our_service`
  MODIFY `SERVICE_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `PACKAGE_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `PACKAGES_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `PARTNER_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `PRIVACY_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skills_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `SLIDE_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `SOCIAL_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `TEAM_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `terms_of_use`
--
ALTER TABLE `terms_of_use`
  MODIFY `TERMS_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `upazila`
--
ALTER TABLE `upazila`
  MODIFY `UPAZILA_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `USER_REG_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `working_hour`
--
ALTER TABLE `working_hour`
  MODIFY `WORK_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `xxx_user`
--
ALTER TABLE `xxx_user`
  MODIFY `user_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table about_us
--

--
-- Metadata for table applicants
--

--
-- Metadata for table contact
--

--
-- Metadata for table coverage_area
--

--
-- Metadata for table district
--

--
-- Metadata for table improve
--

--
-- Metadata for table institutions
--

--
-- Metadata for table job_applicants
--

--
-- Metadata for table job_experiences
--

--
-- Metadata for table job_post
--

--
-- Metadata for table job_user
--

--
-- Metadata for table make_cv
--

--
-- Metadata for table office_visit
--

--
-- Metadata for table our_service
--

--
-- Metadata for table package
--

--
-- Metadata for table packages
--

--
-- Metadata for table partner
--

--
-- Metadata for table privacy
--

--
-- Metadata for table skills
--

--
-- Metadata for table slide
--

--
-- Metadata for table social_links
--

--
-- Metadata for table team
--

--
-- Metadata for table terms_of_use
--

--
-- Metadata for table upazila
--

--
-- Metadata for table user_reg
--

--
-- Metadata for table working_hour
--

--
-- Metadata for table xxx_user
--

--
-- Metadata for database site
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
