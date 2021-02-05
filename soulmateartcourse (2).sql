-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2021 pada 22.36
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

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
-- Struktur dari tabel `about_us`
--

CREATE TABLE `about_us` (
  `id_about_us` int(11) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `about_us`
--

INSERT INTO `about_us` (`id_about_us`, `about`) VALUES
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,');

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`id_client`, `client_name`, `description`, `link`, `image`) VALUES
(7, 'Despro', 'tes', 'tesss', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/client/2021-02-0403-21-12pmclient-1.png'),
(8, 'Paijo', 'teeesss', 'tesss', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/client/2021-02-0403-23-43pmclient-2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_us`
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
-- Dumping data untuk tabel `contact_us`
--

INSERT INTO `contact_us` (`id_contact_us`, `address`, `call_us`, `email`, `link_ig`, `link_yt`, `link_fb`, `link_wa`, `link_tl`) VALUES
(3, 'Jl. Benowo Krajan', '+62 89 345 765 67', 'eko@wb-productions.id', 'ig', 'yt', '', 'wa', 'tl');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_descriptions` text NOT NULL,
  `date` date NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `event_name`, `event_descriptions`, `date`, `image`) VALUES
(8, 'Akustik', 'Ada Akustik Nih ... ', '2021-02-04', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/event/2021-02-0404-37-39pmblog-inside-post.jpg'),
(10, 'Wedding', 'ada acara wedding nih', '2021-02-04', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/event/2021-02-0404-38-27pmblog-4.jpg'),
(11, 'Cafe', 'Ada acara di cafe nih .. ', '2021-02-06', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/event/2021-02-0509-43-32pmblog-recent-4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_gallery_category` int(11) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `image_descriptions` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_gallery_category`, `image_name`, `image_descriptions`, `image`) VALUES
(5, 3, 'gitar', 'gitar nihh', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/gallery/2021-02-0507-40-22pmportfolio-1.jpg'),
(6, 4, 'Biola', 'biola nihh', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/gallery/2021-02-0507-56-15pmportfolio-7.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id_gallery_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gallery_category`
--

INSERT INTO `gallery_category` (`id_gallery_category`, `category_name`) VALUES
(3, 'Acara'),
(4, 'Bimbingan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE `header` (
  `id_header` int(11) NOT NULL,
  `header_name` text NOT NULL,
  `sort_name` text NOT NULL,
  `button_link` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`id_header`, `header_name`, `sort_name`, `button_link`, `image`) VALUES
(20, 'Soulmate Art Course', 'Lorem Ipsum is simply dummy text of the printing.', 'https://www.google.com/', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/header/2021-02-0402-31-35pmhero-img.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `misi`
--

CREATE TABLE `misi` (
  `id_misi` int(11) NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `misi`
--

INSERT INTO `misi` (`id_misi`, `misi`) VALUES
(2, 'dfdfdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `owner`
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
-- Dumping data untuk tabel `owner`
--

INSERT INTO `owner` (`id_owner`, `owner_name`, `label_owner`, `owner_descriptions`, `instagram`, `facebook`, `whatsapp`, `image`) VALUES
(2, 'Eko Febri Harsono', 'CEO', 'Saya adalah owner Soulmate Art Course', 'ig', 'fb', 'wa', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/owner/2021-02-0403-52-16pmteam-3.jpg'),
(3, 'Hafil Mashudi', 'CTO', 'Saya adalah seeorang desainer', 'ig', 'fb', 'wa', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/owner/2021-02-0403-53-56pmteam-2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `price`
--

CREATE TABLE `price` (
  `id_price` int(11) NOT NULL,
  `price_name` varchar(50) NOT NULL,
  `price` varchar(30) NOT NULL,
  `price_descriptions` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `price`
--

INSERT INTO `price` (`id_price`, `price_name`, `price`, `price_descriptions`, `image`) VALUES
(6, 'Standart', '600', 'Pelatihan 1 Bulan + video tutorial', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/price/2021-02-0404-54-56pmpricing-business.png'),
(7, 'Premium', '1500', 'Pelatihan 3 Bulan + full video tutorial', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/price/2021-02-0404-56-36pmpricing-starter.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id_service` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_descriptions` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id_service`, `service_name`, `service_descriptions`, `image`) VALUES
(5, 'Standart', 'Pelatihan Gitar 1 Bulan (Bonus 1 Video Pembelajaran)', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/service/2021-02-0404-45-02pmpricing-free.png'),
(6, 'Premium', 'Pelatihan Gitar 3 Bulan (Bonus metode pembelajaran cepat)', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/service/2021-02-0404-50-15pmpricing-ultimate.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team`
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
-- Dumping data untuk tabel `team`
--

INSERT INTO `team` (`id_team`, `team_name`, `label_team`, `team_descriptions`, `instagram`, `facebook`, `whatsapp`, `image`) VALUES
(9, 'Eko Febri Harsono', 'Gitaris', 'Saya seorang gitaris', 'ig', 'fb', 'wa', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/team/2021-02-0405-04-13pmteam-3.jpg'),
(10, 'Zamil Adhamar', 'Vocalis', 'saya adalah vokalis', 'ig', 'fb', 'wa', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/team/2021-02-0405-04-43pmteam-1.jpg'),
(11, 'Hafil Mashudi', 'Basis', 'saya adalah basis', 'ig', 'fb', 'wa', 'http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/team/2021-02-0405-05-20pmteam-2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `email`, `password`) VALUES
(6, 'Eko Febri Harsono', 'eko@wb-productions.id', 'ekoaewes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi`
--

CREATE TABLE `visi` (
  `id_visi` int(11) NOT NULL,
  `visi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visi`
--

INSERT INTO `visi` (`id_visi`, `visi`) VALUES
(3, 'sdsdsd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor`
--

CREATE TABLE `visitor` (
  `id_visitor` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT 'Anonym',
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visitor`
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
(222, 'Anonym', '2021-02-05', '10:02:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id_about_us`);

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id_contact_us`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id_gallery_category`);

--
-- Indeks untuk tabel `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indeks untuk tabel `misi`
--
ALTER TABLE `misi`
  ADD PRIMARY KEY (`id_misi`);

--
-- Indeks untuk tabel `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id_owner`);

--
-- Indeks untuk tabel `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id_price`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indeks untuk tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id_team`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `visi`
--
ALTER TABLE `visi`
  ADD PRIMARY KEY (`id_visi`);

--
-- Indeks untuk tabel `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id_visitor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id_about_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id_contact_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id_gallery_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `misi`
--
ALTER TABLE `misi`
  MODIFY `id_misi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `owner`
--
ALTER TABLE `owner`
  MODIFY `id_owner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `price`
--
ALTER TABLE `price`
  MODIFY `id_price` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `team`
--
ALTER TABLE `team`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `visi`
--
ALTER TABLE `visi`
  MODIFY `id_visi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id_visitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
