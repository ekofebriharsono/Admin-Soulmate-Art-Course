-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 06:34 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soulmateartcourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id_about_us` int(11) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id_about_us`, `about`) VALUES
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `client_name`, `description`, `link`, `image`) VALUES
(14, 'Soulmate ', 'Soulmate ', 'https://www.google.com/', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(15, 'Soulmate ', 'Soulmate ', 'https://www.google.com/', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id_contact_us` int(11) NOT NULL,
  `address` text NOT NULL,
  `call_us` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `link_ig` text NOT NULL,
  `link_yt` text NOT NULL,
  `link_fb` text NOT NULL,
  `link_wa` text NOT NULL,
  `link_tl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id_contact_us`, `address`, `call_us`, `email`, `link_ig`, `link_yt`, `link_fb`, `link_wa`, `link_tl`) VALUES
(3, 'Jl. Benowo Krajan', '+62 89 345 765 67', 'eko@wb-productions.id', 'ig', 'yt', '', 'wa', 'tl');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_descriptions` text NOT NULL,
  `date` date NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `event_name`, `event_descriptions`, `date`, `image`) VALUES
(14, 'Acara 1 ', '<p style=\"text-align: justify; \"><strong style=\"margin: 0px; padding: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2021-05-23', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(15, 'Acara 2', '<p style=\"text-align: justify; \"><strong style=\"margin: 0px; padding: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2021-05-23', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(16, 'Acara 3', '<p style=\"text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum</strong><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2021-05-26', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_gallery_category` int(11) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `image_descriptions` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_gallery_category`, `image_name`, `image_descriptions`, `image`) VALUES
(5, 3, 'gitar', 'gitar nihh', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/gallery/2021-02-0507-40-22pmportfolio-1.jpg'),
(6, 4, 'Biola', 'biola nihh', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/gallery/2021-02-0507-56-15pmportfolio-7.jpg'),
(7, 5, 'qwe', 'asd', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/gallery/2021-05-2805-24-47am2021-02-0507-40-22pmportfolio-1.jpg'),
(8, 6, 'rty', 'rty', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/gallery/2021-05-2805-24-57am2021-03-1710-19-30pm2021-02-0507-56-15pmportfolio-7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id_gallery_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`id_gallery_category`, `category_name`) VALUES
(3, 'Acara'),
(4, 'Bimbingan'),
(5, 'Private'),
(6, 'Group');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(11) NOT NULL,
  `header_name` text NOT NULL,
  `sort_name` text NOT NULL,
  `button_link` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `header_name`, `sort_name`, `button_link`, `image`) VALUES
(20, 'Soulmate Art Course', 'Sambung rasa antar hati melalui nada, irama dan harmoni.', 'https://api.whatsapp.com/send?phone=6287860353550&text=Hello%20Soulmate,%20', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/header/2021-02-0402-31-35pmhero-img.png');

-- --------------------------------------------------------

--
-- Table structure for table `misi`
--

CREATE TABLE `misi` (
  `id_misi` int(11) NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `misi`
--

INSERT INTO `misi` (`id_misi`, `misi`) VALUES
(2, '<ul><li style=\"text-align: justify; \"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\">﻿</span><font face=\"Times New Roman\">Menyiapakn generasi millenium yang dapat berevolusi pada setiap perkembangan jaman Melalui sistem pembelajaran yang berkualitas tanpa meninggalkan unsur budaya.</font></li><li style=\"text-align: justify;\"><font face=\"Times New Roman\">Menjadikan lembaga kursus kesenian sebagai tempat belajar yang menyenangkan untuk mengembangkan potensi dan bakat.</font></li><li style=\"text-align: justify; \"><font face=\"Times New Roman\">Memberikan ruang bagi siswa untuk beradaptasi dengan pembaharuan, agar dapat terus mengembangkan ilmu pengetahuan kesenian.<br></font></li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id_owner` int(11) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `label_owner` varchar(100) NOT NULL,
  `owner_descriptions` text NOT NULL,
  `instagram` text NOT NULL,
  `facebook` text NOT NULL,
  `whatsapp` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id_owner`, `owner_name`, `label_owner`, `owner_descriptions`, `instagram`, `facebook`, `whatsapp`, `image`) VALUES
(5, 'Faris Maulana Malik', 'CEO', 'Alumni Institut Seni Indonesia, Guru Musik Nation Star Academy & YPPI Surabaya, dan Musisi.', 'https://www.instagram.com/farismaulanamalik/', 'https://www.facebook.com/faris.malik.3994', 'https://api.whatsapp.com/send?phone=6287758563429', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(6, 'Anggita Fauziah Regita Laras', 'CEO', 'Alumni Institut Seni Indonesia dari jurusan Seni Musik, Owner Soulmate Art Course, Founder Omah Semangart, Musisi.', 'https://www.instagram.com/anggitaaregitaa/?igshid=m0hya1rgjksr', 'https://www.facebook.com/anggita.fauziah.58', 'https://api.whatsapp.com/send?phone=6281359255082', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id_price` int(11) NOT NULL,
  `id_price_category` int(11) NOT NULL,
  `price_name` varchar(50) NOT NULL,
  `price` varchar(30) NOT NULL,
  `price_descriptions` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id_price`, `id_price_category`, `price_name`, `price`, `price_descriptions`, `image`) VALUES
(11, 1, 'Private Class', '150.000', '<ul><li>4x Pertemuan</li><li>Pinjaman Alat Musik</li></ul>', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(12, 4, 'Group Class', '449.000', '<ul><li>4x Pertemuan</li><li>Pinjaman Alat Musik</li></ul>', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(13, 3, 'Kelas Luar Biasa <br> (Berkebutuhan Khusus)', '359.000', '<ul><li>4x Pertemuan</li><li>Pinjaman Alat Musik</li></ul>', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(14, 1, 'Online Class', '299.000', '<ul><li>4x Pertemuan</li><li>Pinjaman Alat Musik</li></ul>', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png');

-- --------------------------------------------------------

--
-- Table structure for table `price_category`
--

CREATE TABLE `price_category` (
  `id_price_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price_category`
--

INSERT INTO `price_category` (`id_price_category`, `category_name`) VALUES
(1, 'Surabaya'),
(3, 'Jogja'),
(4, 'Jombang');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id_promo` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `from_date` date NOT NULL,
  `end_date` date NOT NULL,
  `image` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id_promo`, `name`, `from_date`, `end_date`, `image`, `status`) VALUES
(5, 'Flash Sale', '2021-05-28', '2021-05-28', 'http://localhost/admin-soulmate-art-course/php/companyProfile/image/promo/2021-05-2805-07-28pm2021-03-1710-46-12pm2021-02-0507-40-22pmportfolio-1.jpg', 0),
(6, 'Promo Ramadhan ', '2021-05-28', '2021-07-29', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id_service` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_descriptions` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `service_name`, `service_descriptions`, `image`) VALUES
(15, 'Durasi 60 Menit', '', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(16, 'Tempat dan Waktu Fleksibel', '', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(17, 'Pembayaran Lebih Hemat', '', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(18, 'Free Trial 30 Menit', '', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(19, 'Class Online Disc Start 10 - 50 %', '', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(20, 'Menyediakan Alat Musik', '', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id_team` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `label_team` varchar(30) NOT NULL,
  `team_descriptions` text NOT NULL,
  `instagram` text NOT NULL,
  `facebook` text NOT NULL,
  `whatsapp` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id_team`, `team_name`, `label_team`, `team_descriptions`, `instagram`, `facebook`, `whatsapp`, `image`) VALUES
(12, 'Tim 1', 'Guru Vokal', 'Saya adalah guru vokal', 'ig', 'fb', 'wa', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(13, 'Tim 2', 'Guru Gitar', 'Saya adalah guru gitar', 'ig', 'fb', 'wa', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png'),
(14, 'Tim 3', 'Guru Seni', 'Saya adalah guru seni', 'ig', 'fb', 'wa', 'http://localhost/admin-soulmate-art-course/dist/img/image-default.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `email`, `password`) VALUES
(6, 'Eko Febri Harsono', 'eko@wb-productions.id', 'ekoaewes');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `id_video_category` int(11) NOT NULL,
  `video_name` varchar(50) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_video_category`, `video_name`, `link`) VALUES
(2, 1, 'ini video2', 'ini link2'),
(4, 3, 'Ini Video Gitar Pertama', 'https://www.youtube.com/embed/bhRM868Oi2Q'),
(5, 4, 'ini video2', 'https://www.youtube.com/embed/bhRM868Oi2Q'),
(6, 5, 'ini video2123', 'https://www.youtube.com/embed/bhRM868Oi2Q'),
(7, 6, 'ini video1', 'https://www.youtube.com/embed/bhRM868Oi2Q');

-- --------------------------------------------------------

--
-- Table structure for table `video_category`
--

CREATE TABLE `video_category` (
  `id_video_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_category`
--

INSERT INTO `video_category` (`id_video_category`, `category_name`) VALUES
(3, 'Gitar'),
(4, 'Biola'),
(5, 'Drum'),
(6, 'Piano');

-- --------------------------------------------------------

--
-- Table structure for table `visi`
--

CREATE TABLE `visi` (
  `id_visi` int(11) NOT NULL,
  `visi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visi`
--

INSERT INTO `visi` (`id_visi`, `visi`) VALUES
(3, '<h5 style=\"text-align: center;\"><span style=\"color: rgb(68, 68, 68); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" roman\";=\"\" font-size:=\"\" 13.3333px;=\"\" background-color:=\"\" rgb(246,=\"\" 249,=\"\" 255);\"=\"\">Menjadi lembaga kursus kesenian yang berkualitas dengan kurikulum yang kreatif dan menantang untuk individu yang cerdas dan berbakat</span></h5>');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id_visitor` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT 'Anonym',
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id_visitor`, `name`, `date`, `time`) VALUES
(1, 'Anonym', '2021-01-30', '21:41:37'),
(2, 'Anonym', '2021-01-30', '03:45:56'),
(3, 'Anonym', '2021-01-30', '04:54:37'),
(4, 'Anonym', '2021-01-30', '05:22:02'),
(5, 'Anonym', '2021-01-30', '05:22:19'),
(6, 'Anonym', '2021-01-30', '05:23:18'),
(7, 'Anonym', '2021-02-03', '10:32:36'),
(8, 'Anonym', '2021-02-03', '10:35:18'),
(9, 'Anonym', '2021-02-03', '10:36:20'),
(10, 'Anonym', '2021-02-03', '03:57:10'),
(11, 'Anonym', '2021-02-03', '03:58:34'),
(12, 'Anonym', '2021-02-03', '04:00:49'),
(13, 'Anonym', '2021-02-03', '04:05:23'),
(14, 'Anonym', '2021-02-03', '04:05:41'),
(15, 'Anonym', '2021-02-03', '04:06:16'),
(16, 'Anonym', '2021-02-03', '04:06:16'),
(17, 'Anonym', '2021-02-03', '04:08:48'),
(18, 'Anonym', '2021-02-03', '04:11:09'),
(19, 'Anonym', '2021-02-04', '02:29:40'),
(20, 'Anonym', '2021-02-04', '02:29:48'),
(21, 'Anonym', '2021-02-04', '02:31:39'),
(22, 'Anonym', '2021-02-04', '02:47:04'),
(23, 'Anonym', '2021-02-04', '03:10:53'),
(24, 'Anonym', '2021-02-04', '03:13:02'),
(25, 'Anonym', '2021-02-04', '03:13:12'),
(26, 'Anonym', '2021-02-04', '03:13:23'),
(27, 'Anonym', '2021-02-04', '03:13:37'),
(28, 'Anonym', '2021-02-04', '03:14:20'),
(29, 'Anonym', '2021-02-04', '03:15:22'),
(30, 'Anonym', '2021-02-04', '03:15:40'),
(31, 'Anonym', '2021-02-04', '03:16:16'),
(32, 'Anonym', '2021-02-04', '03:16:31'),
(33, 'Anonym', '2021-02-04', '03:17:20'),
(34, 'Anonym', '2021-02-04', '03:17:28'),
(35, 'Anonym', '2021-02-04', '03:17:42'),
(36, 'Anonym', '2021-02-04', '03:19:48'),
(37, 'Anonym', '2021-02-04', '03:20:06'),
(38, 'Anonym', '2021-02-04', '03:20:48'),
(39, 'Anonym', '2021-02-04', '03:21:43'),
(40, 'Anonym', '2021-02-04', '03:22:45'),
(41, 'Anonym', '2021-02-04', '03:23:27'),
(42, 'Anonym', '2021-02-04', '03:23:50'),
(43, 'Anonym', '2021-02-04', '03:24:29'),
(44, 'Anonym', '2021-02-04', '03:24:52'),
(45, 'Anonym', '2021-02-04', '03:25:12'),
(46, 'Anonym', '2021-02-04', '03:25:56'),
(47, 'Anonym', '2021-02-04', '03:30:50'),
(48, 'Anonym', '2021-02-04', '03:31:37'),
(49, 'Anonym', '2021-02-04', '03:33:10'),
(50, 'Anonym', '2021-02-04', '03:34:16'),
(51, 'Anonym', '2021-02-04', '03:34:26'),
(52, 'Anonym', '2021-02-04', '03:34:31'),
(53, 'Anonym', '2021-02-04', '03:53:00'),
(54, 'Anonym', '2021-02-04', '03:54:03'),
(55, 'Anonym', '2021-02-04', '03:54:17'),
(56, 'Anonym', '2021-02-04', '03:55:23'),
(57, 'Anonym', '2021-02-04', '03:58:45'),
(58, 'Anonym', '2021-02-04', '04:01:59'),
(59, 'Anonym', '2021-02-04', '04:03:44'),
(60, 'Anonym', '2021-02-04', '04:04:46'),
(61, 'Anonym', '2021-02-04', '04:05:19'),
(62, 'Anonym', '2021-02-04', '04:05:26'),
(63, 'Anonym', '2021-02-04', '04:05:38'),
(64, 'Anonym', '2021-02-04', '04:07:16'),
(65, 'Anonym', '2021-02-04', '04:07:48'),
(66, 'Anonym', '2021-02-04', '04:08:17'),
(67, 'Anonym', '2021-02-04', '04:08:33'),
(68, 'Anonym', '2021-02-04', '04:08:42'),
(69, 'Anonym', '2021-02-04', '04:08:55'),
(70, 'Anonym', '2021-02-04', '04:09:14'),
(71, 'Anonym', '2021-02-04', '04:09:40'),
(72, 'Anonym', '2021-02-04', '04:10:18'),
(73, 'Anonym', '2021-02-04', '04:10:46'),
(74, 'Anonym', '2021-02-04', '04:12:26'),
(75, 'Anonym', '2021-02-04', '04:12:33'),
(76, 'Anonym', '2021-02-04', '04:13:08'),
(77, 'Anonym', '2021-02-04', '04:13:14'),
(78, 'Anonym', '2021-02-04', '04:13:29'),
(79, 'Anonym', '2021-02-04', '04:13:38'),
(80, 'Anonym', '2021-02-04', '04:13:52'),
(81, 'Anonym', '2021-02-04', '04:14:13'),
(82, 'Anonym', '2021-02-04', '04:14:30'),
(83, 'Anonym', '2021-02-04', '04:14:56'),
(84, 'Anonym', '2021-02-04', '04:15:14'),
(85, 'Anonym', '2021-02-04', '04:15:52'),
(86, 'Anonym', '2021-02-04', '04:16:00'),
(87, 'Anonym', '2021-02-04', '04:16:14'),
(88, 'Anonym', '2021-02-04', '04:17:12'),
(89, 'Anonym', '2021-02-04', '04:17:22'),
(90, 'Anonym', '2021-02-04', '04:17:40'),
(91, 'Anonym', '2021-02-04', '04:17:52'),
(92, 'Anonym', '2021-02-04', '04:18:11'),
(93, 'Anonym', '2021-02-04', '04:18:40'),
(94, 'Anonym', '2021-02-04', '04:19:02'),
(95, 'Anonym', '2021-02-04', '04:20:34'),
(96, 'Anonym', '2021-02-04', '04:21:01'),
(97, 'Anonym', '2021-02-04', '04:26:01'),
(98, 'Anonym', '2021-02-04', '04:26:44'),
(99, 'Anonym', '2021-02-04', '04:26:50'),
(100, 'Anonym', '2021-02-04', '04:27:44'),
(101, 'Anonym', '2021-02-04', '04:36:48'),
(102, 'Anonym', '2021-02-04', '04:37:01'),
(103, 'Anonym', '2021-02-04', '04:38:33'),
(104, 'Anonym', '2021-02-04', '04:41:02'),
(105, 'Anonym', '2021-02-04', '04:41:14'),
(106, 'Anonym', '2021-02-04', '04:46:20'),
(107, 'Anonym', '2021-02-04', '04:47:52'),
(108, 'Anonym', '2021-02-04', '04:47:55'),
(109, 'Anonym', '2021-02-04', '04:50:23'),
(110, 'Anonym', '2021-02-04', '04:51:50'),
(111, 'Anonym', '2021-02-04', '04:52:31'),
(112, 'Anonym', '2021-02-04', '04:52:48'),
(113, 'Anonym', '2021-02-04', '04:57:54'),
(114, 'Anonym', '2021-02-04', '04:58:15'),
(115, 'Anonym', '2021-02-04', '04:59:29'),
(116, 'Anonym', '2021-02-04', '04:59:42'),
(117, 'Anonym', '2021-02-04', '05:00:44'),
(118, 'Anonym', '2021-02-04', '05:01:02'),
(119, 'Anonym', '2021-02-04', '05:06:05'),
(120, 'Anonym', '2021-02-04', '05:06:53'),
(121, 'Anonym', '2021-02-04', '05:06:59'),
(122, 'Anonym', '2021-02-04', '05:08:35'),
(123, 'Anonym', '2021-02-04', '05:09:58'),
(124, 'Anonym', '2021-02-04', '05:12:01'),
(125, 'Anonym', '2021-02-04', '05:12:38'),
(126, 'Anonym', '2021-02-04', '05:13:19'),
(127, 'Anonym', '2021-02-04', '05:13:40'),
(128, 'Anonym', '2021-02-04', '05:14:09'),
(129, 'Anonym', '2021-02-04', '05:18:39'),
(130, 'Anonym', '2021-02-04', '05:19:36'),
(131, 'Anonym', '2021-02-04', '05:20:26'),
(132, 'Anonym', '2021-02-04', '05:20:55'),
(133, 'Anonym', '2021-02-04', '05:20:56'),
(134, 'Anonym', '2021-02-04', '05:20:57'),
(135, 'Anonym', '2021-02-04', '05:21:02'),
(136, 'Anonym', '2021-02-04', '05:21:07'),
(137, 'Anonym', '2021-02-04', '05:21:15'),
(138, 'Anonym', '2021-02-04', '05:21:26'),
(139, 'Anonym', '2021-02-04', '05:21:26'),
(140, 'Anonym', '2021-02-04', '05:48:45'),
(141, 'Anonym', '2021-02-04', '05:49:00'),
(142, 'Anonym', '2021-02-05', '06:49:04'),
(143, 'Anonym', '2021-02-05', '06:49:10'),
(144, 'Anonym', '2021-02-05', '07:56:55'),
(145, 'Anonym', '2021-02-05', '08:07:46'),
(146, 'Anonym', '2021-02-05', '08:09:34'),
(147, 'Anonym', '2021-02-05', '08:13:34'),
(148, 'Anonym', '2021-02-05', '08:14:07'),
(149, 'Anonym', '2021-02-05', '08:15:53'),
(150, 'Anonym', '2021-02-05', '08:16:06'),
(151, 'Anonym', '2021-02-05', '08:19:12'),
(152, 'Anonym', '2021-02-05', '08:19:32'),
(153, 'Anonym', '2021-02-05', '08:20:04'),
(154, 'Anonym', '2021-02-05', '08:20:45'),
(155, 'Anonym', '2021-02-05', '08:21:51'),
(156, 'Anonym', '2021-02-05', '08:25:25'),
(157, 'Anonym', '2021-02-05', '08:25:59'),
(158, 'Anonym', '2021-02-05', '08:27:07'),
(159, 'Anonym', '2021-02-05', '08:28:00'),
(160, 'Anonym', '2021-02-05', '08:28:13'),
(161, 'Anonym', '2021-02-05', '08:28:47'),
(162, 'Anonym', '2021-02-05', '08:29:55'),
(163, 'Anonym', '2021-02-05', '08:30:08'),
(164, 'Anonym', '2021-02-05', '08:32:02'),
(165, 'Anonym', '2021-02-05', '08:32:30'),
(166, 'Anonym', '2021-02-05', '08:34:34'),
(167, 'Anonym', '2021-02-05', '08:35:16'),
(168, 'Anonym', '2021-02-05', '08:36:02'),
(169, 'Anonym', '2021-02-05', '08:36:23'),
(170, 'Anonym', '2021-02-05', '08:37:31'),
(171, 'Anonym', '2021-02-05', '08:38:00'),
(172, 'Anonym', '2021-02-05', '08:39:12'),
(173, 'Anonym', '2021-02-05', '08:39:26'),
(174, 'Anonym', '2021-02-05', '08:39:39'),
(175, 'Anonym', '2021-02-05', '08:40:42'),
(176, 'Anonym', '2021-02-05', '08:42:05'),
(177, 'Anonym', '2021-02-05', '08:42:17'),
(178, 'Anonym', '2021-02-05', '08:42:21'),
(179, 'Anonym', '2021-02-05', '08:42:46'),
(180, 'Anonym', '2021-02-05', '08:42:49'),
(181, 'Anonym', '2021-02-05', '08:43:05'),
(182, 'Anonym', '2021-02-05', '08:43:09'),
(183, 'Anonym', '2021-02-05', '08:43:12'),
(184, 'Anonym', '2021-02-05', '08:43:31'),
(185, 'Anonym', '2021-02-05', '08:44:02'),
(186, 'Anonym', '2021-02-05', '08:44:23'),
(187, 'Anonym', '2021-02-05', '08:45:09'),
(188, 'Anonym', '2021-02-05', '08:45:17'),
(189, 'Anonym', '2021-02-05', '08:45:57'),
(190, 'Anonym', '2021-02-05', '08:46:30'),
(191, 'Anonym', '2021-02-05', '08:47:21'),
(192, 'Anonym', '2021-02-05', '08:47:52'),
(193, 'Anonym', '2021-02-05', '08:48:03'),
(194, 'Anonym', '2021-02-05', '08:49:32'),
(195, 'Anonym', '2021-02-05', '08:52:04'),
(196, 'Anonym', '2021-02-05', '08:52:19'),
(197, 'Anonym', '2021-02-05', '08:53:16'),
(198, 'Anonym', '2021-02-05', '08:53:56'),
(199, 'Anonym', '2021-02-05', '08:54:41'),
(200, 'Anonym', '2021-02-05', '08:56:16'),
(201, 'Anonym', '2021-02-05', '08:58:09'),
(202, 'Anonym', '2021-02-05', '08:59:22'),
(203, 'Anonym', '2021-02-05', '09:02:34'),
(204, 'Anonym', '2021-02-05', '09:08:27'),
(205, 'Anonym', '2021-02-05', '09:23:08'),
(206, 'Anonym', '2021-02-05', '09:27:17'),
(207, 'Anonym', '2021-02-05', '09:27:55'),
(208, 'Anonym', '2021-02-05', '09:30:42'),
(209, 'Anonym', '2021-02-05', '09:30:51'),
(210, 'Anonym', '2021-02-05', '09:34:52'),
(211, 'Anonym', '2021-02-05', '09:45:01'),
(212, 'Anonym', '2021-02-05', '09:47:38'),
(213, 'Anonym', '2021-02-05', '09:49:54'),
(214, 'Anonym', '2021-02-05', '09:50:13'),
(215, 'Anonym', '2021-02-05', '09:50:21'),
(216, 'Anonym', '2021-02-05', '09:50:29'),
(217, 'Anonym', '2021-02-05', '09:50:41'),
(218, 'Anonym', '2021-02-05', '09:50:46'),
(219, 'Anonym', '2021-02-05', '09:58:07'),
(220, 'Anonym', '2021-02-05', '09:59:55'),
(221, 'Anonym', '2021-02-05', '10:01:50'),
(222, 'Anonym', '2021-02-05', '10:02:59'),
(223, 'Anonym', '2021-05-23', '09:20:48'),
(224, 'Anonym', '2021-05-23', '09:21:18'),
(225, 'Anonym', '2021-05-23', '09:24:03'),
(226, 'Anonym', '2021-05-23', '09:24:09'),
(227, 'Anonym', '2021-05-23', '09:25:15'),
(228, 'Anonym', '2021-05-23', '09:26:04'),
(229, 'Anonym', '2021-05-23', '09:26:38'),
(230, 'Anonym', '2021-05-23', '09:27:02'),
(231, 'Anonym', '2021-05-23', '09:28:09'),
(232, 'Anonym', '2021-05-23', '09:29:28'),
(233, 'Anonym', '2021-05-23', '09:29:46'),
(234, 'Anonym', '2021-05-23', '09:30:24'),
(235, 'Anonym', '2021-05-23', '09:30:55'),
(236, 'Anonym', '2021-05-23', '09:31:31'),
(237, 'Anonym', '2021-05-23', '09:31:45'),
(238, 'Anonym', '2021-05-23', '09:32:10'),
(239, 'Anonym', '2021-05-23', '09:34:51'),
(240, 'Anonym', '2021-05-23', '09:35:02'),
(241, 'Anonym', '2021-05-23', '09:35:20'),
(242, 'Anonym', '2021-05-23', '09:36:21'),
(243, 'Anonym', '2021-05-23', '09:36:26'),
(244, 'Anonym', '2021-05-23', '09:37:38'),
(245, 'Anonym', '2021-05-23', '09:37:51'),
(246, 'Anonym', '2021-05-23', '09:39:27'),
(247, 'Anonym', '2021-05-23', '09:39:59'),
(248, 'Anonym', '2021-05-23', '09:40:16'),
(249, 'Anonym', '2021-05-23', '09:40:55'),
(250, 'Anonym', '2021-05-23', '09:41:04'),
(251, 'Anonym', '2021-05-23', '09:45:49'),
(252, 'Anonym', '2021-05-23', '09:46:42'),
(253, 'Anonym', '2021-05-23', '09:46:56'),
(254, 'Anonym', '2021-05-23', '09:49:27'),
(255, 'Anonym', '2021-05-23', '09:53:57'),
(256, 'Anonym', '2021-05-23', '09:54:52'),
(257, 'Anonym', '2021-05-23', '09:56:41'),
(258, 'Anonym', '2021-05-23', '09:58:37'),
(259, 'Anonym', '2021-05-23', '10:01:49'),
(260, 'Anonym', '2021-05-23', '10:02:02'),
(261, 'Anonym', '2021-05-23', '10:02:41'),
(262, 'Anonym', '2021-05-23', '10:04:18'),
(263, 'Anonym', '2021-05-23', '10:05:26'),
(264, 'Anonym', '2021-05-23', '10:05:52'),
(265, 'Anonym', '2021-05-23', '10:07:17'),
(266, 'Anonym', '2021-05-23', '10:07:50'),
(267, 'Anonym', '2021-05-23', '10:14:33'),
(268, 'Anonym', '2021-05-23', '10:20:34'),
(269, 'Anonym', '2021-05-23', '10:24:14'),
(270, 'Anonym', '2021-05-23', '10:26:51'),
(271, 'Anonym', '2021-05-23', '10:28:07'),
(272, 'Anonym', '2021-05-23', '10:28:29'),
(273, 'Anonym', '2021-05-23', '10:28:41'),
(274, 'Anonym', '2021-05-23', '10:29:01'),
(275, 'Anonym', '2021-05-23', '10:38:52'),
(276, 'Anonym', '2021-05-23', '10:40:18'),
(277, 'Anonym', '2021-05-23', '10:42:50'),
(278, 'Anonym', '2021-05-23', '10:57:33'),
(279, 'Anonym', '2021-05-23', '10:58:09'),
(280, 'Anonym', '2021-05-23', '10:58:42'),
(281, 'Anonym', '2021-05-23', '10:59:06'),
(282, 'Anonym', '2021-05-23', '10:59:56'),
(283, 'Anonym', '2021-05-23', '11:00:11'),
(284, 'Anonym', '2021-05-23', '11:01:08'),
(285, 'Anonym', '2021-05-23', '11:01:15'),
(286, 'Anonym', '2021-05-23', '11:02:12'),
(287, 'Anonym', '2021-05-23', '11:03:02'),
(288, 'Anonym', '2021-05-23', '11:03:24'),
(289, 'Anonym', '2021-05-23', '11:06:52'),
(290, 'Anonym', '2021-05-23', '11:07:47'),
(291, 'Anonym', '2021-05-23', '11:07:58'),
(292, 'Anonym', '2021-05-23', '11:08:14'),
(293, 'Anonym', '2021-05-23', '11:09:26'),
(294, 'Anonym', '2021-05-23', '11:09:35'),
(295, 'Anonym', '2021-05-23', '11:09:41'),
(296, 'Anonym', '2021-05-23', '11:10:06'),
(297, 'Anonym', '2021-05-23', '11:10:41'),
(298, 'Anonym', '2021-05-23', '11:10:58'),
(299, 'Anonym', '2021-05-23', '11:11:27'),
(300, 'Anonym', '2021-05-23', '11:11:56'),
(301, 'Anonym', '2021-05-23', '11:14:15'),
(302, 'Anonym', '2021-05-23', '11:15:03'),
(303, 'Anonym', '2021-05-23', '11:15:54'),
(304, 'Anonym', '2021-05-23', '11:16:07'),
(305, 'Anonym', '2021-05-23', '11:17:15'),
(306, 'Anonym', '2021-05-23', '11:25:30'),
(307, 'Anonym', '2021-05-23', '11:26:16'),
(308, 'Anonym', '2021-05-23', '11:27:01'),
(309, 'Anonym', '2021-05-23', '11:27:14'),
(310, 'Anonym', '2021-05-23', '11:27:25'),
(311, 'Anonym', '2021-05-23', '11:29:30'),
(312, 'Anonym', '2021-05-23', '11:29:55'),
(313, 'Anonym', '2021-05-23', '11:32:54'),
(314, 'Anonym', '2021-05-23', '11:33:49'),
(315, 'Anonym', '2021-05-23', '11:37:56'),
(316, 'Anonym', '2021-05-23', '11:40:18'),
(317, 'Anonym', '2021-05-23', '11:40:38'),
(318, 'Anonym', '2021-05-23', '11:41:03'),
(319, 'Anonym', '2021-05-23', '11:41:09'),
(320, 'Anonym', '2021-05-23', '11:44:31'),
(321, 'Anonym', '2021-05-23', '11:44:56'),
(322, 'Anonym', '2021-05-23', '11:48:50'),
(323, 'Anonym', '2021-05-23', '11:49:24'),
(324, 'Anonym', '2021-05-23', '11:53:59'),
(325, 'Anonym', '2021-05-23', '11:55:44'),
(326, 'Anonym', '2021-05-23', '11:56:43'),
(327, 'Anonym', '2021-05-23', '11:57:05'),
(328, 'Anonym', '2021-05-23', '11:57:40'),
(329, 'Anonym', '2021-05-23', '11:57:47'),
(330, 'Anonym', '2021-05-23', '11:58:03'),
(331, 'Anonym', '2021-05-23', '02:21:29'),
(332, 'Anonym', '2021-05-23', '02:26:19'),
(333, 'Anonym', '2021-05-23', '02:28:01'),
(334, 'Anonym', '2021-05-23', '02:29:03'),
(335, 'Anonym', '2021-05-23', '02:39:50'),
(336, 'Anonym', '2021-05-23', '02:41:31'),
(337, 'Anonym', '2021-05-23', '02:51:06'),
(338, 'Anonym', '2021-05-23', '02:51:13'),
(339, 'Anonym', '2021-05-23', '02:53:22'),
(340, 'Anonym', '2021-05-23', '02:53:28'),
(341, 'Anonym', '2021-05-23', '02:53:44'),
(342, 'Anonym', '2021-05-23', '02:53:45'),
(343, 'Anonym', '2021-05-23', '02:57:13'),
(344, 'Anonym', '2021-05-23', '02:58:39'),
(345, 'Anonym', '2021-05-23', '03:00:39'),
(346, 'Anonym', '2021-05-23', '03:00:40'),
(347, 'Anonym', '2021-05-23', '03:03:32'),
(348, 'Anonym', '2021-05-23', '03:05:41'),
(349, 'Anonym', '2021-05-23', '03:07:10'),
(350, 'Anonym', '2021-05-23', '03:10:15'),
(351, 'Anonym', '2021-05-23', '03:11:14'),
(352, 'Anonym', '2021-05-23', '03:11:17'),
(353, 'Anonym', '2021-05-23', '03:11:28'),
(354, 'Anonym', '2021-05-23', '03:15:49'),
(355, 'Anonym', '2021-05-23', '03:15:49'),
(356, 'Anonym', '2021-05-23', '03:17:08'),
(357, 'Anonym', '2021-05-23', '03:17:15'),
(358, 'Anonym', '2021-05-23', '03:17:16'),
(359, 'Anonym', '2021-05-23', '03:18:39'),
(360, 'Anonym', '2021-05-23', '03:19:26'),
(361, 'Anonym', '2021-05-23', '03:24:55'),
(362, 'Anonym', '2021-05-23', '03:26:03'),
(363, 'Anonym', '2021-05-23', '03:26:14'),
(364, 'Anonym', '2021-05-23', '03:28:06'),
(365, 'Anonym', '2021-05-23', '03:28:30'),
(366, 'Anonym', '2021-05-23', '03:28:38'),
(367, 'Anonym', '2021-05-23', '03:34:08'),
(368, 'Anonym', '2021-05-23', '03:35:35'),
(369, 'Anonym', '2021-05-23', '03:35:41'),
(370, 'Anonym', '2021-05-23', '03:37:44'),
(371, 'Anonym', '2021-05-23', '03:38:00'),
(372, 'Anonym', '2021-05-23', '03:38:08'),
(373, 'Anonym', '2021-05-23', '03:38:34'),
(374, 'Anonym', '2021-05-23', '03:38:41'),
(375, 'Anonym', '2021-05-23', '03:39:10'),
(376, 'Anonym', '2021-05-23', '03:39:57'),
(377, 'Anonym', '2021-05-23', '03:40:55'),
(378, 'Anonym', '2021-05-23', '03:41:01'),
(379, 'Anonym', '2021-05-23', '03:41:56'),
(380, 'Anonym', '2021-05-23', '03:42:22'),
(381, 'Anonym', '2021-05-23', '03:43:12'),
(382, 'Anonym', '2021-05-23', '03:44:07'),
(383, 'Anonym', '2021-05-23', '03:44:20'),
(384, 'Anonym', '2021-05-23', '03:45:08'),
(385, 'Anonym', '2021-05-23', '03:46:57'),
(386, 'Anonym', '2021-05-23', '03:48:39'),
(387, 'Anonym', '2021-05-23', '03:48:56'),
(388, 'Anonym', '2021-05-23', '03:51:26'),
(389, 'Anonym', '2021-05-23', '03:51:40'),
(390, 'Anonym', '2021-05-23', '03:52:11'),
(391, 'Anonym', '2021-05-23', '03:53:10'),
(392, 'Anonym', '2021-05-23', '03:53:44'),
(393, 'Anonym', '2021-05-23', '03:55:59'),
(394, 'Anonym', '2021-05-23', '03:56:14'),
(395, 'Anonym', '2021-05-23', '04:03:20'),
(396, 'Anonym', '2021-05-23', '04:05:21'),
(397, 'Anonym', '2021-05-23', '04:05:39'),
(398, 'Anonym', '2021-05-23', '05:56:09'),
(399, 'Anonym', '2021-05-23', '05:57:31'),
(400, 'Anonym', '2021-05-23', '05:57:44'),
(401, 'Anonym', '2021-05-23', '05:57:54'),
(402, 'Anonym', '2021-05-23', '05:58:11'),
(403, 'Anonym', '2021-05-23', '05:58:16'),
(404, 'Anonym', '2021-05-23', '05:58:40'),
(405, 'Anonym', '2021-05-23', '05:59:43'),
(406, 'Anonym', '2021-05-23', '06:01:43'),
(407, 'Anonym', '2021-05-23', '06:06:42'),
(408, 'Anonym', '2021-05-23', '06:06:53'),
(409, 'Anonym', '2021-05-23', '06:07:05'),
(410, 'Anonym', '2021-05-23', '06:07:28'),
(411, 'Anonym', '2021-05-23', '06:07:57'),
(412, 'Anonym', '2021-05-23', '06:08:15'),
(413, 'Anonym', '2021-05-23', '06:08:21'),
(414, 'Anonym', '2021-05-23', '06:08:30'),
(415, 'Anonym', '2021-05-23', '06:08:51'),
(416, 'Anonym', '2021-05-23', '06:09:00'),
(417, 'Anonym', '2021-05-23', '06:09:27'),
(418, 'Anonym', '2021-05-23', '06:09:40'),
(419, 'Anonym', '2021-05-23', '06:09:52'),
(420, 'Anonym', '2021-05-23', '06:11:37'),
(421, 'Anonym', '2021-05-23', '06:12:25'),
(422, 'Anonym', '2021-05-23', '06:12:43'),
(423, 'Anonym', '2021-05-23', '06:13:03'),
(424, 'Anonym', '2021-05-23', '06:14:31'),
(425, 'Anonym', '2021-05-23', '06:14:48'),
(426, 'Anonym', '2021-05-23', '06:15:21'),
(427, 'Anonym', '2021-05-23', '06:15:41'),
(428, 'Anonym', '2021-05-23', '06:15:51'),
(429, 'Anonym', '2021-05-23', '06:16:59'),
(430, 'Anonym', '2021-05-23', '06:17:18'),
(431, 'Anonym', '2021-05-23', '06:17:34'),
(432, 'Anonym', '2021-05-23', '06:18:20'),
(433, 'Anonym', '2021-05-23', '06:18:35'),
(434, 'Anonym', '2021-05-23', '06:19:05'),
(435, 'Anonym', '2021-05-23', '06:19:10'),
(436, 'Anonym', '2021-05-23', '06:19:28'),
(437, 'Anonym', '2021-05-23', '06:19:43'),
(438, 'Anonym', '2021-05-23', '06:19:57'),
(439, 'Anonym', '2021-05-23', '06:20:08'),
(440, 'Anonym', '2021-05-23', '06:20:23'),
(441, 'Anonym', '2021-05-23', '06:21:58'),
(442, 'Anonym', '2021-05-23', '06:22:30'),
(443, 'Anonym', '2021-05-23', '06:22:42'),
(444, 'Anonym', '2021-05-23', '06:23:34'),
(445, 'Anonym', '2021-05-23', '06:23:42'),
(446, 'Anonym', '2021-05-23', '06:23:57'),
(447, 'Anonym', '2021-05-23', '06:24:10'),
(448, 'Anonym', '2021-05-23', '06:24:16'),
(449, 'Anonym', '2021-05-23', '06:24:39'),
(450, 'Anonym', '2021-05-23', '06:24:47'),
(451, 'Anonym', '2021-05-23', '06:25:10'),
(452, 'Anonym', '2021-05-23', '06:25:53'),
(453, 'Anonym', '2021-05-23', '06:26:03'),
(454, 'Anonym', '2021-05-23', '06:26:16'),
(455, 'Anonym', '2021-05-23', '06:28:05'),
(456, 'Anonym', '2021-05-23', '06:28:21'),
(457, 'Anonym', '2021-05-23', '06:29:32'),
(458, 'Anonym', '2021-05-23', '06:30:19'),
(459, 'Anonym', '2021-05-23', '06:31:38'),
(460, 'Anonym', '2021-05-23', '06:33:32'),
(461, 'Anonym', '2021-05-23', '06:34:19'),
(462, 'Anonym', '2021-05-23', '06:35:55'),
(463, 'Anonym', '2021-05-23', '06:36:12'),
(464, 'Anonym', '2021-05-23', '06:36:19'),
(465, 'Anonym', '2021-05-23', '06:36:26'),
(466, 'Anonym', '2021-05-23', '06:39:55'),
(467, 'Anonym', '2021-05-23', '06:40:23'),
(468, 'Anonym', '2021-05-23', '06:40:39'),
(469, 'Anonym', '2021-05-23', '06:40:46'),
(470, 'Anonym', '2021-05-23', '06:40:53'),
(471, 'Anonym', '2021-05-23', '06:41:29'),
(472, 'Anonym', '2021-05-23', '06:42:08'),
(473, 'Anonym', '2021-05-23', '06:42:17'),
(474, 'Anonym', '2021-05-23', '06:42:35'),
(475, 'Anonym', '2021-05-23', '06:43:37'),
(476, 'Anonym', '2021-05-23', '06:43:45'),
(477, 'Anonym', '2021-05-23', '06:44:26'),
(478, 'Anonym', '2021-05-23', '06:54:31'),
(479, 'Anonym', '2021-05-23', '06:56:34'),
(480, 'Anonym', '2021-05-23', '06:57:00'),
(481, 'Anonym', '2021-05-23', '06:57:17'),
(482, 'Anonym', '2021-05-23', '06:57:29'),
(483, 'Anonym', '2021-05-23', '07:02:47'),
(484, 'Anonym', '2021-05-23', '07:04:49'),
(485, 'Anonym', '2021-05-23', '07:11:39'),
(486, 'Anonym', '2021-05-23', '07:15:29'),
(487, 'Anonym', '2021-05-23', '07:17:15'),
(488, 'Anonym', '2021-05-23', '07:17:57'),
(489, 'Anonym', '2021-05-23', '07:18:38'),
(490, 'Anonym', '2021-05-23', '07:18:46'),
(491, 'Anonym', '2021-05-23', '07:19:27'),
(492, 'Anonym', '2021-05-23', '07:19:35'),
(493, 'Anonym', '2021-05-23', '07:20:09'),
(494, 'Anonym', '2021-05-23', '07:20:18'),
(495, 'Anonym', '2021-05-23', '07:20:43'),
(496, 'Anonym', '2021-05-23', '07:21:12'),
(497, 'Anonym', '2021-05-23', '07:21:23'),
(498, 'Anonym', '2021-05-23', '07:22:39'),
(499, 'Anonym', '2021-05-23', '07:22:51'),
(500, 'Anonym', '2021-05-23', '07:23:01'),
(501, 'Anonym', '2021-05-23', '07:23:49'),
(502, 'Anonym', '2021-05-23', '07:25:41'),
(503, 'Anonym', '2021-05-23', '07:26:33'),
(504, 'Anonym', '2021-05-23', '07:26:48'),
(505, 'Anonym', '2021-05-23', '07:26:52'),
(506, 'Anonym', '2021-05-23', '07:29:22'),
(507, 'Anonym', '2021-05-23', '07:30:45'),
(508, 'Anonym', '2021-05-23', '07:34:17'),
(509, 'Anonym', '2021-05-23', '07:36:02'),
(510, 'Anonym', '2021-05-23', '07:36:24'),
(511, 'Anonym', '2021-05-23', '07:38:31'),
(512, 'Anonym', '2021-05-23', '07:38:53'),
(513, 'Anonym', '2021-05-23', '07:39:06'),
(514, 'Anonym', '2021-05-23', '07:39:53'),
(515, 'Anonym', '2021-05-23', '07:40:06'),
(516, 'Anonym', '2021-05-23', '07:41:47'),
(517, 'Anonym', '2021-05-23', '07:44:16'),
(518, 'Anonym', '2021-05-23', '07:44:50'),
(519, 'Anonym', '2021-05-23', '07:45:03'),
(520, 'Anonym', '2021-05-23', '07:45:24'),
(521, 'Anonym', '2021-05-23', '07:46:52'),
(522, 'Anonym', '2021-05-23', '07:47:09'),
(523, 'Anonym', '2021-05-23', '07:51:39'),
(524, 'Anonym', '2021-05-23', '07:52:51'),
(525, 'Anonym', '2021-05-23', '07:54:31'),
(526, 'Anonym', '2021-05-23', '07:55:48'),
(527, 'Anonym', '2021-05-23', '07:55:57'),
(528, 'Anonym', '2021-05-23', '07:58:26'),
(529, 'Anonym', '2021-05-23', '07:58:38'),
(530, 'Anonym', '2021-05-23', '07:59:16'),
(531, 'Anonym', '2021-05-23', '08:01:45'),
(532, 'Anonym', '2021-05-23', '08:02:05'),
(533, 'Anonym', '2021-05-23', '08:02:23'),
(534, 'Anonym', '2021-05-23', '08:08:18'),
(535, 'Anonym', '2021-05-23', '08:08:52'),
(536, 'Anonym', '2021-05-23', '08:10:29'),
(537, 'Anonym', '2021-05-23', '08:11:47'),
(538, 'Anonym', '2021-05-23', '08:11:55'),
(539, 'Anonym', '2021-05-23', '08:12:24'),
(540, 'Anonym', '2021-05-23', '08:12:35'),
(541, 'Anonym', '2021-05-23', '08:13:43'),
(542, 'Anonym', '2021-05-23', '08:16:05'),
(543, 'Anonym', '2021-05-23', '08:16:08'),
(544, 'Anonym', '2021-05-23', '08:19:54'),
(545, 'Anonym', '2021-05-23', '08:20:02'),
(546, 'Anonym', '2021-05-23', '08:20:33'),
(547, 'Anonym', '2021-05-23', '08:21:13'),
(548, 'Anonym', '2021-05-23', '08:21:27'),
(549, 'Anonym', '2021-05-23', '08:21:36'),
(550, 'Anonym', '2021-05-24', '07:05:52'),
(551, 'Anonym', '2021-05-24', '07:10:21'),
(552, 'Anonym', '2021-05-24', '07:10:29'),
(553, 'Anonym', '2021-05-24', '07:18:27'),
(554, 'Anonym', '2021-05-24', '07:18:39'),
(555, 'Anonym', '2021-05-24', '07:19:40'),
(556, 'Anonym', '2021-05-24', '07:19:57'),
(557, 'Anonym', '2021-05-24', '07:23:47'),
(558, 'Anonym', '2021-05-24', '07:25:11'),
(559, 'Anonym', '2021-05-24', '07:26:40'),
(560, 'Anonym', '2021-05-24', '07:27:13'),
(561, 'Anonym', '2021-05-24', '07:27:54'),
(562, 'Anonym', '2021-05-24', '07:42:06'),
(563, 'Anonym', '2021-05-24', '07:49:23'),
(564, 'Anonym', '2021-05-24', '07:50:04'),
(565, 'Anonym', '2021-05-24', '07:53:53'),
(566, 'Anonym', '2021-05-24', '07:54:26'),
(567, 'Anonym', '2021-05-24', '07:56:50'),
(568, 'Anonym', '2021-05-24', '08:00:28'),
(569, 'Anonym', '2021-05-24', '08:05:36'),
(570, 'Anonym', '2021-05-24', '08:08:45'),
(571, 'Anonym', '2021-05-24', '08:08:54'),
(572, 'Anonym', '2021-05-24', '08:11:49'),
(573, 'Anonym', '2021-05-24', '08:13:59'),
(574, 'Anonym', '2021-05-24', '08:15:55'),
(575, 'Anonym', '2021-05-24', '08:17:29'),
(576, 'Anonym', '2021-05-24', '08:22:12'),
(577, 'Anonym', '2021-05-24', '08:22:21'),
(578, 'Anonym', '2021-05-24', '08:23:08'),
(579, 'Anonym', '2021-05-24', '08:23:29'),
(580, 'Anonym', '2021-05-24', '08:23:55'),
(581, 'Anonym', '2021-05-24', '08:24:30'),
(582, 'Anonym', '2021-05-24', '08:24:46'),
(583, 'Anonym', '2021-05-24', '08:24:56'),
(584, 'Anonym', '2021-05-24', '08:25:29'),
(585, 'Anonym', '2021-05-24', '08:26:22'),
(586, 'Anonym', '2021-05-24', '08:26:35'),
(587, 'Anonym', '2021-05-24', '08:27:14'),
(588, 'Anonym', '2021-05-24', '05:18:08'),
(589, 'Anonym', '2021-05-25', '08:55:44'),
(590, 'Anonym', '2021-05-25', '09:17:47'),
(591, 'Anonym', '2021-05-25', '09:18:14'),
(592, 'Anonym', '2021-05-28', '05:21:54'),
(593, 'Anonym', '2021-05-28', '05:25:01'),
(594, 'Anonym', '2021-05-28', '05:26:09'),
(595, 'Anonym', '2021-05-28', '05:27:21'),
(596, 'Anonym', '2021-05-28', '05:27:23'),
(597, 'Anonym', '2021-05-28', '05:37:21'),
(598, 'Anonym', '2021-05-28', '05:38:31'),
(599, 'Anonym', '2021-05-28', '05:40:02'),
(600, 'Anonym', '2021-05-28', '05:41:25'),
(601, 'Anonym', '2021-05-28', '05:41:55'),
(602, 'Anonym', '2021-05-28', '05:43:11'),
(603, 'Anonym', '2021-05-28', '05:44:03'),
(604, 'Anonym', '2021-05-28', '05:45:14'),
(605, 'Anonym', '2021-05-28', '05:46:34'),
(606, 'Anonym', '2021-05-28', '02:55:14'),
(607, 'Anonym', '2021-05-28', '03:11:48'),
(608, 'Anonym', '2021-05-28', '03:12:20'),
(609, 'Anonym', '2021-05-28', '03:14:07'),
(610, 'Anonym', '2021-05-28', '03:14:21'),
(611, 'Anonym', '2021-05-28', '03:14:29'),
(612, 'Anonym', '2021-05-28', '03:14:52'),
(613, 'Anonym', '2021-05-28', '03:15:31'),
(614, 'Anonym', '2021-05-28', '03:15:40'),
(615, 'Anonym', '2021-05-28', '03:20:36'),
(616, 'Anonym', '2021-05-28', '03:20:58'),
(617, 'Anonym', '2021-05-28', '03:21:33'),
(618, 'Anonym', '2021-05-28', '03:22:17'),
(619, 'Anonym', '2021-05-28', '03:23:31'),
(620, 'Anonym', '2021-05-28', '03:23:40'),
(621, 'Anonym', '2021-05-28', '03:31:09'),
(622, 'Anonym', '2021-05-28', '03:32:05'),
(623, 'Anonym', '2021-05-28', '03:33:31'),
(624, 'Anonym', '2021-05-28', '03:33:49'),
(625, 'Anonym', '2021-05-28', '03:34:33'),
(626, 'Anonym', '2021-05-28', '03:35:20'),
(627, 'Anonym', '2021-05-28', '03:36:47'),
(628, 'Anonym', '2021-05-28', '03:37:50'),
(629, 'Anonym', '2021-05-28', '03:38:01'),
(630, 'Anonym', '2021-05-28', '03:38:29'),
(631, 'Anonym', '2021-05-28', '03:38:47'),
(632, 'Anonym', '2021-05-28', '03:38:52'),
(633, 'Anonym', '2021-05-28', '03:39:39'),
(634, 'Anonym', '2021-05-28', '05:08:10'),
(635, 'Anonym', '2021-05-28', '05:20:14'),
(636, 'Anonym', '2021-05-28', '05:20:40'),
(637, 'Anonym', '2021-05-28', '05:20:51'),
(638, 'Anonym', '2021-05-28', '05:21:19'),
(639, 'Anonym', '2021-05-28', '05:21:26'),
(640, 'Anonym', '2021-05-28', '05:22:35'),
(641, 'Anonym', '2021-05-28', '05:23:02'),
(642, 'Anonym', '2021-05-28', '05:25:40'),
(643, 'Anonym', '2021-05-28', '05:27:01'),
(644, 'Anonym', '2021-05-28', '05:27:31'),
(645, 'Anonym', '2021-05-28', '05:27:49'),
(646, 'Anonym', '2021-05-28', '05:27:54'),
(647, 'Anonym', '2021-05-28', '05:28:20'),
(648, 'Anonym', '2021-05-28', '05:33:14'),
(649, 'Anonym', '2021-05-28', '05:37:09'),
(650, 'Anonym', '2021-05-28', '05:40:13'),
(651, 'Anonym', '2021-05-28', '05:41:19'),
(652, 'Anonym', '2021-05-28', '05:42:15'),
(653, 'Anonym', '2021-05-28', '05:43:15'),
(654, 'Anonym', '2021-05-28', '05:43:42'),
(655, 'Anonym', '2021-05-28', '05:44:28'),
(656, 'Anonym', '2021-05-28', '05:44:44'),
(657, 'Anonym', '2021-05-28', '05:46:33'),
(658, 'Anonym', '2021-05-28', '05:47:21'),
(659, 'Anonym', '2021-05-28', '05:49:39'),
(660, 'Anonym', '2021-05-28', '05:50:16'),
(661, 'Anonym', '2021-05-28', '05:55:30'),
(662, 'Anonym', '2021-05-28', '05:56:48'),
(663, 'Anonym', '2021-05-28', '05:58:40'),
(664, 'Anonym', '2021-05-28', '05:59:27'),
(665, 'Anonym', '2021-05-28', '05:59:37'),
(666, 'Anonym', '2021-05-28', '06:02:19'),
(667, 'Anonym', '2021-05-28', '06:02:25'),
(668, 'Anonym', '2021-05-28', '06:02:53'),
(669, 'Anonym', '2021-05-28', '06:03:24'),
(670, 'Anonym', '2021-05-28', '06:04:16'),
(671, 'Anonym', '2021-05-28', '06:06:50'),
(672, 'Anonym', '2021-05-28', '06:07:44'),
(673, 'Anonym', '2021-05-28', '06:08:01'),
(674, 'Anonym', '2021-05-28', '06:08:23'),
(675, 'Anonym', '2021-05-28', '06:08:34'),
(676, 'Anonym', '2021-05-28', '06:10:21'),
(677, 'Anonym', '2021-05-28', '06:11:14'),
(678, 'Anonym', '2021-05-28', '06:11:35'),
(679, 'Anonym', '2021-05-28', '06:12:22'),
(680, 'Anonym', '2021-05-28', '06:12:37'),
(681, 'Anonym', '2021-05-28', '06:13:00'),
(682, 'Anonym', '2021-05-28', '06:13:06'),
(683, 'Anonym', '2021-05-28', '06:14:25'),
(684, 'Anonym', '2021-05-28', '06:14:27'),
(685, 'Anonym', '2021-05-28', '06:14:28'),
(686, 'Anonym', '2021-05-28', '06:14:30'),
(687, 'Anonym', '2021-05-28', '06:14:53'),
(688, 'Anonym', '2021-05-28', '06:15:00'),
(689, 'Anonym', '2021-05-28', '06:15:00'),
(690, 'Anonym', '2021-05-28', '06:15:25'),
(691, 'Anonym', '2021-05-28', '06:22:15'),
(692, 'Anonym', '2021-05-28', '06:23:23'),
(693, 'Anonym', '2021-05-28', '06:28:13'),
(694, 'Anonym', '2021-05-28', '06:28:15'),
(695, 'Anonym', '2021-05-28', '06:32:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id_about_us`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id_contact_us`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id_gallery_category`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `misi`
--
ALTER TABLE `misi`
  ADD PRIMARY KEY (`id_misi`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id_owner`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id_price`);

--
-- Indexes for table `price_category`
--
ALTER TABLE `price_category`
  ADD PRIMARY KEY (`id_price_category`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id_team`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- Indexes for table `video_category`
--
ALTER TABLE `video_category`
  ADD PRIMARY KEY (`id_video_category`);

--
-- Indexes for table `visi`
--
ALTER TABLE `visi`
  ADD PRIMARY KEY (`id_visi`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id_visitor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id_about_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id_contact_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id_gallery_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `misi`
--
ALTER TABLE `misi`
  MODIFY `id_misi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id_owner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id_price` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `price_category`
--
ALTER TABLE `price_category`
  MODIFY `id_price_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video_category`
--
ALTER TABLE `video_category`
  MODIFY `id_video_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visi`
--
ALTER TABLE `visi`
  MODIFY `id_visi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id_visitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
