-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2019 lúc 09:41 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thi_nghe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`) VALUES
(1, 'Tin sáng tạo'),
(2, 'Tin công nghệ'),
(3, 'Tin việc làm'),
(4, 'Tin sáng tạo'),
(5, 'Tin công nghệ'),
(6, 'Tin việc làm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_author_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `comment_description` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_author_name`, `comment_description`, `post_id`) VALUES
(1, 'Nguyên A', 'bai viết hay', 1),
(2, 'Nguyên A', 'bai viết hay 1', 1),
(3, 'Nguyên A', 'bai viết hay 2', 1),
(4, 'Nguyên A', 'bai viết hay 3', 1),
(5, 'Nguyên A', 'bai viết hay 1', 2),
(6, 'Nguyên A', 'bai viết hay 2', 2),
(7, 'Nguyên A', 'bai viết hay 3', 2),
(8, 'Nguyên A', 'bai viết hay 1', 3),
(9, 'Nguyên A', 'bai viết hay 2', 3),
(10, 'Nguyên A', 'bai viết hay 3', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `post_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_overview` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `post_description` text COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `cate_id`, `post_name`, `post_overview`, `post_description`, `post_image`) VALUES
(1, 1, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(2, 2, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(3, 3, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(4, 1, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(5, 2, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(6, 3, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(7, 1, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(8, 2, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(9, 3, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(10, 1, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(11, 2, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(12, 3, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(13, 1, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(14, 2, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(15, 3, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(16, 1, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(17, 2, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', ''),
(18, 3, 'Tòa án có được phép tước quyền sở hữu cổ phần của vợ \'vua cà phê\'?', 'toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.', 'Việc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.\r\nViệc HĐXX vụ án ly hôn của vợ chồng “vua cà phê” Trung Nguyên quyết định giao toàn bộ cổ phần Trung Nguyên cho ông Vũ, tước quyền cổ đông của bà Thảo vẫn đang gây ra nhiều quan điểm, ý kiến trái chiều.\r\n\r\nZing.vn xin giới thiệu bài viết của chuyên gia Từ Thanh Thảo, người có nhiều năm nghiên cứu, giảng dạy pháp luật kinh doanh tại Đại học Luật TP.HCM, bàn về phán quyết này.', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
