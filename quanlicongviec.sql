-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2020 lúc 05:52 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlicongviec`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `TenDH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tg_giao` datetime NOT NULL,
  `Coc_truoc` int(11) NOT NULL,
  `Trang_thai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tong_gia` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_user`, `TenDH`, `Tg_giao`, `Coc_truoc`, `Trang_thai`, `Tong_gia`, `created_at`, `updated_at`) VALUES
(55, 12, 'Biển Bật Dat Anh', '2020-11-20 20:26:00', 100000, 'Đang xử lí', 1050000, '2020-11-20 13:27:06', '2020-11-22 15:57:44'),
(56, 12, 'Đơn hàng  - in in tờ rơi KM Văn Hiệp', '2020-11-23 22:04:00', 0, 'Hoàn thành', 400000, '2020-11-22 15:04:52', '2020-11-22 15:33:22'),
(57, 12, 'In bạt cho DA', '2020-11-27 15:00:00', 50000, 'Đang xử lí', 70000, '2020-11-22 15:45:49', '2020-11-22 15:54:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `created_at`, `updated_at`, `event_title`, `event_start_date`, `event_start_time`, `event_end_date`, `event_end_time`, `event_description`) VALUES
(2, '2020-11-13 19:11:52', '2020-11-13 19:11:52', 'Trả đơn hàng cho anh Mạnh Decal', '2020-11-14', '12:00 AM', '2020-11-14', '11:59 PM', 'Trừ nợ 2 cuộn decal đỏ - 150.000 VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

CREATE TABLE `mathang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Donhang` bigint(20) UNSIGNED NOT NULL,
  `TenMH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Donvi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Don_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`id`, `id_Donhang`, `TenMH`, `Soluong`, `Donvi`, `Don_gia`, `created_at`, `updated_at`) VALUES
(214, 55, 'Alumec', 10, 'Cái', '80000', '2020-11-22 15:02:44', '2020-11-22 15:02:44'),
(215, 55, 'Sắt hốp 10', 5, 'Cái', '50000', '2020-11-22 15:02:44', '2020-11-22 15:02:44'),
(216, 56, 'Tờ rơi QC KM', 200, 'M', '2000', '2020-11-22 15:04:52', '2020-11-22 15:04:52'),
(217, 57, 'Biển bạt 120 x 80 (nội dung : Bán xe Đạp điện)', 1, 'Cái', '120000', '2020-11-22 15:45:49', '2020-11-22 15:45:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_09_23_101558_create_sessions_table', 1),
(7, '2020_10_08_171449_create_events_table', 2),
(8, '2020_10_09_093512_create_task_table', 3),
(9, '2018_08_10_034632_create_events_table', 4),
(10, '2020_10_17_080756_create__nhanvien_table', 5),
(11, '2020_10_17_091007_create__nhanvien_table', 6),
(13, '2020_10_20_172102_create_thiepcuoi_table', 7),
(14, '2020_10_20_182844_create_events_table', 8),
(15, '2020_10_20_190516_create_events_table', 9),
(16, '2020_10_20_190845_create_events_table', 10),
(17, '2020_10_20_192440_create_events_table', 11),
(18, '2020_10_20_193436_create_events_table', 12),
(19, '2020_10_30_235225_create_mathang_table', 13),
(20, '2020_10_30_235426_create_donhang_table', 14),
(21, '2020_10_31_000600_create_mathang_table', 15),
(22, '2020_10_31_001200_create_mathang_table', 16),
(23, '2020_10_31_001548_create_phieunhap_table', 17),
(24, '2020_10_31_002109_create_phieuxuat_table', 18),
(25, '2020_10_31_002518_create_vatlieu_table', 19),
(26, '2020_11_07_180120_create_thuchi_table', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dat198hp@gmail.com', '$2y$10$TiI8LWOfB5ykG5c.Rfmi8.8xpOFH.EOB31W7wRrG6TMXU6vYecHJe', '2020-11-22 17:22:09'),
('datanh98hp@gmail.com', '$2y$10$dvzSp1PGxQIS7HobvLuMkeg4eXgiUmUFuCKFly9l3UeY/a8e4yp/a', '2020-11-22 17:22:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `Tgian_nhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `id_user`, `Tgian_nhap`, `Description`, `created_at`, `updated_at`) VALUES
(65, 12, '2020-11-21 21:26:23', 'qqqq', '2020-11-21 14:26:23', '2020-11-21 14:26:23'),
(66, 12, '2020-11-21 21:27:20', '111111', '2020-11-21 14:27:20', '2020-11-21 14:27:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `Tgian_xuat` datetime NOT NULL DEFAULT current_timestamp(),
  `Description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_Donhang` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`id`, `id_user`, `Tgian_xuat`, `Description`, `id_Donhang`, `created_at`, `updated_at`) VALUES
(1, 12, '2020-11-21 21:13:25', '', 55, NULL, NULL),
(6, 12, '2020-11-21 21:38:29', '22222', 55, '2020-11-21 14:38:29', '2020-11-21 14:38:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EtKUbaaJYfdoDyF8FvrDHEbbE3tLB2jUxcG7bnGA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36 Edg/87.0.664.41', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicU03aGxtdDlIWXRVWHJyakwxZHg4T2h1WWRLZGZiZVRFZHlyTlJwcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO319', 1606065981);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thiepcuoi`
--

CREATE TABLE `thiepcuoi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `KH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o_nhatrai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_nhatrai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o_nhatgai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_nhagai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qh` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `of` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bac_chure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bac_codau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_an_trai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_tochuc_trai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_an_gai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_tochuc_gai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi_nhatrai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi_nhagai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_trai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_gai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong_trai` bigint(20) NOT NULL,
  `soluong_gai` bigint(20) NOT NULL,
  `Tong_tien` bigint(20) NOT NULL,
  `Dat_coc` bigint(20) NOT NULL,
  `code_thiep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_tra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thiepcuoi`
--

INSERT INTO `thiepcuoi` (`id`, `id_user`, `KH`, `o_nhatrai`, `b_nhatrai`, `o_nhatgai`, `b_nhagai`, `qh`, `of`, `chure`, `codau`, `bac_chure`, `bac_codau`, `time_an_trai`, `time_tochuc_trai`, `time_an_gai`, `time_tochuc_gai`, `diachi_nhatrai`, `diachi_nhagai`, `sdt_trai`, `sdt_gai`, `soluong_trai`, `soluong_gai`, `Tong_tien`, `Dat_coc`, `code_thiep`, `ngay_tra`, `created_at`, `updated_at`) VALUES
(2, 12, 'saffsdg', 'fsadasdgsdf', 'gjfghfhshs', NULL, 'sdfhjsfhsdfh', 'thân', '2 con', 'dfhfhdfgfadg', 'sdfhfdgdagfsjsdhf', 'Thứ', 'Út', '09:00', '13:30', '09:00', '14:00', 'jgoj svksdfofm nôsfksjvodov', 'údifjjojfdojgjosg', '0150466346', '015112126', 200, 150, 1050000, 500000, 'XJA8fa', '2020-03-01', '2020-10-23 00:13:28', '2020-11-21 12:55:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuchi`
--

CREATE TABLE `thuchi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NDCV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoTen_Thu` int(11) DEFAULT NULL,
  `SoTen_Chi` int(11) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuchi`
--

INSERT INTO `thuchi` (`id`, `NDCV`, `SoTen_Thu`, `SoTen_Chi`, `id_user`, `created_at`, `updated_at`) VALUES
(18, 'Thu', 1500000, NULL, 12, '2020-11-21 13:14:49', '2020-11-21 13:14:49'),
(19, 'CHi', NULL, 1050000, 12, '2020-11-21 13:15:38', '2020-11-21 13:15:38'),
(20, 'Thu tiền hàng (in thiệp)', 360000, NULL, 12, '2020-11-22 16:00:18', '2020-11-22 16:00:18'),
(21, 'Thu tiền biển QC + trả công thợ', 2000000, 500000, 12, '2020-11-22 16:00:18', '2020-11-22 16:00:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'KE TOAN', 'datanh98hp@gmail.com', 2, NULL, '$2y$10$rYfeNFspUoaIt0vQNQC7aeCCnvXMAPcHc8zMal7ACeeYZpFhRm/dy', NULL, NULL, NULL, NULL, NULL, '2020-09-26 12:19:33', '2020-09-26 12:19:33'),
(12, 'dat admin', 'dat198hp@gmail.com', 1, NULL, '$2y$10$UTfLNd4OEYWS5ktCuUxr0ucNIUdK/hRIyf0DBNgX78ZmulwaF5CPO', NULL, NULL, NULL, NULL, NULL, '2020-09-27 12:09:21', '2020-11-05 01:09:08'),
(13, 'DESIGNER1', 'dat67653@st.vimaru.edu.vn', 3, NULL, '$2y$10$xGZ/GFuAmWG5HyVHItQ.WeLEnoKYA1lZWNM58KtWPlbnUmKTy/5P2', NULL, NULL, NULL, NULL, NULL, '2020-09-29 20:49:41', '2020-09-29 20:49:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vatlieu`
--

CREATE TABLE `vatlieu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TenVL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Soluong_ton` int(11) NOT NULL,
  `NSX` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Don_gia` int(11) DEFAULT NULL,
  `Donvi_tinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_change` text COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `id_phieunhap` bigint(20) UNSIGNED NOT NULL,
  `id_phieuxuat` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vatlieu`
--

INSERT INTO `vatlieu` (`id`, `TenVL`, `Soluong_ton`, `NSX`, `Don_gia`, `Donvi_tinh`, `last_change`, `id_phieunhap`, `id_phieuxuat`, `created_at`, `updated_at`) VALUES
(20, 'VL1', 5, NULL, NULL, 'Chọn...', '1', 65, 6, '2020-11-21 14:14:01', '2020-11-21 14:38:29'),
(21, 'qưeqwe', 2, 'NXN', 120000, 'M', '2', 66, 1, '2020-11-21 14:27:20', '2020-11-21 14:27:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_nhanvien`
--

CREATE TABLE `_nhanvien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hesoluong` double(4,2) NOT NULL,
  `Position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luong_h` int(11) NOT NULL,
  `Tienluong` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_nhanvien`
--

INSERT INTO `_nhanvien` (`id`, `Hoten`, `sdt`, `start_work`, `end_work`, `Hesoluong`, `Position`, `luong_h`, `Tienluong`, `updated_at`, `created_at`) VALUES
(2, 'Bui Thao', '0364694528', '17-10-2020', '24-10-2020', 1.50, 'ketoan', 20000, 850000, '2020-10-19 18:01:08', NULL),
(3, 'DA', '0869625145', '2020-10-04T01:22', '2020-10-20T01:22', 1.50, 'designer', 20000, 3150000, '2020-10-19 11:22:48', '2020-10-19 11:22:48'),
(5, 'Do VAn DAt', '0869029018', '2020-10-04T13:00', '2020-10-20T17:00', 1.00, 'thi_cong', 20000, 3060000, '2020-10-20 10:33:43', '2020-10-20 10:33:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mathang_id_donhang_foreign` (`id_Donhang`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phieunhap_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phieuxuat_id_user_foreign` (`id_user`),
  ADD KEY `phieuxuat_id_donhang_foreign` (`id_Donhang`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `thiepcuoi`
--
ALTER TABLE `thiepcuoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thiepcuoi_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `thuchi`
--
ALTER TABLE `thuchi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuchi_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vatlieu`
--
ALTER TABLE `vatlieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vatlieu_id_phieunhap_foreign` (`id_phieunhap`),
  ADD KEY `vatlieu_id_phieuxuat_foreign` (`id_phieuxuat`);

--
-- Chỉ mục cho bảng `_nhanvien`
--
ALTER TABLE `_nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `thiepcuoi`
--
ALTER TABLE `thiepcuoi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thuchi`
--
ALTER TABLE `thuchi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `vatlieu`
--
ALTER TABLE `vatlieu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `_nhanvien`
--
ALTER TABLE `_nhanvien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_id_donhang_foreign` FOREIGN KEY (`id_Donhang`) REFERENCES `donhang` (`id`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_id_donhang_foreign` FOREIGN KEY (`id_Donhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `phieuxuat_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `thiepcuoi`
--
ALTER TABLE `thiepcuoi`
  ADD CONSTRAINT `thiepcuoi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `thuchi`
--
ALTER TABLE `thuchi`
  ADD CONSTRAINT `thuchi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `vatlieu`
--
ALTER TABLE `vatlieu`
  ADD CONSTRAINT `vatlieu_id_phieunhap_foreign` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id`),
  ADD CONSTRAINT `vatlieu_id_phieuxuat_foreign` FOREIGN KEY (`id_phieuxuat`) REFERENCES `phieuxuat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
