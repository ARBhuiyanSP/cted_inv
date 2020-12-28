-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 05:22 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cted_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `building_type` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chart_data_column`
--

CREATE TABLE `chart_data_column` (
  `month` varchar(10) NOT NULL,
  `sale` int(3) NOT NULL,
  `profit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complain_type`
--

CREATE TABLE `complain_type` (
  `id` int(11) NOT NULL,
  `complain_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cted_daily_activities`
--

CREATE TABLE `cted_daily_activities` (
  `id` int(11) NOT NULL,
  `equipment_id` varchar(25) NOT NULL,
  `night_shift` varchar(15) NOT NULL,
  `day_shift` varchar(15) NOT NULL,
  `total_hours` varchar(15) NOT NULL,
  `work_type` varchar(15) NOT NULL,
  `work_status` varchar(15) NOT NULL,
  `job_code` varchar(15) NOT NULL,
  `remarks` longtext NOT NULL,
  `job_title` varchar(1000) NOT NULL,
  `remedial_action` longtext NOT NULL,
  `new_problem` varchar(1000) NOT NULL,
  `status` varchar(15) NOT NULL,
  `used_parts` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `equipment_id` varchar(10) NOT NULL,
  `equipment_no` varchar(25) NOT NULL,
  `type_id` varchar(15) NOT NULL,
  `project_id` varchar(15) NOT NULL,
  `created_at` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `equipment_id`, `equipment_no`, `type_id`, `project_id`, `created_at`, `status`) VALUES
(2, 'CTED-001', 'QGC-01', '46', '1', '0000-00-00', ''),
(3, 'CTED-002', 'QGC-02', '46', '1', '0000-00-00', ''),
(4, 'CTED-003', 'QGC-03', '46', '1', '0000-00-00', ''),
(5, 'CTED-004', 'QGC-04', '46', '1', '0000-00-00', ''),
(6, 'CTED-005', 'QGC-05', '46', '1', '0000-00-00', ''),
(7, 'CTED-006', 'QGC-06', '46', '1', '0000-00-00', ''),
(8, 'CTED-007', 'QGC-07', '46', '1', '0000-00-00', ''),
(9, 'CTED-008', 'QGC-08', '46', '1', '0000-00-00', ''),
(10, 'CTED-009', 'QGC-09', '46', '1', '0000-00-00', ''),
(11, 'CTED-010', 'QGC-10', '46', '1', '0000-00-00', ''),
(12, 'CTED-011', 'QGC-11', '46', '1', '0000-00-00', ''),
(13, 'CTED-012', 'QGC-12', '46', '1', '0000-00-00', ''),
(14, 'CTED-013', 'QGC-13', '46', '1', '0000-00-00', ''),
(15, 'CTED-014', 'QGC-14', '46', '1', '0000-00-00', ''),
(16, 'CTED-015', 'RTG-07', '47', '1', '0000-00-00', ''),
(17, 'CTED-016', 'RTG-08', '47', '1', '0000-00-00', ''),
(18, 'CTED-017', 'RTG-08', '47', '1', '0000-00-00', ''),
(19, 'CTED-018', 'RTG-09', '47', '1', '0000-00-00', ''),
(20, 'CTED-019', 'RTG-10', '47', '1', '0000-00-00', ''),
(21, 'CTED-020', 'RTG-11', '47', '1', '0000-00-00', ''),
(22, 'CTED-021', 'RTG-12', '47', '1', '0000-00-00', ''),
(23, 'CTED-022', 'RTG-13', '47', '1', '0000-00-00', ''),
(24, 'CTED-023', 'RTG-14', '47', '1', '0000-00-00', ''),
(25, 'CTED-024', 'RTG-15', '47', '1', '0000-00-00', ''),
(26, 'CTED-024', 'RTG-15', '47', '1', '0000-00-00', ''),
(27, 'CTED-026', 'RTG-16', '47', '1', '0000-00-00', ''),
(28, 'CTED-027', 'RTG-17', '47', '1', '0000-00-00', ''),
(29, 'CTED-028', 'RTG-18', '47', '1', '0000-00-00', ''),
(30, 'CTED-029', 'RTG-19', '47', '1', '0000-00-00', ''),
(31, 'CTED-030', 'RTG-20', '47', '1', '0000-00-00', ''),
(32, 'CTED-031', 'RTG-21', '47', '1', '0000-00-00', ''),
(33, 'CTED-032', 'RTG-22', '47', '1', '0000-00-00', ''),
(34, 'CTED-033', 'RTG-23', '47', '1', '0000-00-00', ''),
(35, 'CTED-033', 'RTG-23', '47', '1', '0000-00-00', ''),
(36, 'CTED-035', 'RTG-24', '47', '1', '0000-00-00', ''),
(37, 'CTED-036', 'RTG-25', '47', '1', '0000-00-00', ''),
(38, 'CTED-037', 'RTG-26', '47', '1', '0000-00-00', ''),
(39, 'CTED-038', 'RTG-27', '47', '1', '0000-00-00', ''),
(40, 'CTED-039', 'RTG-28', '47', '1', '0000-00-00', ''),
(41, 'CTED-040', 'RTG-31', '47', '1', '0000-00-00', ''),
(42, 'CTED-041', 'RTG-32', '47', '1', '0000-00-00', ''),
(43, 'CTED-042', 'RTG-33', '47', '1', '0000-00-00', ''),
(44, 'CTED-043', 'RTG-34', '47', '1', '0000-00-00', ''),
(45, 'CTED-044', 'RTG-35', '47', '1', '0000-00-00', ''),
(46, 'CTED-045', 'RTG-36', '47', '1', '0000-00-00', ''),
(47, 'CTED-046', 'RTG-37', '47', '1', '0000-00-00', ''),
(48, 'CTED-047', 'RTG-38', '47', '1', '0000-00-00', ''),
(49, 'CTED-048', 'SP-08', '51', '1', '0000-00-00', '1'),
(50, 'CTED-049', 'SP-09', '51', '1', '0000-00-00', '1'),
(51, 'CTED-050', 'SP-10', '51', '1', '0000-00-00', '1'),
(52, 'CTED-051', 'SP-11', '51', '1', '0000-00-00', '1'),
(53, 'CTED-052', 'SP-12', '51', '1', '0000-00-00', '1'),
(54, 'CTED-053', 'SP-13', '51', '1', '0000-00-00', '1'),
(55, 'CTED-054', 'SP-14', '51', '1', '0000-00-00', '1'),
(56, 'CTED-055', 'SP-15', '51', '1', '0000-00-00', '1'),
(57, 'CTED-056', 'SP-16', '51', '1', '0000-00-00', '1'),
(58, 'CTED-057', 'SP-17', '51', '1', '0000-00-00', '1'),
(59, 'CTED-058', 'SP-19', '51', '1', '0000-00-00', '1'),
(60, 'CTED-059', 'SP-22', '51', '1', '0000-00-00', '1'),
(61, 'CTED-060', 'SP-23', '51', '1', '0000-00-00', '1'),
(62, 'CTED-061', 'SP-24', '51', '1', '0000-00-00', '1'),
(63, 'CTED-062', 'SP-25', '51', '1', '0000-00-00', '1'),
(64, 'CTED-063', 'SP-26', '51', '1', '0000-00-00', '1'),
(65, 'CTED-064', 'SP-27', '51', '1', '0000-00-00', '1'),
(66, 'CTED-065', 'SP-28', '51', '1', '0000-00-00', '1'),
(67, 'CTED-066', 'SP-30', '51', '1', '0000-00-00', '1'),
(68, 'CTED-067', 'SP-31', '51', '1', '0000-00-00', '1'),
(69, 'CTED-068', 'SP-32', '51', '1', '0000-00-00', '1'),
(70, 'CTED-069', 'SP-33', '51', '1', '0000-00-00', '1'),
(71, 'CTED-070', 'SP-35', '51', '1', '0000-00-00', '1'),
(72, 'CTED-071', 'SP-36', '51', '1', '0000-00-00', '1'),
(73, 'CTED-072', 'SP-37', '51', '1', '0000-00-00', '1'),
(74, 'CTED-073', 'SP-39', '51', '1', '0000-00-00', '1'),
(75, 'CTED-074', 'SP-40', '51', '1', '0000-00-00', '1'),
(76, 'CTED-075', 'SP-41', '51', '1', '0000-00-00', '1'),
(77, 'CTED-076', 'SP-42', '51', '1', '0000-00-00', '1'),
(78, 'CTED-077', 'SP-43', '51', '1', '0000-00-00', '1'),
(79, 'CTED-078', 'SP-44', '51', '1', '0000-00-00', '1'),
(80, 'CTED-079', 'SP-45', '51', '1', '0000-00-00', '1'),
(81, 'CTED-080', 'SP-46', '51', '1', '0000-00-00', '1'),
(82, 'CTED-081', 'SP-47', '51', '1', '0000-00-00', '1'),
(83, 'CTED-082', 'SP-48', '51', '1', '0000-00-00', '1'),
(84, 'CTED-083', 'SP-49', '51', '1', '0000-00-00', '1'),
(85, 'CTED-084', 'SP-50', '51', '1', '0000-00-00', '1'),
(86, 'CTED-085', 'SP-51', '51', '1', '0000-00-00', '1'),
(87, 'CTED-086', 'SP-52', '51', '1', '0000-00-00', '1'),
(88, 'CTED-087', 'SP-53', '51', '1', '0000-00-00', '1'),
(89, 'CTED-088', 'SP-54', '51', '1', '0000-00-00', '1'),
(90, 'CTED-089', 'SP-55', '51', '1', '0000-00-00', '1'),
(91, 'CTED-090', 'SP-56', '51', '1', '0000-00-00', '1'),
(92, 'CTED-091', 'SP-57', '51', '1', '0000-00-00', '1'),
(93, 'CTED-092', 'SP-58', '51', '1', '0000-00-00', '1'),
(94, 'CTED-093', 'SP-59', '51', '1', '0000-00-00', '1'),
(95, 'CTED-094', 'SP-60', '51', '1', '0000-00-00', '1'),
(96, 'CTED-095', 'SP-61', '51', '1', '0000-00-00', '1'),
(97, 'CTED-096', 'SP-62', '51', '1', '0000-00-00', '1'),
(98, 'CTED-097', 'SP-63', '51', '1', '0000-00-00', '1'),
(99, 'CTED-098', 'SP-64', '51', '1', '0000-00-00', '1'),
(100, 'CTED-099', 'SP-65', '51', '1', '0000-00-00', '1'),
(101, 'CTED-100', 'SP-66', '51', '1', '0000-00-00', '1'),
(102, 'CTED-101', 'SP-67', '51', '1', '0000-00-00', '1'),
(103, 'CTED-102', 'SP-68', '51', '1', '0000-00-00', '1'),
(104, 'CTED-103', 'SP-69', '51', '1', '0000-00-00', '1'),
(105, 'CTED-104', 'SP-70', '51', '1', '0000-00-00', '1'),
(106, 'CTED-105', 'SP-71', '51', '1', '0000-00-00', '1'),
(107, 'CTED-106', 'SP-72', '51', '1', '0000-00-00', '1'),
(108, 'CTED-107', 'SP-73', '51', '1', '0000-00-00', '1'),
(109, 'CTED-108', 'SP-74', '51', '1', '0000-00-00', '1'),
(110, 'CTED-109', 'SP-75', '51', '1', '0000-00-00', '1'),
(111, 'CTED-110', 'SP-76', '51', '1', '0000-00-00', '1'),
(112, 'CTED-111', 'SP-77', '51', '1', '0000-00-00', '1'),
(113, 'CTED-112', 'SP-78', '51', '1', '0000-00-00', '1'),
(114, 'CTED-113', 'SP-79', '51', '1', '0000-00-00', '1'),
(115, 'CTED-114', 'SP-80', '51', '1', '0000-00-00', '1'),
(116, 'CTED-115', 'SP-81', '51', '1', '0000-00-00', '1'),
(117, 'CTED-116', 'SP-82', '51', '1', '0000-00-00', '1'),
(118, 'CTED-117', 'SP-83', '51', '1', '0000-00-00', '1'),
(119, 'CTED-118', 'SP-84', '51', '1', '0000-00-00', '1'),
(120, 'CTED-119', 'SP-85', '51', '1', '0000-00-00', '1'),
(121, 'CTED-120', 'SP-86', '51', '1', '0000-00-00', '1'),
(122, 'CTED-121', 'SP-87', '51', '1', '0000-00-00', '1'),
(123, 'CTED-122', 'SP-88', '51', '1', '0000-00-00', '1'),
(124, 'CTED-123', 'SP-89', '51', '1', '0000-00-00', '1'),
(125, 'CTED-124', 'SP-90', '51', '1', '0000-00-00', '1'),
(126, 'CTED-125', 'SP-91', '51', '1', '0000-00-00', '1'),
(127, 'CTED-126', 'SP-92', '51', '1', '0000-00-00', '1'),
(128, 'CTED-127', 'SP-93', '51', '1', '0000-00-00', '1'),
(129, 'CTED-128', 'SP-94', '51', '1', '0000-00-00', '1'),
(130, 'CTED-129', 'SP-95', '51', '1', '0000-00-00', '1'),
(131, 'CTED-130', 'SP-96', '51', '1', '0000-00-00', '1'),
(132, 'CTED-131', 'SP-97', '51', '1', '0000-00-00', '1'),
(133, 'CTED-132', 'SP-98', '51', '1', '0000-00-00', '1'),
(134, 'CTED-133', 'SP-99', '51', '1', '0000-00-00', '1'),
(135, 'CTED-134', 'SP-100', '51', '1', '0000-00-00', '1'),
(136, 'CTED-135', 'SP-101', '51', '1', '0000-00-00', '1'),
(137, 'CTED-136', 'SP-102', '51', '1', '0000-00-00', '1'),
(138, 'CTED-137', 'SP-103', '51', '1', '0000-00-00', '1'),
(139, 'CTED-138', 'SP-104', '51', '1', '0000-00-00', '1'),
(140, 'CTED-139', 'SP-139', '51', '1', '0000-00-00', '1'),
(141, 'CTED-140', 'FLT-04', '49', '1', '0000-00-00', '1'),
(142, 'CTED-141', 'FLT-06', '49', '1', '0000-00-00', '1'),
(143, 'CTED-142', 'FLT-07', '49', '1', '0000-00-00', '1'),
(144, 'CTED-143', 'FLT-08', '49', '1', '0000-00-00', '1'),
(145, 'CTED-144', 'FLT-11', '49', '1', '0000-00-00', '1'),
(146, 'CTED-145', 'FLT-12', '49', '1', '0000-00-00', '1'),
(147, 'CTED-146', 'FLT-13', '49', '1', '0000-00-00', '1'),
(148, 'CTED-147', 'FLT-15', '49', '1', '0000-00-00', '1'),
(149, 'CTED-148', 'RST-17', '48', '1', '0000-00-00', '1'),
(150, 'CTED-149', 'FLT-18', '49', '1', '0000-00-00', '1'),
(151, 'CTED-150', 'FLT-19', '49', '1', '0000-00-00', '1'),
(152, 'CTED-151', 'FLT-20', '49', '1', '0000-00-00', '1'),
(153, 'CTED-152', 'FLT-21', '49', '1', '0000-00-00', '1'),
(154, 'CTED-153', 'FLT-22', '49', '1', '0000-00-00', '1'),
(155, 'CTED-154', 'FLT-23', '49', '1', '0000-00-00', '1'),
(156, 'CTED-155', 'FLT-24', '49', '1', '0000-00-00', '1'),
(157, 'CTED-156', 'FLT-25', '49', '1', '0000-00-00', '1'),
(158, 'CTED-157', 'FLT-26', '49', '1', '0000-00-00', '1'),
(159, 'CTED-158', 'FLT-27', '49', '1', '0000-00-00', '1'),
(160, 'CTED-159', 'RST-28', '48', '1', '0000-00-00', '1'),
(161, 'CTED-160', 'SP-105', '51', '1', '0000-00-00', '1'),
(162, 'CTED-161', 'SP-106', '51', '1', '0000-00-00', '1'),
(163, 'CTED-162', 'SP-107', '51', '1', '0000-00-00', '1'),
(164, 'CTED-163', 'SP-108', '51', '1', '0000-00-00', '1'),
(165, 'CTED-164', 'SP-109', '51', '1', '0000-00-00', '1'),
(166, 'CTED-165', 'SP-110', '51', '1', '0000-00-00', '1'),
(167, 'CTED-166', 'SP-111', '51', '1', '0000-00-00', '1'),
(168, 'CTED-167', 'SP-112', '51', '1', '0000-00-00', '1'),
(169, 'CTED-168', 'SP-113', '51', '1', '0000-00-00', '1'),
(170, 'CTED-169', 'SP-114', '51', '1', '0000-00-00', '1'),
(171, 'CTED-170', 'SP-115', '51', '1', '0000-00-00', '1'),
(172, 'CTED-171', 'SP-116', '51', '1', '0000-00-00', '1'),
(173, 'CTED-172', 'SP-117', '51', '1', '0000-00-00', '1'),
(174, 'CTED-173', 'SP-118', '51', '1', '0000-00-00', '1'),
(175, 'CTED-174', 'SP-119', '51', '1', '0000-00-00', '1'),
(176, 'CTED-175', 'SP-120', '51', '1', '0000-00-00', '1'),
(177, 'CTED-176', 'SP-121', '51', '1', '0000-00-00', '1'),
(178, 'CTED-177', 'SP-122', '51', '1', '0000-00-00', '1'),
(179, 'CTED-178', 'SP-123', '51', '1', '0000-00-00', '1'),
(180, 'CTED-179', 'SP-124', '51', '1', '0000-00-00', '1'),
(181, 'CTED-180', 'SP-125', '51', '1', '0000-00-00', '1'),
(182, 'CTED-181', 'SP-126', '51', '1', '0000-00-00', '1'),
(183, 'CTED-182', 'SP-127', '51', '1', '0000-00-00', '1'),
(184, 'CTED-183', 'SP-128', '51', '1', '0000-00-00', '1'),
(185, 'CTED-184', 'SP-129', '51', '1', '0000-00-00', '1'),
(186, 'CTED-185', 'SP-130', '51', '1', '0000-00-00', '1'),
(187, 'CTED-186', 'SP-131', '51', '1', '0000-00-00', '1'),
(188, 'CTED-187', 'SP-132', '51', '1', '0000-00-00', '1'),
(189, 'CTED-188', 'SP-133', '51', '1', '0000-00-00', '1'),
(190, 'CTED-189', 'SP-134', '51', '1', '0000-00-00', '1'),
(191, 'CTED-190', 'SP-135', '51', '1', '0000-00-00', '1'),
(192, 'CTED-191', 'SP-136', '51', '1', '0000-00-00', '1'),
(193, 'CTED-192', 'SP-137', '51', '1', '0000-00-00', '1'),
(194, 'CTED-193', 'SP-138', '51', '1', '0000-00-00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_challan`
--

CREATE TABLE `inv_challan` (
  `id` int(11) NOT NULL,
  `challan_no` varchar(100) NOT NULL,
  `challan_date` varchar(100) NOT NULL,
  `csn` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complain`
--

CREATE TABLE `inv_complain` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `vehicle_reg_no` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `chasis_no` varchar(100) NOT NULL,
  `brand_model` varchar(100) NOT NULL,
  `engine_no` varchar(100) NOT NULL,
  `owner_phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `driver_phone` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complaindetails`
--

CREATE TABLE `inv_complaindetails` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `complain_details` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_designation`
--

CREATE TABLE `inv_designation` (
  `id` int(11) NOT NULL,
  `des_id` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_employee`
--

CREATE TABLE `inv_employee` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `join_date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_ga_listunit`
--

CREATE TABLE `inv_ga_listunit` (
  `id` int(11) NOT NULL,
  `lunit_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `lunit_name` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice`
--

CREATE TABLE `inv_invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `invoice_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `total_qty` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `total_service` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice_details`
--

CREATE TABLE `inv_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `unit_price` varchar(100) NOT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issue`
--

CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issue`
--

INSERT INTO `inv_issue` (`id`, `issue_id`, `issue_date`, `received_by`, `receiver_phone`, `remarks`, `project_id`, `warehouse_id`, `issued_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `issue_image`) VALUES
(7, 'IS-CW-001', '2020-12-23', '', '', 'test', '1', '1', '', 0, '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_issuedetail`
--

CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `issue_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `m_name` varchar(25) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `use_in` varchar(50) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issuedetail`
--

INSERT INTO `inv_issuedetail` (`id`, `issue_id`, `issue_date`, `material_id`, `material_name`, `m_name`, `unit`, `issue_qty`, `issue_price`, `part_no`, `use_in`, `project_id`, `warehouse_id`, `package_id`, `building_id`, `approval_status`) VALUES
(14, 'IS-CW-001', '2020-12-23', '10-01-01-', '277', '', '20', 2, 0, 'JO35501', 'FLT-04', '1', '1', '', '', 0),
(15, 'IS-CW-001', '2020-12-23', '10-01-01-', '279', '', '20', 3, 0, '', 'FLT-06', '1', '1', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(20, 'Pcs'),
(21, 'Ltr'),
(22, 'Kg'),
(23, 'Sets');

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card`
--

CREATE TABLE `inv_job_card` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `inv_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card_details`
--

CREATE TABLE `inv_job_card_details` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `task_details` varchar(100) NOT NULL,
  `assign_to` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL,
  `material_id_code` varchar(100) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `material_level3_id` int(11) DEFAULT NULL,
  `material_level4_id` int(11) DEFAULT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `spec` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `material_min_stock` int(11) DEFAULT NULL,
  `avg_con_sump` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) DEFAULT NULL,
  `cur_qty` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `cur_value` int(11) DEFAULT NULL,
  `last_issue` date DEFAULT NULL,
  `last_receive` date DEFAULT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_material`
--

INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_level3_id`, `material_level4_id`, `material_description`, `spec`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`) VALUES
(275, '02-02-01-01-001', '47', '119', 20, 12, 'Ethernet Switch', '--', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP116606'),
(276, '02-02-04-04-001', '47', '119', 23, 15, 'Engine Control Unit', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '21695319'),
(277, '10-01-01-01-001', '55', '137', 70, 56, 'Air Filter', '---', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP116606'),
(278, '10-01-01-01-002', '55', '137', 0, 0, 'Air Filters', '', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(279, '10-01-01-01-003', '55', '137', 0, 0, 'Air Filter', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(280, '10-01-01-01-004', '55', '137', 70, 56, 'Air Filter', '--', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'AF21702911'),
(281, '10-01-01-01-005', '55', '137', 70, 56, 'Air Filter', '--', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A2418'),
(282, '10-02-01-01-001', '55', '138', 71, 57, 'Fuel Pre Filter element', '--', '', 30, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J036736'),
(283, '10-02-01-01-002', '55', '138', 71, 57, 'Primary Fuel Filter Element', '--', '', 35, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J015274'),
(284, '10-03-01-01-001', '55', '139', 72, 58, 'Oil Filter', '--', '', 30, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J027812'),
(285, '02-02-04-04-001', '47', '119', 23, 16, 'AC PUMP, Pre Filter', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031358'),
(286, '02-02-04-04-002', '47', '119', 23, 16, 'Air Filter Caging', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035270'),
(287, '10-02-01-01-003', '55', '138', 71, 57, 'Fuel Filter', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FF 5507'),
(288, '10-02-01-01-004', '55', '138', 71, 57, 'Fuel-Water Seperator', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FS 19735'),
(289, '10-03-01-01-002', '55', '139', 72, 58, 'Oil Bypass Filter', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF 3654'),
(290, '10-03-01-01-003', '55', '139', 72, 58, 'Oil Main Filter', '--', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF 4112'),
(291, '10-03-01-01-004', '55', '139', 72, 58, 'Oil Filter', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'LF9009'),
(292, '10-02-01-01-005', '55', '138', 71, 57, 'Fuel-Water Seperator', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FS 1000'),
(293, '10-04-01-01-001', '55', '140', 73, 59, 'Coolant Filter', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'WF2076'),
(294, '02-02-04-04-003', '47', '119', 23, 16, 'Injector', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031348'),
(295, '02-02-04-04-004', '47', '119', 23, 16, 'Fuel Pump, AGCO SISU', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031317'),
(296, '02-02-04-04-005', '47', '119', 23, 16, 'Over Flow Valve, PRV', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031334'),
(297, '02-02-04-04-006', '47', '119', 23, 16, 'Valve Lifter, PUSHER', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '836014264'),
(298, '02-02-04-04-007', '47', '119', 23, 16, 'Turbo Charger, AGCO SISU', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J03195.0100'),
(299, '02-02-04-04-008', '47', '119', 23, 16, 'Engine Control Unit', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033110'),
(300, '02-02-01-01-002', '47', '119', 20, 12, 'PLC, WAGO power module ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104392'),
(301, '02-02-04-04-009', '47', '119', 23, 16, 'Main bearing, standard', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028111'),
(302, '02-02-04-04-010', '47', '119', 23, 16, 'Main bearing-sisu, standard', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028112'),
(303, '02-02-04-04-011', '47', '119', 23, 16, 'Big End bearing, standard', '', '', 6, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028395'),
(304, '02-02-04-04-012', '47', '119', 23, 16, 'Piston ring', '', '', 6, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031440'),
(305, '02-02-04-04-013', '47', '119', 23, 16, 'Cylinder liner', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028311'),
(306, '02-02-04-04-014', '47', '119', 23, 16, 'Overhauling kit, Gasket ', '', '', 1, NULL, NULL, 0, '23', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033123'),
(307, '02-02-04-04-015', '47', '119', 23, 16, 'Belt Tightener', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028658'),
(308, '02-02-04-04-016', '47', '119', 23, 16, 'Impeller-Water Pump', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '836336047'),
(309, '02-02-04-04-017', '47', '119', 23, 16, 'Shaft-Water Pump', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031292'),
(310, '02-02-04-04-018', '47', '119', 23, 16, 'Water Pump Gasket', '--', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028599'),
(311, '02-02-01-01-003', '47', '119', 20, 12, 'Proximity sensor, bromma', '24V, NPN, Ø25MM', '', 5, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ' J03508.0100'),
(312, '02-02-04-04-019', '47', '119', 23, 16, 'AVR, REGULATOR', 'MX342_2', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104924'),
(313, '02-02-04-04-020', '47', '119', 23, 16, 'Diode, Battery Charging', '--', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J021472'),
(314, '02-02-01-01-004', '47', '119', 20, 12, 'Profi safe', '750-660,8FDI MODULE', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104449'),
(315, '02-02-01-01-005', '47', '119', 20, 12, 'Profi safe', '750-665,4FDO+4FDI MODULE', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104397'),
(316, '02-02-01-01-006', '47', '119', 20, 12, 'PLC', '753-530, 8XDO MODULE', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104401'),
(317, '02-02-01-01-007', '47', '119', 20, 12, 'PLC', '730-430, 8XDI MODULE', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104398'),
(318, '02-02-04-04-021', '47', '119', 23, 16, 'Starter Motor, AGCO SISU', '24V, 11 TEETH', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035071'),
(319, '02-02-01-01-008', '47', '119', 20, 12, 'sensor, Absolute Encoder ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104231'),
(320, '02-02-01-01-009', '47', '119', 20, 12, 'Sensor', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP102211'),
(321, '02-02-01-01-010', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300230'),
(322, '02-02-01-01-011', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300251'),
(323, '02-02-01-01-012', '47', '119', 20, 12, 'Display unit, operators cabin', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104153'),
(324, '02-02-01-01-013', '47', '119', 20, 12, 'TT drive chain', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'KS100892'),
(325, '02-02-01-01-014', '47', '119', 20, 12, 'Gantry brake solenoid', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801904778'),
(326, '02-02-01-01-015', '47', '119', 20, 0, 'RECTIFIER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028977'),
(327, '02-02-01-01-015', '47', '119', 0, 0, 'RECTIFIER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(328, '02-02-01-01-016', '47', '119', 20, 12, 'ALTERNATOR REGULATOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1780'),
(329, '02-02-01-01-017', '47', '119', 20, 12, 'CONTACTOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : J014795, NEW P/N : 806109804'),
(330, '02-02-01-01-018', '47', '119', 20, 12, 'CONTACTOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104444'),
(331, '02-02-01-01-019', '47', '119', 20, 12, 'DIODE', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106058'),
(332, '02-02-01-01-020', '47', '119', 20, 12, 'REMOTE CONTROL', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104477'),
(333, '02-02-04-04-002', '47', '119', 23, 15, 'Turning tools', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '9993590'),
(334, '02-02-04-04-022', '47', '119', 23, 16, 'ALTERNATOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028806'),
(335, '02-02-04-04-003', '47', '119', 23, 15, 'Starter motor, TAD1641VE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028809'),
(336, '02-02-04-04-023', '47', '119', 23, 16, 'Starter relay', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923120.0708'),
(337, '02-02-04-04-004', '47', '119', 23, 15, 'TURBO CHARGER , TAD1641VE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J022021'),
(338, '02-02-04-04-005', '47', '119', 23, 15, 'INJECTOR EXCHANGE(23000), TAD1641VE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018323A'),
(339, '02-02-04-04-006', '47', '119', 23, 15, 'Fuel pump, TAD1641VE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028827'),
(340, '02-02-04-04-007', '47', '119', 23, 15, 'FUEL PUMP', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028828'),
(341, '02-02-01-01-020', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104449'),
(342, '02-02-01-01-021', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104397'),
(343, '02-02-01-01-022', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104398'),
(344, '02-02-01-01-023', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104401'),
(345, '02-02-01-01-024', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104451'),
(346, '02-02-01-01-025', '47', '119', 20, 12, 'MODULE ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J027725'),
(347, '02-02-01-01-026', '47', '119', 20, 12, 'WAGO analog module', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104399'),
(348, '02-02-01-01-027', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP108604'),
(349, '02-02-01-01-028', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104402'),
(350, '02-02-01-01-029', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104403'),
(351, '02-02-01-01-030', '47', '119', 20, 12, 'WAGO END MODULE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104393'),
(352, '02-02-01-01-031', '47', '119', 20, 12, 'CAN-DP MODULE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300215'),
(353, '02-02-01-01-032', '47', '119', 20, 12, 'CONVERTOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107807'),
(354, '02-02-01-01-033', '47', '119', 20, 12, 'SENSOR ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD-OLD P/N : 806109569,  NEW P/N : 806109443'),
(355, '02-02-01-01-034', '47', '119', 20, 12, 'RECTIFIER ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J015089'),
(356, '02-02-01-01-035', '47', '119', 20, 12, 'SOLENOID', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801904778'),
(357, '02-02-01-01-036', '47', '119', 20, 12, 'RECTIFIER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018949'),
(358, '02-02-01-01-037', '47', '119', 20, 12, 'ENCODER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : 806108358, NEW P/N : JO7300.0100'),
(359, '02-02-01-01-038', '47', '119', 20, 12, 'RECTIFIER ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J22286'),
(360, '02-02-01-01-039', '47', '119', 20, 12, 'INDUCTIVE SWITCH', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107575'),
(361, '02-02-01-01-040', '47', '119', 20, 12, 'INDUCTIVE SENSOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '807605708'),
(362, '02-02-01-01-041', '47', '119', 20, 12, 'BRAKE PAD SET ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '807605417'),
(363, '02-02-01-01-042', '47', '119', 20, 12, 'BRAKE PAD SET ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801903895'),
(364, '02-02-01-01-043', '47', '119', 20, 12, 'DIODE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109740'),
(365, '02-02-01-01-044', '47', '119', 20, 12, 'CONTACTOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP105136'),
(366, '02-02-01-01-045', '47', '119', 20, 12, 'TOUCH SCREEN', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106418'),
(367, '02-02-01-01-046', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : 65300210, NEW P/N : J01786.0100'),
(368, '02-02-01-01-047', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300230'),
(369, '02-02-01-01-048', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300232'),
(370, '02-02-01-01-049', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65300251'),
(371, '02-02-01-01-050', '47', '119', 20, 12, 'PROFIBUS DP CONNECTOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP102256'),
(372, '02-02-01-01-051', '47', '119', 20, 12, 'DC CONVERTER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104448'),
(373, '02-02-01-01-052', '47', '119', 20, 12, 'DC CONVERTER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104828'),
(374, '02-02-01-01-053', '47', '119', 20, 12, 'SAFETY RELAY', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104026'),
(375, '02-02-01-01-054', '47', '119', 20, 12, 'PLC STOP RELAY', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J017427'),
(376, '02-02-01-01-055', '47', '119', 20, 12, 'PULSE AMPLIFIER ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109843'),
(377, '02-02-01-01-056', '47', '119', 20, 12, 'DIODE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106058'),
(378, '02-02-01-01-057', '47', '119', 20, 12, 'ENCODER, MH MOTOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109442'),
(379, '02-02-01-01-058', '47', '119', 20, 12, 'MICRO SWITCH ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '801903896'),
(380, '02-02-01-01-059', '47', '119', 20, 12, 'TT motor brake magnetic coupling', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109991'),
(381, '02-02-01-01-060', '47', '119', 20, 12, 'LIMIT SWITCH ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65237124'),
(382, '02-02-01-01-061', '47', '119', 20, 12, 'RELAY ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : J019120, NEW P/N : 652381065'),
(383, '02-02-01-01-062', '47', '119', 20, 12, 'CONTROL HANDLE , MH/GT', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : N5773900, NEW P/N : 65301702'),
(384, '02-02-01-01-063', '47', '119', 20, 12, 'CONTROLLER, TROLLEY', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'N5773840'),
(385, '02-02-01-01-064', '47', '119', 20, 12, 'PLC(INPUT)', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65267422'),
(386, '02-02-01-01-065', '47', '119', 20, 12, 'Spreader anti-sway control unit, sensor', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '65302530'),
(387, '02-02-01-01-066', '47', '119', 20, 12, 'CHAIN FASTERNER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'N4061070'),
(388, '02-02-01-01-067', '47', '119', 20, 12, 'CONNECTING LINK', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '60611634'),
(389, '02-02-01-01-068', '47', '119', 20, 12, 'TIME RELAY, BROMMA', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1002028'),
(390, '02-02-01-01-069', '47', '119', 20, 12, 'TIME RELAY, BROMMA', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1029946'),
(391, '02-02-01-01-070', '47', '119', 20, 12, 'TIME RELAY, BROMMA', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1003363'),
(392, '02-02-01-01-071', '47', '119', 20, 12, 'Spreader motor, Twist Lock', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1031544'),
(393, '02-02-01-01-072', '47', '119', 20, 12, 'Spreader Telescopic Motor', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1031542'),
(394, '02-02-01-01-073', '47', '119', 20, 12, 'PROXIMITY SWITCH', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1034213'),
(395, '02-02-01-01-074', '47', '119', 20, 12, 'SOLID STATE REV CONTRACTOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1029649'),
(396, '02-02-01-01-075', '47', '119', 20, 12, 'SOLID STATE REV CONTRACTOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1029647'),
(397, '02-02-01-01-076', '47', '119', 20, 12, 'SENSOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031376'),
(398, '02-02-01-01-077', '47', '119', 20, 12, 'PROXYMITY SWITCH', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ' J03508.0100'),
(399, '02-02-01-01-078', '47', '119', 20, 12, 'SENSOR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104231'),
(400, '02-02-01-01-079', '47', '119', 20, 12, 'PLC', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP105221'),
(401, '02-02-01-01-080', '47', '119', 20, 12, 'GEAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO31236'),
(402, '02-02-02-02-001', '47', '119', 21, 13, 'GEAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO31322'),
(403, '02-02-02-02-002', '47', '119', 21, 13, 'GEAR', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO33019'),
(404, '02-02-01-01-081', '47', '119', 20, 12, 'RELAY ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OLD P/N : J017427, NEW P/N : 65238128'),
(405, '02-02-04-04-024', '47', '119', 23, 16, 'KEY', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '902455800'),
(406, '02-02-04-04-025', '47', '119', 23, 16, 'VALVE LEVER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J021481'),
(407, '02-02-04-04-026', '47', '119', 23, 16, 'SHAFT', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028490'),
(408, '02-02-04-04-027', '47', '119', 23, 16, 'ROCKER ARM', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028485'),
(409, '02-02-04-04-028', '47', '119', 23, 16, 'ROCKER ARM', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028487'),
(410, '02-02-04-04-029', '47', '119', 23, 16, 'VALVE GUIDE', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028527'),
(411, '02-02-04-04-030', '47', '119', 23, 16, 'VALVE SEAT', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18741'),
(412, '02-02-04-04-031', '47', '119', 23, 16, 'VALVE SEAT', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18742'),
(413, '02-02-04-04-032', '47', '119', 23, 16, 'INDUCTION VALVE', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028501'),
(414, '02-02-04-04-033', '47', '119', 23, 16, 'SPRING PLATE', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018727'),
(415, '02-02-04-04-034', '47', '119', 23, 16, 'SPRING', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018728'),
(416, '02-02-01-01-082', '47', '119', 20, 12, 'Breaking unit', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J017888'),
(417, '02-02-01-01-083', '47', '119', 20, 12, 'IGBT', 'SKM200GAL, 126D', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(418, '02-02-01-01-084', '47', '119', 20, 12, 'PLC', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP104399'),
(419, '02-02-01-01-085', '47', '119', 20, 12, 'TEMPARATURE SENSOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP108758'),
(420, '02-02-01-01-086', '47', '119', 20, 12, 'OIL PRESSURE SENSOR ', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018887'),
(421, '02-02-01-01-087', '47', '119', 20, 12, 'SENSOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031375'),
(422, '02-02-04-04-035', '47', '119', 23, 16, 'SENSOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018889'),
(423, '02-02-04-04-036', '47', '119', 23, 16, 'SPEED SENSOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06205.0100'),
(424, '02-02-04-04-037', '47', '119', 23, 16, 'SENSOR ', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031360'),
(425, '02-02-04-04-038', '47', '119', 23, 16, 'SOLENOID', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0172'),
(426, '02-02-04-04-039', '47', '119', 23, 16, 'SENSOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0328'),
(427, '02-02-04-04-040', '47', '119', 23, 16, 'GEAR RIM', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028381'),
(428, '02-02-04-04-041', '47', '119', 23, 16, 'COOLENT PUMP', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J02548.0100'),
(429, '02-02-04-04-042', '47', '119', 23, 16, 'WIRE', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018895'),
(430, '02-02-04-04-043', '47', '119', 23, 16, 'NUT', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031379'),
(431, '02-02-04-04-044', '47', '119', 23, 16, 'FUSE', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J021745'),
(432, '02-02-04-04-045', '47', '119', 23, 16, 'TRANSFORMER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '806109736'),
(433, '02-02-04-04-046', '47', '119', 23, 16, 'WIRE HARNESS', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J030605'),
(434, '02-02-04-04-047', '47', '119', 23, 16, 'SENSOR, WATER SEPERATOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J031360'),
(435, '02-02-04-04-048', '47', '119', 23, 16, 'WIRE', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0333'),
(436, '02-02-04-04-049', '47', '119', 23, 16, 'RUBBER BEND', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J029726'),
(437, '02-02-04-04-050', '47', '119', 23, 16, 'PIPE', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035272'),
(438, '02-02-04-04-051', '47', '119', 23, 16, 'JOIN FITTING', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035273'),
(439, '02-02-04-04-052', '47', '119', 23, 16, 'CIRCUIT BREAKER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP108176'),
(440, '02-02-04-04-053', '47', '119', 23, 16, 'WIRING SET', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033111'),
(441, '02-02-01-01-088', '47', '119', 20, 12, 'QUICK COUPLER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924473.0042'),
(442, '02-02-04-04-054', '47', '119', 23, 16, 'QUICK COUPLER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924473.0041'),
(443, '02-02-04-04-055', '47', '119', 23, 16, 'WASHER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920058.019'),
(444, '02-02-04-04-056', '47', '119', 23, 16, 'COOLING SYSTEM', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0090130'),
(445, '02-02-04-04-008', '47', '119', 23, 15, 'HEAD GASKET', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '21575727'),
(446, '02-02-01-01-089', '47', '119', 20, 12, 'SWITCH', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920971.0009'),
(447, '02-02-04-04-057', '47', '119', 23, 16, 'GEAR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033018'),
(448, '02-02-04-04-058', '47', '119', 23, 16, 'GEAR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033019'),
(449, '02-02-04-04-059', '47', '119', 23, 16, 'PUSH ROD', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06456.0100'),
(450, '02-02-04-04-060', '47', '119', 23, 16, 'GEAR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J033064'),
(451, '02-02-01-01-090', '47', '119', 20, 12, 'SOLENOID', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0362'),
(452, '02-02-02-02-003', '47', '119', 21, 13, 'PLANETARY GEAR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0002020'),
(453, '02-02-02-02-004', '47', '119', 21, 13, 'DRIVE GEAR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0002030'),
(454, '02-02-01-01-091', '47', '119', 20, 12, 'SENSOR SPEED', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP110853'),
(455, '02-02-01-01-092', '47', '119', 20, 12, 'RECTIFIER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0016860'),
(456, '02-02-04-04-061', '47', '119', 23, 16, 'PISTON', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06672.0100'),
(457, '02-02-01-01-093', '47', '119', 20, 12, 'TELEPHONE ', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP101111'),
(458, '02-02-01-01-094', '47', '119', 20, 12, 'DISPLAY ', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106418'),
(459, '02-02-01-01-095', '47', '119', 20, 12, 'GT MOTOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'KS102237'),
(460, '02-02-04-04-009', '47', '119', 23, 15, 'ENGINE CONTROL UNIT', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1717'),
(461, '02-02-01-01-096', '47', '119', 20, 12, 'RECTIFIER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0025250'),
(462, '02-02-04-04-010', '47', '119', 23, 15, 'WATER PUMP', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J04118.0100'),
(463, '02-02-04-04-011', '47', '119', 23, 15, 'OIL PRESSURE SWITCH', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0535'),
(464, '02-02-04-04-012', '47', '119', 23, 15, 'OIL PRESSURE SENSOR', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J04060.0100'),
(465, '02-02-01-01-097', '47', '119', 20, 12, 'PLC', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107217'),
(466, '02-02-01-01-098', '47', '119', 20, 12, 'MEMORY CARD', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP110105'),
(467, '02-02-04-04-013', '47', '119', 23, 15, 'AC PUMP HOUSING', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1401'),
(468, '02-02-04-04-014', '47', '119', 23, 15, 'THERMOSTAT', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08619.0100'),
(469, '02-02-04-04-062', '47', '119', 23, 16, 'BELT', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J035539'),
(470, '02-02-04-04-063', '47', '119', 23, 16, 'BOLT', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028376'),
(471, '02-02-04-04-064', '47', '119', 23, 16, 'TURBO CHARGER PIPE', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0001980'),
(472, '02-02-04-04-065', '47', '119', 23, 16, 'TURBO CHAEGER OIL PIPE', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J028561'),
(473, '02-02-01-01-099', '47', '119', 20, 12, 'PLC', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP115701'),
(474, '02-02-01-01-100', '47', '119', 20, 12, 'PLC', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP115632'),
(475, '02-02-01-01-101', '47', '119', 20, 12, 'PLC', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RCJ0041210'),
(476, '02-02-01-01-102', '47', '119', 20, 12, 'PLC', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP110316'),
(477, '02-02-01-01-103', '47', '119', 20, 12, 'CONVERTER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP116570'),
(478, '02-02-01-01-104', '47', '119', 20, 12, 'INJECTOR HOLDER (CLAMP)', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J032029'),
(479, '02-02-04-04-015', '47', '119', 23, 15, 'BELT ADJUSTER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.4523'),
(480, '02-02-04-04-016', '47', '119', 23, 15, 'BELT ADJUSTER', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0229'),
(481, '02-02-04-04-017', '47', '119', 23, 15, 'SUPPORT WHEEL', '--', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JO18517'),
(482, '09-01-01-01-001', '54', '135', 68, 54, 'GREASE', 'EP-2', '', 2, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(483, '09-01-01-01-002', '54', '135', 68, 54, 'ENGINE OIL', '15W-40', '', 2, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(484, '09-01-01-01-003', '54', '135', 68, 54, 'HYDRAULIC', 'DTE-25', '', 3, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(485, '09-01-01-01-004', '54', '135', 68, 54, 'HYDRAULIC', 'DTE-26', '', 3, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(486, '09-01-01-01-005', '54', '135', 68, 54, 'ENGINE OIL', '20W-50', '', 10, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(487, '09-01-01-01-006', '54', '135', 68, 54, 'BRAKE OIL', 'DOT-4', '', 5, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(488, '09-01-01-01-007', '54', '135', 68, 54, 'GEAR OIL', '80W-90', '', 1, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(489, '09-01-01-01-008', '54', '135', 68, 54, 'GEAR OIL', '85W-140', '', 1, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(490, '09-01-01-01-009', '54', '135', 68, 54, 'GEAR OIL', 'GEAR OIL-220', '', 1, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(491, '09-01-01-01-010', '54', '135', 68, 54, 'GEAR OIL', 'GEAR OIL-320', '', 1, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(492, '09-01-01-01-011', '54', '135', 68, 54, 'TRANSMISSION FLUID', 'ATF-220', '', 1, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(493, '09-01-01-01-012', '54', '135', 68, 54, 'RADIATOR COOLANT', 'VELCOOL HIGH-TEC', '', 20, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(494, '09-01-01-01-013', '54', '135', 68, 54, 'GREASE', 'XHP-222', '', 1, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(495, '08-01-01-01-001', '53', '136', 69, 55, 'DIESEL', '---', '', 4000, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(496, '04-02-04-04-001', '49', '126', 48, 39, 'ALTERNATOR ASSY', '---', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '134153'),
(497, '07-01-01-01-001', '52', '134', 67, 53, 'TYRE TUBELESS', '18.00X25', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(498, '07-01-01-01-002', '52', '134', 67, 53, 'TYRE TUBELESS', '16.00X25', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(499, '07-01-01-01-003', '52', '134', 67, 53, 'TYRE TUBELESS', '14.00X24', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(500, '07-01-01-01-004', '52', '134', 67, 53, 'TUBE TYRE', '14.00X24', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(501, '07-01-01-01-005', '52', '134', 67, 53, 'TYRE', '12.00X24', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(502, '07-01-01-01-006', '52', '134', 67, 53, 'TYRE', '11.00X20', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(503, '07-01-01-01-007', '52', '134', 67, 53, 'TYRE (RECON) ', '10.00X20', '', 20, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(504, '07-01-01-01-008', '52', '134', 67, 53, 'TYRE LUG', '10.00X20', '', 14, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(505, '07-01-01-01-009', '52', '134', 67, 53, 'TYRE RIP', '10.00X20', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '--'),
(506, '04-02-01-01-001', '49', '126', 45, 33, 'AC-DC CONVERTER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A144037'),
(507, '04-02-01-01-002', '49', '126', 46, 0, 'BRAKE PISTON SEAL(L)', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401005-00033'),
(508, '04-02-02-02-001', '49', '126', 46, 60, 'BRAKE PISTON SEAL(L)', '--', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401005-00033'),
(509, '04-02-02-02-002', '49', '126', 46, 60, 'BRAKE PISTON SEAL(S)', '--', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '401005-00034'),
(510, '04-02-02-02-003', '49', '126', 46, 60, 'BOLT', '--', '', 8, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '120106-00185'),
(511, '04-02-02-02-004', '49', '126', 46, 60, 'BUSHING', '--', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '131002-00050'),
(512, '04-02-02-02-005', '49', '126', 46, 60, 'BRAKE DISK', '--', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '130106-00004'),
(513, '04-02-01-01-002', '49', '126', 45, 33, 'Test', 'ac5', '', 10, NULL, NULL, 0, '22', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialbalance`
--

CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialbalance`
--

INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `package_id`, `building_id`, `approval_status`) VALUES
(237, 'MRR001', '10-01-01-01-001', '2020-12-22', 10, 5000, 0, 0, 500, 'Receive', 1.1, '1', '20', 'MRR001', 'JO35501', '1', '1', '', '', 0),
(238, 'MRR001', '10-01-01-01-003', '2020-12-22', 10, 4500, 0, 0, 450, 'Receive', 1.1, '1', '20', 'MRR001', '', '1', '1', '', '', 0),
(239, 'IS-CW-001', '10-01-01-01-001', '2020-12-23', 0, 0, 2, 0, 0, 'Issue', 1.1, '1', '20', 'IS-CW-001', 'JO35501', '1', '1', '', '', 0),
(240, 'IS-CW-001', '10-01-01-01-003', '2020-12-23', 0, 0, 3, 0, 0, 'Issue', 1.1, '1', '20', 'IS-CW-001', '', '1', '1', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategory`
--

CREATE TABLE `inv_materialcategory` (
  `id` int(11) NOT NULL,
  `material_sub_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_sub_description` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategory`
--

INSERT INTO `inv_materialcategory` (`id`, `material_sub_id`, `category_id`, `material_sub_description`) VALUES
(116, '01-01-00-00-000', '46', 'ZPMC'),
(117, '01-02-00-00-000', '46', 'MHI'),
(118, '02-01-00-00-000', '47', 'ZPMC'),
(119, '02-02-00-00-000', '47', 'KALMAR'),
(120, '02-03-00-00-000', '47', 'LIEBHERR'),
(121, '03-01-00-00-000', '48', 'KALMAR'),
(122, '03-02-00-00-000', '48', 'LIEBHERR'),
(123, '06-01-00-00-000', '51', 'TATA'),
(124, '06-02-00-00-000', '51', 'EICHER'),
(125, '04-01-00-00-000', '49', 'KALMAR'),
(126, '04-02-00-00-000', '49', 'DOOSAN'),
(127, '05-01-00-00-000', '50', 'LIEBHERR'),
(133, '06-03-00-00-000', '51', 'CHASSIS'),
(134, '07-01-00-00-000', '52', 'TYRE'),
(135, '09-01-00-00-000', '54', 'LUBRICANTS'),
(136, '08-01-00-00-000', '53', 'FUEL'),
(137, '10-01-00-00-000', '55', 'AIR FILTER'),
(138, '10-02-00-00-000', '55', 'FUEL FILTER'),
(139, '10-03-00-00-000', '55', 'OIL FILTER'),
(140, '10-04-00-00-000', '55', 'Coolant Filter');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategorysub`
--

CREATE TABLE `inv_materialcategorysub` (
  `id` int(11) NOT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `stock_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_sbalance` int(11) DEFAULT NULL,
  `consumption_ac` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategorysub`
--

INSERT INTO `inv_materialcategorysub` (`id`, `category_id`, `category_description`, `stock_acct_id`, `chk_sbalance`, `consumption_ac`) VALUES
(46, '01-00-00-00-000', 'QGC', NULL, NULL, NULL),
(47, '02-00-00-00-000', 'RTG', NULL, NULL, NULL),
(48, '03-00-00-00-000', 'RST', NULL, NULL, NULL),
(49, '04-00-00-00-000', 'FLT', NULL, NULL, NULL),
(50, '05-00-00-00-000', 'MHC', NULL, NULL, NULL),
(51, '06-00-00-00-000', 'TRAILER', NULL, NULL, NULL),
(52, '07-00-00-00-000', 'TYRE', NULL, NULL, NULL),
(53, '08-00-00-00-000', 'FUEL', NULL, NULL, NULL),
(54, '09-00-00-00-000', 'LUBRICANTS', NULL, NULL, NULL),
(55, '10-00-00-00-000', 'FILTER', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_level3`
--

CREATE TABLE `inv_material_level3` (
  `id` int(11) NOT NULL,
  `material_level3_code` varchar(15) NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `category_sub_id` varchar(15) NOT NULL,
  `material_level3_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_material_level3`
--

INSERT INTO `inv_material_level3` (`id`, `material_level3_code`, `category_id`, `category_sub_id`, `material_level3_description`) VALUES
(14, '01-02-01-00-000', '46', '117', 'Electrical'),
(15, '01-02-02-00-000', '46', '117', 'Mechanical'),
(16, '01-02-03-00-000', '46', '117', 'Hydraulic'),
(17, '01-01-01-00-000', '46', '116', 'Electrical'),
(18, '01-01-02-00-000', '46', '116', 'Mechanical'),
(19, '01-01-03-00-000', '46', '116', 'Hydraulic'),
(20, '02-02-01-00-000', '47', '119', 'Electrical'),
(21, '02-02-02-00-000', '47', '119', 'Mechanical'),
(22, '02-02-03-00-000', '47', '119', 'Hydraulic'),
(23, '02-02-04-00-000', '47', '119', 'Engine'),
(24, '02-03-01-00-000', '47', '120', 'Electrical'),
(25, '02-03-02-00-000', '47', '120', 'Mechanical'),
(26, '02-03-03-00-000', '47', '120', 'Hydraulic'),
(27, '02-03-04-00-000', '47', '120', 'Engine'),
(29, '02-01-01-00-000', '47', '118', 'Electrical'),
(30, '02-01-02-00-000', '47', '118', 'Mechanical'),
(31, '02-01-03-00-000', '47', '118', 'Hydraulic'),
(32, '02-01-04-00-000', '47', '118', 'Engine'),
(33, '05-01-01-00-000', '50', '127', 'Engine'),
(34, '05-01-02-00-000', '50', '127', 'Electrical'),
(35, '05-01-03-00-000', '50', '127', 'Mechanical'),
(36, '05-01-04-00-000', '50', '127', 'Hydraulic'),
(37, '03-01-01-00-000', '48', '121', 'Electrical'),
(38, '03-01-02-00-000', '48', '121', 'Mechanical'),
(39, '03-01-03-00-000', '48', '121', 'Hydraulic'),
(40, '03-01-04-00-000', '48', '121', 'Engine'),
(41, '03-02-01-00-000', '48', '122', 'Electrical'),
(42, '03-02-02-00-000', '48', '122', 'Mechanical'),
(43, '03-02-03-00-000', '48', '122', 'Hydraulic'),
(44, '03-02-04-00-000', '48', '122', 'Engine'),
(45, '04-02-01-00-000', '49', '126', 'Electrical'),
(46, '04-02-02-00-000', '49', '126', 'Mechanical'),
(47, '04-02-03-00-000', '49', '126', 'Hydraulic'),
(48, '04-02-04-00-000', '49', '126', 'Engine'),
(49, '04-01-01-00-000', '49', '125', 'Electrical'),
(50, '04-01-02-00-000', '49', '125', 'Mechanical'),
(51, '04-01-03-00-000', '49', '125', 'Hydraulic'),
(52, '04-01-04-00-000', '49', '125', 'Engine'),
(60, '06-02-01-00-000', '51', '124', 'Electrical'),
(61, '06-02-02-00-000', '51', '124', 'Mechanical'),
(62, '06-02-03-00-000', '51', '124', 'Engine'),
(63, '06-01-01-00-000', '51', '123', 'Electrical'),
(64, '06-01-02-00-000', '51', '123', 'Mechanical'),
(65, '06-01-03-00-000', '51', '123', 'Engine'),
(66, '06-03-01-00-000', '51', '133', 'Mechanical'),
(67, '07-01-01-00-000', '52', '134', 'TYRE'),
(68, '09-01-01-00-000', '54', '135', 'LUBRICANTS'),
(69, '08-01-01-00-000', '53', '136', 'FUEL'),
(70, '10-01-01-00-000', '55', '137', 'AIR FILTER'),
(71, '10-02-01-00-000', '55', '138', 'FUEL FILTER'),
(72, '10-03-01-00-000', '55', '139', 'OIL FILTER'),
(73, '10-04-01-00-000', '55', '140', 'Coolant Filter');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_level4`
--

CREATE TABLE `inv_material_level4` (
  `id` int(11) NOT NULL,
  `material_level4_code` varchar(15) NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `category_sub_id` varchar(15) NOT NULL,
  `level3_id` varchar(15) NOT NULL,
  `material_level4_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_material_level4`
--

INSERT INTO `inv_material_level4` (`id`, `material_level4_code`, `category_id`, `category_sub_id`, `level3_id`, `material_level4_description`) VALUES
(6, '01-02-01-01-000', '46', '117', '14', 'Electrical '),
(7, '01-02-03-01-000', '46', '117', '16', 'Hydraulic'),
(8, '01-02-02-01-000', '46', '117', '15', 'Mechanical'),
(9, '01-01-01-01-000', '46', '116', '17', 'Electrical'),
(10, '01-01-03-01-000', '46', '116', '19', 'Hydraulic'),
(11, '01-01-02-01-000', '46', '116', '18', 'Mechanical'),
(12, '02-02-01-01-000', '47', '119', '20', 'Electrical'),
(13, '02-02-02-01-000', '47', '119', '21', 'Mechanical'),
(14, '02-02-03-01-000', '47', '119', '22', 'Hydraulic'),
(15, '02-02-04-01-000', '47', '119', '23', 'Volvo Penta TAD1641VE'),
(16, '02-02-04-02-000', '47', '119', '23', 'AGCO SISU 84WI'),
(19, '02-01-04-01-000', '47', '118', '32', 'CUMMINS NTA 855-G4'),
(20, '05-01-02-01-000', '50', '127', '34', 'Electrical'),
(21, '05-01-03-01-000', '50', '127', '35', 'Mechanical'),
(22, '05-01-04-01-000', '50', '127', '36', 'Hydraulic'),
(23, '05-01-01-01-000', '50', '127', '33', 'MAN'),
(24, '05-01-01-02-000', '50', '127', '33', 'LIEBHERR'),
(25, '03-01-01-01-000', '48', '121', '37', 'Electrical'),
(26, '03-01-03-01-000', '48', '121', '39', 'Hydraulic'),
(27, '03-01-02-01-000', '48', '121', '38', 'Mechanical'),
(29, '03-02-01-01-000', '48', '122', '41', 'Electrical'),
(30, '03-02-02-01-000', '48', '122', '42', 'Mechanical'),
(31, '03-02-03-01-000', '48', '122', '43', 'Hydraulic'),
(33, '04-02-01-01-000', '49', '126', '45', 'Electrical'),
(34, '04-01-01-01-000', '49', '125', '49', 'Electrical'),
(35, '04-01-03-01-000', '49', '125', '51', 'Hydraulic'),
(36, '04-01-02-01-000', '49', '125', '50', 'Mechanical'),
(38, '04-01-04-02-000', '49', '125', '52', 'CUMMINS'),
(39, '04-02-04-01-000', '49', '126', '48', 'DOOSAN'),
(42, '06-03-01-01-000', '51', '133', '66', 'Mechanical'),
(43, '06-02-01-01-000', '51', '124', '60', 'Electrical'),
(44, '06-02-02-01-000', '51', '124', '61', 'Mechanical'),
(45, '06-02-03-01-000', '51', '124', '62', 'CUMMINS'),
(46, '06-01-01-01-000', '51', '123', '63', 'Electrical'),
(47, '06-01-03-01-000', '51', '123', '65', 'CUMMINS'),
(48, '06-01-02-01-000', '51', '123', '64', 'Mechanical'),
(49, '02-03-01-01-000', '47', '120', '24', 'Electrical'),
(50, '02-03-04-01-000', '47', '120', '27', 'VOLVO PENTA TAD1353VE'),
(51, '02-03-03-01-000', '47', '120', '26', 'Hydraulic'),
(52, '02-03-02-01-000', '47', '120', '25', 'Mechanical'),
(53, '07-01-01-01-000', '52', '134', '67', 'TYRE'),
(54, '09-01-01-01-000', '54', '135', '68', 'LUBRICANTS'),
(55, '08-01-01-01-000', '53', '136', '69', 'FUEL'),
(56, '10-01-01-01-000', '55', '137', '70', 'AIR FILTER'),
(57, '10-02-01-01-000', '55', '138', '71', 'FUEL FILTER'),
(58, '10-03-01-01-000', '55', '139', '72', 'OIL FILTER'),
(59, '10-04-01-01-000', '55', '140', '73', 'Coolant Filter'),
(60, '04-02-02-01-000', '49', '126', '46', 'Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars`
--

CREATE TABLE `inv_particulars` (
  `id` int(11) NOT NULL,
  `particulars_id` varchar(100) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `particulars` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars_type`
--

CREATE TABLE `inv_particulars_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase`
--

CREATE TABLE `inv_purchase` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `purchase_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `purchase_ware_hosue_id` int(11) DEFAULT NULL,
  `purchase_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchasedetail`
--

CREATE TABLE `inv_purchasedetail` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `purchase_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_purchase` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_receive`
--

CREATE TABLE `inv_receive` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mrr_date` date DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `vat_challan_no` varchar(100) NOT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `receive_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) DEFAULT NULL,
  `receive_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `challan_date` date NOT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `received_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_receive`
--

INSERT INTO `inv_receive` (`id`, `mrr_no`, `mrr_date`, `purchase_id`, `receive_acct_id`, `supplier_id`, `postedtogl`, `vat_challan_no`, `remarks`, `receive_type`, `project_id`, `warehouse_id`, `receive_unit_id`, `chk_year_end`, `receive_total`, `no_of_material`, `challanno`, `challan_date`, `jv_no`, `part_no`, `requisitionno`, `requisition_date`, `received_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `mrr_image`) VALUES
(7, 'MRR001', '2020-12-22', 'PID-001', '6-14-010', 'SID-001', 0, '', 'Test-MRR-001', 'Credit', '1', '1', '1', NULL, 9500, 20, 'SCN-001', '2020-12-22', NULL, '', 'RLP-001', '2020-12-22 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_receivedetail`
--

CREATE TABLE `inv_receivedetail` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `receive_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_receive` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(1000) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_receivedetail`
--

INSERT INTO `inv_receivedetail` (`id`, `mrr_no`, `material_id`, `material_name`, `unit_id`, `receive_qty`, `unit_price`, `sl_no`, `total_receive`, `rd_serial_id`, `part_no`, `project_id`, `warehouse_id`, `approval_status`) VALUES
(10, 'MRR001', '10-01-01-01-001', '277', 20, 10, 500, 1, 5000, '', 'JO35501', '1', '1', 0),
(11, 'MRR001', '10-01-01-01-003', '279', 20, 10, 450, 1, 4500, '', '', '1', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition`
--

CREATE TABLE `inv_requisition` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(25) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `requisition_date` datetime NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `no_of_material` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition_details`
--

CREATE TABLE `inv_requisition_details` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `requisition_qty` float NOT NULL,
  `sl_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_return`
--

CREATE TABLE `inv_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(25) NOT NULL,
  `return_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_returndetail`
--

CREATE TABLE `inv_returndetail` (
  `id` int(11) NOT NULL,
  `return_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `return_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_serviceinvoice`
--

CREATE TABLE `inv_serviceinvoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `service_name` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplier`
--

CREATE TABLE `inv_supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `supplier_company` varchar(120) CHARACTER SET utf8 NOT NULL,
  `supplier_address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `supplier_city` varchar(50) CHARACTER SET utf8 NOT NULL,
  `supplier_country` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contact_person` varchar(75) CHARACTER SET utf8 NOT NULL,
  `sposition` varchar(75) CHARACTER SET utf8 NOT NULL,
  `supplier_phone` varchar(18) CHARACTER SET utf8 NOT NULL,
  `supplier_op_balance` float NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL,
  `cc` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplierbalance`
--

CREATE TABLE `inv_supplierbalance` (
  `id` int(11) NOT NULL,
  `sb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `sb_date` date NOT NULL,
  `sb_supplier_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `sb_dr_amount` float NOT NULL,
  `sb_cr_amount` float NOT NULL,
  `sb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `sb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_supplierbalance`
--

INSERT INTO `inv_supplierbalance` (`id`, `sb_ref_id`, `warehouse_id`, `sb_date`, `sb_supplier_id`, `sb_dr_amount`, `sb_cr_amount`, `sb_remark`, `sb_partac_id`, `approval_status`) VALUES
(8, 'MRR001', '1', '2020-12-22', 'SID-001', 0, 9500, 'Test-MRR-001', 'MRR001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_technicianinfo`
--

CREATE TABLE `inv_technicianinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `department` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `district` varchar(100) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `emg_contact` varchar(100) NOT NULL,
  `emg_rel` varchar(100) NOT NULL,
  `emg_tel` varchar(100) NOT NULL,
  `emg_mob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_tranferdetail`
--

CREATE TABLE `inv_tranferdetail` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `transfer_qty` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `inwarehouse` varchar(100) NOT NULL,
  `outwarehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_transfermaster`
--

CREATE TABLE `inv_transfermaster` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `transfer_date` varchar(100) NOT NULL,
  `from_warehouse` varchar(100) NOT NULL,
  `to_warehouse` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher`
--

CREATE TABLE `inv_voucher` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucherdetails`
--

CREATE TABLE `inv_voucherdetails` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_cat` varchar(100) NOT NULL,
  `voucher_type` varchar(100) NOT NULL,
  `voucher_details` varchar(5000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher_cat`
--

CREATE TABLE `inv_voucher_cat` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehosueinfo`
--

CREATE TABLE `inv_warehosueinfo` (
  `id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(75) CHARACTER SET utf8 NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_warehosueinfo`
--

INSERT INTO `inv_warehosueinfo` (`id`, `warehouse_id`, `name`, `short_name`, `project_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'WH-001', 'CTED Warehouse', 'CTW', '1', 'Chattogram Port, Chattogram', NULL, 0, '2020-12-14 04:49:26', NULL, NULL),
(2, 'WH-002', 'Halishahar Warehouse', 'HW', '1', 'Halishahar, Chattogram', NULL, 0, '2020-12-14 04:50:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `id` int(11) NOT NULL,
  `parent_item_id` int(11) NOT NULL,
  `sub_item_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `item_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `materialbalance`
--

CREATE TABLE `materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - Dashboard , 2 - Email , 3 - Both',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `project_id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_category`
--

CREATE TABLE `parent_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant_and_equipment`
--

CREATE TABLE `plant_and_equipment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `equipment_type` int(11) DEFAULT NULL,
  `date_form` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `name` varchar(700) DEFAULT NULL,
  `eel_code` varchar(300) DEFAULT NULL,
  `country_of_origin` varchar(400) DEFAULT NULL,
  `capacity` varchar(300) DEFAULT NULL,
  `make_by` varchar(300) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `year_of_manufac` int(11) DEFAULT NULL,
  `present_location` varchar(300) DEFAULT NULL,
  `present_condition` varchar(400) DEFAULT NULL,
  `remarks` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `present_condition`
--

CREATE TABLE `present_condition` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement`
--

CREATE TABLE `product_movement` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `project_form` int(11) DEFAULT NULL,
  `project_to` int(11) DEFAULT NULL,
  `total_quantity` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `movement_type` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement_details`
--

CREATE TABLE `product_movement_details` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `code`, `name`, `incharge`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PR-001', 'CTED, Chattogram', 'Lt Commander M Tafsir Uddin Ahmed(Retd)', 'Chattogram Port, Chattogram', NULL, NULL, '2020-12-14 04:48:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` int(11) NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT 0,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sttable`
--

CREATE TABLE `sttable` (
  `id` int(11) NOT NULL,
  `vehicleno` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `registrationno` varchar(150) NOT NULL,
  `tax_issdt` date NOT NULL,
  `tax_expdt` date NOT NULL,
  `fit_issdt` date NOT NULL,
  `fit_expdt` date NOT NULL,
  `ins_issdt` date NOT NULL,
  `ins_expdt` date NOT NULL,
  `rou_issdt` date NOT NULL,
  `rou_expdt` date NOT NULL,
  `engineno` varchar(55) NOT NULL,
  `chasisno` varchar(50) NOT NULL,
  `regdate` date NOT NULL,
  `serialno` varchar(50) NOT NULL,
  `modelno` varchar(50) NOT NULL,
  `ccno` varchar(50) NOT NULL,
  `netvalue` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `myear` varchar(50) NOT NULL,
  `office` varchar(75) NOT NULL,
  `division` varchar(79) NOT NULL,
  `location` varchar(80) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sub_code` varchar(400) NOT NULL,
  `name` varchar(600) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_op_balance` varchar(100) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `code`, `name`, `address`, `contact_person`, `supplier_phone`, `supplier_op_balance`, `supplier_type`, `material_type`) VALUES
(1, 'SID-001', 'Saif Powertec Ltd', '-', '-', '-', '-', 'cash', '47');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `supplierid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_billpayment`
--

CREATE TABLE `tb_billpayment` (
  `id` int(11) NOT NULL,
  `mr_no` varchar(100) NOT NULL,
  `mr_date` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `accheadname` varchar(100) NOT NULL,
  `debitamount` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `check_no` text NOT NULL,
  `check_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ledger`
--

CREATE TABLE `tb_ledger` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_product_receive_data`
--

CREATE TABLE `temp_product_receive_data` (
  `id` int(11) NOT NULL,
  `receive_no` varchar(500) NOT NULL,
  `receive_date` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  `part_no` varchar(500) NOT NULL,
  `supplier_id` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL,
  `project_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id2` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id2`, `first_name`, `last_name`, `user_type`, `project_id`, `warehouse_id`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Admin', 'Saif', 'admin', '1', '1', 'admin@admin.com', 'bfb1e4e7ace6d70c18b69a2a6cf4a415', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL),
(4, 4, 'Super', 'Admin', 'superAdmin', '1', '1', 'superadmin@admin.com', 'be05977add575832dc52655d4ad5c42e', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_type`
--
ALTER TABLE `complain_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cted_daily_activities`
--
ALTER TABLE `cted_daily_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_challan`
--
ALTER TABLE `inv_challan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complain`
--
ALTER TABLE `inv_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_designation`
--
ALTER TABLE `inv_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_employee`
--
ALTER TABLE `inv_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issue`
--
ALTER TABLE `inv_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_level3`
--
ALTER TABLE `inv_material_level3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_level4`
--
ALTER TABLE `inv_material_level4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receive`
--
ALTER TABLE `inv_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_return`
--
ALTER TABLE `inv_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materialbalance`
--
ALTER TABLE `materialbalance`
  ADD KEY `id` (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sttable`
--
ALTER TABLE `sttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complain_type`
--
ALTER TABLE `complain_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cted_daily_activities`
--
ALTER TABLE `cted_daily_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `inv_challan`
--
ALTER TABLE `inv_challan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_complain`
--
ALTER TABLE `inv_complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_designation`
--
ALTER TABLE `inv_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_employee`
--
ALTER TABLE `inv_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `inv_material_level3`
--
ALTER TABLE `inv_material_level3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `inv_material_level4`
--
ALTER TABLE `inv_material_level4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inv_return`
--
ALTER TABLE `inv_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materialbalance`
--
ALTER TABLE `materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sttable`
--
ALTER TABLE `sttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
