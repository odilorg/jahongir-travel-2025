-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 05:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jahongir-travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2025-01-10 16:43:28', '2025-01-10 16:43:28', 'A/C'),
(2, '2025-01-11 05:48:59', '2025-01-11 05:48:59', 'TV'),
(3, '2025-01-11 05:49:13', '2025-01-11 05:49:13', 'Air Condition'),
(4, '2025-01-11 05:49:44', '2025-01-11 05:49:44', 'WiFi'),
(5, '2025-01-11 06:09:01', '2025-01-11 06:09:01', 'Garden'),
(6, '2025-01-11 06:09:45', '2025-01-11 06:09:45', 'Terrace'),
(7, '2025-01-13 10:04:08', '2025-01-13 10:04:08', 'swimming pool');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_room`
--

CREATE TABLE `amenity_room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amenity_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_room`
--

INSERT INTO `amenity_room` (`id`, `created_at`, `updated_at`, `amenity_id`, `room_id`) VALUES
(2, NULL, NULL, 1, 3),
(3, NULL, NULL, 3, 5),
(4, NULL, NULL, 2, 5),
(5, NULL, NULL, 4, 5),
(6, NULL, NULL, 6, 6),
(7, NULL, NULL, 2, 6),
(8, NULL, NULL, 4, 6),
(9, NULL, NULL, 3, 6),
(10, NULL, NULL, 3, 7),
(11, NULL, NULL, 6, 7),
(12, NULL, NULL, 4, 7),
(13, NULL, NULL, 2, 7),
(14, NULL, NULL, 3, 8),
(15, NULL, NULL, 5, 8),
(16, NULL, NULL, 6, 8),
(17, NULL, NULL, 2, 8),
(18, NULL, NULL, 4, 8),
(19, NULL, NULL, 2, 9),
(20, NULL, NULL, 4, 9),
(21, NULL, NULL, 3, 9),
(22, NULL, NULL, 3, 10),
(23, NULL, NULL, 2, 10),
(24, NULL, NULL, 4, 10),
(25, NULL, NULL, 3, 11),
(26, NULL, NULL, 2, 11),
(27, NULL, NULL, 4, 11),
(28, NULL, NULL, 3, 12),
(29, NULL, NULL, 2, 12),
(30, NULL, NULL, 4, 12),
(31, NULL, NULL, 3, 13),
(32, NULL, NULL, 2, 13),
(33, NULL, NULL, 4, 13),
(34, NULL, NULL, 3, 14),
(35, NULL, NULL, 2, 14),
(36, NULL, NULL, 4, 14),
(37, NULL, NULL, 2, 15),
(38, NULL, NULL, 4, 15),
(39, NULL, NULL, 3, 15),
(40, NULL, NULL, 3, 16),
(41, NULL, NULL, 2, 16),
(42, NULL, NULL, 4, 16),
(43, NULL, NULL, 3, 17),
(44, NULL, NULL, 2, 17),
(45, NULL, NULL, 4, 17),
(46, NULL, NULL, 3, 18),
(47, NULL, NULL, 6, 18),
(48, NULL, NULL, 2, 18),
(49, NULL, NULL, 4, 18),
(50, NULL, NULL, 3, 19),
(51, NULL, NULL, 2, 19),
(52, NULL, NULL, 4, 19),
(53, NULL, NULL, 3, 20),
(54, NULL, NULL, 7, 20),
(55, NULL, NULL, 2, 20),
(56, NULL, NULL, 4, 20),
(57, NULL, NULL, 7, 21),
(58, NULL, NULL, 2, 21),
(59, NULL, NULL, 4, 21),
(60, NULL, NULL, 3, 22),
(61, NULL, NULL, 7, 22),
(62, NULL, NULL, 2, 22),
(63, NULL, NULL, 4, 22),
(64, NULL, NULL, 3, 23),
(65, NULL, NULL, 2, 23),
(66, NULL, NULL, 4, 23),
(67, NULL, NULL, 2, 24),
(68, NULL, NULL, 4, 24),
(69, NULL, NULL, 3, 24),
(70, NULL, NULL, 3, 25),
(71, NULL, NULL, 2, 25),
(72, NULL, NULL, 4, 25),
(73, NULL, NULL, 2, 26),
(74, NULL, NULL, 3, 26),
(75, NULL, NULL, 4, 26),
(76, NULL, NULL, 3, 27),
(77, NULL, NULL, 7, 27),
(78, NULL, NULL, 2, 27),
(79, NULL, NULL, 4, 27),
(80, NULL, NULL, 3, 28),
(81, NULL, NULL, 2, 28),
(82, NULL, NULL, 4, 28),
(83, NULL, NULL, 7, 28),
(84, NULL, NULL, 3, 29),
(85, NULL, NULL, 2, 29),
(86, NULL, NULL, 4, 29),
(87, NULL, NULL, 3, 30),
(88, NULL, NULL, 2, 30),
(89, NULL, NULL, 4, 30),
(90, NULL, NULL, 4, 31),
(91, NULL, NULL, 2, 31),
(92, NULL, NULL, 3, 31),
(93, NULL, NULL, 3, 32),
(94, NULL, NULL, 2, 32),
(95, NULL, NULL, 4, 32),
(96, NULL, NULL, 3, 33),
(97, NULL, NULL, 2, 33),
(98, NULL, NULL, 4, 33),
(99, NULL, NULL, 3, 34),
(100, NULL, NULL, 2, 34),
(101, NULL, NULL, 4, 34),
(102, NULL, NULL, 3, 35),
(103, NULL, NULL, 2, 35),
(104, NULL, NULL, 4, 35),
(105, NULL, NULL, 3, 36),
(106, NULL, NULL, 2, 36),
(107, NULL, NULL, 4, 36),
(108, NULL, NULL, 3, 37),
(109, NULL, NULL, 2, 37),
(110, NULL, NULL, 4, 37),
(111, NULL, NULL, 3, 38),
(112, NULL, NULL, 2, 38),
(113, NULL, NULL, 4, 38),
(114, NULL, NULL, 3, 39),
(115, NULL, NULL, 2, 39),
(116, NULL, NULL, 4, 39),
(117, NULL, NULL, 3, 40),
(118, NULL, NULL, 2, 40),
(119, NULL, NULL, 4, 40),
(120, NULL, NULL, 3, 41),
(121, NULL, NULL, 7, 41),
(122, NULL, NULL, 2, 41),
(123, NULL, NULL, 4, 41),
(124, NULL, NULL, 6, 41),
(125, NULL, NULL, 5, 41),
(126, NULL, NULL, 3, 42),
(127, NULL, NULL, 5, 42),
(128, NULL, NULL, 7, 42),
(129, NULL, NULL, 6, 42),
(130, NULL, NULL, 2, 42),
(131, NULL, NULL, 4, 42),
(132, NULL, NULL, 3, 43),
(133, NULL, NULL, 2, 43),
(134, NULL, NULL, 4, 43),
(135, NULL, NULL, 3, 44),
(136, NULL, NULL, 2, 44),
(137, NULL, NULL, 4, 44),
(138, NULL, NULL, 3, 45),
(139, NULL, NULL, 2, 45),
(140, NULL, NULL, 4, 45),
(141, NULL, NULL, 7, 46),
(142, NULL, NULL, 2, 46),
(143, NULL, NULL, 4, 46),
(144, NULL, NULL, 3, 47),
(145, NULL, NULL, 2, 47),
(146, NULL, NULL, 4, 47),
(147, NULL, NULL, 3, 48),
(148, NULL, NULL, 2, 48),
(149, NULL, NULL, 4, 48),
(150, NULL, NULL, 3, 49),
(151, NULL, NULL, 2, 49),
(152, NULL, NULL, 4, 49),
(153, NULL, NULL, 3, 50),
(154, NULL, NULL, 2, 50),
(155, NULL, NULL, 4, 50),
(156, NULL, NULL, 6, 50),
(157, NULL, NULL, 3, 51),
(158, NULL, NULL, 2, 51),
(159, NULL, NULL, 4, 51),
(160, NULL, NULL, 3, 52),
(161, NULL, NULL, 2, 52),
(162, NULL, NULL, 4, 52),
(163, NULL, NULL, 3, 53),
(164, NULL, NULL, 2, 53),
(165, NULL, NULL, 4, 53),
(166, NULL, NULL, 3, 54),
(167, NULL, NULL, 2, 54),
(168, NULL, NULL, 4, 54),
(169, NULL, NULL, 5, 54),
(170, NULL, NULL, 3, 55),
(171, NULL, NULL, 2, 55),
(172, NULL, NULL, 4, 55),
(173, NULL, NULL, 3, 56),
(174, NULL, NULL, 2, 56),
(175, NULL, NULL, 4, 56),
(176, NULL, NULL, 3, 57),
(177, NULL, NULL, 2, 57),
(178, NULL, NULL, 4, 57),
(179, NULL, NULL, 3, 58),
(180, NULL, NULL, 2, 58),
(181, NULL, NULL, 4, 58),
(182, NULL, NULL, 3, 59),
(183, NULL, NULL, 2, 59),
(184, NULL, NULL, 4, 59),
(185, NULL, NULL, 3, 60),
(186, NULL, NULL, 2, 60),
(187, NULL, NULL, 4, 60),
(188, NULL, NULL, 2, 61),
(189, NULL, NULL, 4, 61),
(190, NULL, NULL, 3, 61),
(191, NULL, NULL, 3, 62),
(192, NULL, NULL, 2, 62),
(193, NULL, NULL, 4, 62),
(194, NULL, NULL, 3, 63),
(195, NULL, NULL, 2, 63),
(196, NULL, NULL, 4, 63),
(197, NULL, NULL, 3, 64),
(198, NULL, NULL, 2, 64),
(199, NULL, NULL, 4, 64),
(200, NULL, NULL, 3, 65),
(201, NULL, NULL, 2, 65),
(202, NULL, NULL, 4, 65),
(203, NULL, NULL, 3, 66),
(204, NULL, NULL, 2, 66),
(205, NULL, NULL, 4, 66),
(206, NULL, NULL, 3, 67),
(207, NULL, NULL, 2, 67),
(208, NULL, NULL, 4, 67),
(209, NULL, NULL, 3, 68),
(210, NULL, NULL, 2, 68),
(211, NULL, NULL, 4, 68),
(212, NULL, NULL, 3, 69),
(213, NULL, NULL, 2, 69),
(214, NULL, NULL, 4, 69),
(215, NULL, NULL, 3, 70),
(216, NULL, NULL, 2, 70),
(217, NULL, NULL, 4, 70),
(218, NULL, NULL, 3, 71),
(219, NULL, NULL, 2, 71),
(220, NULL, NULL, 4, 71),
(221, NULL, NULL, 3, 72),
(222, NULL, NULL, 2, 72),
(223, NULL, NULL, 4, 72),
(224, NULL, NULL, 3, 73),
(225, NULL, NULL, 2, 73),
(226, NULL, NULL, 4, 73),
(227, NULL, NULL, 3, 74),
(228, NULL, NULL, 6, 74),
(229, NULL, NULL, 2, 74),
(230, NULL, NULL, 4, 74),
(231, NULL, NULL, 3, 75),
(232, NULL, NULL, 2, 75),
(233, NULL, NULL, 4, 75),
(234, NULL, NULL, 3, 76),
(235, NULL, NULL, 2, 76),
(236, NULL, NULL, 4, 76),
(237, NULL, NULL, 2, 77),
(238, NULL, NULL, 4, 77),
(239, NULL, NULL, 3, 77),
(240, NULL, NULL, 3, 78),
(241, NULL, NULL, 2, 78),
(242, NULL, NULL, 4, 78),
(243, NULL, NULL, 3, 79),
(244, NULL, NULL, 2, 79),
(245, NULL, NULL, 4, 79),
(246, NULL, NULL, 3, 80),
(247, NULL, NULL, 6, 80),
(248, NULL, NULL, 4, 80),
(249, NULL, NULL, 3, 81),
(250, NULL, NULL, 2, 81),
(251, NULL, NULL, 4, 81),
(252, NULL, NULL, 3, 82),
(253, NULL, NULL, 2, 82),
(254, NULL, NULL, 4, 82),
(255, NULL, NULL, 3, 83),
(256, NULL, NULL, 7, 83),
(257, NULL, NULL, 2, 83),
(258, NULL, NULL, 4, 83),
(259, NULL, NULL, 3, 84),
(260, NULL, NULL, 7, 84),
(261, NULL, NULL, 2, 84),
(262, NULL, NULL, 4, 84),
(263, NULL, NULL, 3, 85),
(264, NULL, NULL, 2, 85),
(265, NULL, NULL, 4, 85),
(266, NULL, NULL, 2, 86),
(267, NULL, NULL, 3, 86),
(268, NULL, NULL, 4, 86),
(269, NULL, NULL, 3, 87),
(270, NULL, NULL, 4, 87),
(271, NULL, NULL, 2, 87),
(272, NULL, NULL, 3, 88),
(273, NULL, NULL, 2, 88),
(274, NULL, NULL, 4, 88),
(275, NULL, NULL, 3, 89),
(276, NULL, NULL, 2, 89),
(277, NULL, NULL, 4, 89),
(278, NULL, NULL, 3, 90),
(279, NULL, NULL, 2, 90),
(280, NULL, NULL, 4, 90),
(281, NULL, NULL, 3, 91),
(282, NULL, NULL, 7, 91),
(283, NULL, NULL, 2, 91),
(284, NULL, NULL, 4, 91),
(285, NULL, NULL, 3, 92),
(286, NULL, NULL, 7, 92),
(287, NULL, NULL, 2, 92),
(288, NULL, NULL, 4, 92),
(289, NULL, NULL, 3, 93),
(290, NULL, NULL, 2, 93),
(291, NULL, NULL, 4, 93),
(292, NULL, NULL, 3, 94),
(293, NULL, NULL, 2, 94),
(294, NULL, NULL, 4, 94),
(295, NULL, NULL, 3, 95),
(296, NULL, NULL, 2, 95),
(297, NULL, NULL, 4, 95),
(298, NULL, NULL, 2, 96),
(299, NULL, NULL, 4, 96),
(300, NULL, NULL, 3, 96),
(301, NULL, NULL, 3, 97),
(302, NULL, NULL, 2, 97),
(303, NULL, NULL, 4, 97),
(304, NULL, NULL, 3, 98),
(305, NULL, NULL, 2, 98),
(306, NULL, NULL, 4, 98),
(307, NULL, NULL, 7, 99),
(308, NULL, NULL, 2, 99),
(309, NULL, NULL, 4, 99),
(310, NULL, NULL, 5, 99),
(311, NULL, NULL, 3, 100),
(312, NULL, NULL, 5, 100),
(313, NULL, NULL, 2, 100),
(314, NULL, NULL, 4, 100),
(315, NULL, NULL, 3, 101),
(316, NULL, NULL, 2, 101),
(317, NULL, NULL, 4, 101),
(318, NULL, NULL, 3, 102),
(319, NULL, NULL, 2, 102),
(320, NULL, NULL, 4, 102),
(321, NULL, NULL, 7, 102),
(322, NULL, NULL, 3, 103),
(323, NULL, NULL, 2, 103),
(324, NULL, NULL, 4, 103),
(325, NULL, NULL, 3, 104),
(326, NULL, NULL, 2, 104),
(327, NULL, NULL, 4, 104),
(328, NULL, NULL, 3, 105),
(329, NULL, NULL, 4, 105),
(330, NULL, NULL, 2, 105),
(331, NULL, NULL, 3, 106),
(332, NULL, NULL, 2, 106),
(333, NULL, NULL, 4, 106),
(334, NULL, NULL, 3, 107),
(335, NULL, NULL, 2, 107),
(336, NULL, NULL, 4, 107),
(337, NULL, NULL, 3, 108),
(338, NULL, NULL, 2, 108),
(339, NULL, NULL, 4, 108),
(340, NULL, NULL, 3, 109),
(341, NULL, NULL, 2, 109),
(342, NULL, NULL, 4, 109),
(346, NULL, NULL, 3, 111),
(347, NULL, NULL, 2, 111),
(348, NULL, NULL, 4, 111),
(349, NULL, NULL, 3, 112),
(350, NULL, NULL, 2, 112),
(351, NULL, NULL, 4, 112),
(352, NULL, NULL, 3, 113),
(353, NULL, NULL, 2, 113),
(354, NULL, NULL, 4, 113),
(355, NULL, NULL, 3, 114),
(356, NULL, NULL, 2, 114),
(357, NULL, NULL, 4, 114),
(358, NULL, NULL, 3, 115),
(359, NULL, NULL, 2, 115),
(360, NULL, NULL, 4, 115),
(361, NULL, NULL, 2, 116),
(362, NULL, NULL, 4, 116),
(363, NULL, NULL, 3, 116),
(364, NULL, NULL, 2, 117),
(365, NULL, NULL, 4, 117),
(366, NULL, NULL, 3, 117),
(367, NULL, NULL, 3, 118),
(368, NULL, NULL, 2, 118),
(369, NULL, NULL, 4, 118),
(370, NULL, NULL, 3, 119),
(371, NULL, NULL, 2, 119),
(372, NULL, NULL, 4, 119),
(373, NULL, NULL, 3, 120),
(374, NULL, NULL, 2, 120),
(375, NULL, NULL, 4, 120),
(376, NULL, NULL, 3, 121),
(377, NULL, NULL, 2, 121),
(378, NULL, NULL, 4, 121),
(379, NULL, NULL, 6, 121),
(380, NULL, NULL, 3, 122),
(381, NULL, NULL, 2, 122),
(382, NULL, NULL, 4, 122),
(383, NULL, NULL, 6, 122),
(384, NULL, NULL, 3, 123),
(385, NULL, NULL, 2, 123),
(386, NULL, NULL, 4, 123),
(387, NULL, NULL, 3, 124),
(388, NULL, NULL, 2, 124),
(389, NULL, NULL, 4, 124),
(390, NULL, NULL, 3, 125),
(391, NULL, NULL, 5, 125),
(392, NULL, NULL, 7, 125),
(393, NULL, NULL, 6, 125),
(394, NULL, NULL, 2, 125),
(395, NULL, NULL, 4, 125),
(396, NULL, NULL, 3, 126),
(397, NULL, NULL, 5, 126),
(398, NULL, NULL, 7, 126),
(399, NULL, NULL, 6, 126),
(400, NULL, NULL, 2, 126),
(401, NULL, NULL, 4, 126),
(402, NULL, NULL, 3, 127),
(403, NULL, NULL, 2, 127),
(404, NULL, NULL, 4, 127),
(405, NULL, NULL, 3, 128),
(406, NULL, NULL, 2, 128),
(407, NULL, NULL, 4, 128),
(408, NULL, NULL, 3, 129),
(409, NULL, NULL, 4, 129),
(410, NULL, NULL, 2, 129),
(411, NULL, NULL, 3, 130),
(412, NULL, NULL, 2, 130),
(413, NULL, NULL, 4, 130),
(414, NULL, NULL, 3, 131),
(415, NULL, NULL, 2, 131),
(416, NULL, NULL, 4, 131),
(417, NULL, NULL, 3, 132),
(418, NULL, NULL, 2, 132),
(419, NULL, NULL, 4, 132),
(420, NULL, NULL, 3, 133),
(421, NULL, NULL, 2, 133),
(422, NULL, NULL, 4, 133),
(423, NULL, NULL, 3, 134),
(424, NULL, NULL, 2, 134),
(425, NULL, NULL, 4, 134),
(426, NULL, NULL, 3, 135),
(427, NULL, NULL, 2, 135),
(428, NULL, NULL, 4, 135),
(429, NULL, NULL, 3, 136),
(430, NULL, NULL, 2, 136),
(431, NULL, NULL, 4, 136),
(432, NULL, NULL, 3, 137),
(433, NULL, NULL, 2, 137),
(434, NULL, NULL, 4, 137),
(435, NULL, NULL, 3, 138),
(436, NULL, NULL, 2, 138),
(437, NULL, NULL, 4, 138),
(438, NULL, NULL, 7, 139),
(439, NULL, NULL, 3, 139),
(440, NULL, NULL, 2, 139),
(441, NULL, NULL, 4, 139),
(442, NULL, NULL, 3, 140),
(443, NULL, NULL, 2, 140),
(444, NULL, NULL, 4, 140),
(445, NULL, NULL, 3, 141),
(446, NULL, NULL, 2, 141),
(447, NULL, NULL, 4, 141),
(448, NULL, NULL, 3, 142),
(449, NULL, NULL, 2, 142),
(450, NULL, NULL, 4, 142),
(451, NULL, NULL, 3, 143),
(452, NULL, NULL, 2, 143),
(453, NULL, NULL, 4, 143),
(454, NULL, NULL, 3, 144),
(455, NULL, NULL, 2, 144),
(456, NULL, NULL, 4, 144),
(457, NULL, NULL, 3, 145),
(458, NULL, NULL, 2, 145),
(459, NULL, NULL, 4, 145),
(460, NULL, NULL, 3, 146),
(461, NULL, NULL, 2, 146),
(462, NULL, NULL, 4, 146),
(463, NULL, NULL, 3, 147),
(464, NULL, NULL, 2, 147),
(465, NULL, NULL, 4, 147),
(466, NULL, NULL, 3, 148),
(467, NULL, NULL, 2, 148),
(468, NULL, NULL, 4, 148),
(469, NULL, NULL, 3, 149),
(470, NULL, NULL, 2, 149),
(471, NULL, NULL, 4, 149),
(472, NULL, NULL, 3, 150),
(473, NULL, NULL, 2, 150),
(474, NULL, NULL, 4, 150),
(475, NULL, NULL, 4, 151),
(476, NULL, NULL, 4, 152),
(477, NULL, NULL, 4, 153),
(478, NULL, NULL, 3, 154),
(479, NULL, NULL, 7, 154),
(480, NULL, NULL, 2, 154),
(481, NULL, NULL, 4, 154),
(482, NULL, NULL, 3, 155),
(483, NULL, NULL, 2, 155),
(484, NULL, NULL, 4, 155),
(485, NULL, NULL, 3, 156),
(486, NULL, NULL, 5, 156),
(487, NULL, NULL, 2, 156),
(488, NULL, NULL, 4, 156),
(489, NULL, NULL, 3, 157),
(490, NULL, NULL, 2, 157),
(491, NULL, NULL, 4, 157),
(492, NULL, NULL, 3, 158),
(493, NULL, NULL, 2, 158),
(494, NULL, NULL, 4, 158),
(495, NULL, NULL, 3, 159),
(496, NULL, NULL, 2, 159),
(497, NULL, NULL, 4, 159),
(498, NULL, NULL, 3, 160),
(499, NULL, NULL, 2, 160),
(500, NULL, NULL, 4, 160),
(501, NULL, NULL, 3, 161),
(502, NULL, NULL, 2, 161),
(503, NULL, NULL, 4, 161),
(504, NULL, NULL, 2, 162),
(505, NULL, NULL, 4, 162),
(506, NULL, NULL, 2, 163),
(507, NULL, NULL, 4, 163),
(508, NULL, NULL, 4, 164),
(509, NULL, NULL, 2, 164),
(510, NULL, NULL, 4, 165),
(511, NULL, NULL, 2, 165),
(512, NULL, NULL, 4, 166),
(513, NULL, NULL, 2, 166),
(514, NULL, NULL, 2, 167),
(515, NULL, NULL, 4, 167),
(516, NULL, NULL, 4, 170),
(517, NULL, NULL, 2, 170),
(518, NULL, NULL, 4, 171),
(519, NULL, NULL, 2, 171);

-- --------------------------------------------------------

--
-- Table structure for table `amenity_transport`
--

CREATE TABLE `amenity_transport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transport_id` bigint(20) UNSIGNED NOT NULL,
  `amenity_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_transport`
--

INSERT INTO `amenity_transport` (`id`, `created_at`, `updated_at`, `transport_id`, `amenity_id`) VALUES
(1, NULL, NULL, 2, 1),
(2, NULL, NULL, 2, 2),
(3, NULL, NULL, 7, 1),
(4, NULL, NULL, 7, 2),
(5, NULL, NULL, 7, 3),
(6, NULL, NULL, 8, 1),
(7, NULL, NULL, 8, 3),
(8, NULL, NULL, 8, 2),
(9, NULL, NULL, 9, 1),
(10, NULL, NULL, 9, 3),
(11, NULL, NULL, 9, 2),
(12, NULL, NULL, 10, 1),
(13, NULL, NULL, 10, 3),
(14, NULL, NULL, 10, 2),
(15, NULL, NULL, 11, 1),
(16, NULL, NULL, 11, 3),
(17, NULL, NULL, 11, 2),
(18, NULL, NULL, 11, 4),
(19, NULL, NULL, 12, 1),
(20, NULL, NULL, 12, 3),
(21, NULL, NULL, 12, 2),
(22, NULL, NULL, 12, 4),
(23, NULL, NULL, 13, 1),
(24, NULL, NULL, 13, 3),
(25, NULL, NULL, 13, 2),
(26, NULL, NULL, 13, 4),
(27, NULL, NULL, 14, 1),
(28, NULL, NULL, 14, 3),
(29, NULL, NULL, 14, 2),
(30, NULL, NULL, 15, 1),
(31, NULL, NULL, 15, 3),
(32, NULL, NULL, 15, 2),
(33, NULL, NULL, 16, 1),
(34, NULL, NULL, 16, 3),
(35, NULL, NULL, 16, 2),
(36, NULL, NULL, 17, 1),
(37, NULL, NULL, 17, 3),
(38, NULL, NULL, 17, 2),
(39, NULL, NULL, 18, 1),
(40, NULL, NULL, 18, 3),
(41, NULL, NULL, 19, 1),
(42, NULL, NULL, 19, 3),
(43, NULL, NULL, 20, 1),
(44, NULL, NULL, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guide_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_status` enum('pending','ongoing','complete','cancelled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1738727679),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1738727679;', 1738727679);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `description`, `images`) VALUES
(2, '2025-01-11 05:16:30', '2025-02-02 09:41:44', 'Tashkent', NULL, '[]'),
(3, '2025-01-11 05:16:47', '2025-02-02 09:41:54', 'Samarkand', NULL, '[]'),
(4, '2025-01-11 05:17:09', '2025-01-11 05:39:03', 'Bukhara', NULL, '[]'),
(5, '2025-01-11 05:17:35', '2025-01-11 05:53:17', 'Khiva', NULL, '[]'),
(6, '2025-01-11 05:54:14', '2025-01-30 10:07:40', 'Almata', NULL, '[]'),
(8, '2025-01-11 05:54:38', '2025-01-11 05:54:38', 'Navoiy', NULL, '[]'),
(9, '2025-01-11 05:55:01', '2025-01-11 05:55:01', 'Fergana', NULL, '[]'),
(10, '2025-01-11 05:55:19', '2025-01-11 05:55:19', 'Nukus', NULL, '[]'),
(11, '2025-01-18 07:10:22', '2025-01-18 07:10:22', 'Termez', NULL, '[]'),
(12, '2025-01-21 08:08:58', '2025-01-21 08:08:58', 'Nurata', NULL, '[]'),
(13, '2025-01-21 08:10:01', '2025-01-21 08:10:01', 'Shaxrisabz', NULL, '[]'),
(14, '2025-01-21 08:10:29', '2025-01-21 09:29:33', 'Fergana', NULL, '[]'),
(15, '2025-01-21 09:48:10', '2025-01-21 09:48:10', 'Namangan', NULL, '[]'),
(16, '2025-01-21 09:48:49', '2025-01-21 09:48:49', 'Andijan', NULL, '[]'),
(17, '2025-01-22 11:11:57', '2025-01-22 11:11:57', 'Urgench', NULL, '[]'),
(18, '2025-01-24 08:49:24', '2025-01-24 08:49:24', 'Karakalpakistan', NULL, '[]'),
(19, '2025-01-29 13:02:50', '2025-01-29 13:02:50', 'Yangigazgan', NULL, '[]'),
(20, '2025-01-30 10:08:02', '2025-01-30 10:08:02', 'Dushanbe', NULL, '[]'),
(21, '2025-01-30 10:08:18', '2025-01-30 10:08:18', 'Ashxabod', NULL, '[]'),
(22, '2025-01-30 10:08:34', '2025-01-30 10:08:34', 'Chengdu', NULL, '[]'),
(23, '2025-01-30 10:08:47', '2025-01-30 10:08:47', 'Bishkek', NULL, '[]'),
(24, '2025-01-30 10:09:01', '2025-01-30 10:09:01', 'Xi\'an', NULL, '[]'),
(25, '2025-01-30 10:09:11', '2025-01-30 10:09:11', 'Pekin', NULL, '[]'),
(26, '2025-01-30 10:09:23', '2025-01-30 10:09:23', 'Guangzhou', NULL, '[]'),
(27, '2025-01-30 10:37:25', '2025-01-30 10:37:25', 'Gijduvan', NULL, '[]'),
(28, '2025-01-30 11:04:16', '2025-01-30 11:04:16', 'Qalqonota', NULL, '[]'),
(29, '2025-01-30 11:35:48', '2025-01-30 11:35:48', 'Qo\'shrobot', NULL, '[]'),
(30, '2025-01-31 06:10:25', '2025-01-31 06:10:25', 'Chimgan', NULL, '[]'),
(31, '2025-01-31 06:10:39', '2025-01-31 06:10:39', 'Turkmanobod', NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `city_tour_day`
--

CREATE TABLE `city_tour_day` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_day_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_tour_day`
--

INSERT INTO `city_tour_day` (`id`, `tour_day_id`, `city_id`, `created_at`, `updated_at`) VALUES
(180, 124, 13, '2025-02-02 09:13:27', '2025-02-02 09:13:27'),
(183, 126, 12, '2025-02-02 23:02:58', '2025-02-02 23:02:58'),
(184, 127, 12, '2025-02-02 23:04:12', '2025-02-02 23:04:12'),
(185, 128, 5, '2025-02-03 03:00:14', '2025-02-03 03:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `created_at`, `updated_at`, `name`, `email`, `phone`, `address`) VALUES
(1, '2025-01-10 16:50:09', '2025-01-10 16:50:09', 'Alain Migus', 'tolib71@mail.ru', '+998902115854', 'Amir Timur 164/11'),
(2, '2025-01-13 11:07:45', '2025-01-13 11:07:45', 'Odil', 'odilorg@gmail.com', '998915550808', 'Chiroqchi 11 '),
(3, '2025-01-13 11:32:26', '2025-01-13 11:32:26', 'GUANGZHOU  Aero Meng', 'aero_meng@gzl.com.cn', '862086089947    8615017564445 ', '1,Lejia Rd, jichang Rd West, Guangzhou, P.R. China Pc:510403'),
(4, '2025-01-21 09:35:10', '2025-01-21 09:57:40', 'Sasha Zhongtong', 'sqmzt@sina.com', '+998900620888', 'Liaocheng, Shandong, China'),
(5, '2025-01-21 09:51:17', '2025-01-21 09:51:17', 'Stella Mark travel ', 'stellagu88@163.com', '+8618108189272', 'Chengdu, Sichuan , China'),
(6, '2025-01-26 13:01:40', '2025-02-01 06:40:58', 'Shamihon', 'sh@hs.com', '987878787', 'Tashkent'),
(7, '2025-01-29 12:54:20', '2025-01-29 12:54:20', 'Olim', 'info@sss-tour.com', '+998885480080', 'Shota Rustaveli 45'),
(8, '2025-02-01 06:31:17', '2025-02-01 06:31:17', 'GAOLONG + AYYUB ', '295861722@qq.com', '13709298506', 'CHINA, XI\'AN');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `license_expiry_date` varchar(255) DEFAULT NULL,
  `license_image` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `created_at`, `updated_at`, `name`, `email`, `phone`, `address`, `license_number`, `license_expiry_date`, `license_image`, `profile_image`) VALUES
(1, '2025-01-13 11:15:40', '2025-01-14 04:26:47', 'SHODMONOV  JAMSHID', NULL, '+998993120741', NULL, 'AF 1767363', '14.08.2030', '01JHHH0TQS6KF5V35DK048MNCX.jpg', NULL),
(2, '2025-01-13 11:18:02', '2025-01-13 12:54:13', 'ESHONQULOV BAXODIR', NULL, '+998994160648', NULL, 'AF 4907663', '06.04.2032', '01JHFVG44388EMJBNVWPKQ2BWZ.jpg', NULL),
(3, '2025-01-13 11:36:24', '2025-01-13 11:36:24', 'YUSUPOV XASAN', NULL, '+998902284056', NULL, 'AD 6301731', '27.02.2034', '01JHFQ6QTG1JSFQ9AS5JSFH5RZ.jpg', NULL),
(4, '2025-01-13 11:51:16', '2025-01-13 11:51:16', 'QUVONDIQOV MUSOQUL', NULL, '+998 99 552 93 60', NULL, NULL, NULL, NULL, NULL),
(5, '2025-01-13 11:52:06', '2025-01-14 04:27:35', 'POLATOV OYNAZAR', NULL, '+998 93 239 99 95', NULL, 'AG 0905391', '04.04.2033', '01JHHH29JXAG6MGEZCQS30KXA8.jpg', NULL),
(6, '2025-01-13 11:52:42', '2025-01-13 12:54:30', 'ERGASHOV XALIMJON', NULL, '+998 97 927 96 70', NULL, 'AF 0833209', '19.06.2029', '01JHFVHERGPR2KNFHCHJ71GSJE.jpg', NULL),
(7, '2025-01-13 11:53:58', '2025-01-13 12:54:47', 'SULAYMONOV G`IYOS', NULL, '+998 94 406 09 00', NULL, 'AF 0762614', '17.05.2029', '01JHFVJS2J3HGTTG1NGBMMRC4M.jpg', NULL),
(8, '2025-01-13 11:54:42', '2025-01-13 11:54:42', 'OMONOV ZOIR', NULL, '+998 94 240 83 97', NULL, NULL, NULL, NULL, NULL),
(9, '2025-01-13 11:57:57', '2025-01-13 12:55:14', 'ABDULLAYEV ABDUQAXXOR', NULL, '+998 93 344 68 79', NULL, 'AA 0205357', '25.04.2028', '01JHFVM5EWRPTHM431ZH0CFVG9.jpg', NULL),
(10, '2025-01-13 11:58:58', '2025-01-13 12:56:04', 'ATABOEV XURSHID', NULL, '+998 97 288 16 11', NULL, 'AF 4780877', '09.03.2032', '01JHFVRM4BNEBKP86F5Y53HG06.jpg', NULL),
(11, '2025-01-13 11:59:53', '2025-01-13 12:56:49', 'JALOLOV SARVAR', NULL, '+998 93 722 27 50', NULL, 'AF 1109038', '11.10.2029', '01JHFVT057ZKT14Y1PX0GE7V8E.jpg', NULL),
(12, '2025-01-13 12:00:44', '2025-01-14 04:28:45', 'YAKUBOV ISLOM', NULL, '+998 99 023 16 93', NULL, 'AF 3526134', '22.11.2031', '01JHHH4D77RKWZGDEK230FYA1Y.jpg', NULL),
(13, '2025-01-13 12:01:23', '2025-01-13 12:58:03', 'SIROJOV SANJAR', NULL, '+998 90 191 29 97', NULL, 'AG 0100173', '13.10.2032', '01JHFVW8RB3WDS4381D2JYB06H.jpg', NULL),
(14, '2025-01-13 12:02:19', '2025-01-13 12:58:53', 'KAMOLOV AKMAL', NULL, '+998 99 738 75 24', NULL, 'AF 0076952', '07.09.2028', '01JHFVXRWWZJMXEVD3Y4XT83XJ.jpg', NULL),
(15, '2025-01-13 12:03:10', '2025-01-13 12:59:36', 'XUDOYBERDIEV MAVLON', NULL, '+998 94 522 42 80', NULL, 'AF 0294853', '30.11.2028', '01JHFVZ322YGAS2V8D1X13C8WM.jpg', NULL),
(16, '2025-01-13 12:03:47', '2025-01-13 13:00:18', 'KARIMOV FERUZ', NULL, '+998 94 186 72 74', NULL, 'AF 5082750', '20.05.2032', '01JHFW0CHDBH4DV2G2KA9S4AH2.jpg', NULL),
(17, '2025-01-13 12:04:52', '2025-01-13 13:24:26', 'QO`SHOQOV ELYOR', NULL, '+998 95 188 21 88', NULL, 'AG 1983859', '27.02.2034', '01JHFXCHXD91PE45PT9M8E5090.jpg', NULL),
(18, '2025-01-13 12:05:39', '2025-01-13 13:01:31', 'SAMANDAROV UCHQUN', NULL, '+998 94 079 74 12', NULL, 'AF 0452329', '28.12.2028', '01JHFW2KDCPHV325NGDEZZPJGM.jpg', NULL),
(19, '2025-01-13 12:09:57', '2025-01-13 12:09:57', 'ZAYNITDINOV NURIDDIN', NULL, '+998 90 445 10 92', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_bookings`
--

CREATE TABLE `email_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `hotel_to_pickup` varchar(255) NOT NULL,
  `departure_date` date NOT NULL,
  `number_adults` int(11) NOT NULL,
  `number_children` int(11) DEFAULT NULL,
  `tour_name` varchar(255) NOT NULL,
  `tour_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_tour_bookings`
--

CREATE TABLE `email_tour_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `hotel_to_pickup` varchar(255) NOT NULL,
  `departure_date` date NOT NULL,
  `number_adults` int(11) NOT NULL,
  `number_children` int(11) DEFAULT NULL,
  `tour_name` varchar(255) NOT NULL,
  `tour_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estimate_number` varchar(255) NOT NULL,
  `estimate_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `markup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `daily_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_marketing` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`price_types`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guides`
--

INSERT INTO `guides` (`id`, `name`, `daily_rate`, `created_at`, `updated_at`, `is_marketing`, `phone`, `email`, `address`, `city`, `image`, `price_types`) VALUES
(2, 'KAZAKOV AKBAR', 80.00, '2025-01-13 11:44:48', '2025-01-13 11:44:48', 0, '+998979192900', 'akbar@yahoo.com', 'BAM', 'Samarkand', '01JHFQP4TND6JJGP3VREAH9H95.jpg', 'null'),
(3, 'Baxramova Oyshirin', 120.00, '2025-01-21 09:26:39', '2025-02-01 04:56:31', 1, '+998901046201', 'Oyshirin@sss-tour.com', 'Sh.Rustaveli 45', 'Samarkand, Toshkent, Bukhoro, Xiva ', NULL, '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(4, 'Tojiboyev Islom', 120.00, '2025-01-21 10:07:48', '2025-02-01 04:55:23', 1, '+998 93 999 36 08', 'islomtojiboyevodilovich@gmail.com', 'Samarqand shahri', 'Samarkand', '01JJ45A8K5QR5FTMF1B2MFB7AM.jpg', '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(5, 'Zikirov Islomjon', 100.00, '2025-01-21 10:14:28', '2025-02-01 04:54:48', 1, '+998 99 311 11 73', 'zikirov06@gmail.com', 'Samarqand shahri', 'Samarkand', '01JJS0Y1229K3NDB2Z6G5TRGFP.JPG', '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(6, 'Baxronova Zarina', 120.00, '2025-01-22 06:48:15', '2025-02-01 04:54:12', 1, '+998938300181', 'zarinabaxranova18@gmail.com', 'Samarqand shahri', 'Samarkand', '01JJ6C9KGER55A5PZRXTK1RPBJ.jpg', '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(7, 'Erkin Isroyilov', 120.00, '2025-01-22 06:52:27', '2025-02-01 04:52:41', 1, '+998 99 793 05 96', 'erkinisroyilov29@gmail.com', 'Samarqand shahri', 'Samarkand', '01JJ6CH9KW37WQCAB1MV8638QZ.jpg', '[{\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}, {\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}]'),
(8, 'Karimov Azizbek', 120.00, '2025-01-22 06:54:34', '2025-02-01 04:56:50', 1, '+998 93 747 00 05', 'Karimovazizbekk052@gmail.com', 'Khiva', 'Khiva', NULL, '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(9, 'Allaberdieva Vazira', 120.00, '2025-01-22 06:59:08', '2025-02-01 04:58:04', 1, '+998 90 502 66 61', 'vazialla94@gmail.com', 'Samarqand shahri', 'Samarkand', NULL, '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(10, 'Abduanov Ganisher', 80.00, '2025-01-30 06:45:23', '2025-02-01 04:58:16', 1, '+998 99 703 82 02', 'yo\'q', NULL, 'Samarkand ', NULL, '[]'),
(11, 'Islom gid', 120.00, '2025-01-31 06:44:22', '2025-02-01 04:58:27', 1, '+998 99 090 31 40', 'islomguide@.gmail.com', NULL, 'Tashkent', NULL, '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(12, 'Shoxruh Domlo', 0.00, '2025-02-01 05:52:32', '2025-02-01 05:53:06', 1, '+998 33 388 88 66', 'shoxruhnorbotayev@gmail.com', 'Samarqand shahri', 'Samarqand', NULL, '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]'),
(13, 'Gulrux Rahmatullayeva', 0.00, '2025-02-01 06:04:27', '2025-02-01 06:04:27', 1, '+998 91 545 04 50', 'gulruxrahmat@gmail.com', 'Samarqand shahri', 'Samarqand', NULL, '[{\"price\": \"120\", \"price_type_name\": \"per_daily\"}, {\"price\": \"70\", \"price_type_name\": \"halfday\"}, {\"price\": \"50\", \"price_type_name\": \"pickup_dropoff\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `guide_spoken_language`
--

CREATE TABLE `guide_spoken_language` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guide_id` bigint(20) UNSIGNED NOT NULL,
  `spoken_language_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guide_spoken_language`
--

INSERT INTO `guide_spoken_language` (`id`, `created_at`, `updated_at`, `guide_id`, `spoken_language_id`) VALUES
(2, '2025-01-13 11:44:48', '2025-01-13 11:44:48', 2, 6),
(3, '2025-01-13 11:44:48', '2025-01-13 11:44:48', 2, 2),
(4, '2025-01-21 09:26:39', '2025-01-21 09:26:39', 3, 5),
(5, '2025-01-21 09:26:39', '2025-01-21 09:26:39', 3, 3),
(6, '2025-01-21 10:07:48', '2025-01-21 10:07:48', 4, 5),
(7, '2025-01-21 10:14:28', '2025-01-21 10:14:28', 5, 5),
(8, '2025-01-22 06:48:15', '2025-01-22 06:48:15', 6, 5),
(9, '2025-01-22 06:52:27', '2025-01-22 06:52:27', 7, 5),
(10, '2025-01-22 06:54:34', '2025-01-22 06:54:34', 8, 5),
(11, '2025-01-22 06:59:08', '2025-01-22 06:59:08', 9, 5),
(12, '2025-01-30 06:45:23', '2025-01-30 06:45:23', 10, 1),
(13, '2025-01-31 06:44:22', '2025-01-31 06:44:22', 11, 5),
(14, '2025-02-01 05:52:32', '2025-02-01 05:52:32', 12, 5),
(15, '2025-02-01 06:04:27', '2025-02-01 06:04:27', 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` enum('bed_breakfast','3_star','4_star','5_star') NOT NULL,
  `type` enum('bed_breakfast','3_star','4_star','5_star') DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `address`, `created_at`, `updated_at`, `category`, `type`, `city_id`, `description`, `phone`, `email`, `website`, `images`) VALUES
(2, 'Shamsan', 'Yangi Qo\'yliq ko\'chasi 1B, 100080, Тоshkent, Toshkent', '2025-01-11 05:20:40', '2025-01-24 10:08:16', 'bed_breakfast', '4_star', 2, 'For chinese', '+998909078844', 'book@shamsan.uz', NULL, '[\"01JJBWH96SYQARV61SW30DAQ1A.jpg\"]'),
(3, 'Bentley Hotel', '2A Mirzakalon Ismoiliy Street, Tashkent/Uzbekistan', '2025-01-11 06:00:36', '2025-01-11 06:00:36', 'bed_breakfast', '4_star', 2, 'Bentley Tashkent Hotel consists of 62 comfortable and well equipped rooms, an upscale restaurant, conference and meeting rooms, a swimming pool, gym, spa and wellness center.', '998 95 255 00 11', 'sales@bentleyhotel.uz', NULL, '[\"01JH9Z6DY97BYW19V8324KGZNX.jpg\"]'),
(4, 'Avant Hotel', 'Askiya Street 12, Tashkent', '2025-01-11 06:16:23', '2025-01-11 06:16:23', 'bed_breakfast', '3_star', 2, 'Early check-in:\n00:00 - 06:59: 100% from the cost per night\n07:00 - 11:59: 50% from the cost per night\nLate check-out:\n14:00 - 17:59: 50% from the cost per night\n18:00 - 23:59: 100% from the cost per night', '998 55 517 50 00', ' avantterracehotel@gmail.com 24/7', NULL, '[\"01JHA03ASYF347KZJB1201MH87.jpg\"]'),
(5, 'Holiday Inn Tashkent City', ' 3 Ukchi street Tashkent, 100017 Uzbekistan', '2025-01-13 07:13:24', '2025-01-24 10:21:14', 'bed_breakfast', '4_star', 2, NULL, '+99871 205 20 00', 'reservation@hitc.uz', NULL, '[\"01JJBX912EZQ3SGHWEAF60JX69.jpg\"]'),
(6, 'Royal Sebzor Hotel', 'г. Ташкент, Ул. Тахтапуль, 41', '2025-01-13 09:40:48', '2025-01-13 09:40:48', 'bed_breakfast', '4_star', 2, 'до 18:00 бесплатная отмена бронирования', '+99899 188 71 10', 'royal.sebzor@gmail.com', NULL, '[\"01JHFGK2SMSTWSY1W10AAXK4RN.webp\"]'),
(7, 'Europe Hotel Tashkent', '\"Shohjahon 58, 100100, Tashkent   4.2 км до центра города\"	', '2025-01-13 09:52:00', '2025-01-13 09:52:00', 'bed_breakfast', '3_star', 2, NULL, '+99897 330 88 88', 'book@europehotel.uz', NULL, '[\"01JHFH7K89W8AWGF6PBPY8C3GW.jpg\"]'),
(8, 'Marwa Hotel Tashkent', 'Uzbekistan, Tashkent, Almazar district, 12 Lyangar street', '2025-01-13 11:03:38', '2025-01-24 10:17:08', 'bed_breakfast', '3_star', 2, NULL, '+998995207007', 'marwahoteltashkent@gmail.com', NULL, '[\"01JHFNARCDM76SJW1PB16Q7SNV.webp\"]'),
(9, 'Al Anvar Hotel', 'г. Ташкент, ул. Юсуф Хос Ходжиба, д. 65', '2025-01-13 11:09:04', '2025-01-13 11:09:04', 'bed_breakfast', '4_star', 2, NULL, '+998995120660', 'sales@alanvarhotel.uz', NULL, '[\"01JHFNMP5YY379KXG6XESWTRAQ.webp\"]'),
(10, 'Gabrielle INTERNATIONAL', '43 Shota Rustaveli, street, Tashkent, Uzbekistan', '2025-01-13 11:17:20', '2025-01-13 11:17:20', 'bed_breakfast', '3_star', 2, NULL, '+998 (71) 255-91-19', '@gabrielle.com', NULL, '[\"01JHFP3V2TYJASCQ5Y8Q29M9F9.jpg\"]'),
(11, 'City  Palace', 'Amir Temur Street 15, 100000, Tashkent', '2025-01-13 11:50:50', '2025-01-13 11:50:50', 'bed_breakfast', '5_star', 2, NULL, '+99855 511-30-00', 'info@citypal', NULL, '[\"01JHFR15ZCWB6S1F8CXX0PTSVA.jpg\"]'),
(12, 'LOTTE City Hotels Tashkent Palace', ' Узбекистан, 100029, г. Ташкент, улица Буюк Турон,', '2025-01-13 12:05:38', '2025-01-13 12:05:38', 'bed_breakfast', '4_star', 2, NULL, '998 90 937 80 00	', 'yo\'q', NULL, '[\"01JHFRW8Z8H46S666EC2QR1QPB.jpg\"]'),
(13, 'Simma Hotel', 'Сергели 5А, улица Навруз 22, Узгариш КФЙ, 100088 Ташкент, Узбекистан', '2025-01-13 13:09:02', '2025-01-13 13:09:02', 'bed_breakfast', '3_star', 2, NULL, '+998 71 207 29 99 +998 99 404 44 44', 'info@simma.uz', NULL, '[\"01JHFWGC81DH4HM2JQQCRQDYBR.jpg\"]'),
(14, 'Arda Plaza Toshkent', 'г. Ташкент, Яккасарайский район, Кичик Халка Йули, д ', '2025-01-13 13:13:07', '2025-01-24 10:29:42', 'bed_breakfast', '3_star', 2, NULL, '95 146 00 44', 'ardaplazahotel@gmail.com', NULL, '[\"01JJBXRGV7Y3Z8SKP284VC25XH.jpg\"]'),
(15, 'Regal Stay', '\"Малая кольцевая  дорога  100022, Tashkent\"	', '2025-01-14 07:22:28', '2025-01-14 07:22:28', 'bed_breakfast', '4_star', 2, NULL, '998 90 000 00 90', 'info@regalstay.uz', NULL, '[\"01JHHV2GMM5F2AFTABAPKNK9FX.jpg\"]'),
(16, 'Wyndham Tashkent', '\"Tashkent Amir Temur Str., C-4, No. 7/8  2,5 км от центра\"	', '2025-01-14 08:12:14', '2025-01-14 08:12:14', 'bed_breakfast', '4_star', 2, NULL, '78 120 37 00	', '@whyndam', NULL, '[\"01JHHXXM6P528KP0BYKT12YNZJ.jpg\"]'),
(17, 'Grand Mir hotel', 'Tashkent, Yakkasaray district, Mirobad St., 2', '2025-01-14 08:16:43', '2025-01-14 08:16:43', 'bed_breakfast', '4_star', 2, NULL, '78 140 20 00', 'info@grandmirhotel.uz', NULL, '[\"01JHHY5TSRTCBF4GZZ2BQ8YKCP.webp\"]'),
(18, 'Rakat Plaza', 'Muqimiy ko\'chasi 40, 100100	', '2025-01-14 10:04:52', '2025-01-14 10:04:52', 'bed_breakfast', '4_star', 2, NULL, '71 253 00 80', ' info@rakatplaza.uz', NULL, '[\"01JHJ4BW7779YDS8J971FA0HMQ.jpg\"]'),
(19, 'Diamond Hotel Tashkent', 'Чиланзарский район, ул. Чупон ота 70А Ташкент Чиланзар 2 кв, 100115', '2025-01-14 10:14:05', '2025-01-14 10:14:05', 'bed_breakfast', '3_star', 2, NULL, '+998712770707', 'diamond.tashkent.hotel@mail.ru', NULL, '[\"01JHJ4WQY6MMA7ASQ94PQY4TXK.jpg\"]'),
(20, 'The Heritage Tashkent Hotel', 'г. Ташкент, ул. Яккасарай, дом 42-44', '2025-01-14 10:29:27', '2025-01-14 10:29:27', 'bed_breakfast', '3_star', 2, NULL, '55 506 05 08', 'theheritagehoteltashkent@gmail.com', NULL, '[\"01JHJ5RWGG49GT288ZGYN6Y3Y5.jpg\"]'),
(21, 'Praga Hotel	', 'Yakkasaray district, st. Akramkhodzhaeva, 21, Tashkent, Uzbekistan', '2025-01-14 10:40:03', '2025-01-14 10:40:03', 'bed_breakfast', '3_star', 2, NULL, '71 253 00 27', 'info@pragahotel.uz', NULL, '[\"01JHJ6C9SEHA5CEXD1M6MNAD36.jpg\"]'),
(22, 't-city presidential hotel', 'Узбекистан, г.Ташкент, улица Ислама Каримова, Башня Узпромстройбанка', '2025-01-14 11:06:55', '2025-01-14 11:06:55', 'bed_breakfast', '5_star', 2, NULL, '78 140 38 38', 'info@t-citypresidentialhotel.uz', NULL, '[\"01JHJ7XFJKMD1ZB3132MWQQX5C.jpg\"]'),
(23, 'Alliance Hotel Tashkent', ' 100100 Tashkent, Uzbekistan Vosit Vohidov, 110', '2025-01-14 11:14:28', '2025-01-14 11:14:28', 'bed_breakfast', '3_star', 2, NULL, '+998 71 255 17 02', 'alliancehoteltashkent@gmail.com', NULL, '[\"01JHJ8B9WAEG08EX8X2X7MKJMT.jpg\"]'),
(24, 'Oazis Asaka Hotel', 'Яшнабадский район, ул.Фаргона йули, дом 23', '2025-01-14 11:19:38', '2025-01-24 10:34:57', 'bed_breakfast', '3_star', 2, NULL, '77 183 00 07', 'yoq', NULL, '[\"01JJBY24R6PPK14JZ1RPM62S5A.webp\"]'),
(25, 'MaxWell Hotel&SPA', 'г. Ташкент, Яшнабадский район, ул. Авиасозлар 3/3Б', '2025-01-14 11:25:27', '2025-01-24 10:36:58', 'bed_breakfast', '3_star', 2, NULL, '78 888 00 00', 'maxwellhotel@mail.ru', NULL, '[\"01JJBY5TQ84FHX33ASSSFNQ2FN.jpg\"]'),
(26, 'Hotel 1946 Ташкент', 'home, Furkat Street 4, 100021, Tashkent', '2025-01-14 11:28:38', '2025-01-24 10:40:38', 'bed_breakfast', '3_star', 2, NULL, '88 871 00 00', 'hotel1946@inbox.ru', NULL, '[\"01JJBYCHCC0XH00XRAJ43FNKAM.jpg\"]'),
(27, 'Marhabo boutique hotel', 'QCFF+V55 Хужа Порсо, Bukhara', '2025-01-14 11:33:35', '2025-01-14 11:33:35', 'bed_breakfast', 'bed_breakfast', 4, NULL, '88 301 00 70', 'yoq', NULL, '[\"01JHJ9EA21RA7J27F3J8PZ37GH.webp\"]'),
(28, 'Mercure Meridian', ' ул. К. Муртазоева 1А, 200119, Bukhara, Bukhara Region', '2025-01-14 11:38:30', '2025-01-24 10:52:06', 'bed_breakfast', '3_star', 4, NULL, '91 312 10 00', 'yoq', NULL, '[\"01JJBZ1H0RVC8DTZST1P17CPVQ.jpg\"]'),
(29, 'Kukaldosh boutique', 'Bukhara, M. Ambar', '2025-01-14 11:41:33', '2025-01-14 11:41:33', 'bed_breakfast', '3_star', 4, NULL, '65 224 53 99', 'kukaldosh@list.ru', NULL, '[\"01JHJ9WX0JEY8M436DYD3AFC9Z.jpeg\"]'),
(30, 'Bobosh boutique', 'Xuja Rushnoi street, 12/1, 200118, Bukhara', '2025-01-14 11:44:30', '2025-01-14 11:44:30', 'bed_breakfast', '3_star', 4, NULL, '90 414 28 88', 'yoq', NULL, '[\"01JHJA2A10M08Z7ZW8G8WSF1QK.jpg\"]'),
(31, 'Sahid Zarafshon', 'Muhammad Iqbal st 7, 200100, Bukhara, Bukhara Region', '2025-01-14 11:52:26', '2025-01-14 11:52:26', 'bed_breakfast', '4_star', 4, NULL, '65 505 50 00', 'info@sahidzarafshon.com', NULL, '[]'),
(32, 'Asia Bukhara', 'Mehtar Ambar St 55, 200118, Bukhara, Bukhara Region', '2025-01-14 11:56:27', '2025-01-14 11:56:27', 'bed_breakfast', '3_star', 4, NULL, '65 224 64 31', 'yo\'q', NULL, '[\"01JHJAR67BGH4XKSHNZVA99V35.jpg\"]'),
(33, 'Ark hotel', 'Абу Хавз Кабир, Bukhara', '2025-01-14 12:06:13', '2025-01-14 12:06:13', 'bed_breakfast', '4_star', 4, NULL, '65 505 77 77', 'yoq', NULL, '[]'),
(34, 'Minzifa hotel', 'Eshoni Pir St 63, 200118, Bukhara, Bukhara Region', '2025-01-14 12:20:16', '2025-01-14 12:20:16', 'bed_breakfast', '4_star', 4, NULL, '93 477 08 00', ' Eshoni Pir 63 Bukhara 200118, Uzbekistan', NULL, '[]'),
(35, 'Shahriston HOTEL', 'yo\'q', '2025-01-14 12:29:59', '2025-01-14 12:29:59', 'bed_breakfast', '3_star', 4, NULL, '93 454 77 67', 'something@gmail.com', NULL, '[]'),
(36, 'Malika hotel', '25 Gavkushon Street 200118 Bukhara, Buxoro Uzbekistan (UZ)', '2025-01-14 12:34:33', '2025-01-14 12:34:33', 'bed_breakfast', '4_star', 4, NULL, '65 224 62 56', 'malika-bukhara@mail.ru', NULL, '[]'),
(37, 'Farovon khiva ', 'Xorazm viloyati, Xiva shahri, Kiyot mahallasi, Buyuk yol ko\'chasi, 1-A uy', '2025-01-14 12:37:59', '2025-01-14 12:37:59', 'bed_breakfast', '4_star', 5, NULL, '+998622277878', 'reservation@farovonkhiva.uz', NULL, '[]'),
(38, 'Arkanchi hotel', '10 Pakhlavon Makhmoud str., Khiva, Uzbekistan', '2025-01-14 12:40:29', '2025-01-14 12:40:29', 'bed_breakfast', '4_star', 5, NULL, '55 602 32 22', 'info@hotel-arkanchi.uz', NULL, '[]'),
(39, 'Khorezm palace', 'Al-Beruny Street 2, 220100, Urgench, Xorazm Region', '2025-01-14 12:42:57', '2025-01-14 12:42:57', 'bed_breakfast', '4_star', 5, NULL, '62 224 99 99', 'yo\'q', NULL, '[]'),
(40, 'Grand Vizir', 'Unnamed Road, Khiva, Xorazm Region', '2025-01-14 12:47:48', '2025-01-14 12:47:48', 'bed_breakfast', '4_star', 5, NULL, '77 044 64 64', 'Grandvizirhotel@gmail.com', NULL, '[]'),
(41, 'Annex Hotel', 'Tashpulatov street 121, 220900, Xiva, Xorazm Viloyati', '2025-01-15 04:42:54', '2025-01-15 04:42:54', 'bed_breakfast', 'bed_breakfast', 5, NULL, '91 427 09 99', 'yo\'q', NULL, '[\"01JHM4B1HPZ165Q5PGXQA3G33N.jpg\"]'),
(42, 'Meros boutique', 'Улица Гулобод 5 140129 Самарканд, Узбекистан', '2025-01-15 04:47:25', '2025-01-15 04:47:25', 'bed_breakfast', 'bed_breakfast', 5, NULL, '66 239 99 11', 'meros.hotel@gmail.com', NULL, '[\"01JHM4KA157SVPSEZG5Z9SAYCF.jpeg\"]'),
(43, 'Erkin Palace', '  K. Yakubov str, Khiva Khorezm region, Uzbekistan', '2025-01-15 04:51:13', '2025-01-15 04:51:13', 'bed_breakfast', '3_star', 5, NULL, '+998 (62) 377 66 62', 'contact@erkinpalace.uz', NULL, '[\"01JHM4T8JG8A9H37RP8ZW76KZG.jpg\"]'),
(44, 'Khiva Residence', 'Янги турмуш ул Нажмиддин Кубро, 220900, Khiva', '2025-01-15 04:54:15', '2025-01-15 04:54:15', 'bed_breakfast', '3_star', 5, NULL, '78 113 64 67', 'hotel@khivaresidence.uz', NULL, '[\"01JHM4ZTYSHWWA5H3BAAXFQN2V.jpg\"]'),
(45, 'khans palace hotel ', 'P.Maxmud 30, 220900, Khiva, Xorazm Region', '2025-01-15 04:57:32', '2025-01-15 04:57:32', 'bed_breakfast', '3_star', 5, NULL, '99 197 89 09', 'yo\'q', NULL, '[\"01JHM55VDN3NHBC682VD0CXAZ8.jpg\"]'),
(46, 'Polvon Qori boutique', 'кори дом24, улица Палван, 220900, Xiva, Xorazm Viloyati', '2025-01-15 05:01:31', '2025-01-15 05:01:31', 'bed_breakfast', '3_star', 5, NULL, ' 91 998 89 99', 'hotelpolvonqori@gmail.com', NULL, '[\"01JHM5D4RPGKG5MGH64EPD44HB.jpg\"]'),
(47, 'Muso To\'ra', '99H6+P3P Ichan Qala mahalla, Bo\'yoqchilar ko\'chasi, 220900, Khiva, Xorazm Region', '2025-01-15 05:04:50', '2025-01-15 05:04:50', 'bed_breakfast', '3_star', 5, NULL, ' 99 526 11 21', 'yo\'q', NULL, '[\"01JHM5K6XBRXZ7QCB0RK7909V2.jpg\"]'),
(48, 'Turon lux hotel', '12 дом, Гагарин кўчаси проезд 2 12 улица Гагарина, 2 проезд, 140100, Samarkand', '2025-01-16 09:56:18', '2025-01-16 09:56:18', 'bed_breakfast', '3_star', 3, NULL, '91 701 09 90', 'yo\'q', NULL, '[\"01JHQ8NKV0W0RPFNJ8AN16XV6N.jpg\"]'),
(49, 'SULTAN BOUTIQUE Hotel', '143-uy, Boburshox ko\'chasi, Madaniyat MFY, Andijon shahar', '2025-01-16 10:06:59', '2025-01-16 10:06:59', 'bed_breakfast', '4_star', 3, NULL, '66 239 11 88', 'info@sultanhotel.uz', NULL, '[\"01JHQ995RN53GGKJJK1APRNNKA.jpg\"]'),
(50, 'City hotel ', 'University Boulevard 19 A, 140129, Samarkand, Samarqand Region', '2025-01-16 10:09:45', '2025-01-16 10:09:45', 'bed_breakfast', '3_star', 3, NULL, '66 239 82 82', 'yo\'q', NULL, '[\"01JHQ9E7HBKWF21M061MK7F6TT.jpg\"]'),
(51, 'Zilol Baxt', 'Самарканд, ул, Гулобод 5', '2025-01-16 10:12:49', '2025-01-16 10:12:49', 'bed_breakfast', '3_star', 3, NULL, '66 239 85 14', 'info@hotelzilolbaxt.uz', NULL, '[\"01JHQ9KVCJWNTF6YQJ0KSG5MZQ.jpg\"]'),
(52, 'Hilton garden Inn Samarkand', '2 Dakhbed Yuli Street, Samarkand, 140130, Uzbekistan, Opens new tab', '2025-01-16 10:16:17', '2025-01-16 10:16:17', 'bed_breakfast', '4_star', 3, NULL, '55 704 07 07', 'yo\'q', NULL, '[]'),
(53, 'Movinpick', '53 Shokhrukh Str Samarkand Samarkand Vilayat, 140100, Samarqand', '2025-01-16 10:22:28', '2025-01-16 10:22:28', 'bed_breakfast', '5_star', 3, NULL, '55 703 08 08', 'HC076-SL@accor.com', NULL, '[\"01JHQA5HBZD2S2GXQEKC2DQC87.jpg\"]'),
(54, 'Orient Star Khiva ', 'PAKHLAVAN MAHMUD STR. 1, Khiva, 220900, 220900', '2025-01-16 10:28:16', '2025-01-16 10:28:16', 'bed_breakfast', '3_star', 5, NULL, '+998975276859', 'orientstarkhiva@gmail.com', NULL, '[\"01JHQAG558RKGP7QM1D58RJE24.jpg\"]'),
(55, 'Hotel Zarafshon Boutique', 'Pakhlavon Mahmud street 60, Khiva, Uzbekistan (inside of Itchan Kala) Number of rooms: 26', '2025-01-16 10:32:47', '2025-01-16 10:32:47', 'bed_breakfast', '4_star', 5, NULL, '71 200 02 99', 'info@centralasia-travel.com', NULL, '[]'),
(56, 'Hotel Azia Fergana', 'Ulitsa Dzhomi 26, 150100, Fergana, Fergana Region', '2025-01-18 04:48:01', '2025-01-18 04:48:01', 'bed_breakfast', '4_star', 9, NULL, '73 244 13 26', 'yo\'q', NULL, '[\"01JHVVTJVZPG61PQ51EDNXK3VQ.jpg\"]'),
(57, 'Chinor hotel', 'Burxoniddin, marg\'iloniy 39, 150100, Fergana Region', '2025-01-18 04:52:23', '2025-01-18 04:52:23', 'bed_breakfast', 'bed_breakfast', 9, NULL, '94 394 77 67', 'yo\'q', NULL, '[]'),
(58, 'Farg\'ona Do\'stlik hotel', '150100, O\'zbekiston, Farg\'ona viloyati, Farg\'ona, Sohibkiron Temur ko\'chasi, 30', '2025-01-18 04:55:33', '2025-01-18 04:55:33', 'bed_breakfast', 'bed_breakfast', 9, NULL, '+998 (95) 401-97-97', 'yo\'q', NULL, '[]'),
(60, 'GSR hotel', '150100, Uzbekistan, Fergana region, Ferghana, Street Marifat, 43A', '2025-01-18 05:04:07', '2025-01-18 05:04:07', 'bed_breakfast', '3_star', 9, NULL, '+998 (99) 990-70-54', 'yo\'q', NULL, '[]'),
(61, 'Major hotel', 'Фергана, ул. Аль-Фергани, 104', '2025-01-18 05:15:01', '2025-01-18 05:15:01', 'bed_breakfast', '3_star', 9, NULL, '+998 99 022 30 22', 'yo\'q', NULL, '[]'),
(62, 'East hotel', 'CQJC+534, Kirgili, Fergana Region', '2025-01-18 05:23:09', '2025-01-18 05:23:09', 'bed_breakfast', 'bed_breakfast', 9, NULL, '73 242 60 65', 'yo\'q', NULL, '[]'),
(63, 'Tantana hotel', 'дом 122, Улица Алъ, 150100, Fergana, Fergana Region', '2025-01-18 05:27:09', '2025-01-18 05:27:09', 'bed_breakfast', '3_star', 9, NULL, '73 244 78 78', 'yo\'q', NULL, '[]'),
(64, 'Grand Fergana hotel', 'ул. Янги Турон дом №15, Farg\'ona, Farg\'ona Viloyati', '2025-01-18 05:30:09', '2025-01-18 05:30:09', 'bed_breakfast', '3_star', 9, NULL, '78 229 75 55', 'yo\'q', NULL, '[]'),
(65, 'Grand Plaza hotel', 'University Boulevard 7, 140100, Samarkand, Samarqand Region', '2025-01-22 10:47:41', '2025-01-22 10:47:41', 'bed_breakfast', '4_star', 3, NULL, '94 540 05 10', 'uzsales@reikartz.com', NULL, '[\"01JJ6T00AYAVTQA51AFARMQYG6.jpg\"]'),
(66, 'Hilton Samarkand Regency', 'M365+9PV, Konigil Massif, 140319, Samarqand, Samarqand viloyati', '2025-01-22 11:30:32', '2025-01-22 11:30:32', 'bed_breakfast', '4_star', 3, NULL, '55 705 70 10', 'yo\'q', NULL, '[]'),
(67, 'Gur Emir Palace Boutique Hotel', 'улица Шохрух кучаси 126, 140101, Samarkand, Samarqand Region', '2025-01-22 11:47:53', '2025-01-22 11:47:53', 'bed_breakfast', '3_star', 3, NULL, '91 030 80 88', 'guremirhotel@gmail.com', NULL, '[]'),
(68, 'Garden Inn Samarkand Afrosiyob', 'Rowing Channel, 140319, Samarqand, Samarqand viloyati', '2025-01-22 11:56:01', '2025-01-22 11:56:01', 'bed_breakfast', '4_star', 3, NULL, '55 705 70 51', 'yo\'q', NULL, '[]'),
(69, 'Savitsky Plaza', 'Samarkand, Samarqand Region', '2025-01-22 12:03:41', '2025-01-22 12:03:41', 'bed_breakfast', '4_star', 3, NULL, '55 705 70 20', 'yo\'q', NULL, '[]'),
(70, 'Asia Palace Shahrisabz', 'Ипак йули 54А, 181300, Shahrisabz', '2025-01-23 11:52:35', '2025-01-23 11:52:35', 'bed_breakfast', 'bed_breakfast', 6, NULL, '91 958 07 36', 'yo\'q', NULL, '[]'),
(71, 'Sahar boutique hotel', 'B. Naqshband 144, 200100, Bukhara', '2025-01-24 04:49:22', '2025-01-24 04:49:22', 'bed_breakfast', 'bed_breakfast', 4, NULL, ' 94 125 11 22', 'yo\'q', NULL, '[]'),
(72, 'Shoxjahon hotel', 'Suzangaron St 110, 140139, Samarkand, Samarqand Region', '2025-01-24 04:54:27', '2025-01-24 04:54:27', 'bed_breakfast', '3_star', 3, NULL, '55 705 00 01', 'yo\'q', NULL, '[]'),
(73, 'Karvon hotel', '17, Pendjikent st., 140100, Samarqand', '2025-01-24 05:08:49', '2025-01-24 05:08:49', 'bed_breakfast', '3_star', 3, NULL, '662350101', 'yo\'q', NULL, '[]'),
(74, 'Human Hotel', 'Ivliev St 52, 100070, Tashkent', '2025-01-24 05:12:45', '2025-01-24 05:12:45', 'bed_breakfast', '3_star', 2, NULL, '99 523 00 90', 'yo\'q', NULL, '[]'),
(75, 'Jahon Palace ', 'Gagarina Street 107, Samarkand 140100', '2025-01-24 05:34:36', '2025-01-24 05:34:36', 'bed_breakfast', '3_star', 3, NULL, '66 234 07 08', 'info@jahon-palace.com', NULL, '[]'),
(76, 'Khiva Silk Road hotel', 'Koy Darvaza, Khiva, Xorazm Region', '2025-01-24 05:38:09', '2025-01-24 05:38:09', 'bed_breakfast', 'bed_breakfast', 5, NULL, '91 277 77 87', 'yo\'q', NULL, '[]'),
(77, 'Hotel Maroqanda', 'Bukhara Str 141, 140100, Samarqand, Samarqand viloyati', '2025-01-24 05:43:23', '2025-01-24 05:43:23', 'bed_breakfast', 'bed_breakfast', 3, NULL, '66 235 11 29', 'yo\'q', NULL, '[]'),
(78, 'Azimut hotel', 'Shota Rustaveli St 1, 111000, Тоshkent, Toshkent', '2025-01-24 05:50:08', '2025-01-24 05:50:08', 'bed_breakfast', '3_star', 2, NULL, '78 141 99 99', 'yo\'q', NULL, '[]'),
(79, 'Maqom Plaza hotel', '3R3C+G2G, Shahrisabz, Qashqadaryo Region', '2025-01-24 07:07:40', '2025-01-24 07:07:40', 'bed_breakfast', '3_star', 6, NULL, '00', 'yo\'q', NULL, '[]'),
(80, 'Xorazm Palace', 'Al-Beruny Street 2, 220100, Urgench, Xorazm Region', '2025-01-24 09:59:50', '2025-01-24 09:59:50', 'bed_breakfast', '4_star', 17, NULL, '62 224 99 99', 'yo\'q', NULL, '[]'),
(81, 'Yurt Sputnik Navoiy', 'Yagigazgan', '2025-01-29 13:07:20', '2025-01-29 13:07:20', 'bed_breakfast', 'bed_breakfast', 19, 'Yurta ', '+998885480080', 'info@sss-tour.com', NULL, '[]'),
(82, 'Lia! by Minyoun Stars of Ulugbek', 'Samarkand, Samarqand Region', '2025-01-30 04:32:37', '2025-01-30 04:32:37', 'bed_breakfast', '4_star', 3, NULL, '55 705 70 30', 'yo\'q', NULL, '[]'),
(83, 'Silk Road by Minyoun', 'Samarkand, Samarqand Region', '2025-01-30 04:34:50', '2025-01-30 04:34:50', 'bed_breakfast', '5_star', 3, NULL, '55 705 70 40', 'yo\'q', NULL, '[]'),
(84, 'As-salam Hotel', 'Bukhara, Nakshbandi st 116, Bukhara, Bukhara Region', '2025-01-30 05:14:18', '2025-01-30 05:14:18', 'bed_breakfast', '3_star', 4, NULL, '90 710 71 17', 'yo\'q', NULL, '[]'),
(85, 'Harris hotel', 'Rakatboshi Street 2A, 100100, Tashkent', '2025-01-30 05:18:36', '2025-01-30 05:20:01', 'bed_breakfast', '3_star', 2, NULL, '77 141 99 99', 'yo\'q', NULL, '[]'),
(86, 'Abdulla aka uy mehmonxonasi', NULL, '2025-01-30 11:03:17', '2025-01-30 11:03:17', 'bed_breakfast', 'bed_breakfast', 27, NULL, '+998907183060', 'yo\'q', NULL, '[]'),
(87, 'Nurfayz', 'qalqonota navoiy', '2025-01-30 11:07:41', '2025-01-30 11:07:41', 'bed_breakfast', 'bed_breakfast', 28, NULL, '+998934321155', 'yo\'q', NULL, '[]'),
(88, 'Saida opa mehmon uy', 'navoiy nurota', '2025-01-30 11:10:09', '2025-01-30 11:10:09', 'bed_breakfast', 'bed_breakfast', 12, NULL, '+998934322685', 'yo\'q', NULL, '[]'),
(89, 'EuraAsia hotel Khiva', 'P. Mahmud 35, 220900, Khiva, Xorazm Region', '2025-01-30 11:43:28', '2025-01-30 11:43:28', 'bed_breakfast', '3_star', 5, 'Xiva norm hotel', '+998 99 500 46 61', ' hoteleuroasiakhiva@gmail.com', NULL, '[]'),
(90, 'Metan Obid ', 'Samarkand, Samarqand Region', '2025-01-30 11:56:22', '2025-01-30 11:56:22', 'bed_breakfast', 'bed_breakfast', 3, NULL, '+998995076631', 'yo\'q', NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_day_hotel_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `tour_day_hotel_id`, `room_id`, `quantity`, `created_at`, `updated_at`) VALUES
(116, 107, NULL, 1, '2025-02-02 09:13:27', '2025-02-02 09:13:27'),
(118, 109, NULL, 1, '2025-02-02 10:43:06', '2025-02-02 10:43:06'),
(119, 110, NULL, 1, '2025-02-02 23:04:12', '2025-02-02 23:04:12'),
(120, 111, NULL, 1, '2025-02-03 03:00:14', '2025-02-03 03:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meal_types`
--

CREATE TABLE `meal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `name` enum('breakfast','lunch','dinner','coffee_break') NOT NULL,
  `menu_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`menu_images`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_types`
--

INSERT INTO `meal_types` (`id`, `created_at`, `updated_at`, `description`, `restaurant_id`, `price`, `name`, `menu_images`) VALUES
(2, '2025-01-11 05:26:29', '2025-01-22 09:04:12', '3 salads , 1st and 2nd meals, drinks', 2, 11.00, 'lunch', NULL),
(3, '2025-01-11 05:26:29', '2025-01-22 09:04:12', '3 salads , meal, drinks', 2, 11.00, 'dinner', NULL),
(4, '2025-01-11 06:20:23', '2025-01-13 11:22:51', '3 salads, 1st meal, 2nd meal', 3, 10.00, 'lunch', NULL),
(5, '2025-01-11 06:22:54', '2025-01-25 04:48:17', '3 salads, 1st and 2nd meals, drinks', 4, 8.00, 'lunch', NULL),
(6, '2025-01-13 10:15:04', '2025-01-25 04:49:59', '3 salads, 1st and 2nd meals', 5, 12.00, 'lunch', NULL),
(7, '2025-01-13 10:19:49', '2025-01-13 10:19:49', '3 salads, 1st and 2nd meals', 6, 10.00, 'dinner', NULL),
(8, '2025-01-13 10:25:36', '2025-01-13 10:25:36', '3 salads, 1st and 2nd meals,drinks', 7, 10.00, 'lunch', NULL),
(9, '2025-01-13 10:43:25', '2025-01-13 10:43:25', '3 salads, 1st and 2nd meal', 8, 10.00, 'lunch', NULL),
(10, '2025-01-13 10:43:27', '2025-01-21 12:00:38', '3 salads, 1st and 2nd meal', 9, 13.00, 'lunch', NULL),
(11, '2025-01-13 10:52:15', '2025-01-22 12:02:35', '3 salads, 1st and 2nd meals', 10, 12.00, 'lunch', NULL),
(12, '2025-01-13 11:04:20', '2025-01-25 04:48:17', '3 salad,  2-meal drinks', 4, 8.00, 'dinner', NULL),
(13, '2025-01-13 12:26:02', '2025-01-22 12:01:52', '3 salads,1st and 2nd meals, drinks', 11, 12.00, 'dinner', NULL),
(14, '2025-01-13 12:46:21', '2025-01-22 12:03:55', '3 salads, 1st and 2nd meals, drinks', 12, 12.00, 'dinner', NULL),
(15, '2025-01-13 13:03:25', '2025-01-22 12:44:38', '3 salads, 1st and 2nd meals, drinks', 13, 12.00, 'lunch', NULL),
(16, '2025-01-13 13:08:39', '2025-01-22 12:45:37', '3 salads, 1st and 2nd meals, drinks', 14, 12.00, 'dinner', NULL),
(17, '2025-01-14 11:31:23', '2025-01-22 12:11:13', '3 salads, 1st and 2nd meals, drinks', 15, 12.00, 'lunch', NULL),
(18, '2025-01-14 11:37:31', '2025-01-14 11:37:31', '3 salads, 1st and 2nd meals, drinks', 16, 10.00, 'lunch', NULL),
(19, '2025-01-14 11:37:31', '2025-01-14 11:37:31', '3 salads, 1st and 2nd meals, drinks', 16, 10.00, 'dinner', NULL),
(20, '2025-01-14 11:41:00', '2025-01-14 11:41:00', '3 salads, 1st and 2nd meals, drinks', 17, 10.00, 'lunch', NULL),
(21, '2025-01-14 11:41:00', '2025-01-14 11:41:00', '3 salads, 1st and 2nd meals, drinks', 17, 10.00, 'dinner', NULL),
(22, '2025-01-14 11:45:11', '2025-01-14 11:45:11', '3 salads, 1st and 2nd meals, drinks', 18, 10.00, 'lunch', NULL),
(23, '2025-01-14 11:45:11', '2025-01-14 11:45:11', '3 salads, 1st and 2nd meals, drinks', 18, 10.00, 'dinner', NULL),
(24, '2025-01-14 11:51:12', '2025-01-14 11:51:12', '3 salads, 1st and 2nd meals, drinks', 19, 10.00, 'lunch', NULL),
(25, '2025-01-14 11:51:12', '2025-01-14 11:51:12', '3 salads, 1st and 2nd meals, drinks', 19, 10.00, 'dinner', NULL),
(26, '2025-01-14 12:05:27', '2025-01-14 12:05:27', '3 salads, 1st and 2nd meals, drinks', 20, 10.00, 'lunch', NULL),
(27, '2025-01-14 12:05:27', '2025-01-14 12:05:27', '3 salads, 1st and 2nd meals, drinks', 20, 10.00, 'dinner', NULL),
(28, '2025-01-14 12:18:39', '2025-01-14 12:18:39', '3 salads, 1st and 2nd meals, drinks', 21, 10.00, 'lunch', NULL),
(29, '2025-01-14 12:18:39', '2025-01-14 12:18:39', '3 salads, 1st and 2nd meals, drinks', 21, 10.00, 'dinner', NULL),
(30, '2025-01-15 11:06:12', '2025-01-15 11:06:12', '3 salads, 1st and 2nd meals, drinks', 8, 10.00, 'dinner', NULL),
(31, '2025-01-15 11:34:24', '2025-01-15 11:34:24', '3 salads, 1st and 2nd meals', 22, 10.00, 'lunch', NULL),
(32, '2025-01-15 11:34:24', '2025-01-15 11:34:24', '3 salads, 1st  and 2nd meals, drinks', 22, 10.00, 'dinner', NULL),
(33, '2025-01-16 11:13:43', '2025-01-16 11:13:43', '3 salads, 1st and 2nd meals, drinks', 23, 10.00, 'lunch', NULL),
(34, '2025-01-16 11:13:43', '2025-01-16 11:13:43', '3 salads, 1st and 2nd meals, drinks', 23, 10.00, 'dinner', NULL),
(35, '2025-01-17 12:28:20', '2025-01-17 12:28:20', '3 salads, 1st and 2nd meals, drinks', 24, 10.00, 'lunch', NULL),
(36, '2025-01-17 12:28:20', '2025-01-17 12:28:20', '3 salads, 1st and 2nd meals, drinks', 24, 10.00, 'dinner', NULL),
(37, '2025-01-17 12:37:00', '2025-01-17 12:37:00', '3 salads, 1st and 2nd meals, drinks', 25, 10.00, 'lunch', NULL),
(38, '2025-01-17 12:37:00', '2025-01-17 12:37:00', '3 salads, 1st and 2nd meals, drinks', 25, 10.00, 'dinner', NULL),
(39, '2025-01-17 12:53:46', '2025-01-17 12:53:46', '3 salads, 1st and 2nd meals, drinks', 26, 10.00, 'lunch', NULL),
(40, '2025-01-17 12:53:46', '2025-01-17 12:53:46', '3 salads, 1st and 2nd meals, drinks', 26, 10.00, 'dinner', NULL),
(41, '2025-01-18 05:05:51', '2025-01-18 05:05:51', '3 salads, 1st and 2nd meals, drinks', 27, 10.00, 'lunch', NULL),
(42, '2025-01-18 05:05:51', '2025-01-18 05:05:51', '3 salads, 1st and 2nd meals, drinks', 27, 10.00, 'dinner', NULL),
(43, '2025-01-18 05:13:12', '2025-01-18 05:13:12', '3 salads, 1st and 2nd meals, drinks', 28, 10.00, 'lunch', NULL),
(44, '2025-01-18 05:13:12', '2025-01-18 05:13:12', '3 salads, 1st and 2nd meals, drinks', 28, 10.00, 'dinner', NULL),
(45, '2025-01-18 05:25:58', '2025-01-18 05:25:58', '3 salads, 1st and 2nd meals, drinks', 29, 10.00, 'lunch', NULL),
(46, '2025-01-18 05:25:58', '2025-01-18 05:25:58', '3 salads, 1st and 2nd meals, drinks', 29, 10.00, 'dinner', NULL),
(47, '2025-01-18 05:39:42', '2025-01-18 05:39:42', '3 salads, 1st and 2nd meals, drinks', 30, 10.00, 'lunch', NULL),
(48, '2025-01-18 05:39:42', '2025-01-18 05:39:42', '3 salads, 1st and 2nd meals, drinks', 30, 10.00, 'dinner', NULL),
(49, '2025-01-18 05:47:04', '2025-01-18 05:47:04', '3 salads, 1st and 2nd meals, drinks', 31, 10.00, 'lunch', NULL),
(50, '2025-01-18 05:47:04', '2025-01-18 05:47:04', '3 salads, 1st and 2nd meals, drinks', 31, 10.00, 'dinner', NULL),
(51, '2025-01-20 07:00:12', '2025-01-20 07:00:12', '3 salads, 1st and 2nd meals, drinks', 32, 10.00, 'lunch', NULL),
(52, '2025-01-20 07:00:12', '2025-01-20 07:00:12', '3 salads, 1st and 2nd meals, drinks', 32, 10.00, 'dinner', NULL),
(53, '2025-01-20 07:04:59', '2025-01-20 07:04:59', '3 salads, 1st and 2nd meals, drinks', 33, 10.00, 'lunch', NULL),
(54, '2025-01-20 07:04:59', '2025-01-20 07:04:59', '3 salads, 1st and 2nd meals, drinks', 33, 10.00, 'dinner', NULL),
(55, '2025-01-20 08:06:25', '2025-01-20 08:06:25', '3 salads, 1st and 2nd melas, drinks', 34, 10.00, 'lunch', NULL),
(56, '2025-01-20 08:06:25', '2025-01-20 08:06:25', '3 salads, 1st and 2nd melas, drinks', 34, 10.00, 'dinner', NULL),
(57, '2025-01-20 08:37:27', '2025-01-20 08:37:27', '3 salads, 1st and 2nd meals, drinks', 35, 10.00, 'lunch', NULL),
(58, '2025-01-20 08:37:27', '2025-01-20 08:37:27', '3 salads, 1st and 2nd meals, drinks', 35, 10.00, 'dinner', NULL),
(59, '2025-01-20 08:42:43', '2025-01-20 08:42:43', '3 salads, 1st and 2nd meals, drinks', 36, 10.00, 'lunch', NULL),
(60, '2025-01-20 08:42:43', '2025-01-20 08:42:43', '3 salads, 1st and 2nd meals, drinks', 36, 10.00, 'dinner', NULL),
(61, '2025-01-20 09:55:37', '2025-01-20 09:55:37', '3 salads, 1st and 2nd meals,drinks', 37, 10.00, 'lunch', NULL),
(62, '2025-01-20 09:55:37', '2025-01-20 09:55:37', '3 salads, 1st and 2nd meals, drinks', 37, 10.00, 'dinner', NULL),
(63, '2025-01-20 11:22:20', '2025-01-20 11:22:20', '3 salads, 1st and 2nd meals, drinks', 38, 10.00, 'lunch', NULL),
(64, '2025-01-20 11:22:20', '2025-01-20 11:22:20', '3 salads, 1st and 2nd meals, drinks', 38, 10.00, 'dinner', NULL),
(65, '2025-01-20 11:34:01', '2025-01-20 11:34:01', '3 salads, 1st and 2nd meals, drinks', 39, 10.00, 'lunch', NULL),
(66, '2025-01-20 11:34:01', '2025-01-20 11:34:01', '3 salads, 1st and 2nd meals, drinks', 39, 10.00, 'dinner', NULL),
(67, '2025-01-20 12:04:46', '2025-01-20 12:04:46', '3 salads, 1st and 2nd meals, drinks', 40, 10.00, 'lunch', NULL),
(68, '2025-01-20 12:04:46', '2025-01-20 12:04:46', '3 salads, 1st and 2nd meals,drinks', 40, 10.00, 'dinner', NULL),
(69, '2025-01-20 12:40:22', '2025-01-20 12:40:22', '3 salads, 1st and 2nd meals, drinks', 41, 10.00, 'lunch', NULL),
(70, '2025-01-20 12:40:22', '2025-01-20 12:40:22', '3 salads, 1st and 2nd meals, drinks', 41, 10.00, 'dinner', NULL),
(71, '2025-01-21 10:27:21', '2025-01-21 10:27:21', '3 salads, 1st and 2nd meals, drinks', 42, 10.00, 'lunch', NULL),
(72, '2025-01-21 10:27:21', '2025-01-21 10:27:21', '3 salads, 1st and 2nd meals, drinks', 42, 10.00, 'dinner', NULL),
(73, '2025-01-21 10:32:06', '2025-01-21 10:32:06', '3 salads, 1st and 2nd meals, drinks', 43, 10.00, 'lunch', NULL),
(74, '2025-01-21 10:32:06', '2025-01-21 10:32:06', '3 salads, 1st and 2nd meals, drinks', 43, 10.00, 'dinner', NULL),
(75, '2025-01-21 10:35:39', '2025-01-21 10:35:39', '3 salads, 1st and 2nd meals,drinks', 7, 10.00, 'dinner', NULL),
(76, '2025-01-21 10:40:12', '2025-01-21 12:00:38', '3 salads, 1st and 2nd meal', 9, 13.00, 'dinner', NULL),
(77, '2025-01-21 10:40:12', '2025-01-21 10:40:12', 'Choy, Cofe, blinchik, Omlet, shirinlik ', 9, 8.00, 'breakfast', NULL),
(78, '2025-01-21 10:57:24', '2025-01-21 10:57:24', '3 salads, 1st and 2nd meals, drinks', 44, 10.00, 'lunch', NULL),
(79, '2025-01-21 11:42:30', '2025-01-21 11:42:30', 'салат, горячая закуска, 1-блюда, 2-блюда, вода, чай', 45, 10.00, 'lunch', NULL),
(80, '2025-01-21 11:42:30', '2025-01-21 11:42:30', 'салат, горячая закуска, 1-блюда, 2-блюда, вода, чай', 45, 10.00, 'dinner', NULL),
(81, '2025-01-21 12:54:44', '2025-01-21 12:54:44', 'салат, горячую закуску, первое блюдо, второе блюдо, десерт, чай и хлеб', 46, 9.00, 'lunch', NULL),
(82, '2025-01-21 12:54:44', '2025-01-21 12:54:44', 'салат, горячую закуску, первое блюдо, второе блюдо, десерт, чай и хлеб', 46, 9.00, 'dinner', NULL),
(83, '2025-01-22 11:19:13', '2025-01-25 04:49:59', '3 salads, 1st and 2nd meals', 5, 12.00, 'dinner', NULL),
(84, '2025-01-22 11:43:55', '2025-01-22 11:43:55', '3 salads, 1st and 2nd meals', 6, 10.00, 'lunch', NULL),
(85, '2025-01-22 12:01:52', '2025-01-22 12:01:52', '3 salads,1st and 2nd meals, drinks', 11, 12.00, 'lunch', NULL),
(86, '2025-01-22 12:02:35', '2025-01-22 12:02:35', '3 salads, 1st and 2nd meals', 10, 12.00, 'dinner', NULL),
(87, '2025-01-22 12:03:55', '2025-01-22 12:03:55', '3 salads, 1st and 2nd meals, drinks', 12, 12.00, 'lunch', NULL),
(88, '2025-01-22 12:11:13', '2025-01-22 12:11:13', '3 salads, 1st and 2nd meals, drinks', 15, 12.00, 'dinner', NULL),
(89, '2025-01-22 12:44:38', '2025-01-22 12:44:38', '3 salads, 1st and 2nd meals, drinks', 13, 12.00, 'dinner', NULL),
(90, '2025-01-22 12:45:37', '2025-01-22 12:45:37', '3 salads, 1st and 2nd meals, drinks', 14, 12.00, 'lunch', NULL),
(91, '2025-01-22 12:52:02', '2025-01-22 12:52:02', 'tea, coffee, pancake, sweets', 47, 8.00, 'breakfast', NULL),
(92, '2025-01-24 09:57:05', '2025-01-24 09:57:05', '3 salads, 1st and 2nd meals, drinks', 48, 12.00, 'lunch', NULL),
(93, '2025-01-24 09:57:05', '2025-01-24 09:57:05', '3 salads, 1st and 2nd meals, drinks', 48, 12.00, 'dinner', NULL),
(94, '2025-01-24 10:14:21', '2025-01-24 10:14:21', '3 salads, 1st and 2nd meals, drinks', 49, 9.00, 'lunch', NULL),
(95, '2025-01-24 10:14:21', '2025-01-24 10:14:21', '3 salads, 1st and 2nd meals, drinks', 49, 9.00, 'dinner', NULL),
(96, '2025-01-24 11:39:02', '2025-01-24 11:39:02', '3 salads, 1st and 2nd meals, drinks', 50, 10.00, 'lunch', NULL),
(97, '2025-01-24 11:39:02', '2025-01-24 11:39:02', '3 salads, 1st and 2nd meals, drinks', 50, 10.00, 'dinner', NULL),
(98, '2025-01-24 12:01:20', '2025-01-24 12:01:20', '3 salads, 1st and 2nd meals, drinks', 51, 10.00, 'lunch', NULL),
(99, '2025-01-24 12:01:20', '2025-01-24 12:01:20', '3 salads, 1st and 2nd meals, drinks', 51, 10.00, 'dinner', NULL),
(100, '2025-01-24 12:41:32', '2025-01-24 12:41:32', '3 salads, 1st and 2nd meals, drinks', 52, 10.00, 'lunch', NULL),
(101, '2025-01-24 12:41:32', '2025-01-24 12:41:32', '3 salads, 1st and 2nd meals, drinks', 52, 10.00, 'dinner', NULL),
(102, '2025-01-25 05:36:12', '2025-01-25 05:36:12', '3 salads, 1st and 2nd meals, drinks', 53, 10.00, 'lunch', NULL),
(103, '2025-01-25 05:36:12', '2025-01-25 05:36:12', '3 salads, 1st and 2nd meals, drinks', 53, 10.00, 'dinner', NULL),
(104, '2025-01-25 06:31:53', '2025-01-25 06:31:53', '3 salads, 1st and 2nd meals, drinks', 54, 10.00, 'lunch', NULL),
(105, '2025-01-25 06:31:53', '2025-01-25 06:31:53', '3 salads, 1st and 2nd meals, drinks', 54, 10.00, 'dinner', NULL),
(106, '2025-01-25 07:09:56', '2025-01-25 07:09:56', '3 salads, 1st and 2nd meals, drinks', 55, 10.00, 'lunch', NULL),
(107, '2025-01-25 07:09:56', '2025-01-25 07:09:56', '3 salads, 1st and 2nd meals, drinks', 55, 10.00, 'dinner', NULL),
(108, '2025-01-25 07:33:20', '2025-01-25 07:33:20', '3 salads, 1st and 2nd meals, drinks', 56, 10.00, 'lunch', NULL),
(109, '2025-01-25 07:33:20', '2025-01-25 07:33:20', '3 salads, 1st and 2nd meals, drinks', 56, 10.00, 'dinner', NULL),
(110, '2025-01-25 07:41:02', '2025-01-25 07:41:02', '3 salads, 1st and 2nd meals, drinks', 57, 10.00, 'lunch', NULL),
(111, '2025-01-25 07:41:02', '2025-01-25 07:41:02', '3 salads, 1st and 2nd meals, drinks', 57, 10.00, 'dinner', NULL),
(112, '2025-01-25 07:49:11', '2025-01-25 07:49:52', '3 salads, 1st and 2nd meals, drinks', 58, 12.00, 'lunch', NULL),
(113, '2025-01-25 07:49:52', '2025-01-25 07:49:52', '3 salads, 1st and 2nd meals, drinks', 58, 12.00, 'dinner', NULL),
(114, '2025-01-25 07:52:51', '2025-01-25 07:52:51', '3 salads, 1st and 2nd meals, drinks', 59, 12.00, 'lunch', NULL),
(115, '2025-01-25 07:52:51', '2025-01-25 07:52:51', '3 salads, 1st and 2nd meals, drinks', 59, 12.00, 'dinner', NULL),
(116, '2025-01-25 07:56:25', '2025-01-25 07:56:25', ' 3 salads, 1st and 2 nd meals, drinks', 60, 12.00, 'lunch', NULL),
(117, '2025-01-25 07:56:25', '2025-01-25 07:56:25', '3 salads, 1st and 2 nd meals, drinks', 60, 12.00, 'dinner', NULL),
(118, '2025-01-27 12:58:48', '2025-01-27 12:58:48', '3 salads, 1st and 2nd meals, drinks', 61, 10.00, 'lunch', NULL),
(119, '2025-01-27 12:58:48', '2025-01-27 12:58:48', '3 salads, 1st and 2nd meals, drinks', 61, 10.00, 'dinner', NULL),
(120, '2025-01-29 13:13:59', '2025-01-29 13:13:59', NULL, 62, 10.00, 'lunch', NULL),
(121, '2025-01-29 13:13:59', '2025-01-29 13:13:59', NULL, 62, 10.00, 'dinner', NULL),
(122, '2025-01-29 13:13:59', '2025-01-29 13:13:59', NULL, 62, 8.00, 'coffee_break', NULL),
(123, '2025-01-29 13:15:40', '2025-01-29 13:15:40', NULL, 63, 10.00, 'lunch', NULL),
(124, '2025-01-29 13:15:40', '2025-01-29 13:15:40', NULL, 63, 10.00, 'dinner', NULL),
(125, '2025-01-29 13:15:40', '2025-01-29 13:15:40', NULL, 63, 10.00, 'coffee_break', NULL),
(126, '2025-01-29 13:22:01', '2025-01-29 13:22:01', NULL, 64, 10.00, 'lunch', NULL),
(127, '2025-01-30 04:50:48', '2025-01-30 04:50:48', NULL, 65, 10.00, 'lunch', NULL),
(128, '2025-01-30 04:50:48', '2025-01-30 04:50:48', NULL, 65, 10.00, 'dinner', NULL),
(129, '2025-01-30 04:54:47', '2025-01-30 04:54:47', NULL, 66, 8.00, 'lunch', NULL),
(130, '2025-01-30 04:58:36', '2025-01-30 04:58:36', NULL, 66, 8.00, 'dinner', NULL),
(131, '2025-01-31 11:21:33', '2025-01-31 11:21:33', '3 salads, 1sta nd 2nd meals, drinks', 67, 10.00, 'lunch', NULL),
(132, '2025-01-31 11:21:33', '2025-01-31 11:21:33', '3 salads, 1sta nd 2nd meals, drinks', 67, 10.00, 'dinner', NULL),
(133, '2025-01-31 11:36:30', '2025-01-31 11:36:30', '3 salads, 1st and 2nd meals, drinks', 68, 10.00, 'lunch', NULL),
(134, '2025-01-31 11:36:30', '2025-01-31 11:36:30', '3 salads, 1st and 2nd meals, drinks', 68, 10.00, 'dinner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meal_type_restaurant_tour_days`
--

CREATE TABLE `meal_type_restaurant_tour_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meal_type_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `tour_day_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_01_11_035613_add_cols_to_guides_table', 1),
(2, '2025_01_11_043128_add_cols_to_hotels_table', 1),
(3, '2025_01_11_120520_add_menu_image_to_meal_types_table', 2),
(4, '2025_01_11_122220_create_drivers_table', 2),
(5, '2025_01_11_123043_add_driver_id_to_transports_table', 2),
(6, '2025_01_14_031616_add_image_to_tours_table', 3),
(7, '2025_01_14_031802_add_image_to_tour_days_table', 3),
(8, '2025_01_16_042323_add_images_to_transports_table', 4),
(9, '2025_01_16_044541_create_amenity_transport_table', 5),
(10, '2025_01_21_101826_add_tour_file_to_tours_table', 5),
(11, '2025_01_21_143935_add_cols_to_transports_table', 5),
(12, '2025_01_21_143936_create_oil_changes_table', 5),
(13, '2025_01_22_034043_create_city_tour_day_table', 5),
(14, '2025_01_22_081302_create_tour_day_hotels_table', 6),
(15, '2025_01_22_090742_create_hotel_rooms_table', 7),
(16, '2025_01_29_035150_add_markup_col_to_estimates_table', 8),
(17, '2025_01_31_131139_add_price_types_col_to_guides_table', 9),
(18, '2025_01_31_135239_add_price_type_name_to_tour_days', 9),
(19, '2025_02_02_123453_add_some_cols_to_tours_table', 10),
(20, '2025_02_02_141719_add_slug_to_tours_table', 11),
(21, '2025_02_02_144753_add_city_slug_to_tours_table', 12),
(23, '2025_02_02_151418_create_tour_categories_table', 14),
(24, '2025_02_02_152227_create_tour_category_table', 14),
(25, '2025_02_02_144908_add_from_cit__to_tours_table', 15),
(26, '2025_02_02_153431_create_tour_categories_table', 16),
(27, '2025_02_02_153506_create_tour_tour_category_table', 16),
(28, '2025_02_02_154445_add_itinerary_to_tour_days_table', 17),
(29, '2025_02_03_035229_add_location_to_tours_table', 18),
(30, '2025_02_03_143057_create_bookings_table', 19),
(31, '2025_02_03_144928_add_status_to_bookings_table', 19),
(35, '2025_02_04_035353_create_email_tour_bookings_table', 20),
(36, '2025_02_04_135119_create_email_bookings_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `monuments`
--

CREATE TABLE `monuments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ticket_price` decimal(8,2) NOT NULL,
  `description` text DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monuments`
--

INSERT INTO `monuments` (`id`, `created_at`, `updated_at`, `name`, `ticket_price`, `description`, `images`, `city_id`) VALUES
(1, '2025-01-10 16:43:53', '2025-01-11 06:14:40', 'Registan', 6.00, 'The Registan (Uzbek: Регистон, Registon) was the heart of the city of Samarkand of the Timurid Empire, now in Uzbekistan. The name Rēgistan (ریگستان) means \"sandy place\" or \"desert\" in Persian.\n\nThe Registan was a public square, where people gathered to hear royal proclamations, heralded by blasts on enormous copper pipes called dzharchis — and a place of public executions. It is framed by three madrasahs (Islamic schools) of distinctive Persian architecture. The square was regarded as the hub of the Timurid Renaissance.', '[\"01JH9Y6CJ5JKN6PXQZJ3XR84QY.jpg\",\"01JH9Y6CJ8GACEVCJ7BG9WS2N2.jpg\",\"01JH9Y6CJ9814N0EDW1EMF5FN1.jpg\"]', 3),
(2, '2025-01-11 05:28:05', '2025-01-13 10:15:02', 'Hasti Imam', 3.00, 'The Hazrati Imam complex (also known as Hastimom or Hastim)  is an architectural monument dating from the 16th to 20th centuries, located in the Olmazor district of Tashkent city, Uzbekistan. The complex consists of the Moʻyi Muborak madrasa, the Qaffol Shoshi mausoleum, the Baroqxon Madrasa, the Hazrati Imam mosque, the Tillashayx mosque, and the Imam al-Bukhari Islamic Institute. The ensemble was built near the grave of Hazrati Imam, the first imam-khatib of Tashkent, a scholar, one of the first Islamic preachers in Tashkent, a poet and an artist.\n\nAccording to historical sources, Hazrati Imam was also a master of making locks and keys, for which he received the nickname \"Qaffol\", meaning \"locksmith\". He also spoke 72 languages and translated the Old Testament (Torah) into Arabic.\n\nToday, the Hazrati Imam complex is located in the \"Old City\" part of Tashkent, and survived the strong earthquake of 1966. In 2007, by the Decree of the President of the Republic of Uzbekistan Islam Karimov, the Hazrati Imam (Hastimom) public association was established, and construction and renovation works were carried out to restore the original historical appearance of the Hazrati Imam complex.', '[\"01JH9YQ7PQV7VBB3EPE73NJ2FN.jpg\"]', 2),
(3, '2025-01-11 05:48:39', '2025-01-29 12:10:10', 'Gur-E-Amir ', 4.00, 'The Gūr-i Amīr or Guri Amir (Uzbek: Amir Temur Maqbarasi, Go\'ri Amir, Persian: is a mausoleum of the Turkic conqueror Timur (also known as Tamerlane) in Samarkand, Uzbekistan. It occupies an important place in the history of Turkestan\'s architecture as the precursor for and had influence on later Mughal architecture tombs, including Gardens of Babur in Kabul, Humayun\'s Tomb in Delhi and the Taj Mahal in Agra, built by Timur\'s Indian descendants, Mongols  that followed Indian culture with Central Asian influences.  Mughals established the ruling Mughal dynasty of the Indian subcontinent. The mausoleum has been heavily restored over the course of its existence.', '[\"01JH9YGHS6GXKHRHQ07H8Q2YJ3.jpg\"]', 3),
(4, '2025-01-11 05:58:19', '2025-01-29 12:10:34', 'Shakhi-zinda', 4.00, 'The Shah-i-Zinda Ensemble includes mausoleums and other ritual buildings of 11th – 15th and 19th centuries. The name Shah-i-Zinda (meaning \"The living king\") is connected with the legend that Qutham ibn Abbas, a cousin of Muhammad, is buried here. He came to Samarkand with the Arab invasion in the 7th century to preach Islam.\n\nThe Shah-i-Zinda complex was formed over eight (from the 11th until the 19th) centuries and now includes more than twenty buildings.\nView inside the necropolis\nTuman Aka complex\nThe ensemble comprises three groups of structures: lower, middle and upper connected by four-arched domed passages locally called chartak. The earliest buildings date back to the 11th – 12th centuries. Mainly their bases and headstones have remained now. The most part dates back to the 14th – 15th centuries. Reconstructions of the 16th – 19th centuries were of no significance and did not change the general composition and appearance.\nThe initial main body - Kusam-ibn-Abbas complex - is situated in the north-eastern part of the ensemble. It consists of several buildings. The most ancient of them, the Kusam-ibn-Abbas mausoleum and mosque (16th century), are among them.\nThe upper group of buildings consists of three mausoleums facing each other. The earliest one is Khodja-Akhmad Mausoleum (1340s), which completes the passage from the north. The Mausoleum of 1361, on the right, restricts the same passage from the east.\nThe middle group consists of the mausoleums of the last quarter of the 14th century - first half of the 15th century and is concerned with the names of Timur\'s relatives, military and clergy aristocracy. On the western side the Turkan Ago Mausoleum, the niece of Timur, stands out. This portal-domed one-premise crypt was built in 1372. Opposite is the Mausoleum of Shirin Bika Aga, Timur\'s sister.Next to Shirin-Bika-Aga Mausoleum is the so-called Octahedron, an unusual crypt of the first half of the 15th century.\nNear the multi-step staircase the most well proportioned buildings of the lower group is situated. It is a double-cupola mausoleum of the beginning of the 15th century. This mausoleum is devoted to Kazi Zade Rumi, who was the scientist and astronomer. Therefore the double-cupola mausoleum which was built by Ulugh Beg above his tomb in 1434 to 1435 has the height comparable with cupolas of the royal family\'s mausoleums. The main entrance gate to the ensemble (Darvazakhana or the first chartak) turned southward was built in 1434 to 1435 under Ulugbek', '[\"01JH9Z28QCCFCFJFKWW9FB0YDR.jpg\"]', 3),
(5, '2025-01-11 06:01:37', '2025-01-29 12:10:58', 'Ulugbek Observatory', 4.00, 'The Ulugh Beg Observatory is an observatory in modern day Samarkand, Uzbekistan, which was built in the 1420s by the Timurid astronomer Ulugh Beg. This school of astronomy was constructed under the Timurid Empire, and was the last of its kind from the Islamic Medieval period. Islamic astronomers who worked at the observatory include Jamshid al-Kashi, Ali Qushji, and Ulugh Beg himself. The observatory was destroyed in 1449 and rediscovered in 1908.', '[\"01JH9Z8AACVP9FSYZH0FY8VH9K.jpg\"]', 3),
(6, '2025-01-11 06:05:21', '2025-01-29 12:11:12', 'Bibi-Khanym mosque', 4.00, 'The Bibi-Khanym Mosque (Uzbek: Bibixonim masjidi; Persian: مسجد بی بی خانم; also variously spelled as Khanum, Khanom, Hanum, Hanim) is one of the most important monuments of Samarkand, Uzbekistan. In the 15th century, it was one of the largest and most magnificent mosques in the Islamic world. It is considered a masterpiece of the Timurid Renaissance. By the mid-20th century, only a grandiose ruin of it still survived, but major parts of the mosque were restored during the Soviet period.', '[\"01JH9ZF4VKMWQTRRATCWAZHHK0.jpg\"]', 3),
(7, '2025-01-11 06:08:16', '2025-01-29 12:11:34', 'Afrasiab Museum', 4.00, 'Afrasiab Museum of Samarkand (Uzbek: Afrosiyob-Samarqand shahar tarixi muzeyi) is a museum located at the historical site of Afrasiyab, one of the largest archaeological sites in the world and the ancient city that was destroyed by the Mongols in the early 13th century. Museum building and the archaeological site are located in the north-eastern part of the city of Samarkand in the Central Asian country of Uzbekistan. It bears the name of Afrasiab, mythical king and hero of Turan. Permanent exhibition of the Afrasiab Museum of Samarkand is focused on the history of the city itself as well as the surrounding region. The museum building was designed by Armenian architect Bagdasar Arzumanyan in 1970, at the time when Uzbek Soviet Socialist Republic was still part of the Soviet Union. The opening of the museum was dedicated to the 2500th anniversary of the founding of the city of Samarkand.Thematically, the museum is divided into five rooms dedicated to different periods of life in the fort of Afrasiyab.', '[\"01JH9ZMFVANYE2H02C54YXN7TQ.jpg\"]', 3),
(8, '2025-01-11 06:13:49', '2025-01-11 06:13:49', 'Konighil paper village ', 2.00, 'Konigil village is located 13 km from Samarkand. In the times of the Great Silk Road, there were many caravanserais here, but with its decline, the area fell into decay. However, thanks to the efforts of the Mukhtarov brothers, a once neglected 800 m territory turned into a country handicrafts center, at the same time providing jobs for suburban residents.\n\nUnder the shade of green trees, there is the tourist village of Konigil. It vividly demonstrates the culture, lifestyle, heritage, and customs of the Uzbek people through the works of local craftspeople. And the Meros Paper Mill in Samarkand is ready to offer its visitors its treasure in full.\n\nSamarkand silk paper was spread worldwide by the caravans. It used to be a precious commodity on the Great Silk Road because it did not spoil if got wet and had a minimum shelf life made 400 years! By comparison, the maximum shelf life of modern manufactured paper is one century. In ancient times, silk paper was ordered for writing manuscripts, and nowadays it is used for their restoration.', '[\"01JH9ZYN8WMHHAD302N1WC0KXZ.jpg\"]', 3),
(9, '2025-01-13 09:35:50', '2025-01-13 09:35:50', 'Tashkent metro station( Tashkent underground Museum)', 1.00, 'Planning for the Tashkent Metro started in 1968, two years after a major earthquake struck the city in 1966. Construction on the first line began in 1972 and it opened on 6 November 1977 with nine stations. This line was extended in 1980, and the second line was added in 1984. The most recent line is the Circle (Halqa) Line, the first section of which opened in 2020.[4]\n\nA northern extension of the Yunusobod Line for 2 stations Turkiston and Yunusobod was completed and opened on 29 August 2020. The fourth Circle line is currently under construction, first 7 stations for the line have already been built in 2020.', '[\"01JHFG9ZAY0FYXDBDQFDPGSVGX.jpg\"]', 2),
(10, '2025-01-13 09:50:50', '2025-01-13 09:50:50', 'Minor Mosque ( White mosque)', 0.00, 'The Minor Mosque is called the White Mosque or Ok Machit. The mosque opened in October 2014. The snow-white beauty was built near the Ankhor embankment. The White Mosque can accommodate more than 2,400 people, has two tall minarets and a sky-colored dome. The style of the mosque building has absorbed all the best from centuries-old Uzbek traditions. And at the same time, the builders managed to bring something new to the image of the new mosque. Due to the white marble finish, the Minor Mosque acquired some lightness, airiness. White is the color of purity and innocence, which perfectly matches the Muslim way of thinking.', '[\"01JHFH5ECE641N1T9GYDJM569Q.jpg\"]', 2),
(11, '2025-01-13 09:57:37', '2025-01-29 12:13:18', 'Ark of Bukhara', 4.00, 'The Ark of Bukhara is a massive fortress located in the city of Bukhara, Uzbekistan, that was initially built and occupied around the 5th century AD. In addition to being a military structure, the Ark encompassed what was essentially a town that, during much of the fortress\'s history, was inhabited by the various royal courts that held sway over the region surrounding Bukhara. The Ark was used as a fortress until it fell to Russia in 1920. Currently, the Ark is a tourist attraction and houses museums covering its history. The museums and other restored areas include an archaeological museum, the throne room, the reception and coronation court, a local history museum, and the court mosque', '[\"01JHFHHWC91AZ0Z69T38FF82P2.jpg\"]', 4),
(12, '2025-01-13 10:01:41', '2025-01-13 10:01:41', 'Ulugbek Madrasah', 0.00, 'Ulugbek madrasah is an architectural monument (1417) in Bukhara, Uzbekistan. It is the oldest preserved madrasah in Central Asia. It is the oldest of the madrasahs built by Ulugbek. During the reign of Abdullah Khan II, major renovation works were carried out (1586).\nThe building is a monument of the heyday of Central Asian architecture, and madrasahs were built on its model in other cities of Central Asia. Currently, the madrasah is the only building of this size preserved in Bukhara from the Timurid dynasty. The madrasah, as well as the three madrasahs built by Ulugbek, is the oldest surviving building. It is located opposite the Abdulaziz Khan Madrasah and forms a single architectural ensemble with it. In the architecture of Central Asia, the paired ensemble of two buildings facing each other is defined by the term \"double\", and the term \"double madrasah\" refers to two madrasahs.\nIt was included in the UNESCO World Heritage List in 1993 as part of the \"Historic Center of Bukhara\". Currently, the Ulugbek madrasa houses the Museum of the History of the Restoration of Bukhara Monuments.', '[\"01JHFHSA0MS3XAS6732FCS5RXT.jpg\"]', 4),
(13, '2025-01-13 10:04:39', '2025-01-29 12:13:35', 'Kalon Mosque', 4.00, 'Kalan Mosque (Persian: Big mosque) is an architectural monument located in Bukhara, Uzbekistan. It was considered one of the largest mosques built on the place of Jame\' Mosque. Its current appearance was built in 1514 during the reign of Shaybani Ubaidullah Khan of Bukhara. Currently, the mosque is included in the national list of estate real objects of material and cultural heritage of Uzbekistan.', '[\"01JHFHYR3K59HEN6CWFGFC6N1X.jpg\"]', 4),
(14, '2025-01-13 10:10:54', '2025-01-13 10:10:54', 'Chor Minar ', 2.00, 'Chor Minor (Char Minar Uzbek: Chor minor), alternatively known as the Madrasah of Khalif Niyaz-kul, is a historic gatehouse for a now-destroyed madrasa in the historic city of Bukhara, Uzbekistan. It is located in a lane northeast of the Lyab-i Hauz complex. It is protected as a cultural heritage monument, and also it is a part of the World Heritage Site Historic Centre of Bukhara.[1] In Persian, the name of the monument means \"four minarets\", referring to the building\'s four towers.', '[\"01JHFJA63RPNX4SK7R0W2Z24EG.jpg\"]', 4),
(15, '2025-01-13 10:14:36', '2025-01-13 10:14:36', 'Bolo Haouz Mosque', 0.00, 'Bolo Haouz Mosque is a historical mosque in Bukhara, Uzbekistan.[1] Built in 1712, on the opposite side of the citadel of Ark in Registan district, it is inscribed in the UNESCO World Heritage Site list along with other parts of the historic city. It served as a Friday mosque during the time when the emir of Bukhara was being subjugated under the Bolshevik Russian rule in the 1920s. Thin columns made of painted wood were added to the frontal part of the iwan (entrance) in 1917, additionally supporting the bulged roof of summer prayer room. The columns are decorated with colored muqarnas.', '[\"01JHFJGZEMFYCJYP5CHZJQ7BE4.jpg\"]', 4),
(16, '2025-01-13 10:18:27', '2025-01-13 10:18:27', 'Lyabi- Khauz ensemble ', 0.00, 'Lab-i Hauz (Uzbek: Labihovuz, Tajik: Лаби Ҳавз, romanized: Labi Havz, Persian: لب حوض, romanized: Lab-e Howz, meaning in Persian \"by the pool\"), sometimes also known as Lyab-i Khauz, a Russian approximation, is the name of the area surrounding one of the few remaining hauz pools that have survived in the city of Bukhara, Uzbekistan. Until the Soviet period, there were many such pools, which were the city\'s principal source of water, but they were notorious for spreading disease and were mostly filled in during the 1920s and 1930s.\n\nThe Lab-i Hauz survived because it is the centerpiece of a magnificent architectural ensemble, created during the 16th and 17th centuries, which has not been significantly changed since. The Lab-i Hauz ensemble, surrounding the pool on three sides, consists of the Kukeldash Madrasah (1568–1569, the largest madrasa in the city), on the north side of the pool, and two religious edifices built by Nadir Divan-Beghi: a khanqah (1620; Uzbek: xonaqah, meaning a lodging house for itinerant Sufis) and a madrasa (1622), which stand on the west and east sides of the pool respectively. The small Qāzī-e Kalān Nasreddīn madrasa (now demolished) was formerly located beside the Kukeldash madrasah.', '[\"01JHFJR0B3Z4FQPYGWKNFMW6MF.jpg\"]', 4),
(17, '2025-01-13 10:23:58', '2025-01-13 10:23:58', 'Bahoutdin Architectural Complex', 3.00, 'The Bahouddin Naqshband Memorial Complex is located approximately 10 kilometers northeast of Bukhara city and has been developed over many centuries. During the time of the Soviets, it was forbidden to visit the grave here. The complex was initially established after the death of Bahouddin Naqshband and has been a place of pilgrimage for many generations. Bahouddin Naqshband\'s full name was Bahouddin Muhammad ibn Burhoniddin Muhammad al-Bukhori, and he lived from 1318 to 1389. He was also known by titles such as \"Shohi Naqshband\" and \"Xojayi Buzruk.\" Bahouddin Naqshband is recognized as the seventh Sufi saint.\nThe Bahouddin Naqshband Memorial Complex begins with a small domed gatehouse. In 2003, the calligrapher Habibulloh Solih inscribed the 28th verse of the Surah Ar-Ra\'d (The Thunder) on the wall near the \"Bobi Islom\" gate, using an Arabic script known as \"Nasta\'liq\".In the muqarnas section of the gate, the names of the master builders and the year of construction are inscribed. A rubai (quatrain) is written in \"Nasta\'liq\" script on the entrance door of the mausoleum.The tombs within the complex have been arranged according to the command of Abdulaziz Khan and are currently well-preserved. The largest building in the complex, the khanqah (Sufi lodge), was constructed between 1544 and 1545.[3] Inside the cells of the khanqah, you can find poetry inscribed in \"Nasta\'liq\" script. The memorial complex also includes a minaret featuring an inscription in \"Nasta\'liq\" script, indicating that it was built in 1885', '[\"01JHFK23S782YT2Y6WEECMT7HF.jpg\"]', 4),
(18, '2025-01-13 10:34:34', '2025-01-13 10:34:34', 'Samanid Mausoleum', 3.00, 'The Samanid Mausoleum is a mausoleum located in the northwestern part of Bukhara, Uzbekistan, just outside its historic center. It was built in the 10th century CE as the resting place of the powerful and influential Islamic Samanid dynasty that ruled the Samanid Empire from approximately 900 to 1000. It contained three burials, one of whom is known to have been that of Nasr II.\nThe mausoleum is considered one of the iconic examples of early Islamic architecture and is known as the oldest funerary building of Central Asian architecture.The Samanids established their de facto independence from the Abbasid Caliphate in Baghdad and ruled over parts of modern Afghanistan, Iran, Uzbekistan, Tajikistan, and Kazakhstan. It is the only surviving monument from the Samanid era, but American art historian Arthur Upham Pope called it \"one of the finest in Persia\".\nPerfectly symmetrical, compact in its size, yet monumental in its structure, the mausoleum not only combined multi-cultural building and decorative traditions, such as Sogdian, Sassanian, Persian and even classical and Byzantine architecture, but incorporated features customary for Islamic architecture – a circular dome and mini domes, pointed arches, elaborate portals, columns and intricate geometric designs in the brickwork. At each corner, the mausoleum\'s builders employed squinches, an architectural solution to the problem of supporting the circular-plan dome on a square. The building was buried in silt some centuries after its construction and was revealed during the 20th century by archaeological excavation conducted under the USSR.', '[\"01JHFKNH4SQZB5BG6GKXF7JYY8.jpg\"]', 4),
(19, '2025-01-13 10:37:11', '2025-01-13 10:37:11', 'Chashma-Ayub Mausoleum', 3.00, 'Chashma-Ayub Mausoleum (Uzbek: Chashmai Ayyub, lit. \'Job\'s Well\') is located near the Samani Mausoleum, in Bukhara, Uzbekistan. Its name means Job\'s well, due to the legend in which Job (Ayub) visited this place and made a well by striking the ground with his staff. The water of this well is still pure and is considered healing. The current building was constructed during the reign of Timur and features a Khwarazm-style conical dome uncommon in Bukhara.', '[\"01JHFKTAV4R3NVTHZ3HNZ0WM96.jpg\"]', 4),
(20, '2025-01-13 10:45:21', '2025-01-13 10:45:21', 'Magok-i-Attari Mosque', 3.00, 'Maghoki Attori Mosque (Uzbek: Magʻoki Attori masjidi, Tajik: Масҷиди Мағокии Атторӣ, romanized: Masjidi Maghokii Attori, Persian: مسجد مغاکی عطاری, romanized: Masjed-e Maghākī-ye Attārī) is a historical mosque in Bukhara, Uzbekistan. It forms a part of the historical religious complex of Lyab-i Hauz. The mosque is located in the historical center of Bukhara, about 300 meters southwest of Po-i-Kalyan, 100 meters southwest of the Toqi Telpak Furushon trading dome and 100 meters east of Lab-i Hauz. It is a part of UNESCO World Heritage Site Historic Centre of Bukhara. Today, the mosque is used as a carpet museum.', '[\"01JHFM98G9YNX9WR169X2R46Z0.jpg\"]', 4),
(21, '2025-01-14 10:59:50', '2025-01-14 10:59:50', 'State Museum of History of Uzbekistan', 5.00, 'The State Museum of History of Uzbekistan (Uzbek: Oʻzbekiston tarixi davlat muzeyi; Russian: Государственный музей истории Узбекистана, Gosudarstvennyj muzej historii Uzbekistana), previously known as the National Museum of Turkestan, was founded in 1876. It is located in Tashkent.\nFormerly known as the Lenin Museum, the History Museum of Uzbekistan has since been renovated and more exhibits have been added.', '[\"01JHJ7GGMA209QG96X6EAKEQJ3.jpg\"]', 2),
(22, '2025-01-14 11:04:09', '2025-01-14 11:04:09', 'Amir Timur Square', 0.00, 'The Amir Timur Square (Uzbek: Amir Temur xiyoboni, Амир Тимур Хиёбони) is the main town square in Tashkent, Uzbekistan\nThe predecessor of the square is a park built during the first governor-general of the Russian Turkestan era. The square was at the intersection of two main streets, Moscow Street (now Amir Timur Street) and Kaufmann Street (now Milza Ulugh Beg Street), under the name of Constantinov Square. It was built in 1882 by Nikolai Ulyanov (Ульянов, Николай Фёдорович Ульянов) working under Mikhail Chernyayev.\n\nAfter the 1917 Russian Revolution, the square was renamed the Revolution Square. While Joseph Stalin\'s statue was placed in the square during the late 1940s, it was removed due to the October 1961 resolution that all Stalin\'s statues would be removed. In 1968, a statue of Karl Marx was erected.\n\nAfter the independence of Uzbekistan, the square was renamed the Amir Timur Square in 1994, and Timur\'s statue was placed on the site. Adjacent to the park in the south, the Amir Timur Museum was built in 1996.', '[\"01JHJ7RDN1EG18EZDK3T3N2E25.jpg\"]', 2),
(23, '2025-01-14 11:14:02', '2025-01-14 11:14:02', 'Oqsaroy (Shahrisabz)', 3.00, 'The construction of the Oqsaroy began in 1380 and was completed in 1386. However, the decoration work lasted until 1404. The palace was built in memory of Amir Temur\'s mother, Takina-Khotun. During the construction of the palace, craftsmen from Khorezm, Iran and many other countries participated. In particular, the participation of the stonecutter Muhammad Yusuf Tabrizi in the construction and decoration of the domed arch is recorded in the dome inscriptions.\n\nThe structure was originally supposed to be 73 meters high. A small water pool was placed on its roof, from which water flowing through pipes formed a waterfall. Golden sand was used to build the foundation of the palace. The foundation of the building was built quite deep', '[\"01JHJ8AG723CW40MNDSQEAEVBT.jpg\"]', 6),
(24, '2025-01-14 11:20:39', '2025-01-14 11:20:39', 'Karshi Bridge', 0.00, '\nKarshi Bridge — (or Kashkadarya Bridge) is an ancient brick bridge built over the Kashkadarya River, which flows through the city of Karshi, connecting the two parts of the city. It is considered one of the symbols of the city of Karshi. The construction of this bridge, which has survived to this day, was carried out in the second half of the 16th century. The Karshi Bridge is the largest built over the Kashkadarya.\n\nBy the relevant resolution of the Cabinet of Ministers, it was included in the National Register of Immovable Objects of Tangible Cultural Heritage[3]. The bridge was last repaired in 2016.', '[\"01JHJ8PMA4YPHDBPNK2MVWY5C1.jpg\"]', 6),
(25, '2025-01-18 05:03:15', '2025-01-18 05:03:15', 'Muhammad Aminkhan Madrasah', 4.00, 'Muhammad Aminkhan Madrasah is an architectural monument in Khiva (1852–1855). Built by Muhammad Amin Bahadur Khan. The Madrasah is located in the western part of the Itchan Kala. It was built in 1852–1855 with the funds and decree of the Uzbek ruler Muhammad Aminkhan. Muhammad Aminkhan Madrasah is the largest and most tiled in comparison to other Khiva madrasahs.\nIn 1990 it was included in the list of UNESCO World Heritage Sites as a part of Itchan Kala. Currently, it is used as a tourist service and exhibition space. Khiva tourist complex hotel is located there.', '[\"01JHVWPEQKMDZ4KPN37437B021.jpg\"]', 5),
(26, '2025-01-18 05:06:25', '2025-01-18 05:06:25', 'Kaltaminor', 3.00, 'Kaltaminor is a memorial minaret in Khiva. It is located on the front side of the Muhammad Amin Khan madrasa and sometimes considered as part of it.', '[\"01JHVWW8DZAX3WXZHPT2MDZ540.jpg\"]', 5),
(27, '2025-01-18 05:18:43', '2025-01-18 05:18:43', 'Islam Khoja complex', 3.00, 'Islam Khoja Madrasah is located behind the minaret. It consists of 42 hujras and a large domed hall. Skills of builders are shown in contrast combinations of architectural forms that skillfully used in a limited space. Mihrab niche is decorated with majolica and ganch. The facade is decorated with glaze.\nDecorative belts of blue and white ceramics alternating with ochre bricks adorn the minaret. It is topped by arched lantern and golden crown.\n\nThe minaret dominates its part of the city and concentrates around it thousand of domes and vaulted constructions. The different sizes of the buildings as they approach the minaret of Islam Khoja contrast with its mass, showing off the skill of town planning of the Khorezm architects.', '[\"01JHVXJS8SZKBG12VZQR9Y7ZGM.jpg\"]', 5),
(28, '2025-01-18 05:25:22', '2025-01-18 05:25:22', 'Itchan Kala', 3.00, 'Itchan Kala (Uzbek: Ichan-Qаl’а) is the walled inner town of the city of Khiva, Uzbekistan. Since 1990, it has been protected as a World Heritage Site.\nThe old town retains more than 50 historic monuments and 250 old houses, dating primarily from the eighteenth or nineteenth centuries. Juma Mosque, for instance, was established in the tenth century and rebuilt from 1788 to 1789, although its celebrated hypostyle hall still retains 112 columns taken from ancient structures.\nNotable buildings in Itchan Kala are Konya Ark, Juma Mosque, Ak Mosque, Hasanmurod Qushbegi mosque, madrasahs of Alla-Kulli-Khan, Muhammad Aminkhon, Muhammad Rakhimkhon, Mausoleums of Pahlavon Mahmoud, Sayid Allavuddin, Shergozikhon as well as caravanserais and markets.', '[\"01JHVXYYJGMS66F9BTW9TQ2H0V.jpg\",\"01JHVXYYJJ8GSW8MP1E94RPV1F.jpg\"]', 5),
(29, '2025-01-18 05:30:52', '2025-01-18 05:30:52', 'Pahlavon Mahmud Complex', 3.00, 'The Pahlavon Mahmud complex, Pahlavon Mahmud mausoleum or Polvon ota mausoleum is a memorial monument in Khiva, Khorezm. The mausoleum complex has a total area of 50x30m, and was originally built in 1664 as a miraculous dome over the grave of Pahlavon Mahmud. Pahlavon Mahmud (1247-1326) was a local poet who emerged from humble craftsmen, and was also famous for his heroic strength as an unbeatable wrestler, and his ability to heal people. His tomb has been and is still considered a sacred place by representatives of Uzbeks, Turkmens, Karakalpaks and other peoples. This complex is also known in Khiva as “Hazrati Pahlavon Pir”.\nAccording to his will, Pahlavon Mahmud was buried in his own leather workshop. Over time, this place became a respected pilgrimage site and later a complex named after him was built.', '[\"01JHVY90S60NZQ8MGYNF0BDD5E.jpg\"]', 5),
(30, '2025-01-18 05:33:29', '2025-01-18 05:33:29', 'Ota Darvaza', 3.00, 'Ota Gate (uzbek: Ota darvoza) is the western gate of the Itchan Kala, in the walled inner town of the city of Khiva, Uzbekistan. It was built during the reign of Olloqulixon in 1828-29 and is also known as the Shermuhammad Gate. The Ota Gatehas been included in the \"List of Intangible Cultural Heritage of Humanity\" by the Cabinet of Ministers of the Republic of Uzbekistan, recognizing its cultural significance. Additionally, it has been added to UNESCO\'s World Heritage List as part of the historical heritage of the city of Khiva, signifying its historical importance.', '[\"01JHVYDTBX9G8DM5B7WHH50AW9.jpg\"]', 5),
(31, '2025-01-18 07:07:26', '2025-01-18 07:11:16', 'Sultan Saodat Complex', 3.00, 'Sultan Saodat is a complex of religious structures located on the outskirts of modern Termez, in Uzbekistan.\nThe complex of Sultan Saodat, which was formed between the 10th and 17th centuries, holds the graves of the influential Sayyid dynasty of Termez. The Termez Sayyids claimed direct descendancy of the Islamic prophet Muhammad. The founder of the family is presumed to be Termez Sayyid Hassan al-Amir, descendant of Husayn ibn Ali, the grandson of Muhammad. Another historical tradition mentions that Sultan Saadat (Sodot) is the Sultan of Sayyids and the owner \"Sultan Saodat\" Mausoleum in Termez city – and Sultan Saadat is Sayyid Ali Akbar Termizi, who is also mentioned with the nickname (kunyat) Abu Muhammad, and is presumed to have died at the end of the 9th century or early in the 10th century in Termez.\nSultan Saodat Komplex Seit\nSultan Saodat\nSultan Saodat complex is a series of religious structures – mausoleums, mosques and khanaqa – built around a central passage. The oldest here are two large single-chamber, square, domed mausoleums (10th century). They are united by a 15th-century iwan.\nIn the second half of the 15th century two new buildings were built in front of the two mausoleums. Two parallel rows were built in the 15th–17th centuries and joined with the other buildings. Also, some new mausoleums were also pairwise connected with intermediate iwan; their decorations no longer exist. In the 16th–17th centuries courtyards to the south and the north were built up with mausoleums of different sizes and from different eras. The entrance was set up on the west side of the yard. The majestic ensemble stands out as a group of mausoleums, homogeneous in structure and decoration, though built in different styles', '[\"01JHW3SVNVT8G6G55NWDXJTSD8.jpg\"]', 11),
(32, '2025-01-18 07:09:57', '2025-01-18 07:11:41', 'Hakim at-Termizi Mausoleum', 3.00, 'The Hakim at-Termizi Mausoleum (Uzbek: Hakim at-Termiziy maqbarasi; other names: Termizi Mausoleum) is a historical funerary monument located in the Sherobod district of Surxondaryo Region, Uzbekistan. It serves as a memorial to Islamic scholar Al-Hakim at-Termizi. The mausoleum was constructed on top of his grave', '[\"01JHW3YEJ4R8J3M5FSEBDEVA6J.jpg\"]', 11),
(33, '2025-01-18 07:25:57', '2025-01-18 07:25:57', 'Fortress Kirk Kiz', 3.00, 'The unique \"Kirk Kiz\" building (\"forty girls”) which has attracted the attention of researchers for a long time , has been variously considered as a palace, an abbey, a caravansarai, Hanaqoh, or just simply a civil construction. The complex \"Kirk Kiz\" is situated 3 km. from the ancient city of Termez. Local tradition connects it with the well-known national legend in which the princess Gulaim and her forty girls bravely struggled against raiding nomads.\nThe building of \"Kirk Kiz\" is a square of about 54m each side of raw brick construction. At all corners of the building were protected by strong towers. There is an inside arched aperture, and also some large windows cut through each facade. There are two in intersections in the hallways placed on the two axes of the building dividing it into four equal parts. There is a little square courtyard in the centre of the building (11.5x11.5m), covered by a dome (to the mind some scholars, but according to another there was no overhead cover.', '[\"01JHW4VRE2QRZWNM57BBS8JCE7.jpg\"]', 11),
(34, '2025-01-18 07:29:01', '2025-01-18 07:29:01', 'Fayaz Tepe', 3.00, 'Fayaz Tepe, also Fayoz-Tepe, is a Buddhist archaeological site in the Central Asia region of Bactria, in the Termez oasis near the city of Termez in southern Uzbekistan. Located 15 km west of Termez off the main M39 highway. Bus number 15 runs past the turn-off to Fayaz Tepe, from where it is a 1 km walk without shade. The foundations of the site date to the 1st century CE, with a peak of activity around the 3rd and 4th centuries during the Kushan period, before experiencing a fatal decline around the 5th century CE, probably with the invasion of the Kushano-Sassanian, whose coinage can be found at the nearby site of Kara Tepe.', '[\"01JHW51CF4KA8ASMNFMWB72323.jpg\"]', 11),
(35, '2025-01-18 07:37:09', '2025-01-18 07:37:09', 'Archaeological Museum of Termez', 4.00, 'The Archaeological Museum of Termez is a museum in the city of Termez, modern Uzbekistan. The artifacts contained in the museum are mainly linked to the Graeco-Bactrian and Kushan periods. Some artifacts, such as the seated Buddha under the Bodhi tree or head of the Kushan prince are actually copies, the original of which are located in the History Museum of Tashkent and in the Hermitage Museum in Saint-Petersburg.[1][2]\n\nThere are also scale models of the archaeological sites of Salalli Tepe, Kampyr Tepe, Khalchayan, Balalyk Tepe and Fayaz Tepe.\nA famous mural, the so-called \"Princess of Tokharistan\", was found at Tavka Kurgan in Shirabad', '[\"01JHW5G88G159MX3CCGATAFBY2.jpg\"]', 11),
(36, '2025-01-22 11:14:20', '2025-01-22 11:14:20', 'Kutlug Timur Minaret', 0.00, 'Kutlug Timur minaret is a minaret in Konye-Urgench in north Turkmenistan, Central Asia. It was built in 1011 during the Khwarazmian dynasty. The height of the minaret is 60 meters with a diameter of 12 metres at the base and 2 metres at the top. In 2005, the ruins of Old Urgench where the minaret is located were inscribed on the UNESCO List of World Heritage Sites.\nThe Kutlug Timur minaret belongs to a group of around 60 minarets and towers built between the 11th and the 13th centuries in Central Asia, Iran and Afghanistan including the Minaret of Jam, Afghanistan.\nOn the basis of its decorative brickwork, including Kufic inscriptions, the minaret is thought to be an earlier construction but was restored by Kutlug-Timur around 1330.', '[\"01JJ6VGSWH8GGRAC2XEWNMVMFT.jpg\"]', 17),
(37, '2025-01-22 11:37:14', '2025-01-22 11:37:14', 'Turabeg Khanum Mausoleum', 0.00, 'Nearest to the town, you will find a complex of mausoleums belonging to 14th century, one of them being Turabeg Khanum Mausoleum. It is not far from the 11th ', '[\"01JJ6WTR95GGB81RP59W0GTC6T.jpg\"]', 17),
(38, '2025-01-22 11:38:58', '2025-01-22 11:38:58', 'Sultan Ali Mausoleum', 0.00, 'To the east lies the museum and Matkerim Ishan mausoleum, and to the west, the Nedjmeddin Kubra mausoleum, Sultan Ali mausoleum and Piryarvali mausoleum. The ...', '[\"01JJ6WXX4ED9QKKA3E48G0B34H.jpg\"]', 17),
(39, '2025-01-22 11:55:10', '2025-01-22 11:55:10', 'Magic City', 0.00, 'Asia\'s largest all season park entertainment and attractions Magic City. The first Magic City amusement park in Uzbekistan is a place that every day will give real emotions and remember magical sensations. The largest zone of magic and entertainment for the whole family, where neither adults nor children will be bored.', '[\"01JJ6XVJP6YRMYXS2EKNW25ZN3.jpg\"]', 2),
(40, '2025-01-24 08:50:48', '2025-01-24 08:58:41', 'Savitsky Museum', 3.00, 'In summer 2009, both the Leisure column in the Sunday supplement of The New York Times and the International Herald Tribune listed Savitsky Museum as a must-see site for art enthusiasts before they die. French ambassador J.K. Richard echoed these sentiments when he referred to the museum’s rich collections as the “Caves of Ali Baba”. Today, the treasures of this remote museum have never been more accessible to the public.\n\nSavitsky Museum - also called Nukus Museum of Art, State Museum of Arts of the Republic of Karakalpakstan and even \"Louvre in the Sands\" - was founded by legendary Moscow artist Igor Savitsky (1915-1984), a name known to art connoisseurs the world over. Savitsky’s foresight, taste and courage enabled him to identify new artistic trends and up-and-coming artists, prompting him to amass the works of forgotten masters in the museum which he founded in 1966.\n\nAfter Savtisky’s death in 1984, his student Marinika Babanazarova took over the reins, serving as museum director from 1984 to 2015. Thanks to Babanazarova’s tireless work and ceaseless creativity, the collections at Nukus Museum of Art were expanded and the museum brought to worldwide fame.', '[\"01JJBRHWDGPYFDFYKJAFW99EX0.jpg\"]', 18),
(41, '2025-01-24 08:51:29', '2025-01-24 08:53:03', 'Muynak Ship Graveyard', 0.00, 'Muynak Ship Graveyard is the site of a once-wealthy fishing town which was founded on the shores of the Aral Sea. Muynak flourished until the Karakum Canal was constructed for the irrigation of cotton fields in the 1950s, a reckless act which led to one of the world’s greatest ecological disasters. The Aral Sea nearly dried up in the ensuing decades, and today its shores are 100 kilometers away from the city. Cargo ships were forced to halt their voyages in 1970, and Karakalpakstan’s Muynak is now little more than a ghost town, with a population of 18,000 people.\n\nMuynak Ship Graveyard is a collection of forlorn, abandoned boats which serve as a glaring reminder of this unnecessary tragedy of nature. The sight of a full lineup of ships, embedded in the desert sands where scarcely a drop of water can now be found, is truly tragic. Visitors are welcome to climb atop the old vessels, take photos and tour the small but informative museum which now sits adjacent to the ships.', '[\"01JJBR7J7SBTCADH1NWWQCCW17.jpg\"]', 18),
(42, '2025-01-24 08:54:56', '2025-01-24 09:08:08', 'Aral Sea', 0.00, 'The infamous Aral Sea was once the fourth largest in the world before its waters were tragically drained in the Soviet irrigation project which was launched in the mid-20th century. Now just 10 percent of its original size, the Aral Sea is at the heart of one of the world’s worst ecological disasters which has had an irreversible impact on the region’s flora and fauna.\n\nKarakalpakstan was once home to more than 60 percent of the tugai forests of Central Asia, yet today only 10 percent of this wealth remains. Much of the area is caked in a layer of salt, which has naturally led to a significant decrease in its birds, fish and wildlife. Sixty-three local species are now listed in the Red Book, including the Central Asian cheetah and the Turanian tiger, while several endangered bird and fish species are listed in the International Union for Conservation of Nature (IUCN) Book.\n\nNevertheless, glimmers of hope for a more promising future can still be found in the region, particularly along the coast of what remains of Karakalpakstan’s Aral Sea. Ride in a 4WD from Nukus via Muynak and the Ustyurt Plateau to reach these now-remote shores, where you can float in its sparkling, salty waters and sunbathe on its shores. Most guests opt to spend the night in nearby yurt camps, where homecooked food, starry skies and a comfortable bed await you. Aral Sea trips help to support the local economy while promising adventure and an eye-opening, firsthand experience of beleaguered and tenacious Karakalpakstan.', '[\"01JJBS35DDCRDB1CJ8KE23YFAX.jpg\"]', 18),
(43, '2025-01-24 08:56:37', '2025-01-24 08:56:37', 'Desert Castles of Ancient Khorezm', 0.00, 'Ellik Kala Fortresses (Fifty Fortresses), better known as the Desert Castles of Ancient Khorezm, is a UNESCO-recognized string of 8 citadels which were built around an oasis near Uzbekistan’s Karakum Desert. Counted among the oldest sites in Karakalpakstan Region, the defensive structures were constructed between the 4th century BC- 9th century AD and were inhabited until medieval times, when they were likely abandoned following a 13th-century Mongol invasion.\n\nThe castles were rediscovered in the 1930s by famed Soviet archaeologist Sergei Pavlovich Tolstov, who was accompanied on his expedition by Igor Savitsky, the founder of the Nukus museum which now bears his name. Their research determined that the forts served to protect nearby villages from enemy raids and that at least one (Kyzyl-Kala) was a thriving post along the Great Silk Road. Numerous artifacts, Zoroastrian temples and city ruins unearthed at each site now provide invaluable clues into the region’s history.\n\nAmong the most significant of the 8 fortresses are Toprak-Kala (1st-5th centuries AD), a fortress-settlement valued for its advanced and complex architecture; Ayaz-Kala (c. 2nd century AD), whose remains are divided into 3 distinct time periods; and Kyzyl-Kala (c. 1st century AD), which was partially restored in the early 21st century. The forlorn castles now welcome visitors to climb their walls and explore their every nook and cranny. Seeing their stately grandeur and historical significance with your own eyes will make the desert drive to reach them from Nukus well worth the effort!', '[\"01JJBRE2TN4H9WQ153A3VTKKZA.jpg\"]', 18),
(44, '2025-01-24 09:28:50', '2025-01-24 09:28:50', 'Siyob Bazaar', 0.00, 'Siyob Bazaar (Uzbek: Siyob bozori,Tajik: Бозори Сиёб), also called Siab Bazaar, is the largest bazaar in Samarkand, Uzbekistan. The building is built in the shape of a dome, under which there are several pavilions with a large number of shopping arcades. The main entrance has a triple arch lined with blue majolica. The area of the market is more than 7 hectares. Siyob Bazaar is one of the most visited places in the city. The Siyob Bazaar consists of seven large covered pavilions with counters, as well as several other large pavilions with shops.\n\nThe name of the bazaar comes from the name of one of the historical and geographical regions of the city - Siyob, and the Siyob River flowing near the bazaar. The word “Siyob” is translated from Persian and Tajik as black water/river.\n\nSiyob Bazaar is located adjacent to the Bibi-Khanym Mosque, and is visited not only by local people but also by domestic and foreign tourists.', '[\"01JJBT922ZPHNYY6CX1JYB1PTC.jpg\"]', 3),
(45, '2025-01-24 09:31:00', '2025-01-24 09:31:00', 'Chorsu Bazaar', 0.00, 'Chorsu Bazaar (Persian: بازار چارسو, Uzbek: Chorsu bozori), also called Charsu Bazaar, is the traditional bazaar located in the center of the old town of Tashkent, the capital city of Uzbekistan. Under its blue-colored domed building and the adjacent areas, all daily necessities are sold.Chorsu Bazaar is located across the street from Chorsu Station of the Tashkent Metro, near Kukeldosh Madrasah. \"Chorsu\" is a word from the Tajik language, meaning \"crossroads\" or \"four streams\". [1] Kukeldash Madrasah, built around 1570, is located at the edge of the bazaar. The modern building and the characteristic blue dome were designed by Vladimir Azimov, Sabir Adylov et al. in 1980, as a late example of Soviet Modernism style.', '[\"01JJBTD1XM4NYYMP8RFCP6J3HV.jpg\"]', 2),
(46, '2025-01-24 09:40:36', '2025-01-24 09:40:36', 'Tashkent Tower', 5.00, 'The Tashkent Television Tower (Uzbek: Тошкент Телеминораси, Toshkent Teleminorasi) is a 375-metre-high (1,230 ft) tower, located in Tashkent, Uzbekistan and is the twelfth tallest tower in the world. Construction started in 1978. The tower began operating six years later, on 15 January 1985. It was the fourth tallest tower in the world from 1985 to 1991. The decision to construct the tower was made on 1 September 1971 in order to spread TV and radio signals to all over Uzbekistan. It is a vertical cantilever structure, and is constructed out of steel. Its architectural design is a product of the Terkhiev, Tsarukov & Semashko firm.', '[\"01JJBTYKVKHBN6XGEZ58QCV29Y.jpg\"]', 2),
(47, '2025-01-30 10:12:56', '2025-01-30 10:12:56', 'Independence square tashkent', 0.00, 'The Independence Square (Mustaqilliq Maidoni) is the main square of the country with the administrative offices of the Cabinet and the Senate. Generally it looks more like a large park than a square, and is packed with monuments and fountains. Surrounded by impressive public buildings and filled with trees and flower beds, the Independence Square in Tashkent is a showcase of modern Uzbekistan.\n\nThe entrance to the square is framed by Arch of Independence with the sculptural images of storks on top. In the center of the square on the granite pedestal is placed the symbol of independence - the bronze ball, symbolizing the globe with a symbolic image of the Republic of Uzbekistan on it. At the foot of the obelisk there is the monument of the Happy Mother - the figure of a young woman with a baby in her arms.', '[\"01JJVB64QWG2R924QZQ0P1B2EQ.jpg\"]', 2),
(48, '2025-02-01 05:28:32', '2025-02-01 05:28:32', 'Kosmonavtlar (Tashkent Metro)', 0.00, 'Kosmonavtlar (\"Cosmonauts\", formerly known as Проспект Космонавтов, Prospekt Kosmonavtov) is a space-programme-themed station of the Tashkent Metro. It honors Soviet cosmonauts such as Yuri Gagarin and Valentina Tereshkova, the first man and woman in space. The station was opened on 8 December 1984 as part of the inaugural section of the line, between Alisher Navoiy and Toshkent.\nUntil 2018 it was illegal to photograph the Tashkent metro, because it also worked as a nuclear bomb shelter.', '[\"01JJZZPTHFTMAJ9FE20VZ9XN9S.jpg\"]', 2);

-- --------------------------------------------------------

--
-- Table structure for table `monument_tour_days`
--

CREATE TABLE `monument_tour_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `monument_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tour_day_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oil_changes`
--

CREATE TABLE `oil_changes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transport_id` bigint(20) UNSIGNED NOT NULL,
  `oil_change_date` date NOT NULL,
  `mileage_at_change` bigint(20) UNSIGNED NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `oil_type` varchar(255) DEFAULT NULL,
  `service_center` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `other_services` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`other_services`)),
  `next_change_date` date DEFAULT NULL,
  `next_change_mileage` int(11) DEFAULT NULL,
  `oil_cost` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oil_changes`
--

INSERT INTO `oil_changes` (`id`, `transport_id`, `oil_change_date`, `mileage_at_change`, `cost`, `oil_type`, `service_center`, `notes`, `other_services`, `next_change_date`, `next_change_mileage`, `oil_cost`, `created_at`, `updated_at`) VALUES
(1, 2, '2025-01-03', 10, 100.00, 'кастрол', 'гараж', NULL, '[{\"service_cost\": \"5\", \"service_name\": \"filtr\"}]', '2025-02-03', 10010, NULL, '2025-01-23 17:34:41', '2025-01-31 03:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `created_at`, `updated_at`, `name`, `address`, `phone`, `website`, `email`, `city_id`) VALUES
(2, '2025-01-11 05:26:29', '2025-01-11 05:57:13', 'Sim-Sim restaurant', '15-uy, Mukimi Street, 100115, Tashkent', '+998909439067', 'www.simsim.uz', 'sim@mail.ru', 2),
(3, '2025-01-11 06:20:23', '2025-01-13 10:43:57', 'Miramandi', 'Furqat ko\'chasi 10, 100027, Тоshkent,', '+998972640000', 'almandi.uz', 'Miramandi@tashkent.com', 2),
(4, '2025-01-11 06:22:54', '2025-01-11 06:22:54', 'Beshqozon', ' Iftihor ko\'chasi 1, Тоshkent, Toshkent', '+998712009444', 'wwwbeshqozon.uz', 'Beshqozon@mail.ru', 2),
(5, '2025-01-13 10:15:04', '2025-01-13 10:15:04', 'Karimbek', ' Гагарин кўчаси 194, Samarqand, Samarqand viloyati', '+998662377739', 'wwwkarimbek.uz', 'karimbekon@mail.ru', 3),
(6, '2025-01-13 10:19:49', '2025-01-13 10:20:09', 'Ibrohim Bek', 'Muqimiy ko\'chasi, 100100, Тоshkent, Toshkent', '+998712539665', 'www.ibroximbek.uz', 'bekrestaurants@mail.ru', 2),
(7, '2025-01-13 10:25:36', '2025-01-13 10:25:36', 'Samarqand', 'MX32+R97, Samarqand, Samarqand viloyati', '+998907430405', 'www.Samarqandrest.uz', 'samarqandrest@mail.ru', 3),
(8, '2025-01-13 10:43:25', '2025-01-15 11:06:12', 'Terrassa  Cafe & Restaurant', 'Terrassa Cafe Khiva, Khiva 220900 Uzbekistan', '+998 91 993 91 11', 'www.terrassacafe.uz', 'terassacafe&restaurant@mail.ru', 5),
(9, '2025-01-13 10:43:27', '2025-01-13 10:43:27', 'Emirhan ', 'Махмуджанова 1/18 Самарканд Сиябский, 140100, Samarkand', '+998888916000', 'www.emirhan.uz', 'Emirhan@mail.ru', 3),
(10, '2025-01-13 10:52:15', '2025-01-13 10:52:15', 'Han Atlas', 'Mahmud Qoshgariy ko\'chasi 92, Samarqand, Samarqand viloyati', '+998662331831', 'www.xanatlas.uz', 'hanatlas@uzmail.ru', 3),
(11, '2025-01-13 12:26:02', '2025-01-13 12:26:36', 'Novvot', 'Matbuotchilar ko\'chasi 9, 100012, Тоshkent, Toshkent', '+998999686868', 'www.navvattashkent.uz', 'navvatrestauranttash@mail.ru', 2),
(12, '2025-01-13 12:46:21', '2025-01-13 12:46:21', 'Novvot Samarkand', 'Amir Temur ko\'chasi 145, Samarqand, Samarqand viloyati', '+998335251111', 'www.novvot.uz', 'navvatrestaurantsam@uzmail.ru', 3),
(13, '2025-01-13 13:03:25', '2025-01-13 13:03:25', 'Almaz', ' улица Катта Олмоз, Тоshkent, Toshkent Viloyati', '+998953410202', 'www.Almaz.uz', 'Almazuz@email.ru', 2),
(14, '2025-01-13 13:08:39', '2025-01-13 13:08:39', 'Crystal Garden restaurant', 'Амир Темур шоҳ кўчаси 15, 100000, Тоshkent, Toshkent', '+998909330888', 'www.crystalgarden.uz', 'crystal@garden.mail.ru', 2),
(15, '2025-01-14 11:31:23', '2025-01-14 11:31:23', 'Amulet', 'Bakhouddin Nakshbandi St., 152, Bukhara 200118 Uzbekistan', '+998 88 281 98 88', 'www.Amulet.uz', 'amulet@mail.ru', 4),
(16, '2025-01-14 11:37:31', '2025-01-14 11:37:31', 'JOY Chaikhana lounge', '2, Sarafon Street, Bukhara 200100 Uzbekistan', '+998881830200', 'www.joychaikhana.uz', 'joychaikhana.lounge@mail.ru', 4),
(17, '2025-01-14 11:41:00', '2025-01-14 11:41:00', 'Old Bukhara', 'Street Samarkand 3 Near the Hotel Asia, Bukhara 200100 Uzbekistan', '+998 90 185 70 77', 'www.oldbukhara.uz', 'old.bukhara@mail.ru', 4),
(18, '2025-01-14 11:45:11', '2025-01-14 11:45:11', 'Art Restaurant', 'Uzbekistan St. Opposite the Asia Bukhara Hotel, Bukhara Uzbekistan', '+998 65 224 41 13', 'www.artrestaurant.uz', 'art.restaurant@mail.ru', 4),
(19, '2025-01-14 11:51:12', '2025-01-14 11:51:12', 'Labi Hovuz', 'Mehtar Ambar St, Bukhara Uzbekistan', '+998 93 383 30 23', 'www.labihovuzrestaurant.uz', 'labihovuz.restaurant@mail.ru', 4),
(20, '2025-01-14 12:05:27', '2025-01-14 12:05:27', 'The Plov Bukhara', 'Bukhara 200100 Uzbekistan', '+998 93 143 07 77', 'www.plovbukhara.uz', 'theplovbukhara.uz@gmail.com', 4),
(21, '2025-01-14 12:18:39', '2025-01-14 12:18:39', 'Mavrigi', 'B. Nakshband, Bukhara 200124 Uzbekistan', '+998 90 612 88 08', 'www.mavrigirestbukhara.uz', 'mavrigi@restaurant.gmail.com', 4),
(22, '2025-01-15 11:34:24', '2025-01-15 11:34:24', 'Khorezm Art Restaurant', 'Madrasa Allah Kulikhan, Khiva 220900 Uzbekistan', '+998 95 333 69 74', 'www.khorezmartrest', 'khorezmart.rest@mail.ru', 5),
(23, '2025-01-16 11:13:43', '2025-01-16 11:13:43', 'Khan Chapan', 'Usta Olim tupik 5, 100019, Тоshkent, Toshkent', '+998712050020', ' khan-chapan.qr-menu.uz', 'KhanChapan@mail.ru', 2),
(24, '2025-01-17 12:28:20', '2025-01-17 12:28:20', 'Soy milliy taomlar', 'Avliyoota ko\'chasi 50, Тоshkent, Toshkent', '+998998788888', 'www.soymilliytaomlar.uz', 'soy@milliytaomlar.gmail.com', 2),
(25, '2025-01-17 12:37:00', '2025-01-17 12:37:00', 'Tandiriy', 'Ukchi ko\'chasi 5, 100011, Тоshkent, Toshkent', '+998881002255', 'wwwtandiriy.uz', 'tandiriyuz@mail.ru', 2),
(26, '2025-01-17 12:53:46', '2025-01-17 12:53:46', 'Amur', ' Самаркандская область, Самаркандская кольцевая дорога', '+998973943399', 'www.amur.uz', 'amur@mail.ru', 3),
(27, '2025-01-18 05:05:51', '2025-01-18 05:05:51', 'Cafe 1991', 'Mustakillik Street, Tashkent 100000 Uzbekistan', '+998909199100', 'https://www.facebook.com/1991cafe/', 'cafe1991@mail.ru', 2),
(28, '2025-01-18 05:13:12', '2025-01-18 05:13:12', 'Afsona ', 'Ul. T. Shevchenko, 30, Tashkent 100021 Uzbekistan', '+998712525681', 'http://www.facebook.com/afsonarestaurant/', 'afsona@mail.ru', 2),
(29, '2025-01-18 05:25:58', '2025-01-18 05:25:58', 'Caravan', 'Abdulla Kahhar Street 22, Tashkent Uzbekistan', '+998781506606', 'http://caravangroup.uz/', 'caravan@mail.ru', 2),
(30, '2025-01-18 05:39:42', '2025-01-18 05:39:42', 'Khiva Restaurant', '1 Navoiy Street Hyatt Regency Tashkent, Tashkent 100017 Uzbekistan', '+998712071311', 'http://www.hyattrestaurants.com/en/dining/uzbekistan/tashkent/restaurant-in-hyatt-regency-tashkent-khiva-restaurant', 'khivarestaurant@mail.ru', 2),
(31, '2025-01-18 05:47:04', '2025-01-18 05:47:04', 'Lali ', 'Massiv Kiyot, 57B, Tashkent 100017 Uzbekistan', '+998503335757', 'https://familygarden.su/lali/', 'lali@restaurant.mail.ru', 2),
(32, '2025-01-20 07:00:12', '2025-01-20 07:00:12', 'Old City', 'Abdurahman Street, Samarkand Uzbekistan', '+998662338020', 'www.oldcityrest.uz', 'oldcitysamrest@mail.ru', 3),
(33, '2025-01-20 07:04:59', '2025-01-20 07:04:59', 'Chapon Samarkand', 'Bazarova St., 14, Samarkand Uzbekistan', '+998952817007', 'http://www.instagram.com/chaponuz/', 'chapon.samarkand@mail.ru', 3),
(34, '2025-01-20 08:06:25', '2025-01-20 08:06:25', 'Florencia', 'Amira Temura St. 116, Samarkand 140100 Uzbekistan', '+998955000144', 'http://samflorencia.uz/', 'florencia@mail.ru', 3),
(35, '2025-01-20 08:37:25', '2025-01-20 08:37:25', 'Manhattan Restaurant', '32, Mironshox Str, Samarkand 140100 Uzbekistan', '+998992388888', 'http://www.instagram.com/manhattan_samarkand/', 'manhattan@mail.ru', 3),
(36, '2025-01-20 08:42:43', '2025-01-20 08:42:43', 'Zlata Praha Restaurant', 'Mirzo Mlugbeka 59, Samarkand 140164 Uzbekistan', '+998906561144', 'www.zlatapraharestaurant', 'zlatapraharestsam@mail.ru', 3),
(37, '2025-01-20 09:55:37', '2025-01-20 09:55:37', 'La Tambur', 'Ташкент, ул. Исмаилата, 11', '+998712089002', 'www.latambur.uz', 'latambur@mail.ru', 2),
(38, '2025-01-20 11:22:20', '2025-01-20 11:22:20', 'Zargaron', 'Tashkent Street 10, Samarkand 140100 Uzbekistan', '+998938109909', 'www.zargaron.uz', 'zargaron@mail.ru', 3),
(39, '2025-01-20 11:34:01', '2025-01-20 11:34:01', 'Afrosiyob', 'Самарканд, улица Академика Вохида Абдуллаева', '+998955099999', 'www.afrosiyob.uz', 'afrosiyobrestsam@mail.ru', 3),
(40, '2025-01-20 12:04:46', '2025-01-20 12:04:46', 'Oshqand', 'Zarafshon shokh St., 16, Samarkand 140100 Uzbekistan', '+998933500011', 'www.oshqand.uz', 'oshqandrestsam@mail.ru', 3),
(41, '2025-01-20 12:40:22', '2025-01-20 12:40:22', 'Saffron', '206 Samarkand Street, Bukhara 8875555 Uzbekistan', '+998888520500', 'www.saffron.uz', 'saffron@mail.ru', 4),
(42, '2025-01-21 10:27:21', '2025-01-21 10:27:21', 'Osh Markazi', 'Ipak Yoli st., Shahrisabz Uzbekistan', '+998916419555', 'www.oshmarkazi.uz', 'oshmarkazi@mail.ru', 6),
(43, '2025-01-21 10:32:06', '2025-01-21 10:32:06', 'Kesh Palace restaurant', 'Shahrisabz 181200 Uzbekistan', '+998955055551', 'www.keshpalace.uz', 'keshpalace@mail.ru', 6),
(44, '2025-01-21 10:57:24', '2025-01-21 10:57:24', 'Kish Mish', 'Fusunkor St., 11, Shahrisabz Uzbekistan', '+998989990770', 'www.kishmish.uz', 'kishmish@mail.ru', 6),
(45, '2025-01-21 11:42:30', '2025-01-21 11:42:30', 'Oasis Garden', 'Абдурахмон Жомий 59 A, Samarqand, Samarqand viloyati', '+998979262229', 'www.oasisgarden.uz', 'oasisgarden@mail.ru', 3),
(46, '2025-01-21 12:54:44', '2025-01-21 12:54:44', 'Ayvan', '1 Ориентир La Minor Karaoke, Samarkand, Samarqand Region', '+998970400444', 'www.ayvan.uz', 'ayvan@mail.ru', 3),
(47, '2025-01-22 12:52:02', '2025-01-22 12:52:02', 'Cafe Fresco', 'Самарканд, ул. Абу Рейхана Беруни, 144А', '+998902845555', 'www.fresco.uz', 'fresco@mail.ru', 3),
(48, '2025-01-24 09:57:05', '2025-01-24 09:57:05', 'Kapadokya', 'Q. DODXOX ko\'chasi, 2A-uy, 150100 Fergana kapadokya Fergana Kapadokya restsran, 150100', '+998882080033', 'https://www.instagram.com/kapadokya_uz/', 'kapadokya@mail.ru', 9),
(49, '2025-01-24 10:14:21', '2025-01-24 10:14:21', 'Terakzor', 'Бухара, ул. Мустакиллик, 40/7', '+998992215050', 'www.terakzor.uz', 'terakzor@mail.ru', 4),
(50, '2025-01-24 11:39:02', '2025-01-25 06:15:27', 'Timur\'s restaurant', ' Бухара, ул. Бахауддина Накшбанда, 2', '+998934770621', 'www.temurrestaurant.uz', 'temir\'srestaurant@mail.ru', 4),
(51, '2025-01-24 12:01:20', '2025-01-24 12:01:20', 'Dolon', 'Khakhikat Str. 27, Бухара Узбекистан', '+998902745366', 'http://www.facebook.com/pages/Trattoria-Ai-Colli-Storici/1795322243858833', 'Dolon@mail.ru', 4),
(52, '2025-01-24 12:41:32', '2025-01-24 12:41:32', 'Bolo Hovuz', ' Ташкент, ул. Лабзак, 12', '+998951770509', 'www.bolohovuzrest.uz', 'bolohovuz@mail.ru', 4),
(53, '2025-01-25 05:36:12', '2025-01-25 05:36:12', 'Chasmai Mirob', 'Бухара, 24', '+998904130760', 'www.chasmaimirob.uz', 'chasmaimirob@mail.ru', 4),
(54, '2025-01-25 06:31:53', '2025-01-25 06:31:53', 'Yasovulboshi', 'Хорезмская область, Хива, улица Заргарлар', '+998995969977', 'www.yasovulboshi.uz', 'yasovulboshi@mail.ru', 5),
(55, '2025-01-25 07:09:56', '2025-01-25 07:09:56', 'Mirzaboshi', 'Хорезмская область, Хива, махалля Ичан-Кала', '+998623752753', 'www.mirzaboshi.uz', 'mirzaboshi@mail.ru', 5),
(56, '2025-01-25 07:33:20', '2025-01-25 07:33:20', 'Zarafshon', 'Хива, ул. Ислам Ходжа, 44', '+998914349817', 'www.zarafshonrest.uz', 'zarafshonrestkhiva@mail.ru', 5),
(57, '2025-01-25 07:41:02', '2025-01-25 07:41:02', 'Mir', 'Ургенч, махаллинский сход граждан Гулзор, ул. Ал-Беруний, 71A', '+998907260026', 'www.mir.uz', 'mirrest@mail.ru', 17),
(58, '2025-01-25 07:49:11', '2025-01-25 07:49:11', 'Kish mish', 'Ташкент, Мирзо-Улугбекский район, ул. Хидирали Эргашева, 124', '+998954757300', 'www.kishmish.uz', 'kishmish@mail.ru', 2),
(59, '2025-01-25 07:52:51', '2025-01-25 07:52:51', 'Anjir', 'Ташкент, ул. Шота Руставели, 12', '+998712567711', 'www.anjir.uz', 'anjir@mail.ru', 2),
(60, '2025-01-25 07:56:25', '2025-01-25 07:56:25', 'Kuldja hogo', 'Ташкент, Сергелийский район, махалля Кумарик', '+998998078773', 'https://t.me/Gulja_xogo_uz', 'guljaxogo@mail.ru', 2),
(61, '2025-01-27 12:58:48', '2025-01-27 12:58:48', 'Belissimo', 'Ургенч, ул. Абульгази Бахадырхана, 80', '+998906480333', 'www.belissimo.urgench', 'belissimourgench@mail.ru', 17),
(62, '2025-01-29 13:13:59', '2025-01-29 13:13:59', 'Yurta', 'Yangigazgan', '+998885480080', 'camping.uz', 'info@sss-tour.com', 19),
(63, '2025-01-29 13:15:40', '2025-01-29 13:15:40', 'Aydarkul', 'Kushquduq', '+998885480080', 'camping.uz', 'info@sss-tour.com', 12),
(64, '2025-01-29 13:22:01', '2025-01-29 13:23:58', 'Nats dom', 'Nurata', '+998885480080', 'camping.uz', 'info@sss-tour.com', 12),
(65, '2025-01-30 04:50:48', '2025-01-30 04:50:48', 'Shirin Tabaka', ' beruniy kochas, Samarqand, Samarqand viloyati', '90 600 00 40', 'no ', 'shirintabaka@gmail.com', 3),
(66, '2025-01-30 04:54:47', '2025-01-30 04:54:47', 'Шахноза натциональный дом', 'Самарканд,', '979152444', 'no ', 'shaxnoza@gmail.com', 3),
(67, '2025-01-31 11:21:33', '2025-01-31 11:21:33', 'Xo\'ja Nasriddin', 'B.Naqshband, Bukhara Region', '+998934783595', 'www.xojanasriddin.uz', 'xojanasriddin@mail.ru', 27),
(68, '2025-01-31 11:36:30', '2025-01-31 11:36:30', 'Nodir Kafe', 'А.Каххар ул. Дом 60/1, 200500, Gijduvon', '+998912435595', 'www.nodirkafe.uz', 'nodirkafe@mail.ru', 27);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cost_per_night` decimal(10,2) NOT NULL DEFAULT 0.00,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `created_at`, `updated_at`, `hotel_id`, `room_type_id`, `name`, `description`, `cost_per_night`, `images`) VALUES
(2, '2025-01-11 05:20:40', '2025-01-21 11:31:45', 2, 1, NULL, NULL, 62.00, '[]'),
(3, '2025-01-11 05:21:45', '2025-01-24 10:08:16', 2, 2, NULL, NULL, 50.00, '[\"01JJBWH96W17YSWF074H0KHND0.jpg\"]'),
(4, '2025-01-11 06:00:36', '2025-01-11 06:00:36', 3, 5, NULL, NULL, 85.00, '[\"01JH9Z6DYC7W407YZXP7WQA8H7.jpg\"]'),
(5, '2025-01-11 06:00:36', '2025-01-21 11:32:13', 3, 1, NULL, NULL, 97.00, '[\"01JH9Z6DYEZQ03YD09DN21TMXN.jpg\"]'),
(6, '2025-01-11 06:16:23', '2025-01-11 06:16:23', 4, 5, NULL, NULL, 45.00, '[\"01JHA03AT0FFXREPYP0536Z5CS.jpg\"]'),
(7, '2025-01-11 06:16:23', '2025-01-11 06:16:23', 4, 1, NULL, NULL, 50.00, '[\"01JHA03AT216H6G0Y6MSSK67KQ.jpg\"]'),
(8, '2025-01-13 07:13:24', '2025-01-24 10:21:14', 5, 5, NULL, NULL, 70.00, '[\"01JJBX912H2W1WFMMSZXA46A7B.jpg\"]'),
(9, '2025-01-13 09:40:48', '2025-01-13 09:40:48', 6, 5, NULL, NULL, 45.00, '[\"01JHFGK2SQH2TWF6WDKAM48P5V.webp\"]'),
(10, '2025-01-13 09:40:48', '2025-01-13 09:40:48', 6, 1, NULL, NULL, 55.00, '[\"01JHFGK2SRXFT5EN6MJKAEC3KW.webp\"]'),
(11, '2025-01-13 09:52:00', '2025-01-13 09:52:00', 7, 5, NULL, NULL, 54.00, '[\"01JHFH7K8BVG2PW890WBSP032T.jpg\"]'),
(12, '2025-01-13 09:52:00', '2025-01-13 09:52:00', 7, 1, NULL, NULL, 70.00, '[\"01JHFH7K8CRDYVXFTJJXZND1F8.jpg\"]'),
(13, '2025-01-13 11:03:38', '2025-01-13 11:03:38', 8, 5, NULL, NULL, 70.00, '[]'),
(14, '2025-01-13 11:03:38', '2025-01-13 11:03:38', 8, 1, NULL, NULL, 65.00, '[]'),
(15, '2025-01-13 11:09:04', '2025-01-13 11:09:04', 9, 5, NULL, NULL, 61.00, '[]'),
(16, '2025-01-13 11:09:04', '2025-01-13 11:09:04', 9, 1, NULL, NULL, 77.00, '[]'),
(17, '2025-01-13 11:17:20', '2025-01-13 11:17:20', 10, 5, NULL, NULL, 60.00, '[]'),
(18, '2025-01-13 11:17:20', '2025-01-24 10:22:33', 10, 1, NULL, NULL, 78.00, '[\"01JJBXBEA0ETXVWT2VVY5DGY43.jpg\"]'),
(19, '2025-01-13 11:50:50', '2025-01-24 10:24:23', 11, 5, NULL, NULL, 0.00, '[\"01JJBXES3XZZZAFHNNJFJ3GCCE.jpeg\"]'),
(20, '2025-01-13 12:05:38', '2025-01-21 11:58:06', 12, 5, NULL, NULL, 135.00, '[]'),
(21, '2025-01-13 13:09:02', '2025-01-21 11:58:58', 13, 5, NULL, NULL, 47.00, '[]'),
(22, '2025-01-13 13:09:02', '2025-01-21 11:58:58', 13, 1, NULL, NULL, 70.00, '[]'),
(23, '2025-01-13 13:13:07', '2025-01-21 12:06:12', 14, 5, NULL, NULL, 28.00, '[]'),
(24, '2025-01-13 13:13:07', '2025-01-24 10:29:42', 14, 1, NULL, NULL, 47.00, '[\"01JJBXRGV9VD5BQ7VMX71DX3BN.jpg\"]'),
(25, '2025-01-14 07:22:28', '2025-01-21 12:07:07', 15, 5, NULL, NULL, 66.00, '[]'),
(26, '2025-01-14 07:22:28', '2025-01-21 12:07:07', 15, 1, NULL, NULL, 78.00, '[]'),
(27, '2025-01-14 08:12:14', '2025-01-21 12:08:17', 16, 5, NULL, NULL, 66.00, '[]'),
(28, '2025-01-14 08:13:03', '2025-01-21 12:08:17', 16, 1, NULL, NULL, 77.00, '[]'),
(29, '2025-01-14 08:16:43', '2025-01-21 12:12:11', 17, 5, NULL, NULL, 62.00, '[]'),
(30, '2025-01-14 08:16:43', '2025-01-21 12:12:11', 17, 1, NULL, NULL, 85.00, '[]'),
(31, '2025-01-14 10:04:52', '2025-01-22 05:10:18', 18, 5, NULL, NULL, 85.00, '[]'),
(32, '2025-01-14 10:04:52', '2025-01-22 05:10:18', 18, 1, NULL, NULL, 100.00, '[]'),
(33, '2025-01-14 10:14:05', '2025-01-22 04:17:59', 19, 5, NULL, '3$', 23.00, '[]'),
(34, '2025-01-14 10:14:05', '2025-01-22 04:17:59', 19, 1, NULL, '+3$', 30.00, '[]'),
(35, '2025-01-14 10:29:27', '2025-01-21 12:20:47', 20, 5, NULL, NULL, 55.00, '[]'),
(36, '2025-01-14 10:29:27', '2025-01-21 12:20:47', 20, 1, NULL, NULL, 62.00, '[]'),
(37, '2025-01-14 10:40:03', '2025-01-22 04:19:37', 21, 5, NULL, NULL, 70.00, '[]'),
(38, '2025-01-14 10:40:03', '2025-01-22 04:19:37', 21, 1, NULL, NULL, 82.00, '[]'),
(39, '2025-01-14 11:06:55', '2025-01-22 04:23:23', 22, 6, NULL, NULL, 155.00, '[]'),
(40, '2025-01-14 11:06:55', '2025-01-21 12:19:57', 22, 1, NULL, NULL, 193.00, '[]'),
(41, '2025-01-14 11:14:28', '2025-01-14 11:14:28', 23, 5, NULL, NULL, 40.00, '[]'),
(42, '2025-01-14 11:14:28', '2025-01-23 09:56:12', 23, 1, NULL, NULL, 47.00, '[]'),
(43, '2025-01-14 11:19:38', '2025-01-21 12:38:34', 24, 5, NULL, NULL, 35.00, '[]'),
(44, '2025-01-14 11:19:38', '2025-01-21 12:38:34', 24, 1, NULL, NULL, 55.00, '[]'),
(45, '2025-01-14 11:25:27', '2025-01-21 12:45:29', 25, 5, NULL, NULL, 38.00, '[]'),
(46, '2025-01-14 11:25:27', '2025-01-21 12:45:29', 25, 1, NULL, NULL, 55.00, '[]'),
(47, '2025-01-14 11:28:38', '2025-01-14 11:28:38', 26, 5, NULL, NULL, 75.00, '[]'),
(48, '2025-01-14 11:28:38', '2025-01-24 10:40:38', 26, 1, NULL, NULL, 85.00, '[\"01JJBYCHCFC5HQJ1E35NCF6PN6.jpg\"]'),
(49, '2025-01-14 11:33:35', '2025-01-14 11:33:35', 27, 5, NULL, NULL, 58.00, '[]'),
(50, '2025-01-14 11:33:35', '2025-01-14 11:33:35', 27, 1, NULL, NULL, 76.00, '[]'),
(51, '2025-01-14 11:38:30', '2025-01-24 10:52:06', 28, 5, NULL, NULL, 35.00, '[\"01JJBZ1H0VYPQTQ3K5PRD9Q12R.jpg\"]'),
(52, '2025-01-14 11:38:30', '2025-01-24 10:52:06', 28, 1, NULL, NULL, 60.00, '[\"01JJBZ1H0X7DRSRG2R5THT9JE5.jpg\"]'),
(53, '2025-01-14 11:41:33', '2025-01-21 12:56:43', 29, 5, NULL, NULL, 60.00, '[]'),
(54, '2025-01-14 11:41:33', '2025-01-21 12:56:43', 29, 1, NULL, NULL, 70.00, '[]'),
(55, '2025-01-14 11:44:30', '2025-01-14 11:44:30', 30, 5, NULL, NULL, 45.00, '[]'),
(56, '2025-01-14 11:44:30', '2025-01-14 11:44:30', 30, 1, NULL, NULL, 50.00, '[]'),
(57, '2025-01-14 11:52:26', '2025-01-22 04:36:28', 31, 5, NULL, NULL, 77.00, '[]'),
(58, '2025-01-14 11:52:26', '2025-01-22 04:36:28', 31, 1, NULL, NULL, 85.00, '[]'),
(59, '2025-01-14 11:56:27', '2025-01-22 04:37:58', 32, 5, NULL, NULL, 65.00, '[]'),
(60, '2025-01-14 11:56:27', '2025-01-22 04:37:58', 32, 1, NULL, NULL, 85.00, '[]'),
(61, '2025-01-14 12:06:13', '2025-01-22 04:38:55', 33, 5, NULL, NULL, 43.00, '[]'),
(62, '2025-01-14 12:06:13', '2025-01-22 04:38:55', 33, 1, NULL, NULL, 58.00, '[]'),
(63, '2025-01-14 12:20:16', '2025-01-22 04:39:48', 34, 5, NULL, NULL, 55.00, '[]'),
(64, '2025-01-14 12:20:16', '2025-01-22 04:39:48', 34, 1, NULL, NULL, 70.00, '[]'),
(65, '2025-01-14 12:29:59', '2025-01-22 04:41:52', 35, 5, NULL, NULL, 81.00, '[]'),
(66, '2025-01-14 12:29:59', '2025-01-22 04:41:52', 35, 1, NULL, NULL, 91.00, '[]'),
(67, '2025-01-14 12:34:33', '2025-01-22 04:42:43', 36, 5, NULL, NULL, 58.00, '[]'),
(68, '2025-01-14 12:34:34', '2025-01-22 04:42:43', 36, 1, NULL, NULL, 70.00, '[]'),
(69, '2025-01-14 12:37:59', '2025-01-22 04:44:27', 37, 5, NULL, NULL, 132.00, '[]'),
(70, '2025-01-14 12:37:59', '2025-01-22 04:44:27', 37, 1, NULL, NULL, 147.00, '[]'),
(71, '2025-01-14 12:40:29', '2025-01-22 04:51:58', 38, 5, NULL, NULL, 50.00, '[]'),
(72, '2025-01-14 12:40:29', '2025-01-22 04:51:58', 38, 1, NULL, NULL, 64.00, '[]'),
(73, '2025-01-14 12:42:57', '2025-01-22 04:53:53', 39, 5, NULL, NULL, 44.00, '[]'),
(74, '2025-01-14 12:42:57', '2025-01-22 04:53:53', 39, 1, NULL, NULL, 78.00, '[]'),
(75, '2025-01-14 12:47:48', '2025-01-22 04:54:46', 40, 5, NULL, NULL, 39.00, '[]'),
(76, '2025-01-14 12:47:48', '2025-01-22 04:54:46', 40, 1, NULL, NULL, 55.00, '[]'),
(77, '2025-01-15 04:42:54', '2025-01-22 04:56:34', 41, 5, NULL, NULL, 47.00, '[]'),
(78, '2025-01-15 04:42:54', '2025-01-22 04:56:34', 41, 1, NULL, NULL, 58.00, '[]'),
(79, '2025-01-15 04:47:25', '2025-01-15 04:47:25', 42, 5, NULL, NULL, 400.00, '[]'),
(80, '2025-01-15 04:47:25', '2025-01-15 04:47:25', 42, 1, NULL, NULL, 600.00, '[]'),
(81, '2025-01-15 04:51:13', '2025-01-15 04:51:13', 43, 5, NULL, NULL, 700.00, '[]'),
(82, '2025-01-15 04:51:13', '2025-01-15 04:51:13', 43, 1, NULL, NULL, 970.00, '[]'),
(83, '2025-01-15 04:54:15', '2025-01-15 04:54:15', 44, 5, NULL, NULL, 570.00, '[]'),
(84, '2025-01-15 04:54:15', '2025-01-15 04:54:15', 44, 1, NULL, NULL, 665.00, '[]'),
(85, '2025-01-15 04:57:32', '2025-01-15 04:57:32', 45, 5, NULL, NULL, 700.00, '[]'),
(86, '2025-01-15 04:57:32', '2025-01-15 04:57:32', 45, 1, NULL, NULL, 800.00, '[]'),
(87, '2025-01-15 05:01:31', '2025-01-15 05:01:31', 46, 5, NULL, NULL, 580.00, '[]'),
(88, '2025-01-15 05:01:31', '2025-01-15 05:01:31', 46, 1, NULL, NULL, 850.00, '[]'),
(89, '2025-01-15 05:04:50', '2025-01-22 04:59:58', 47, 5, NULL, NULL, 31.00, '[]'),
(90, '2025-01-15 05:04:50', '2025-01-22 04:59:58', 47, 1, NULL, NULL, 47.00, '[]'),
(91, '2025-01-16 09:56:18', '2025-01-22 05:00:54', 48, 5, NULL, NULL, 35.00, '[]'),
(92, '2025-01-16 09:56:18', '2025-01-22 05:00:54', 48, 1, NULL, NULL, 50.00, '[]'),
(93, '2025-01-16 10:06:59', '2025-01-22 05:02:03', 49, 5, NULL, NULL, 75.00, '[]'),
(94, '2025-01-16 10:06:59', '2025-01-22 05:02:03', 49, 1, NULL, NULL, 100.00, '[]'),
(95, '2025-01-16 10:09:45', '2025-01-22 05:03:00', 50, 5, NULL, NULL, 57.00, '[]'),
(96, '2025-01-16 10:09:45', '2025-01-22 05:03:00', 50, 1, NULL, NULL, 77.00, '[]'),
(97, '2025-01-16 10:12:49', '2025-01-22 05:04:02', 51, 5, NULL, NULL, 47.00, '[]'),
(98, '2025-01-16 10:12:49', '2025-01-22 05:04:02', 51, 1, NULL, NULL, 70.00, '[]'),
(99, '2025-01-16 10:16:17', '2025-01-21 11:18:33', 52, 5, NULL, NULL, 90.00, '[]'),
(100, '2025-01-16 10:16:17', '2025-01-21 11:18:33', 52, 1, NULL, NULL, 90.00, '[]'),
(101, '2025-01-16 10:22:28', '2025-01-22 05:05:51', 53, 5, NULL, NULL, 110.00, '[]'),
(102, '2025-01-16 10:22:28', '2025-01-22 05:05:51', 53, 1, NULL, NULL, 124.00, '[]'),
(103, '2025-01-16 10:28:16', '2025-01-22 05:07:05', 54, 5, NULL, NULL, 30.00, '[]'),
(104, '2025-01-16 10:28:16', '2025-01-22 05:07:05', 54, 1, NULL, NULL, 52.00, '[]'),
(105, '2025-01-16 10:32:47', '2025-01-22 05:08:25', 55, 5, NULL, NULL, 47.00, '[]'),
(106, '2025-01-16 10:32:47', '2025-01-22 05:08:25', 55, 1, NULL, NULL, 62.00, '[]'),
(107, '2025-01-18 04:48:01', '2025-01-18 04:48:01', 56, 5, NULL, NULL, 0.00, '[]'),
(108, '2025-01-18 04:52:23', '2025-01-21 11:31:04', 57, 5, NULL, NULL, 40.00, '[]'),
(109, '2025-01-18 04:55:33', '2025-01-18 06:04:29', 58, 1, NULL, 'zavtrak nds tur sbor kiritilmagan', 150.00, '[]'),
(111, '2025-01-18 05:04:07', '2025-01-18 05:04:07', 60, 1, NULL, NULL, 0.00, '[]'),
(112, '2025-01-18 05:15:01', '2025-01-21 04:35:00', 61, 5, NULL, NULL, 280.00, '[]'),
(113, '2025-01-18 05:23:09', '2025-01-18 05:23:09', 62, 5, NULL, NULL, 0.00, '[]'),
(114, '2025-01-18 05:27:09', '2025-01-18 05:27:09', 63, 5, NULL, NULL, 0.00, '[]'),
(115, '2025-01-18 05:30:09', '2025-01-18 05:30:09', 64, 5, NULL, NULL, 0.00, '[]'),
(116, '2025-01-18 05:53:36', '2025-01-21 11:31:04', 57, 1, NULL, NULL, 55.00, '[]'),
(117, '2025-01-21 04:35:00', '2025-01-21 04:35:00', 61, 1, NULL, NULL, 400.00, '[]'),
(118, '2025-01-21 11:58:06', '2025-01-24 10:32:12', 12, 1, NULL, NULL, 170.00, '[\"01JJBXX3GTWXN593W596EG7MHV.jpg\"]'),
(119, '2025-01-22 10:47:41', '2025-01-22 10:47:41', 65, 5, NULL, NULL, 82.00, '[]'),
(120, '2025-01-22 10:47:41', '2025-01-22 10:47:41', 65, 1, NULL, NULL, 90.00, '[]'),
(121, '2025-01-22 11:30:32', '2025-01-22 11:30:32', 66, 5, NULL, NULL, 154.00, '[]'),
(122, '2025-01-22 11:30:32', '2025-01-22 11:30:32', 66, 1, NULL, NULL, 193.00, '[]'),
(123, '2025-01-22 11:47:53', '2025-01-22 11:47:53', 67, 5, NULL, NULL, 50.00, '[]'),
(124, '2025-01-22 11:47:53', '2025-01-22 11:47:53', 67, 1, NULL, NULL, 90.00, '[]'),
(125, '2025-01-22 11:56:01', '2025-01-22 11:56:01', 68, 5, NULL, NULL, 83.00, '[]'),
(126, '2025-01-22 11:56:01', '2025-01-22 11:56:01', 68, 1, NULL, NULL, 91.00, '[]'),
(127, '2025-01-22 12:03:41', '2025-01-22 12:03:41', 69, 5, NULL, NULL, 124.00, '[]'),
(128, '2025-01-22 12:03:41', '2025-01-22 12:03:41', 69, 1, NULL, NULL, 130.00, '[]'),
(129, '2025-01-23 11:52:35', '2025-01-23 11:52:35', 70, 5, NULL, NULL, 30.00, '[]'),
(130, '2025-01-23 11:52:35', '2025-01-23 11:52:35', 70, 1, NULL, NULL, 40.00, '[]'),
(131, '2025-01-24 04:49:22', '2025-01-24 04:49:22', 71, 5, NULL, NULL, 38.00, '[]'),
(132, '2025-01-24 04:49:22', '2025-01-24 04:49:22', 71, 1, NULL, NULL, 54.00, '[]'),
(133, '2025-01-24 04:54:27', '2025-01-24 04:54:27', 72, 5, NULL, NULL, 61.00, '[]'),
(134, '2025-01-24 04:54:27', '2025-01-24 04:54:27', 72, 1, NULL, NULL, 81.00, '[]'),
(135, '2025-01-24 05:08:49', '2025-01-24 05:08:49', 73, 5, NULL, NULL, 31.00, '[]'),
(136, '2025-01-24 05:08:49', '2025-01-24 05:08:49', 73, 1, NULL, NULL, 47.00, '[]'),
(137, '2025-01-24 05:12:45', '2025-01-24 05:12:45', 74, 5, NULL, NULL, 54.00, '[]'),
(138, '2025-01-24 05:12:45', '2025-01-24 05:12:45', 74, 1, NULL, NULL, 61.00, '[]'),
(139, '2025-01-24 05:34:36', '2025-01-24 05:34:36', 75, 5, NULL, NULL, 43.00, '[]'),
(140, '2025-01-24 05:34:36', '2025-01-24 05:34:36', 75, 1, NULL, NULL, 61.00, '[]'),
(141, '2025-01-24 05:38:09', '2025-01-24 05:38:09', 76, 5, NULL, NULL, 43.00, '[]'),
(142, '2025-01-24 05:38:09', '2025-01-24 05:38:09', 76, 1, NULL, NULL, 61.00, '[]'),
(143, '2025-01-24 05:43:23', '2025-01-24 05:43:23', 77, 5, NULL, NULL, 5.00, '[]'),
(144, '2025-01-24 05:43:23', '2025-01-24 05:43:23', 77, 1, NULL, NULL, 66.00, '[]'),
(145, '2025-01-24 05:50:08', '2025-01-24 05:50:08', 78, 5, NULL, NULL, 54.00, '[]'),
(146, '2025-01-24 05:50:08', '2025-01-24 05:50:08', 78, 1, NULL, NULL, 70.00, '[]'),
(147, '2025-01-24 07:07:40', '2025-01-24 07:07:40', 79, 5, NULL, NULL, 35.00, '[]'),
(148, '2025-01-24 07:07:40', '2025-01-24 07:07:40', 79, 1, NULL, NULL, 50.00, '[]'),
(149, '2025-01-24 09:59:50', '2025-01-24 09:59:50', 80, 5, NULL, NULL, 43.00, '[]'),
(150, '2025-01-24 09:59:50', '2025-01-24 09:59:50', 80, 1, NULL, NULL, 77.00, '[]'),
(151, '2025-01-29 13:07:20', '2025-01-29 13:07:20', 81, 7, NULL, NULL, 80.00, '[]'),
(152, '2025-01-29 13:07:20', '2025-01-29 13:07:20', 81, 8, NULL, NULL, 100.00, '[]'),
(153, '2025-01-29 13:07:20', '2025-01-29 13:07:20', 81, 9, NULL, NULL, 120.00, '[]'),
(154, '2025-01-30 04:32:37', '2025-01-30 04:32:37', 82, 5, NULL, NULL, 70.00, '[]'),
(155, '2025-01-30 04:32:37', '2025-01-30 04:32:37', 82, 1, NULL, NULL, 80.00, '[]'),
(156, '2025-01-30 04:34:50', '2025-01-30 04:34:50', 83, 5, NULL, NULL, 100.00, '[]'),
(157, '2025-01-30 04:34:50', '2025-01-30 04:34:50', 83, 6, NULL, NULL, 120.00, '[]'),
(158, '2025-01-30 05:14:18', '2025-01-30 05:14:18', 84, 5, NULL, NULL, 31.00, '[]'),
(159, '2025-01-30 05:14:18', '2025-01-30 05:14:18', 84, 1, NULL, NULL, 47.00, '[]'),
(160, '2025-01-30 05:18:36', '2025-01-30 05:18:36', 85, 5, NULL, NULL, 38.00, '[]'),
(161, '2025-01-30 05:18:36', '2025-01-30 05:18:36', 85, 1, NULL, NULL, 48.00, '[]'),
(162, '2025-01-30 11:03:17', '2025-01-30 11:03:17', 86, 1, NULL, NULL, 80.00, '[]'),
(163, '2025-01-30 11:03:17', '2025-01-30 11:03:17', 86, 5, NULL, NULL, 40.00, '[]'),
(164, '2025-01-30 11:07:41', '2025-01-30 11:07:41', 87, 5, NULL, NULL, 30.00, '[]'),
(165, '2025-01-30 11:07:41', '2025-01-30 11:07:41', 87, 1, NULL, NULL, 65.00, '[]'),
(166, '2025-01-30 11:10:09', '2025-01-30 11:10:09', 88, 5, NULL, NULL, 30.00, '[]'),
(167, '2025-01-30 11:10:09', '2025-01-30 11:10:09', 88, 1, NULL, NULL, 60.00, '[]'),
(168, '2025-01-30 11:43:28', '2025-01-30 11:43:28', 89, 1, NULL, NULL, 60.00, '[]'),
(169, '2025-01-30 11:43:28', '2025-01-30 11:43:28', 89, 5, NULL, NULL, 45.00, '[]'),
(170, '2025-01-30 11:56:22', '2025-01-30 11:56:22', 90, 5, NULL, NULL, 30.00, '[]'),
(171, '2025-01-30 11:57:30', '2025-01-30 11:57:30', 90, 1, NULL, NULL, 60.00, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `created_at`, `updated_at`, `type`) VALUES
(1, '2025-01-10 16:43:13', '2025-01-10 16:43:13', 'Double'),
(2, '2025-01-11 05:21:21', '2025-01-11 05:21:21', 'sing'),
(3, '2025-01-11 05:44:54', '2025-01-11 05:44:54', 'Delux room'),
(4, '2025-01-11 05:45:34', '2025-01-11 05:45:34', 'Standard room'),
(5, '2025-01-11 05:55:41', '2025-01-11 05:55:41', 'Single'),
(6, '2025-01-22 04:22:59', '2025-01-22 04:22:59', 'Twin room'),
(7, '2025-01-29 13:03:39', '2025-01-29 13:03:39', 'Yurta 4 mest'),
(8, '2025-01-29 13:04:17', '2025-01-29 13:04:17', 'Yurta 5 mest'),
(9, '2025-01-29 13:04:29', '2025-01-29 13:04:29', 'Yurta 6 mest');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MPdTHfkBOQ9LOBgVtjG5LVXSSIWsxunE9ptNwKQN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiampHOUlyRXJpcHh0Mml5TWEwNjJXUjh5OENha3lhdVRwR1hNM2dNZiI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdG91cnMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkVVBzTHNidm9tTXoySm44QnpOZ2VsLjlGbjVKeTBkdmRxYjZ1ZDhUYVlCdS9yNVhQZFRuMXkiO30=', 1738728629);

-- --------------------------------------------------------

--
-- Table structure for table `spoken_languages`
--

CREATE TABLE `spoken_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spoken_languages`
--

INSERT INTO `spoken_languages` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2025-01-10 16:42:16', '2025-01-10 16:42:16', 'EN'),
(2, '2025-01-13 11:38:17', '2025-01-13 11:38:17', 'FR'),
(3, '2025-01-13 11:38:49', '2025-01-13 11:38:49', 'EN'),
(4, '2025-01-13 11:40:30', '2025-01-13 11:40:30', 'RU'),
(5, '2025-01-13 11:44:20', '2025-01-13 11:44:20', 'CN'),
(6, '2025-01-13 11:44:35', '2025-01-13 11:44:35', 'UZ');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_number` varchar(255) DEFAULT NULL,
  `number_people` int(11) DEFAULT 0,
  `tour_duration` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tour_file` varchar(255) DEFAULT NULL,
  `departure_return_location` varchar(255) NOT NULL,
  `departure_time` varchar(255) NOT NULL,
  `tour_includes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tour_includes`)),
  `tour_excludes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tour_excludes`)),
  `tour_prices` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tour_prices`)),
  `tour_photos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tour_photos`)),
  `slug` varchar(255) NOT NULL,
  `city_slug` varchar(255) NOT NULL,
  `start_from_city` varchar(255) NOT NULL,
  `location` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `name`, `description`, `created_at`, `updated_at`, `tour_number`, `number_people`, `tour_duration`, `start_date`, `end_date`, `image`, `tour_file`, `departure_return_location`, `departure_time`, `tour_includes`, `tour_excludes`, `tour_prices`, `tour_photos`, `slug`, `city_slug`, `start_from_city`, `location`) VALUES
(37, 'Day tour to Shahrisabz', 'Shakhrisabz is the hometown of Amir Temur and everything in Shakhrisabz is connected with his name. The name Shakhrisabz in Farsi means \"green city\". The Historic Centre of Shahrisabz was declared UNESCO World Heritage site in 2000. It is located at the altitude of 622 m\n\nFormerly known as Kesh (i.e., \"heart-pleasing\") and tentatively identified with the ancient Nautaca, Shahrisabz is one of Central Asia’s most ancient cities. It was founded more than 2700 years ago. its name was officially changed to Shahrisabz in the modern era. Timur regarded Shahrisabz as his “home town” and planned it eventually to be the location of his tomb. However, during the Timurid period, the center of activity shifted to Samarkand instead.', '2025-02-02 09:13:27', '2025-02-02 22:55:58', 'day-tour-to-shahrisabz', 0, 'DAY TOUR', NULL, NULL, NULL, 'tours/01JK4XQR12R05THWKAR7EKSG3M.pdf', 'Samarkand - Shahrisabz (Kesh) - Samarkand', 'After breakfast depart to Shahrisabz at 8:30', '[{\"name\":\"Transport (air conditioned sedan): Samarkand- Shahrisabz - Samarkand\"}]', '[{\"name\":\"Entrance fees\"},{\"name\":\"Guide gratuity\"}]', '[{\"number_people\":\"1\",\"price\":\"90\"},{\"number_people\":\"2\",\"price\":\"50\"},{\"number_people\":\"3\",\"price\":\"40\"}]', '[{\"photo\":\"01JK4YQ12T7FR589ZKKCZEM9Z2.jpeg\",\"photo_description\":\"Gur Emir\"},{\"photo\":\"01JK4YQ12YHEQXJG26JA08ZHKJ.jpg\",\"photo_description\":\"Bibi Hanum\"},{\"photo\":\"01JK4YQ131A7VBXMJ7RP6R07A7.jpg\",\"photo_description\":\"Shahi Zin\"}]', 'day-tour-to-shahrisabz', 'samarkand', 'Samarkand', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d541482.7530825941!2d65.98429346664294!3d39.49305353091317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x3f4d18b454a40ec5%3A0x975a59209af77710!2s%234+Chirokchi+str.+Chirokchi+Street%2C+Samarqand%2C+Uzbekistan!3m2!1d39.649977!2d66.977987!4m5!1s0x3f4c9aa35638ab11%3A0xc2a494e199b7b4b0!2sShahrisabz%2C+Uzbekistan!3m2!1d39.0537978!2d66.82010919999999!5e0!3m2!1sen!2s!4v1558878111565!5m2!1sen!2s'),
(38, 'Nuaratu homestay 2 days tour', 'This two days trip to Nuratau Mountains offers you a chance to experience rural homestay with the mountain farmer family in the remote village of Nuratau Mountains and get to know about their daily life, traditions and customs. You will also explore the mountains, it’s flora and fauna and some local sites during short walks around the village. On the way to Bukhara we stop in an ancient city of Nurata famous for Alexander the Greats fortress ruins, local Suzani workshop and Chashma Mosque.', '2025-02-02 10:43:06', '2025-02-02 23:06:33', NULL, 0, '2 DAY 1 NIGHT', NULL, NULL, NULL, 'tours/01JK4ZT4FPGNV38053WRMP2DFW.pdf', 'Samarkand - Nuratau Mountains - Nurata city - Bukhara or Samarkand', 'After breakfast depart to Nuratau at 8:30', '[{\"name\":\"Accommodation: 1 nights homestay\\t\"},{\"name\":\"Meals: 1 Breakfast, 1 Lunch, 1 Dinner\"},{\"name\":\"Samarkand - Nuratau Mountains - Nurata city - Bukhara\"},{\"name\":\"Entrance tickets in Nurata city\"}]', '[{\"name\":\"Entrance fees\"},{\"name\":\"Guide gratuity\"}]', '[{\"number_people\":\"1\",\"price\":\"200\"},{\"number_people\":\"2\",\"price\":\"145\"},{\"number_people\":\"3\",\"price\":\"125\"}]', '[{\"photo\":\"01JK4ZR90DF3K2XF6SQ11K79VY.jpg\",\"photo_description\":\"Yurt camp\"},{\"photo\":\"01JK4ZNV6R74T4TY4ZP3FTG0BY.jpg\",\"photo_description\":\"Camel riding\"},{\"photo\":\"01JK4ZNV6YVY496ZR9TR8RJF2Y.jpg\",\"photo_description\":\"Camel riding\"},{\"photo\":\"01JK4ZNV71JNCR5YVCCYZJF1VX.jpg\",\"photo_description\":\"Swimming \"},{\"photo\":\"01JK4ZR90KKT0CHDEECG1NTVH3.jpg\",\"photo_description\":\"Beach near lak\"}]', 'nuaratu-homestay-2-days-tour', 'samarkand', 'Samarkand', 'https://www.google.com/maps/embed?pb=!1m40!1m12!1m3!1d779870.3389748957!2d65.58227404259866!3d40.22310798185648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m25!3e0!4m5!1s0x3f4d18b454a40ec5%3A0x975a59209af77710!2s%234+Chirokchi+str.+Chirokchi+Street%2C+Samarqand%2C+Uzbekistan!3m2!1d39.649977!2d66.977987!4m5!1s0x3f52f211f535049b%3A0x543c0cb29ae8c135!2sUkhum!3m2!1d40.5467819!2d66.8037313!4m5!1s0x3f51783274ebe8cb%3A0xcc76aaa9e1d14a9!2sNurota!3m2!1d40.5631176!2d65.7015143!4m5!1s0x3f50060e65993cd5%3A0xc87beaf40e48e767!2sBukhara!3m2!1d39.7680827!2d64.4555769!5e0!3m2!1sen!2s!4v1558857509716!5m2!1sen!2s'),
(39, 'Adventure Tour from Khiva', 'This day tour offers you the adventure of exploring the fortified castles of the ancient civilizations that existed from the fourth century B.C. till the seventh century A.D. as a means of protection from nomad invasions. You will see the mud-brick walls of the defensive fortresses in a desert, remains of the palaces and the traces of the local population in enclosed areas. For more than 1300 years the fortresses were buried under the sands of Kyzyl Kum Desert but thanks to the archaeologist S.P. Tolstov we have a chance to see, explore and be fascinated by these ancient constructions.', '2025-02-03 03:00:13', '2025-02-03 03:00:13', NULL, 0, 'Day Tour', NULL, NULL, NULL, 'tours/01JK5D60E3X7J0R85K8FS6ZSWJ.pdf', 'Khiva – Ellikqala - Khiva', 'Around 08:30 am', '[{\"name\":\"Entrance tickets\"},{\"name\":\"Air conditioned car during the journey\"},{\"name\":\"Lunch at Ayaz qala yurt camp\\/picnic depending on availability\"},{\"name\":\"Guide Service (optional $40)\"}]', '[{\"name\":\"Tips or other expenses\"},{\"name\":\"Photo, video fees in the monuments and museums\"}]', '[{\"number_people\":\"1\",\"price\":\"120\"},{\"number_people\":\"2\",\"price\":\"80\"},{\"number_people\":\"3\",\"price\":\"70\"}]', '[{\"photo_description\":\"Ayaz Kala\",\"photo\":\"01JK5D60E9RNCYGKSSGQ7WSD6J.jpg\"},{\"photo_description\":\"Ayaz Kala \",\"photo\":\"01JK5D60ECKWXEZRDVGP71JVFY.jpg\"},{\"photo_description\":\"Toprak \",\"photo\":\"01JK5D60EFPXQFN731P6GAVSA9.jpg\"}]', 'adventure-tour-from-khiva', 'khiva', 'Khiva', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour_categories`
--

CREATE TABLE `tour_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_categories`
--

INSERT INTO `tour_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Homestay', NULL, '2025-02-02 10:40:21', '2025-02-02 10:40:21'),
(2, 'Hiking', NULL, '2025-02-02 10:40:27', '2025-02-02 10:40:27'),
(3, 'Eco Tour', NULL, '2025-02-02 10:40:35', '2025-02-02 10:40:35'),
(4, 'Daytour', NULL, '2025-02-02 10:59:10', '2025-02-02 10:59:10'),
(5, 'Adventure', NULL, '2025-02-03 02:55:26', '2025-02-03 02:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `tour_days`
--

CREATE TABLE `tour_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `guide_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price_type_name` varchar(255) NOT NULL,
  `itineraries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_days`
--

INSERT INTO `tour_days` (`id`, `created_at`, `updated_at`, `tour_id`, `name`, `description`, `guide_id`, `hotel_id`, `type`, `city_id`, `restaurant_id`, `image`, `price_type_name`, `itineraries`) VALUES
(124, '2025-02-02 09:13:27', '2025-02-02 11:02:39', 37, 'Samarkand - Shahrisabz - Samarkand', 'Depart to Shahrisabz. Ak Saray Palace (White Palace). 9am t 6pm. Ak Saray means \"white palace\". The term \"ak\" has also the meaning \"generous\", \"aristocratic\" or \"majestic\"Temur\'S chronicler Sherif Eddin Ali Yezdi reported that the world has not seen a similar building before the point of which extends from earth to the height of heavenThe Spanish ambassador Clavigo reports that the decoration works still continued in 1404. The dimensions of the building can be perceived when looking at the gate towers: the two towers were 50 m high and had an arch with a span of 22 m. The buildings were destroyed in the 16th cent. by order of the ruler of Bukhara, Abdullah Khan.', 10, NULL, NULL, NULL, NULL, NULL, 'pickup_dropoff', '[{\"time\":\"08:30 am\",\"title\":\"Samarkand - Shahrisabz (Ak Saray Palace)\",\"description\":\"Depart to Shahrisabz. Ak Saray Palace (White Palace). 9am t 6pm. Ak Saray means \\\"white palace\\\". The term \\\"ak\\\" has also the meaning \\\"generous\\\", \\\"aristocratic\\\" or \\\"majestic\\\"Temur\'S chronicler Sherif Eddin Ali Yezdi reported that the world has not seen a similar building before the point of which extends from earth to the height of heavenThe Spanish ambassador Clavigo reports that the decoration works still continued in 1404. The dimensions of the building can be perceived when looking at the gate towers: the two towers were 50 m high and had an arch with a span of 22 m. The buildings were destroyed in the 16th cent. by order of the ruler of Bukhara, Abdullah Khan.\"},{\"time\":\"09:45 am\",\"title\":\"Shahrisabz (Dorus Siadat)\",\"description\":\"Dorus Saodat Complex. Dorus Saodat means \\\"repository of power\\\". This vast complex was the burial place of the ruling family and contained a prayer hall, a mosque and accomodation for the religious community and pilgrimsThe main facade was decorated with white marble and the tomb of Temur is a masterpiece of art of this periodThe creation of the Dorus Saodat expressed Temur\'s wish to turn Shahrizabs into the spiritual center of MovarounahrEach pile contained a mausoleum\"}]'),
(126, '2025-02-02 10:43:06', '2025-02-02 23:02:58', 38, 'Samarkand - Nuratau Mountains', '* Departure from Samarkand at 9:00 AM to Hayat village in the Nuratau Mountains. (220 km/4 hours)\n* 13:00 Arrive in Hayat and settle in the homestay\n* 14:30 – 16:30 Walking around the village See: - breeding enclosure of wild endangered sheep - ruins of an old village\n* 16:30-18:00 Watch or participate in traditional meal cooking or just relax\n* 18:00 Dinner\n* Overnight stay in the homestay', 10, NULL, NULL, NULL, NULL, NULL, 'pickup_dropoff', '[]'),
(127, '2025-02-02 23:04:12', '2025-02-02 23:04:12', 38, ' Nuratau Mountains - Bukhara', '* 8:00 Breakfast\n* 9:00 Depart from Nuratau Mountains via Nurata to Bukhara\n* 11:00 Stopover in Nurata and see the ruins of Alexander the Greats fortress, local Suzani workshop and Chashma Mosque\n* 12:00 Continue to Bukhara or Samarkand\n* 15:00 Arrive to Bukhara', 10, NULL, NULL, NULL, NULL, NULL, 'halfday', '[]'),
(128, '2025-02-03 03:00:14', '2025-02-03 03:00:14', 39, 'Toprak Qala', NULL, 10, NULL, NULL, NULL, NULL, NULL, 'pickup_dropoff', '[{\"time\":\"1\",\"title\":\"Toprak Qala\",\"description\":\"The driver (guide optional) will pick you up from your hotel in Khiva. The first qala to reach is Toprak Qala which is 100 km from Khiva. Topraq qala means \\\"Clay Fort\\\" which standing over 20 m tall and is dated in the Kushan period, around 2nd and 3rd centuries AD. Some historians assume that it was a royal summer or winter residence but not capital. Toprak qala was used until the 6th century AD with short periods when it was abandoned. Afterward, it was occupied by squatters till the Mongol invasion.\"},{\"time\":\"2\",\"title\":\"Qizil Qala\",\"description\":\"From Toprak qala we drive to Ayaz Qala but stop at Qizil qala on the way. Initially, archeologists assumed that it was a military barracks with troops but after discovering the opulent interior decoration it was clear that it belonged to an important Khorezmian official.\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `tour_day_hotels`
--

CREATE TABLE `tour_day_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `tour_day_id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_day_hotels`
--

INSERT INTO `tour_day_hotels` (`id`, `created_at`, `updated_at`, `type`, `tour_day_id`, `hotel_id`) VALUES
(107, '2025-02-02 09:13:27', '2025-02-02 09:13:27', NULL, 124, NULL),
(109, '2025-02-02 10:43:06', '2025-02-02 10:43:06', NULL, 126, NULL),
(110, '2025-02-02 23:04:12', '2025-02-02 23:04:12', NULL, 127, NULL),
(111, '2025-02-03 03:00:14', '2025-02-03 03:00:14', NULL, 128, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour_day_hotel_room`
--

CREATE TABLE `tour_day_hotel_room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_day_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tour_day_transport`
--

CREATE TABLE `tour_day_transport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_day_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transport_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_day_transport`
--

INSERT INTO `tour_day_transport` (`id`, `created_at`, `updated_at`, `tour_day_id`, `transport_type_id`, `price_type`) VALUES
(135, '2025-02-02 09:13:27', '2025-02-02 09:13:27', 124, NULL, NULL),
(137, '2025-02-02 10:43:06', '2025-02-02 10:43:06', 126, NULL, NULL),
(138, '2025-02-02 23:04:12', '2025-02-02 23:04:12', 127, NULL, NULL),
(139, '2025-02-03 03:00:14', '2025-02-03 03:00:14', 128, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour_tour_category`
--

CREATE TABLE `tour_tour_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `tour_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_tour_category`
--

INSERT INTO `tour_tour_category` (`id`, `tour_id`, `tour_category_id`, `created_at`, `updated_at`) VALUES
(1, 38, 1, NULL, NULL),
(2, 38, 2, NULL, NULL),
(3, 38, 3, NULL, NULL),
(4, 37, 4, NULL, NULL),
(5, 39, 5, NULL, NULL),
(6, 39, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transports`
--

CREATE TABLE `transports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `number_of_seat` int(11) DEFAULT NULL,
  `transport_type_id` bigint(20) UNSIGNED NOT NULL,
  `category` enum('bus','car','mikro_bus','mini_van','air','rail') NOT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `oil_change_interval_months` int(11) NOT NULL,
  `oil_change_interval_km` int(11) NOT NULL,
  `fuel_consumption` decimal(8,2) NOT NULL,
  `fuel_type` enum('diesel','benzin/propane','natural gas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transports`
--

INSERT INTO `transports` (`id`, `created_at`, `updated_at`, `plate_number`, `model`, `number_of_seat`, `transport_type_id`, `category`, `departure_time`, `arrival_time`, `driver_id`, `images`, `oil_change_interval_months`, `oil_change_interval_km`, `fuel_consumption`, `fuel_type`) VALUES
(2, '2025-01-11 05:04:24', '2025-01-29 13:22:09', '30 355 VAA', 'ZHONGTONG', 53, 10, 'bus', NULL, NULL, 1, '[]', 1, 12000, 30.00, 'diesel'),
(3, '2025-01-11 05:05:48', '2025-01-29 13:22:23', '30 081 YAA', 'ZHONGTONG', 53, 10, 'bus', NULL, NULL, 2, '[]', 1, 12000, 30.00, 'diesel'),
(4, '2025-01-11 05:06:45', '2025-01-29 13:22:39', '30 706 FBA', 'ZONGTONG', 51, 9, 'bus', NULL, NULL, 3, '[]', 1, 12000, 33.00, 'diesel'),
(5, '2025-01-11 05:58:00', '2025-01-29 13:21:35', '30 745 FBA', 'ZONGTONG', 51, 9, 'bus', NULL, NULL, 5, '[]', 1, 12000, 33.00, 'diesel'),
(6, '2025-01-11 05:58:24', '2025-01-13 12:06:20', '30 780 FBA', 'ZONGTONG', 51, 9, 'bus', NULL, NULL, 4, NULL, 0, 0, 0.00, 'diesel'),
(7, '2025-01-11 05:59:01', '2025-01-29 13:23:39', '30 322 ABA', 'YUTONG', 49, 9, 'bus', NULL, NULL, 6, '[]', 1, 12000, 30.00, 'diesel'),
(8, '2025-01-11 06:00:14', '2025-01-29 13:25:34', '30 299 ABA', 'YUTONG', 43, 8, 'bus', NULL, NULL, 9, '[]', 1, 12000, 26.00, 'diesel'),
(9, '2025-01-11 06:00:39', '2025-01-29 13:25:57', '30 308 YAA', 'YUTONG', 43, 8, 'bus', NULL, NULL, 8, '[]', 1, 12000, 0.00, 'diesel'),
(10, '2025-01-11 06:02:15', '2025-01-29 13:26:33', '30 976 QAA', 'YUTONG', 45, 8, 'bus', NULL, NULL, 7, '[]', 1, 12000, 26.00, 'diesel'),
(11, '2025-01-11 06:04:06', '2025-01-29 13:27:49', '30 175 VBA', 'ZONGTONG', 43, 8, 'bus', NULL, NULL, 10, '[]', 1, 12000, 30.00, 'benzin/propane'),
(12, '2025-01-11 06:05:37', '2025-01-29 13:29:10', '85 409 HBA', 'ZONGTONG', 43, 8, 'bus', NULL, NULL, 11, '[]', 1, 12000, 30.00, 'benzin/propane'),
(13, '2025-01-11 06:06:56', '2025-01-29 13:29:47', '85 689 HBA', 'ZONGTONG', 35, 7, 'bus', NULL, NULL, 12, '[]', 1, 12000, 22.00, 'diesel'),
(14, '2025-01-11 06:07:46', '2025-01-29 13:30:15', '85 651 HBA', 'YUTONG', 33, 7, 'bus', NULL, NULL, 13, '[]', 1, 12000, 22.00, 'diesel'),
(15, '2025-01-11 06:13:32', '2025-01-29 13:30:44', '30 637 RAA', 'YUTONG', 33, 7, 'bus', NULL, NULL, 14, '[]', 1, 12000, 22.00, 'diesel'),
(16, '2025-01-11 06:13:57', '2025-01-29 13:31:53', '30 517 SAA', 'YUTONG', 33, 7, 'bus', NULL, NULL, 15, '[]', 1, 12000, 22.00, 'diesel'),
(17, '2025-01-11 06:14:47', '2025-01-29 13:32:33', '30 422 RAA', 'YUTONG', 33, 7, 'bus', NULL, NULL, 16, '[]', 1, 12000, 22.00, 'diesel'),
(18, '2025-01-11 06:15:49', '2025-01-29 13:33:46', '30 887 EBA', 'JOYLONG', 16, 4, 'mikro_bus', NULL, NULL, 17, '[]', 1, 8000, 17.00, 'benzin/propane'),
(19, '2025-01-11 06:16:29', '2025-01-29 13:34:37', '30 247 FBA', 'JOYLONG', 16, 4, 'mikro_bus', NULL, NULL, 18, '[]', 1, 8000, 17.00, 'diesel'),
(20, '2025-01-11 06:30:09', '2025-01-29 13:35:03', '30M128CB', 'NEXIA', 3, 2, 'car', NULL, NULL, 19, '[]', 1, 5000, 10.00, 'diesel');

-- --------------------------------------------------------

--
-- Table structure for table `transport_prices`
--

CREATE TABLE `transport_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `transport_type_id` bigint(20) UNSIGNED NOT NULL,
  `price_type` enum('per_day','per_pickup_dropoff','vip','economy','business','po_gorodu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_prices`
--

INSERT INTO `transport_prices` (`id`, `created_at`, `updated_at`, `cost`, `transport_type_id`, `price_type`) VALUES
(3, '2025-01-11 04:45:36', '2025-01-11 04:45:36', 50.00, 2, 'per_day'),
(4, '2025-01-11 04:46:05', '2025-01-11 04:46:05', 15.00, 2, 'per_pickup_dropoff'),
(5, '2025-01-11 04:46:52', '2025-01-11 04:46:52', 80.00, 3, 'per_day'),
(6, '2025-01-11 04:46:52', '2025-01-11 04:46:52', 20.00, 3, 'per_pickup_dropoff'),
(7, '2025-01-11 04:47:30', '2025-01-11 04:47:30', 100.00, 4, 'per_day'),
(8, '2025-01-11 04:47:30', '2025-01-11 04:47:30', 25.00, 4, 'per_pickup_dropoff'),
(9, '2025-01-11 04:48:27', '2025-01-11 04:48:27', 120.00, 5, 'per_day'),
(10, '2025-01-11 04:48:27', '2025-01-11 04:48:27', 40.00, 5, 'per_pickup_dropoff'),
(11, '2025-01-11 04:49:12', '2025-01-11 04:49:12', 150.00, 6, 'per_day'),
(12, '2025-01-11 04:49:12', '2025-01-11 04:49:12', 40.00, 6, 'per_pickup_dropoff'),
(13, '2025-01-11 04:50:35', '2025-01-11 04:50:35', 190.00, 7, 'per_day'),
(14, '2025-01-11 04:50:35', '2025-01-11 04:50:35', 50.00, 7, 'per_pickup_dropoff'),
(15, '2025-01-11 04:53:12', '2025-01-11 04:53:12', 200.00, 8, 'per_day'),
(16, '2025-01-11 04:53:12', '2025-01-11 04:53:12', 50.00, 8, 'per_pickup_dropoff'),
(17, '2025-01-11 04:53:12', '2025-01-11 04:53:12', 150.00, 8, 'economy'),
(18, '2025-01-11 04:53:44', '2025-01-11 04:53:44', 220.00, 9, 'per_day'),
(19, '2025-01-11 04:54:08', '2025-01-11 04:54:08', 220.00, 10, 'per_day'),
(20, '2025-01-11 04:56:58', '2025-01-11 04:56:58', 27.00, 11, 'economy'),
(21, '2025-01-11 04:56:58', '2025-01-11 04:56:58', 40.00, 11, 'business'),
(22, '2025-01-11 04:56:58', '2025-01-11 04:56:58', 52.00, 11, 'vip'),
(23, '2025-01-11 04:58:55', '2025-01-11 04:58:55', 27.00, 12, 'economy'),
(24, '2025-01-11 05:00:04', '2025-01-11 05:35:58', 35.00, 13, 'economy'),
(25, '2025-01-11 05:00:46', '2025-01-11 05:00:46', 27.00, 14, 'economy'),
(26, '2025-01-11 05:01:45', '2025-01-11 05:01:45', 27.00, 15, 'economy'),
(27, '2025-01-11 05:21:40', '2025-01-11 05:21:40', 40.00, 12, 'business'),
(28, '2025-01-11 05:21:40', '2025-01-11 05:21:40', 52.00, 12, 'vip'),
(29, '2025-01-11 05:23:20', '2025-01-11 05:23:20', 40.00, 15, 'business'),
(30, '2025-01-11 05:23:20', '2025-01-11 05:23:20', 52.00, 15, 'vip'),
(31, '2025-01-11 05:24:21', '2025-01-11 05:24:21', 40.00, 14, 'business'),
(32, '2025-01-11 05:24:21', '2025-01-11 05:24:21', 52.00, 14, 'vip'),
(33, '2025-01-11 05:35:58', '2025-01-11 05:35:58', 51.00, 13, 'business'),
(34, '2025-01-11 05:37:44', '2025-01-11 05:37:44', 35.00, 16, 'economy'),
(35, '2025-01-11 05:37:44', '2025-01-11 05:37:44', 51.00, 16, 'business'),
(36, '2025-01-11 05:44:13', '2025-01-11 05:44:13', 15.00, 17, 'economy'),
(37, '2025-01-11 05:44:13', '2025-01-11 05:44:13', 19.00, 17, 'business'),
(38, '2025-01-11 05:45:11', '2025-01-11 05:45:11', 15.00, 18, 'economy'),
(39, '2025-01-11 05:45:11', '2025-01-11 05:45:11', 19.00, 18, 'business'),
(40, '2025-01-11 05:46:06', '2025-01-11 05:46:06', 50.00, 10, 'per_pickup_dropoff'),
(41, '2025-01-11 05:59:36', '2025-01-11 05:59:36', 50.00, 9, 'per_pickup_dropoff'),
(42, '2025-01-11 14:22:46', '2025-01-11 14:22:46', 45.00, 2, 'po_gorodu');

-- --------------------------------------------------------

--
-- Table structure for table `transport_types`
--

CREATE TABLE `transport_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `price_type` enum('per_day','per_pickup_dropoff','po_gorodu') NOT NULL,
  `category` enum('bus','car','mikro_bus','mini_van','air','rail') NOT NULL,
  `running_days` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport_types`
--

INSERT INTO `transport_types` (`id`, `created_at`, `updated_at`, `type`, `cost`, `price_type`, `category`, `running_days`) VALUES
(2, '2025-01-11 04:45:36', '2025-01-11 04:45:36', 'sedn', 0.00, 'per_day', 'car', NULL),
(3, '2025-01-11 04:46:52', '2025-01-11 05:51:22', 'Hyundai H1 3-5', 0.00, 'per_day', 'mikro_bus', NULL),
(4, '2025-01-11 04:47:30', '2025-01-11 05:51:49', 'Joylong 6-8', 0.00, 'per_day', 'mikro_bus', NULL),
(5, '2025-01-11 04:48:27', '2025-01-11 04:48:27', 'Sprintor', 0.00, 'per_day', 'mikro_bus', NULL),
(6, '2025-01-11 04:49:12', '2025-01-11 04:49:12', 'Coster', 0.00, 'per_day', 'mikro_bus', NULL),
(7, '2025-01-11 04:50:35', '2025-01-11 04:50:35', '33 seat', 0.00, 'per_day', 'bus', NULL),
(8, '2025-01-11 04:53:12', '2025-01-11 04:53:12', '43', 0.00, 'per_day', 'bus', NULL),
(9, '2025-01-11 04:53:44', '2025-01-11 04:53:44', '50', 0.00, 'per_day', 'bus', NULL),
(10, '2025-01-11 04:54:08', '2025-01-11 04:54:08', '53', 0.00, 'per_day', 'bus', NULL),
(11, '2025-01-11 04:56:58', '2025-01-11 04:56:58', 'AFRASIYAB  Tosh-Sam', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]'),
(12, '2025-01-11 04:58:55', '2025-01-11 04:58:55', 'AFRASIYOB  Sam-Bux', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]'),
(13, '2025-01-11 05:00:03', '2025-01-11 05:00:03', 'AFRASITAB Tosh-Bux', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]'),
(14, '2025-01-11 05:00:46', '2025-01-11 05:00:46', 'AFRASIYOB  Bux-Sam', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]'),
(15, '2025-01-11 05:01:45', '2025-01-11 05:01:45', 'ASFRASIYAB  Sam-Tash', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]'),
(16, '2025-01-11 05:37:44', '2025-01-11 05:38:19', 'AFRASIYAB  Bux-Tosh', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]'),
(17, '2025-01-11 05:44:13', '2025-01-11 05:44:13', 'AFRASIYAB  Tosh-Marg', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]'),
(18, '2025-01-11 05:45:11', '2025-01-11 05:45:11', 'AFRASIYAB  Marg-Tosh', 0.00, 'per_day', 'rail', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\",\"sunday\"]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Odil', 'odilorg@gmail.com', NULL, '$2y$12$UPsLsbvomMz2Jn8BzNgel.9Fn5Jy0dvdqb6ud8TaYBu/r5XPdTn1y', 'ZjmBDCI2inKz9wd8JRbo1n9bl4xdbqgpg9mjOXgsxbjsrJQ7ppFs26gA9g7f', '2025-01-10 16:41:11', '2025-01-10 16:41:11'),
(2, 'Tolib', 'tolib71@mail.ru', NULL, '$2y$12$UPsLsbvomMz2Jn8BzNgel.9Fn5Jy0dvdqb6ud8TaYBu/r5XPdTn1y', 'E6yK9K2aJiuQo5FuFTgavCqqShPf5pmFgiVZetEWk1B5tFyJcWOz4G4yB8Kb', '2025-01-11 04:43:41', '2025-01-11 04:43:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity_room`
--
ALTER TABLE `amenity_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amenity_room_amenity_id_foreign` (`amenity_id`),
  ADD KEY `amenity_room_room_id_foreign` (`room_id`);

--
-- Indexes for table `amenity_transport`
--
ALTER TABLE `amenity_transport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amenity_transport_transport_id_foreign` (`transport_id`),
  ADD KEY `amenity_transport_amenity_id_foreign` (`amenity_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_tour_id_foreign` (`tour_id`),
  ADD KEY `bookings_customer_id_foreign` (`customer_id`),
  ADD KEY `bookings_driver_id_foreign` (`driver_id`),
  ADD KEY `bookings_guide_id_foreign` (`guide_id`),
  ADD KEY `bookings_hotel_id_foreign` (`hotel_id`),
  ADD KEY `bookings_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_tour_day`
--
ALTER TABLE `city_tour_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_tour_day_tour_day_id_foreign` (`tour_day_id`),
  ADD KEY `city_tour_day_city_id_foreign` (`city_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_phone_unique` (`phone`),
  ADD UNIQUE KEY `drivers_email_unique` (`email`),
  ADD UNIQUE KEY `drivers_license_number_unique` (`license_number`);

--
-- Indexes for table `email_bookings`
--
ALTER TABLE `email_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_tour_bookings`
--
ALTER TABLE `email_tour_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estimates_estimate_number_unique` (`estimate_number`),
  ADD KEY `fk_estimates_customer_id` (`customer_id`),
  ADD KEY `fk_estimates_tour_id` (`tour_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_spoken_language`
--
ALTER TABLE `guide_spoken_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guide_spoken_language_guide_id_foreign` (`guide_id`),
  ADD KEY `guide_spoken_language_spoken_language_id_foreign` (`spoken_language_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_rooms_tour_day_hotel_id_foreign` (`tour_day_hotel_id`),
  ADD KEY `hotel_rooms_room_id_foreign` (`room_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_types`
--
ALTER TABLE `meal_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meal_types_restaurant_id` (`restaurant_id`);

--
-- Indexes for table `meal_type_restaurant_tour_days`
--
ALTER TABLE `meal_type_restaurant_tour_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meal_type_restaurant_tour_days_meal_type_id` (`meal_type_id`),
  ADD KEY `fk_meal_type_restaurant_tour_days_restaurant_id` (`restaurant_id`),
  ADD KEY `fk_meal_type_restaurant_tour_days_tour_day_id` (`tour_day_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monuments`
--
ALTER TABLE `monuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_monuments_city_id` (`city_id`);

--
-- Indexes for table `monument_tour_days`
--
ALTER TABLE `monument_tour_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monument_tour_days_monument_id_foreign` (`monument_id`),
  ADD KEY `monument_tour_days_tour_day_id_foreign` (`tour_day_id`);

--
-- Indexes for table `oil_changes`
--
ALTER TABLE `oil_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oil_changes_transport_id_foreign` (`transport_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_city_id_foreign` (`city_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_hotel_id_foreign` (`hotel_id`),
  ADD KEY `rooms_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `spoken_languages`
--
ALTER TABLE `spoken_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tours_slug_unique` (`slug`),
  ADD UNIQUE KEY `tours_tour_number_unique` (`tour_number`);

--
-- Indexes for table `tour_categories`
--
ALTER TABLE `tour_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tour_categories_name_unique` (`name`);

--
-- Indexes for table `tour_days`
--
ALTER TABLE `tour_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `guide_id` (`guide_id`),
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `fk_tour_days_city_id` (`city_id`),
  ADD KEY `fk_tour_days_restaurant_id` (`restaurant_id`);

--
-- Indexes for table `tour_day_hotels`
--
ALTER TABLE `tour_day_hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_day_hotels_tour_day_id_foreign` (`tour_day_id`),
  ADD KEY `tour_day_hotels_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `tour_day_hotel_room`
--
ALTER TABLE `tour_day_hotel_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_day_id` (`tour_day_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `tour_day_transport`
--
ALTER TABLE `tour_day_transport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_day_transport_tour_day_id_foreign` (`tour_day_id`),
  ADD KEY `tour_day_transport_transport_id_foreign` (`transport_type_id`);

--
-- Indexes for table `tour_tour_category`
--
ALTER TABLE `tour_tour_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_tour_category_tour_id_foreign` (`tour_id`),
  ADD KEY `tour_tour_category_tour_category_id_foreign` (`tour_category_id`);

--
-- Indexes for table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transports_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `transport_prices`
--
ALTER TABLE `transport_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transport_prices_transport_type_id` (`transport_type_id`);

--
-- Indexes for table `transport_types`
--
ALTER TABLE `transport_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `amenity_room`
--
ALTER TABLE `amenity_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT for table `amenity_transport`
--
ALTER TABLE `amenity_transport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `city_tour_day`
--
ALTER TABLE `city_tour_day`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `email_bookings`
--
ALTER TABLE `email_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_tour_bookings`
--
ALTER TABLE `email_tour_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `guide_spoken_language`
--
ALTER TABLE `guide_spoken_language`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meal_types`
--
ALTER TABLE `meal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `meal_type_restaurant_tour_days`
--
ALTER TABLE `meal_type_restaurant_tour_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `monuments`
--
ALTER TABLE `monuments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `monument_tour_days`
--
ALTER TABLE `monument_tour_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `oil_changes`
--
ALTER TABLE `oil_changes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `spoken_languages`
--
ALTER TABLE `spoken_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tour_categories`
--
ALTER TABLE `tour_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tour_days`
--
ALTER TABLE `tour_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tour_day_hotels`
--
ALTER TABLE `tour_day_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tour_day_hotel_room`
--
ALTER TABLE `tour_day_hotel_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tour_day_transport`
--
ALTER TABLE `tour_day_transport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tour_tour_category`
--
ALTER TABLE `tour_tour_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transports`
--
ALTER TABLE `transports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transport_prices`
--
ALTER TABLE `transport_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `transport_types`
--
ALTER TABLE `transport_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenity_room`
--
ALTER TABLE `amenity_room`
  ADD CONSTRAINT `amenity_room_amenity_id_foreign` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `amenity_room_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `amenity_transport`
--
ALTER TABLE `amenity_transport`
  ADD CONSTRAINT `amenity_transport_amenity_id_foreign` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `amenity_transport_transport_id_foreign` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_guide_id_foreign` FOREIGN KEY (`guide_id`) REFERENCES `guides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city_tour_day`
--
ALTER TABLE `city_tour_day`
  ADD CONSTRAINT `city_tour_day_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `city_tour_day_tour_day_id_foreign` FOREIGN KEY (`tour_day_id`) REFERENCES `tour_days` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estimates`
--
ALTER TABLE `estimates`
  ADD CONSTRAINT `fk_estimates_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_estimates_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guide_spoken_language`
--
ALTER TABLE `guide_spoken_language`
  ADD CONSTRAINT `guide_spoken_language_guide_id_foreign` FOREIGN KEY (`guide_id`) REFERENCES `guides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guide_spoken_language_spoken_language_id_foreign` FOREIGN KEY (`spoken_language_id`) REFERENCES `spoken_languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD CONSTRAINT `hotel_rooms_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hotel_rooms_tour_day_hotel_id_foreign` FOREIGN KEY (`tour_day_hotel_id`) REFERENCES `tour_day_hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_types`
--
ALTER TABLE `meal_types`
  ADD CONSTRAINT `fk_meal_types_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_type_restaurant_tour_days`
--
ALTER TABLE `meal_type_restaurant_tour_days`
  ADD CONSTRAINT `fk_meal_type_restaurant_tour_days_meal_type_id` FOREIGN KEY (`meal_type_id`) REFERENCES `meal_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_meal_type_restaurant_tour_days_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_meal_type_restaurant_tour_days_tour_day_id` FOREIGN KEY (`tour_day_id`) REFERENCES `tour_days` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monuments`
--
ALTER TABLE `monuments`
  ADD CONSTRAINT `fk_monuments_city_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `monument_tour_days`
--
ALTER TABLE `monument_tour_days`
  ADD CONSTRAINT `monument_tour_days_monument_id_foreign` FOREIGN KEY (`monument_id`) REFERENCES `monuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `monument_tour_days_tour_day_id_foreign` FOREIGN KEY (`tour_day_id`) REFERENCES `tour_days` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oil_changes`
--
ALTER TABLE `oil_changes`
  ADD CONSTRAINT `oil_changes_transport_id_foreign` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tour_days`
--
ALTER TABLE `tour_days`
  ADD CONSTRAINT `tour_days_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_days_ibfk_2` FOREIGN KEY (`guide_id`) REFERENCES `guides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_days_ibfk_3` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tour_day_hotels`
--
ALTER TABLE `tour_day_hotels`
  ADD CONSTRAINT `tour_day_hotels_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_day_hotels_tour_day_id_foreign` FOREIGN KEY (`tour_day_id`) REFERENCES `tour_days` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tour_day_hotel_room`
--
ALTER TABLE `tour_day_hotel_room`
  ADD CONSTRAINT `tour_day_hotel_room_ibfk_1` FOREIGN KEY (`tour_day_id`) REFERENCES `tour_days` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_day_hotel_room_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_day_hotel_room_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tour_day_transport`
--
ALTER TABLE `tour_day_transport`
  ADD CONSTRAINT `tour_day_transport_ibfk_1` FOREIGN KEY (`transport_type_id`) REFERENCES `transport_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_day_transport_tour_day_id_foreign` FOREIGN KEY (`tour_day_id`) REFERENCES `tour_days` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tour_tour_category`
--
ALTER TABLE `tour_tour_category`
  ADD CONSTRAINT `tour_tour_category_tour_category_id_foreign` FOREIGN KEY (`tour_category_id`) REFERENCES `tour_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_tour_category_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transports`
--
ALTER TABLE `transports`
  ADD CONSTRAINT `transports_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_prices`
--
ALTER TABLE `transport_prices`
  ADD CONSTRAINT `fk_transport_prices_transport_type_id` FOREIGN KEY (`transport_type_id`) REFERENCES `transport_types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
