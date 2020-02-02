-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2020 at 02:44 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angeliq`
--

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_id`, `auditable_type`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\AECore\\Model\\User', 1, 'created', '1', 'App\\AECore\\Model\\Page', '[]', '{\"name\":\"Homepage\",\"url\":\"\\/\",\"title\":\"Homepage\",\"description\":\"Sample Homepage\",\"template\":\"index.blade.php\",\"javascripts\":\"common.js,header.js,table.js\",\"css\":\"common.css,header.css,table.css\",\"type\":\"Index\",\"template_html\":\"@extends(\'layouts.app\')\\r\\n@section(\'content\')\\r\\n<body>\\r\\n    <header>Header<\\/header>\\r\\n    <main>Main<\\/main>\\r\\n    <footer>Footer<\\/footer>\\r\\n<\\/body>\\r\\n@endsection\",\"created_by\":1,\"id\":1}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-18 20:04:42', '2019-05-18 20:04:42'),
(2, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\Page', '{\"css\":\"common.css,header.css,table.css\",\"updated_by\":null}', '{\"css\":\"common.css,header.css,table.css,bootstrap.min.css\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-18 20:10:57', '2019-05-18 20:10:57'),
(3, 'App\\AECore\\Model\\User', 1, 'created', '2', 'App\\AECore\\Model\\Page', '[]', '{\"name\":\"About Us\",\"url\":\"\\/about-us\",\"title\":\"About Us\",\"description\":\"Sample About Us Page\",\"template\":\"default.blade.php\",\"javascripts\":\"common.js,header.js,table.js\",\"css\":\"bootstrap.min.css,common.css,Damion-Regular.ttf,header.css,table.css\",\"type\":\"Index\",\"template_html\":\"@extends(\'layouts.app\')\\n\\n@section(\'ae-css\')\\n@if (!empty($css) && count($css) > 0)\\n@foreach ($css as $style)\\n<link href=\\\"{{ asset(\'css\\/templates\\/\' . $style) }}\\\" rel=\\\"stylesheet\\\">\\n@endforeach\\n@endif\\n@endsection\\n\\n@section(\'content\')\\n<body>\\n    <header>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"row\\\">\\n                <div class=\\\"col-sm-4 logo\\\">\\n                    <span class=\\\"main\\\">\\n                        angeliq\\n                    <\\/span>\\n                    <span class=\\\"sub\\\">\\n                        Cakes, Breads & Butters\\n                    <\\/span>                \\n                <\\/div>\\n                <div class=\\\"col-sm-8\\\"> \\n                    <ul class=\\\"nav justify-content-end\\\">\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link active\\\" href=\\\"#\\\">About Us<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Cakes<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Breads<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Butters<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Contact<\\/a>\\n                        <\\/li>\\n                    <\\/ul>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/header>\\n    <main>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"section\\\">\\n                <div class=\\\"row\\\">\\n                    <h1>About Us<\\/h1>\\n                    <p>\\n                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\\n                    <\\/p>\\n                    <img src=\\\"images\\/corporate-clients-decobake.jpg\\\" width=\\\"100%\\\">\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/main>\\n    <footer>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"section\\\">\\n                <div class=\\\"row\\\">\\n                    <div class=\\\"col-sm-6\\\">\\n                        <div class=\\\"row\\\">\\n                            <div class=\\\"col-sm-3\\\">\\n                                <img src=\\\"images\\/gelie.jpg\\\" width=\\\"120%\\\">\\n                            <\\/div>\\n                            <div class=\\\"col-sm-9\\\">\\n                                <h3>Meet Gelie<\\/h3>\\n                                <p style=\\\"text-align: justify\\\">\\n                                    I\'m Gelie. I am the Creative Director of Angeliq. \\n                                    I\\u2019m a self taught baker, trained in the comfort of my parents\' \\n                                    kitchen, turned professional baker. <br><br>\\n\\n                                    I\'d like to thank you for visiting our website. \\n                                    Decobake will custom-design any cake or cupcakes \\n                                    to your specifications. <br><br>\\n\\n                                    We\'d love to hear from you so feel free to contact us!<br><br>\\n\\n                                    Regards,<br>\\n                                    Gelie\\n                                <\\/p>\\n                            <\\/div>\\n                        <\\/div>\\n                    <\\/div>\\n                    <div class=\\\"col-sm-6\\\">\\n                        <div class=\\\"row\\\">\\n                            <div class=\\\"col-sm-3\\\">\\n                                <img src=\\\"images\\/b.png\\\" width=\\\"100%\\\"  style=\\\"border: 1px solid #fafafa; \\n                                     border-radius: 50%; background: #fafafa;\\\">\\n                            <\\/div>\\n                            <div class=\\\"col-sm-9\\\">\\n                                <h3>Contact Us<\\/h3>\\n                                <p style=\\\"text-align: justify\\\">\\n                                    We try very hard to respond to each email we receive. \\n                                    Please forgive us if, for some reason, we are unable to get \\n                                    back to you in a timely manner. <br><br>\\n\\n                                    We are here to help!<br><br>\\n\\n                                    Phone: +63 2 2140001<br>\\n                                    Mobile: +63 9983070001<br>\\n                                    Viber: +63 9062520001<br>\\n                                    Email: info@angeliq.com.ph<br>\\n                                    Facebook: https:\\/\\/www.facebook.com\\/Angeliq\\n                                <\\/p>\\n                            <\\/div>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n\\n            <!-- Copyright -->\\n            <div class=\\\"footer-copyright text-center py-3\\\" style=\\\"color: #fff\\\">\\u00a9 2018 Copyright:\\n                <a href=\\\"#\\\" style=\\\"color: #fff; text-decoration: underline\\\">AE Services<\\/a>. All rights reserved.\\n            <\\/div>\\n            <!-- Copyright -->\\n        <\\/div>\\n    <\\/footer>\\n<\\/body>\\n@endsection\\n\\n@section(\'ae-scripts\')\\n@if (!empty($js) && count($js) > 0)\\n@foreach ($js as $scripts)\\n<script src=\\\"{{ asset(\'js\\/templates\\/\' . $scripts) }}\\\"><\\/script>\\n@endforeach\\n@endif\\n@endsection\",\"created_by\":1,\"id\":2}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 03:27:23', '2019-05-19 03:27:23'),
(4, 'App\\AECore\\Model\\User', 1, 'created', '3', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Homepage Banner\",\"html_template\":\"<p><code><\\/code><img src=\\\"images\\/banner.jpg\\\" width=\\\"100%\\\" \\/><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":3}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:42', '2019-05-19 04:47:42'),
(5, 'App\\AECore\\Model\\User', 1, 'created', '1', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"Banner\",\"panel_id\":3,\"id\":1}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:42', '2019-05-19 04:47:42'),
(6, 'App\\AECore\\Model\\User', 1, 'created', '4', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Corporate Panel\",\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 0 20px 20px;\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CORPORATE<br \\/><em>Special treats for the industry<\\/em><br \\/>Angeliq can customize your sweet treats for product launches, corporate gifts, company events, corporate parties and many more. Corporate cupcakes and cookies are one of our specialties and our client list includes Philippines&rsquo;s most respected companies.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":4}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:42', '2019-05-19 04:47:42'),
(7, 'App\\AECore\\Model\\User', 1, 'created', '2', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"Section1\",\"panel_id\":4,\"id\":2}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:42', '2019-05-19 04:47:42'),
(8, 'App\\AECore\\Model\\User', 1, 'created', '5', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Corporate Panel\'s Image\",\"html_template\":\"<p><img src=\\\"images\\/corporate-clients-decobake.jpg\\\" width=\\\"100%\\\" \\/><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":5}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:42', '2019-05-19 04:47:42'),
(9, 'App\\AECore\\Model\\User', 1, 'created', '3', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"Section1Image\",\"panel_id\":5,\"id\":3}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(10, 'App\\AECore\\Model\\User', 1, 'created', '6', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Wedding Panel\'s Image\",\"html_template\":\"<p><img src=\\\"images\\/wedding-decobake-1.jpg\\\" width=\\\"100%\\\" \\/><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":6}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(11, 'App\\AECore\\Model\\User', 1, 'created', '4', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"Section2Image\",\"panel_id\":6,\"id\":4}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(12, 'App\\AECore\\Model\\User', 1, 'created', '7', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Wedding Panel\",\"html_template\":\"<p>WEDDINGS<\\/p>\\n<p><em>by Decobake<\\/em><\\/p>\\n<p>At Decobake we believe in a truly personal approach. We recognize that wedding is such an important celebration which deserves a very special cake and that is why we go to great lengths to create the wedding cake of your dreams.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"text-decoration: underline;\\\">read more<\\/span><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":7}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(13, 'App\\AECore\\Model\\User', 1, 'created', '5', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"Section2\",\"panel_id\":7,\"id\":5}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(14, 'App\\AECore\\Model\\User', 1, 'created', '8', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Dessert Panel\",\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 0 20px 20px;\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;DESSERT BUFFET<br \\/><em>Tailor-made just for you<\\/em><br \\/><br \\/>Let Decobake help you transform your event into dessert heaven with one of our magical dessert tables.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":8}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(15, 'App\\AECore\\Model\\User', 1, 'created', '6', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"Section3\",\"panel_id\":8,\"id\":6}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(16, 'App\\AECore\\Model\\User', 1, 'created', '9', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Dessert Panel\'s Image\",\"html_template\":\"<p><img src=\\\"images\\/decobake-dessert-buffet-1-min.png\\\" width=\\\"100%\\\" \\/><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":9}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(17, 'App\\AECore\\Model\\User', 1, 'created', '7', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"Section3Image\",\"panel_id\":9,\"id\":7}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(18, 'App\\AECore\\Model\\User', 1, 'created', '10', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Footer\'s Image\",\"html_template\":\"<p><img src=\\\"images\\/gelie.jpg\\\" width=\\\"120%\\\" \\/><\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":10}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(19, 'App\\AECore\\Model\\User', 1, 'created', '8', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"FooterSection1Image\",\"panel_id\":10,\"id\":8}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(20, 'App\\AECore\\Model\\User', 1, 'created', '11', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Footer\'s About me\",\"html_template\":\"<h3>Meet Gelie<\\/h3>\\n<p>&nbsp;<\\/p>\\n<p style=\\\"text-align: justify;\\\">I\'m Gelie. I am the Creative Director of Angeliq. I&rsquo;m a self taught baker, trained in the comfort of my parents\' kitchen, turned professional baker. <br \\/><br \\/>I\'d like to thank you for visiting our website. Decobake will custom-design any cake or cupcakes to your specifications. <br \\/><br \\/>We\'d love to hear from you so feel free to contact us!<br \\/><br \\/>Regards,<br \\/>Gelie&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":11}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:43', '2019-05-19 04:47:43'),
(21, 'App\\AECore\\Model\\User', 1, 'created', '9', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"FooterSection1\",\"panel_id\":11,\"id\":9}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:44', '2019-05-19 04:47:44'),
(22, 'App\\AECore\\Model\\User', 1, 'created', '12', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Footer\'s Contact Us\",\"html_template\":\"<h3>Contact Us<\\/h3>\\n<p>&nbsp;<\\/p>\\n<p style=\\\"text-align: justify;\\\">We try very hard to respond to each email we receive. Please forgive us if, for some reason, we are unable to get back to you in a timely manner. <br \\/><br \\/>We are here to help!<br \\/><br \\/>Phone: +63 2 2140001<br \\/>Mobile: +63 9983070001<br \\/>Viber: +63 9062520001<br \\/>Email: info@angeliq.com.ph<br \\/>Facebook: https:\\/\\/www.facebook.com\\/Angeliq&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"type\":\"P\",\"created_by\":1,\"id\":12}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:44', '2019-05-19 04:47:44'),
(23, 'App\\AECore\\Model\\User', 1, 'created', '10', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":1,\"tags\":\"FooterContact\",\"panel_id\":12,\"id\":10}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:47:44', '2019-05-19 04:47:44'),
(24, 'App\\AECore\\Model\\User', 1, 'created', '13', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"About Us\",\"html_template\":\"<h1>About Us<\\/h1>\\n<p><img src=\\\"images\\/TCH_header1.png\\\" width=\\\"100%\\\" \\/><\\/p>\\n<p><a href=\\\"#\\\">Lorem Ipsum<\\/a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n<h2>Concept<\\/h2>\\n<p>Donec dignissim, <strong>ante in sodales sodales<\\/strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.<\\/p>\\n<h3>Principle<\\/h3>\\n<p><em>Etiam fermentum tellus sed posuere volutpat<\\/em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.<\\/p>\\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.<\\/p>\\n<h4>Dos and Dont\'s in H4<\\/h4>\\n<ul>\\n<li><a href=\\\"#\\\">Donec bibendum<\\/a> elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ul>\\n<h5>Dos and Dont\'s in H5<\\/h5>\\n<ol>\\n<li>Donec bibendum elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ol>\\n<h6>Events in h6<\\/h6>\\n<p>&nbsp;<\\/p>\\n<table>\\n<tbody>\\n<tr>\\n<th>Head 1<\\/th>\\n<th>Head 2<\\/th>\\n<th>Head 3<\\/th>\\n<th>Head 4<\\/th>\\n<th>Head 5<\\/th>\\n<th>Head 6<\\/th>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\",\"type\":\"M\",\"created_by\":1,\"id\":13}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:48:56', '2019-05-19 04:48:56'),
(25, 'App\\AECore\\Model\\User', 1, 'created', '11', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":2,\"tags\":\"Main\",\"panel_id\":13,\"id\":11}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:48:56', '2019-05-19 04:48:56'),
(26, 'App\\AECore\\Model\\User', 1, 'created', '12', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":2,\"tags\":\"FooterSection1Image\",\"panel_id\":10,\"id\":12}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:48:56', '2019-05-19 04:48:56'),
(27, 'App\\AECore\\Model\\User', 1, 'created', '13', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":2,\"tags\":\"FooterSection1\",\"panel_id\":11,\"id\":13}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:48:56', '2019-05-19 04:48:56'),
(28, 'App\\AECore\\Model\\User', 1, 'created', '14', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":2,\"tags\":\"FooterContact\",\"panel_id\":12,\"id\":14}', 'http://localhost/angeliq/public/admin/pages?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:48:56', '2019-05-19 04:48:56'),
(29, 'App\\AECore\\Model\\User', 1, 'updated', '4', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 0 20px 20px;\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CORPORATE<br \\/><em>Special treats for the industry<\\/em><br \\/>Angeliq can customize your sweet treats for product launches, corporate gifts, company events, corporate parties and many more. Corporate cupcakes and cookies are one of our specialties and our client list includes Philippines&rsquo;s most respected companies.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p style=\\\"margin-top: 89px; padding: 20px 0px 20px 20px; text-align: center;\\\">CORPORATE<br \\/><em>Special treats for the industry<\\/em><br \\/>Angeliq can customize your sweet treats for product launches, corporate gifts, company events, corporate parties and many more. Corporate cupcakes and cookies are one of our specialties and our client list includes Philippines&rsquo;s most respected companies.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:50:35', '2019-05-19 04:50:35'),
(30, 'App\\AECore\\Model\\User', 1, 'updated', '7', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p>WEDDINGS<\\/p>\\n<p><em>by Decobake<\\/em><\\/p>\\n<p>At Decobake we believe in a truly personal approach. We recognize that wedding is such an important celebration which deserves a very special cake and that is why we go to great lengths to create the wedding cake of your dreams.<\\/p>\\n<p>&nbsp;<\\/p>\\n<p><span style=\\\"text-decoration: underline;\\\">read more<\\/span><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 20px 20px 0;\\\">WEDDINGS<br \\/><em>by Decobake<\\/em><br \\/><br \\/>At Decobake we believe in a truly personal approach. We recognize that wedding is such an important celebration which deserves a very special cake and that is why we go to great lengths to create the wedding cake of your dreams.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:51:15', '2019-05-19 04:51:15'),
(31, 'App\\AECore\\Model\\User', 1, 'updated', '8', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 0 20px 20px;\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;DESSERT BUFFET<br \\/><em>Tailor-made just for you<\\/em><br \\/><br \\/>Let Decobake help you transform your event into dessert heaven with one of our magical dessert tables.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 0 20px 20px;\\\">DESSERT BUFFET<br \\/><em>Tailor-made just for you<\\/em><br \\/><br \\/>Let Decobake help you transform your event into dessert heaven with one of our magical dessert tables.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:51:28', '2019-05-19 04:51:28'),
(32, 'App\\AECore\\Model\\User', 1, 'updated', '11', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<h3>Meet Gelie<\\/h3>\\n<p>&nbsp;<\\/p>\\n<p style=\\\"text-align: justify;\\\">I\'m Gelie. I am the Creative Director of Angeliq. I&rsquo;m a self taught baker, trained in the comfort of my parents\' kitchen, turned professional baker. <br \\/><br \\/>I\'d like to thank you for visiting our website. Decobake will custom-design any cake or cupcakes to your specifications. <br \\/><br \\/>We\'d love to hear from you so feel free to contact us!<br \\/><br \\/>Regards,<br \\/>Gelie&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<h3>Meet Gelie<\\/h3>\\n<p style=\\\"text-align: justify;\\\">I\'m Gelie. I am the Creative Director of Angeliq. I&rsquo;m a self taught baker, trained in the comfort of my parents\' kitchen, turned professional baker. <br \\/><br \\/>I\'d like to thank you for visiting our website. Decobake will custom-design any cake or cupcakes to your specifications. <br \\/><br \\/>We\'d love to hear from you so feel free to contact us!<br \\/><br \\/>Regards,<br \\/>Gelie&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:52:19', '2019-05-19 04:52:19'),
(33, 'App\\AECore\\Model\\User', 1, 'updated', '12', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<h3>Contact Us<\\/h3>\\n<p>&nbsp;<\\/p>\\n<p style=\\\"text-align: justify;\\\">We try very hard to respond to each email we receive. Please forgive us if, for some reason, we are unable to get back to you in a timely manner. <br \\/><br \\/>We are here to help!<br \\/><br \\/>Phone: +63 2 2140001<br \\/>Mobile: +63 9983070001<br \\/>Viber: +63 9062520001<br \\/>Email: info@angeliq.com.ph<br \\/>Facebook: https:\\/\\/www.facebook.com\\/Angeliq&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<h3>Contact Us<\\/h3>\\n<p style=\\\"text-align: justify;\\\">We try very hard to respond to each email we receive. Please forgive us if, for some reason, we are unable to get back to you in a timely manner. <br \\/><br \\/>We are here to help!<br \\/><br \\/>Phone: +63 2 2140001<br \\/>Mobile: +63 9983070001<br \\/>Viber: +63 9062520001<br \\/>Email: info@angeliq.com.ph<br \\/>Facebook: https:\\/\\/www.facebook.com\\/Angeliq&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 04:52:27', '2019-05-19 04:52:27'),
(34, 'App\\AECore\\Model\\User', 1, 'updated', '13', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<h1>About Us<\\/h1>\\n<p><img src=\\\"images\\/TCH_header1.png\\\" width=\\\"100%\\\" \\/><\\/p>\\n<p><a href=\\\"#\\\">Lorem Ipsum<\\/a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n<h2>Concept<\\/h2>\\n<p>Donec dignissim, <strong>ante in sodales sodales<\\/strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.<\\/p>\\n<h3>Principle<\\/h3>\\n<p><em>Etiam fermentum tellus sed posuere volutpat<\\/em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.<\\/p>\\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.<\\/p>\\n<h4>Dos and Dont\'s in H4<\\/h4>\\n<ul>\\n<li><a href=\\\"#\\\">Donec bibendum<\\/a> elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ul>\\n<h5>Dos and Dont\'s in H5<\\/h5>\\n<ol>\\n<li>Donec bibendum elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ol>\\n<h6>Events in h6<\\/h6>\\n<p>&nbsp;<\\/p>\\n<table>\\n<tbody>\\n<tr>\\n<th>Head 1<\\/th>\\n<th>Head 2<\\/th>\\n<th>Head 3<\\/th>\\n<th>Head 4<\\/th>\\n<th>Head 5<\\/th>\\n<th>Head 6<\\/th>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\",\"updated_by\":null}', '{\"html_template\":\"<h1>About Us<\\/h1>\\n<p><img src=\\\"images\\/TCH_header1.png\\\" width=\\\"100%\\\" \\/><\\/p>\\n<p><a href=\\\"#\\\">Lorem Ipsum<\\/a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n<h2>Concept<\\/h2>\\n<p>Donec dignissim, <strong>ante in sodales sodales<\\/strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.<\\/p>\\n<h3>Principle<\\/h3>\\n<p><em>Etiam fermentum tellus sed posuere volutpat<\\/em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.<\\/p>\\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.<\\/p>\\n<h4>Dos and Dont\'s in H4<\\/h4>\\n<ul>\\n<li><a href=\\\"#\\\">Donec bibendum<\\/a> elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ul>\\n<h5>Dos and Dont\'s in H5<\\/h5>\\n<ol>\\n<li>Donec bibendum elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ol>\\n<h6>Events in h6<\\/h6>\\n<table>\\n<tbody>\\n<tr>\\n<th>Head 1<\\/th>\\n<th>Head 2<\\/th>\\n<th>Head 3<\\/th>\\n<th>Head 4<\\/th>\\n<th>Head 5<\\/th>\\n<th>Head 6<\\/th>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/contents?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 05:13:40', '2019-05-19 05:13:40');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_id`, `auditable_type`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(35, 'App\\AECore\\Model\\User', 1, 'updated', '13', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<h1>About Us<\\/h1>\\n<p><img src=\\\"images\\/TCH_header1.png\\\" width=\\\"100%\\\" \\/><\\/p>\\n<p><a href=\\\"#\\\">Lorem Ipsum<\\/a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n<h2>Concept<\\/h2>\\n<p>Donec dignissim, <strong>ante in sodales sodales<\\/strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.<\\/p>\\n<h3>Principle<\\/h3>\\n<p><em>Etiam fermentum tellus sed posuere volutpat<\\/em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.<\\/p>\\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.<\\/p>\\n<h4>Dos and Dont\'s in H4<\\/h4>\\n<ul>\\n<li><a href=\\\"#\\\">Donec bibendum<\\/a> elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ul>\\n<h5>Dos and Dont\'s in H5<\\/h5>\\n<ol>\\n<li>Donec bibendum elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ol>\\n<h6>Events in h6<\\/h6>\\n<table>\\n<tbody>\\n<tr>\\n<th>Head 1<\\/th>\\n<th>Head 2<\\/th>\\n<th>Head 3<\\/th>\\n<th>Head 4<\\/th>\\n<th>Head 5<\\/th>\\n<th>Head 6<\\/th>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\"}', '{\"html_template\":\"<h1>About Us<\\/h1>\\n<p><img src=\\\"images\\/TCH_header1.png\\\" width=\\\"100%\\\" \\/><\\/p>\\n<p><a href=\\\"#\\\">Lorem Ipsum<\\/a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n<h2>Concept<\\/h2>\\n<p>Donec dignissim, <strong>ante in sodales sodales<\\/strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.<\\/p>\\n<h3>Principle<\\/h3>\\n<p><em>Etiam fermentum tellus sed posuere volutpat<\\/em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.<\\/p>\\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.<\\/p>\\n<h4>Dos and Dont\'s in H4<\\/h4>\\n<ul>\\n<li><a href=\\\"#\\\">Donec bibendum<\\/a> elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ul>\\n<h5>Dos and Dont\'s in H5<\\/h5>\\n<ol>\\n<li>Donec bibendum elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ol>\\n<h6>Events in h6<\\/h6>\\n<table class=\\\"ae-table\\\">\\n<tbody>\\n<tr>\\n<th>Head 1<\\/th>\\n<th>Head 2<\\/th>\\n<th>Head 3<\\/th>\\n<th>Head 4<\\/th>\\n<th>Head 5<\\/th>\\n<th>Head 6<\\/th>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\\n<p>&nbsp;<\\/p>\\n<table style=\\\"width: auto; border-collapse: collapse;\\\" border=\\\"1\\\" cellpadding=\\\"5\\\"><caption>&nbsp;<\\/caption>\\n<tbody>\\n<tr>\\n<th style=\\\"width: 72px;\\\">TEST 1<\\/th>\\n<th style=\\\"width: 72px;\\\">TEST 2<\\/th>\\n<th style=\\\"width: 72px;\\\">TEST 3<\\/th>\\n<\\/tr>\\n<tr>\\n<td style=\\\"width: 72px;\\\">test 2<\\/td>\\n<td style=\\\"width: 72px;\\\">tes 2<\\/td>\\n<td style=\\\"width: 72px;\\\">test 2<\\/td>\\n<\\/tr>\\n<tr>\\n<td style=\\\"width: 72px;\\\">test 4<\\/td>\\n<td style=\\\"width: 72px;\\\">test 4<\\/td>\\n<td style=\\\"width: 72px;\\\">tes 5<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\"}', 'http://localhost/angeliq/public/admin/contents?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-19 06:13:32', '2019-05-19 06:13:32'),
(36, 'App\\AECore\\Model\\User', 1, 'updated', '13', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<h1>About Us<\\/h1>\\n<p><img src=\\\"images\\/TCH_header1.png\\\" width=\\\"100%\\\" \\/><\\/p>\\n<p><a href=\\\"#\\\">Lorem Ipsum<\\/a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n<h2>Concept<\\/h2>\\n<p>Donec dignissim, <strong>ante in sodales sodales<\\/strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.<\\/p>\\n<h3>Principle<\\/h3>\\n<p><em>Etiam fermentum tellus sed posuere volutpat<\\/em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.<\\/p>\\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.<\\/p>\\n<h4>Dos and Dont\'s in H4<\\/h4>\\n<ul>\\n<li><a href=\\\"#\\\">Donec bibendum<\\/a> elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ul>\\n<h5>Dos and Dont\'s in H5<\\/h5>\\n<ol>\\n<li>Donec bibendum elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ol>\\n<h6>Events in h6<\\/h6>\\n<table class=\\\"ae-table\\\">\\n<tbody>\\n<tr>\\n<th>Head 1<\\/th>\\n<th>Head 2<\\/th>\\n<th>Head 3<\\/th>\\n<th>Head 4<\\/th>\\n<th>Head 5<\\/th>\\n<th>Head 6<\\/th>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\\n<p>&nbsp;<\\/p>\\n<table style=\\\"width: auto; border-collapse: collapse;\\\" border=\\\"1\\\" cellpadding=\\\"5\\\"><caption>&nbsp;<\\/caption>\\n<tbody>\\n<tr>\\n<th style=\\\"width: 72px;\\\">TEST 1<\\/th>\\n<th style=\\\"width: 72px;\\\">TEST 2<\\/th>\\n<th style=\\\"width: 72px;\\\">TEST 3<\\/th>\\n<\\/tr>\\n<tr>\\n<td style=\\\"width: 72px;\\\">test 2<\\/td>\\n<td style=\\\"width: 72px;\\\">tes 2<\\/td>\\n<td style=\\\"width: 72px;\\\">test 2<\\/td>\\n<\\/tr>\\n<tr>\\n<td style=\\\"width: 72px;\\\">test 4<\\/td>\\n<td style=\\\"width: 72px;\\\">test 4<\\/td>\\n<td style=\\\"width: 72px;\\\">tes 5<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\"}', '{\"html_template\":\"<h1>About Us<\\/h1>\\n<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_tch_header1.png\\\" width=\\\"100%\\\" \\/><\\/p>\\n<p><a href=\\\"#\\\">Lorem Ipsum<\\/a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n<h2>Concept<\\/h2>\\n<p>Donec dignissim, <strong>ante in sodales sodales<\\/strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.<\\/p>\\n<h3>Principle<\\/h3>\\n<p><em>Etiam fermentum tellus sed posuere volutpat<\\/em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.<\\/p>\\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.<\\/p>\\n<h4>Dos and Dont\'s in H4<\\/h4>\\n<ul>\\n<li><a href=\\\"#\\\">Donec bibendum<\\/a> elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ul>\\n<h5>Dos and Dont\'s in H5<\\/h5>\\n<ol>\\n<li>Donec bibendum elit id libero finibus dignissim<\\/li>\\n<li>Vivamus placerat mi at tortor efficitur bibendum<\\/li>\\n<li>Curabitur suscipit venenatis odio nec porttitor<\\/li>\\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh<\\/li>\\n<li>In sed accumsan ipsum, vel semper mauris<\\/li>\\n<\\/ol>\\n<h6>Events in h6<\\/h6>\\n<table class=\\\"ae-table\\\">\\n<tbody>\\n<tr>\\n<th>Head 1<\\/th>\\n<th>Head 2<\\/th>\\n<th>Head 3<\\/th>\\n<th>Head 4<\\/th>\\n<th>Head 5<\\/th>\\n<th>Head 6<\\/th>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<tr>\\n<td><a href=\\\"#\\\">Content 1<\\/a><\\/td>\\n<td>Content 2<\\/td>\\n<td>Content 3<\\/td>\\n<td>Content 4<\\/td>\\n<td>Content 5<\\/td>\\n<td>Content 6<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\\n<p>&nbsp;<\\/p>\\n<table style=\\\"width: auto; border-collapse: collapse;\\\" border=\\\"1\\\" cellpadding=\\\"5\\\"><caption>&nbsp;<\\/caption>\\n<tbody>\\n<tr>\\n<th style=\\\"width: 72px;\\\">TEST 1<\\/th>\\n<th style=\\\"width: 72px;\\\">TEST 2<\\/th>\\n<th style=\\\"width: 72px;\\\">TEST 3<\\/th>\\n<\\/tr>\\n<tr>\\n<td style=\\\"width: 72px;\\\">test 2<\\/td>\\n<td style=\\\"width: 72px;\\\">tes 2<\\/td>\\n<td style=\\\"width: 72px;\\\">test 2<\\/td>\\n<\\/tr>\\n<tr>\\n<td style=\\\"width: 72px;\\\">test 4<\\/td>\\n<td style=\\\"width: 72px;\\\">test 4<\\/td>\\n<td style=\\\"width: 72px;\\\">tes 5<\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\"}', 'http://localhost/angeliq/public/admin/contents?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 05:53:05', '2019-05-21 05:53:05'),
(37, 'App\\AECore\\Model\\User', 1, 'updated', '10', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><img src=\\\"images\\/gelie.jpg\\\" width=\\\"120%\\\" \\/><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_gelie.jpg\\\" width=\\\"228\\\" height=\\\"162\\\" \\/><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 05:53:53', '2019-05-21 05:53:53'),
(38, 'App\\AECore\\Model\\User', 1, 'updated', '9', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><img src=\\\"images\\/decobake-dessert-buffet-1-min.png\\\" width=\\\"100%\\\" \\/><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_uffet-1-min.png\\\" width=\\\"100%\\\" \\/><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 05:54:19', '2019-05-21 05:54:19'),
(39, 'App\\AECore\\Model\\User', 1, 'updated', '9', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_uffet-1-min.png\\\" width=\\\"100%\\\" \\/><\\/p>\"}', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_uffet-1-min.png\\\" width=\\\"600\\\" height=\\\"464\\\" \\/><\\/p>\"}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 05:54:30', '2019-05-21 05:54:30'),
(40, 'App\\AECore\\Model\\User', 1, 'updated', '6', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><img src=\\\"images\\/wedding-decobake-1.jpg\\\" width=\\\"100%\\\" \\/><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_-decobake-1.jpg\\\" width=\\\"650\\\" height=\\\"500\\\" \\/><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 05:55:03', '2019-05-21 05:55:03'),
(41, 'App\\AECore\\Model\\User', 1, 'updated', '5', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><img src=\\\"images\\/corporate-clients-decobake.jpg\\\" width=\\\"100%\\\" \\/><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446739_ts-decobake.jpg\\\" width=\\\"650\\\" height=\\\"500\\\" \\/><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 05:55:27', '2019-05-21 05:55:27'),
(42, 'App\\AECore\\Model\\User', 1, 'updated', '3', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><code><\\/code><img src=\\\"images\\/banner.jpg\\\" width=\\\"100%\\\" \\/><\\/p>\",\"updated_by\":null}', '{\"html_template\":\"<p><code><\\/code><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446739_banner.jpg\\\" width=\\\"100%\\\" \\/><\\/p>\",\"updated_by\":1}', 'http://localhost/angeliq/public/admin/panels?', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 05:55:51', '2019-05-21 05:55:51'),
(43, 'App\\AECore\\Model\\User', 1, 'updated', '10', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_gelie.jpg\\\" width=\\\"228\\\" height=\\\"162\\\" \\/><\\/p>\"}', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_gelie.jpg\\\" width=\\\"250\\\" height=\\\"178\\\" \\/><\\/p>\"}', 'http://angeliq.com/admin/panels?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:22:39', '2019-05-21 06:22:39'),
(44, 'App\\AECore\\Model\\User', 1, 'updated', '10', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_gelie.jpg\\\" width=\\\"250\\\" height=\\\"178\\\" \\/><\\/p>\"}', '{\"html_template\":\"<p><img src=\\\"..\\/storage\\/adminuploads\\/actives\\/1558446740_gelie.jpg\\\" alt=\\\"\\\" \\/><\\/p>\"}', 'http://angeliq.com/admin/panels?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:27:16', '2019-05-21 06:27:16'),
(45, 'App\\AECore\\Model\\User', 1, 'created', '3', 'App\\AECore\\Model\\Page', '[]', '{\"name\":\"Cake\",\"url\":\"\\/cake\",\"title\":\"Cake\",\"description\":\"Cake page\",\"template\":\"default.blade.php\",\"javascripts\":\"common.js,header.js,table.js\",\"css\":\"bootstrap.min.css,common.css,header.css,table.css\",\"type\":\"Index\",\"template_html\":\"@extends(\'layouts.app\')\\n\\n@section(\'ae-css\')\\n@if (!empty($css) && count($css) > 0)\\n@foreach ($css as $style)\\n<link href=\\\"{{ asset(\'css\\/templates\\/\' . $style) }}\\\" rel=\\\"stylesheet\\\">\\n@endforeach\\n@endif\\n@endsection\\n\\n@section(\'content\')\\n<body>\\n    <header>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"row\\\">\\n                <div class=\\\"col-sm-4 logo\\\">\\n                    <span class=\\\"main\\\">\\n                        angeliq\\n                    <\\/span>\\n                    <span class=\\\"sub\\\">\\n                        Cakes, Breads & Butters\\n                    <\\/span>                \\n                <\\/div>\\n                <div class=\\\"col-sm-8\\\"> \\n                    <ul class=\\\"nav justify-content-end\\\">\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link active\\\" href=\\\"#\\\">About Us<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Cakes<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Breads<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Butters<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Contact<\\/a>\\n                        <\\/li>\\n                    <\\/ul>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/header>\\n    <main>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"section\\\">\\n                <div class=\\\"row\\\">\\n                    <div class=\\\"col-sm-12\\\">\\n                        <div class=\\\"tinyMce\\\">\\n                            {!! $Main !!}\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/main>\\n    <footer>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"section\\\">\\n                <div class=\\\"row\\\">\\n                    <div class=\\\"col-sm-6\\\">\\n                        <div class=\\\"row\\\">\\n                            <div class=\\\"col-sm-3 pr-0\\\">\\n                                {!! $FooterSection1Image !!}\\n                            <\\/div>\\n                            <div class=\\\"col-sm-9\\\">\\n                                {!! $FooterSection1 !!}\\n                            <\\/div>\\n                        <\\/div>\\n                    <\\/div>\\n                    <div class=\\\"col-sm-6\\\">\\n                        <div class=\\\"row\\\">\\n                            <div class=\\\"col-sm-3\\\">\\n                                <img src=\\\"images\\/b.png\\\" width=\\\"100%\\\"  style=\\\"border: 1px solid #fafafa; \\n                                     border-radius: 50%; background: #fafafa;\\\">\\n                            <\\/div>\\n                            <div class=\\\"col-sm-9\\\">\\n                                {!! $FooterContact !!}\\n                            <\\/div>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n\\n            <!-- Copyright -->\\n            <div class=\\\"footer-copyright text-center py-3\\\" style=\\\"color: #fff\\\">\\u00a9 2018 Copyright:\\n                <a href=\\\"#\\\" style=\\\"color: #fff; text-decoration: underline\\\">AE Services<\\/a>. All rights reserved.\\n            <\\/div>\\n            <!-- Copyright -->\\n        <\\/div>\\n    <\\/footer>\\n<\\/body>\\n@endsection\\n\\n@section(\'ae-scripts\')\\n@if (!empty($js) && count($js) > 0)\\n@foreach ($js as $scripts)\\n<script src=\\\"{{ asset(\'js\\/templates\\/\' . $scripts) }}\\\"><\\/script>\\n@endforeach\\n@endif\\n@endsection\",\"created_by\":1,\"id\":3}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(46, 'App\\AECore\\Model\\User', 1, 'created', '14', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"NEW\",\"html_template\":\"<p>Sample page<\\/p>\",\"type\":\"M\",\"created_by\":1,\"id\":14}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(47, 'App\\AECore\\Model\\User', 1, 'created', '15', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":3,\"tags\":\"Main\",\"panel_id\":14,\"id\":15}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(48, 'App\\AECore\\Model\\User', 1, 'created', '16', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":3,\"tags\":\"FooterSection1Image\",\"panel_id\":10,\"id\":16}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(49, 'App\\AECore\\Model\\User', 1, 'created', '17', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":3,\"tags\":\"FooterSection1\",\"panel_id\":11,\"id\":17}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(50, 'App\\AECore\\Model\\User', 1, 'created', '18', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":3,\"tags\":\"FooterContact\",\"panel_id\":12,\"id\":18}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(51, 'App\\AECore\\Model\\User', 1, 'created', '2', 'App\\AECore\\Model\\User', '[]', '{\"firstname\":\"Emman\",\"lastname\":\"Esguerra\",\"middlename\":\"E\",\"email\":\"emman@gmail.com\",\"password\":\"$2y$10$CNcExI9w7u.4Ylh48iH1ruxC4tmLtHYMc\\/pw5X45u76tU2wFnrvnW\",\"usertype\":\"Admin\",\"created_by\":1,\"id\":2}', 'http://angeliq.com/admin/users?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:44:00', '2019-05-21 06:44:00'),
(52, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\User', '{\"remember_token\":null,\"updated_by\":null}', '{\"remember_token\":\"RnTo0Osx5ZOXO5Nw8l1kJJQBDQTTyErTSu2gQuMUCHpvjfMRiDU4p17znwUT\",\"updated_by\":1}', 'http://angeliq.com/admin/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 06:44:19', '2019-05-21 06:44:19'),
(53, 'App\\AECore\\Model\\User', 2, 'created', '1', 'App\\AECore\\Model\\ContactUs', '[]', '{\"address\":\"57 Rebisco Rd, Quezon City, 1125 Metro Manila\",\"contact_person\":\"Angeliq\",\"telephone\":\"456-55-55\",\"mobile\":\"0919-5124-933\",\"email\":\"angeliq@gamil.com\",\"marker\":\"https:\\/\\/goo.gl\\/maps\\/FfaFsuejCBFHAv7R7\",\"created_by\":2,\"id\":1}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:01:02', '2019-05-21 07:01:02'),
(54, 'App\\AECore\\Model\\User', 2, 'created', '2', 'App\\AECore\\Model\\ContactUs', '[]', '{\"address\":\"test\",\"contact_person\":\"test\",\"telephone\":\"test\",\"mobile\":\"test\",\"email\":\"test\",\"marker\":\"test\",\"created_by\":2,\"id\":2}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:02:32', '2019-05-21 07:02:32'),
(55, 'App\\AECore\\Model\\User', 2, 'updated', '2', 'App\\AECore\\Model\\ContactUs', '{\"email\":\"test\",\"updated_by\":null}', '{\"email\":\"test@gamil.com\",\"updated_by\":2}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:03:08', '2019-05-21 07:03:08'),
(56, 'App\\AECore\\Model\\User', 2, 'created', '4', 'App\\AECore\\Model\\Page', '[]', '{\"name\":\"Contact\",\"url\":\"\\/contact\",\"title\":\"Contact\",\"description\":\"Contact\",\"template\":\"default.blade.php\",\"javascripts\":\"common.js,header.js,table.js\",\"css\":\"bootstrap.min.css,common.css,header.css,table.css\",\"type\":\"Index\",\"template_html\":\"@extends(\'layouts.app\')\\n\\n@section(\'ae-css\')\\n@if (!empty($css) && count($css) > 0)\\n@foreach ($css as $style)\\n<link href=\\\"{{ asset(\'css\\/templates\\/\' . $style) }}\\\" rel=\\\"stylesheet\\\">\\n@endforeach\\n@endif\\n@endsection\\n\\n@section(\'content\')\\n<body>\\n    <header>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"row\\\">\\n                <div class=\\\"col-sm-4 logo\\\">\\n                    <span class=\\\"main\\\">\\n                        angeliq\\n                    <\\/span>\\n                    <span class=\\\"sub\\\">\\n                        Cakes, Breads & Butters\\n                    <\\/span>                \\n                <\\/div>\\n                <div class=\\\"col-sm-8\\\"> \\n                    <ul class=\\\"nav justify-content-end\\\">\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link active\\\" href=\\\"#\\\">About Us<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Cakes<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Breads<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Butters<\\/a>\\n                        <\\/li>\\n                        <li class=\\\"nav-item\\\">\\n                            <a class=\\\"nav-link\\\" href=\\\"#\\\">Contact<\\/a>\\n                        <\\/li>\\n                    <\\/ul>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/header>\\n    <main>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"section\\\">\\n                <div class=\\\"row\\\">\\n                    <div class=\\\"col-sm-12\\\">\\n                        <div class=\\\"tinyMce\\\">\\n                            {!! $Main !!}\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n        <\\/div>\\n    <\\/main>\\n    <footer>\\n        <div class=\\\"container\\\">\\n            <div class=\\\"section\\\">\\n                <div class=\\\"row\\\">\\n                    <div class=\\\"col-sm-6\\\">\\n                        <div class=\\\"row\\\">\\n                            <div class=\\\"col-sm-3 pr-0\\\">\\n                                {!! $FooterSection1Image !!}\\n                            <\\/div>\\n                            <div class=\\\"col-sm-9\\\">\\n                                {!! $FooterSection1 !!}\\n                            <\\/div>\\n                        <\\/div>\\n                    <\\/div>\\n                    <div class=\\\"col-sm-6\\\">\\n                        <div class=\\\"row\\\">\\n                            <div class=\\\"col-sm-3\\\">\\n                                <img src=\\\"images\\/b.png\\\" width=\\\"100%\\\"  style=\\\"border: 1px solid #fafafa; \\n                                     border-radius: 50%; background: #fafafa;\\\">\\n                            <\\/div>\\n                            <div class=\\\"col-sm-9\\\">\\n                                {!! $FooterContact !!}\\n                            <\\/div>\\n                        <\\/div>\\n                    <\\/div>\\n                <\\/div>\\n            <\\/div>\\n\\n            <!-- Copyright -->\\n            <div class=\\\"footer-copyright text-center py-3\\\" style=\\\"color: #fff\\\">\\u00a9 2018 Copyright:\\n                <a href=\\\"#\\\" style=\\\"color: #fff; text-decoration: underline\\\">AE Services<\\/a>. All rights reserved.\\n            <\\/div>\\n            <!-- Copyright -->\\n        <\\/div>\\n    <\\/footer>\\n<\\/body>\\n@endsection\\n\\n@section(\'ae-scripts\')\\n@if (!empty($js) && count($js) > 0)\\n@foreach ($js as $scripts)\\n<script src=\\\"{{ asset(\'js\\/templates\\/\' . $scripts) }}\\\"><\\/script>\\n@endforeach\\n@endif\\n@endsection\",\"created_by\":2,\"id\":4}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:27:19', '2019-05-21 07:27:19'),
(57, 'App\\AECore\\Model\\User', 2, 'created', '19', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":4,\"tags\":\"Main\",\"panel_id\":1,\"id\":19}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:27:19', '2019-05-21 07:27:19'),
(58, 'App\\AECore\\Model\\User', 2, 'created', '20', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":4,\"tags\":\"FooterSection1Image\",\"panel_id\":10,\"id\":20}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:27:20', '2019-05-21 07:27:20'),
(59, 'App\\AECore\\Model\\User', 2, 'created', '21', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":4,\"tags\":\"FooterSection1\",\"panel_id\":11,\"id\":21}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:27:20', '2019-05-21 07:27:20'),
(60, 'App\\AECore\\Model\\User', 2, 'created', '22', 'App\\AECore\\Model\\PagePanel', '[]', '{\"page_id\":4,\"tags\":\"FooterContact\",\"panel_id\":12,\"id\":22}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-21 07:27:20', '2019-05-21 07:27:20'),
(61, 'App\\AECore\\Model\\User', 1, 'updated', '7', 'App\\AECore\\Model\\Panel', '{\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 20px 20px 0;\\\">WEDDINGS<br \\/><em>by Decobake<\\/em><br \\/><br \\/>At Decobake we believe in a truly personal approach. We recognize that wedding is such an important celebration which deserves a very special cake and that is why we go to great lengths to create the wedding cake of your dreams.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\"}', '{\"html_template\":\"<p style=\\\"text-align: center; margin-top: 89px; padding: 20px 20px 20px 0;\\\">WEDDINGS 2<br \\/><em>by Decobake<\\/em><br \\/><br \\/>At Decobake we believe in a truly personal approach. We recognize that wedding is such an important celebration which deserves a very special cake and that is why we go to great lengths to create the wedding cake of your dreams.<br \\/><br \\/><a style=\\\"color: #ef98c2;\\\" href=\\\"#\\\">read more<\\/a><\\/p>\"}', 'http://angeliq.com/admin/panels?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-22 03:47:54', '2019-05-22 03:47:54'),
(62, 'App\\AECore\\Model\\User', 1, 'updated', '4', 'App\\AECore\\Model\\Page', '{\"javascripts\":\"common.js,header.js,table.js\",\"updated_by\":null}', '{\"javascripts\":\"vue-ui.js\",\"updated_by\":1}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-22 05:42:03', '2019-05-22 05:42:03'),
(63, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\ContactUs', '{\"marker\":\"https:\\/\\/goo.gl\\/maps\\/FfaFsuejCBFHAv7R7\",\"updated_by\":null}', '{\"marker\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d30870.545101181604!2d121.0277761!3d14.7228717!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1cf558a82c824d1a!2sRebisco+Main+Novaliches!5e0!3m2!1sen!2sph!4v1558536689413!5m2!1sen!2sph\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen><\\/iframe>\",\"updated_by\":1}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-22 07:01:07', '2019-05-22 07:01:07'),
(64, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\ContactUs', '{\"email\":\"angeliq@gamil.com\",\"marker\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d30870.545101181604!2d121.0277761!3d14.7228717!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1cf558a82c824d1a!2sRebisco+Main+Novaliches!5e0!3m2!1sen!2sph!4v1558536689413!5m2!1sen!2sph\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen><\\/iframe>\"}', '{\"email\":\"angeliq@gamil.com2\",\"marker\":\"2\"}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-22 07:03:19', '2019-05-22 07:03:19'),
(65, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\ContactUs', '{\"marker\":\"2\"}', '{\"marker\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d30870.545101181604!2d121.0277761!3d14.7228717!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1cf558a82c824d1a!2sRebisco+Main+Novaliches!5e0!3m2!1sen!2sph!4v1558536689413!5m2!1sen!2sph\"}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-22 07:07:39', '2019-05-22 07:07:39'),
(66, 'App\\AECore\\Model\\User', 1, 'updated', '2', 'App\\AECore\\Model\\ContactUs', '{\"address\":\"test\",\"contact_person\":\"test\",\"telephone\":\"test\",\"mobile\":\"test\",\"marker\":\"test\",\"updated_by\":2}', '{\"address\":\"57 Rebisco Rd, Quezon City, 1125 Metro Manila 2\",\"contact_person\":\"Emman\",\"telephone\":\"524 98 98\",\"mobile\":\"09154267896\",\"marker\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3861.722959531043!2d121.01842495070332!3d14.557828881975682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c90f495ea927%3A0xe95d852c61d263b7!2sRobinson+Summit+Center!5e0!3m2!1sen!2sph!4v1558537899296!5m2!1sen!2sph\",\"updated_by\":1}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-22 07:11:55', '2019-05-22 07:11:55'),
(67, 'App\\AECore\\Model\\User', 1, 'created', '3', 'App\\AECore\\Model\\ContactUs', '[]', '{\"address\":\"test\",\"contact_person\":\"test\",\"telephone\":\"test\",\"mobile\":\"test\",\"email\":\"tes@test.test\",\"marker\":\"tes\",\"created_by\":1,\"id\":3}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', NULL, '2019-05-22 07:12:32', '2019-05-22 07:12:32'),
(68, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\ContactUs', '{\"marker\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d30870.545101181604!2d121.0277761!3d14.7228717!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1cf558a82c824d1a!2sRebisco+Main+Novaliches!5e0!3m2!1sen!2sph!4v1558536689413!5m2!1sen!2sph\"}', '{\"marker\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d30870.545101181604!2d121.0277761!3d14.7228717!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1cf558a82c824d1a!2sRebisco+Main+Novaliches!5e0!3m2!1sen!2sph!4v1559355436174!5m2!1sen!2sph\"}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 18:17:27', '2019-05-31 18:17:27'),
(69, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\User', '{\"remember_token\":\"RnTo0Osx5ZOXO5Nw8l1kJJQBDQTTyErTSu2gQuMUCHpvjfMRiDU4p17znwUT\"}', '{\"remember_token\":\"gajKsBlTCstM7AJG2GwM70JAdhRcze9rV2CEF6e7Fv0kUR4w4KBQH5AWeubb\"}', 'http://angeliq.com/admin/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 18:36:44', '2019-05-31 18:36:44'),
(70, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\User', '{\"remember_token\":\"gajKsBlTCstM7AJG2GwM70JAdhRcze9rV2CEF6e7Fv0kUR4w4KBQH5AWeubb\"}', '{\"remember_token\":\"fVIuOBNt68OxOlCA3MGvDk1GXeefbAKKrBmYZO8GkkVoZdChOX7DnLR8NnaV\"}', 'http://angeliq.com/admin/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 18:39:24', '2019-05-31 18:39:24'),
(71, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\User', '{\"remember_token\":\"fVIuOBNt68OxOlCA3MGvDk1GXeefbAKKrBmYZO8GkkVoZdChOX7DnLR8NnaV\"}', '{\"remember_token\":\"U3ltGGQq3QIVmeAH8vebfHnOsdImnrTLz4XGBd1e72R5ZnXOiHjH8UKZrJ5W\"}', 'http://angeliq.com/admin/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 18:42:32', '2019-05-31 18:42:32'),
(72, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\User', '{\"remember_token\":\"U3ltGGQq3QIVmeAH8vebfHnOsdImnrTLz4XGBd1e72R5ZnXOiHjH8UKZrJ5W\"}', '{\"remember_token\":\"VrpUjJPgAa794OBnw3ASPev7c6n87EgS8BZV7Uif78TSlri2PXKpz3ttnCVP\"}', 'http://angeliq.com/admin/logout?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 18:49:49', '2019-05-31 18:49:49'),
(73, 'App\\AECore\\Model\\User', 1, 'updated', '3', 'App\\AECore\\Model\\ContactUs', '{\"address\":\"test\",\"contact_person\":\"test\",\"telephone\":\"test\",\"mobile\":\"test\",\"email\":\"tes@test.test\",\"marker\":\"tes\",\"updated_by\":null}', '{\"address\":\"Marikina Heigths Rd 57 Sumulong Highway\",\"contact_person\":\"Emman\",\"telephone\":\"678 49 48\",\"mobile\":\"0919 5124 933\",\"email\":\"emman@gmail.com\",\"marker\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3858.8397649928597!2d121.0219031506756!3d14.721649589675131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b1050a05ee5f%3A0xb41a199643adcc68!2sRebisco+Rd%2C+Quezon+City%2C+Metro+Manila!5e0!3m2!1sen!2sph!4v1559361764106!5m2!1sen!2sph\",\"updated_by\":1}', 'http://angeliq.com/admin/contactus?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 20:53:01', '2019-05-31 20:53:01');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_id`, `auditable_type`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(74, 'App\\AECore\\Model\\User', 1, 'created', '5', 'App\\AECore\\Model\\Module', '[]', '{\"module_name\":\"Sliders\",\"description\":\"Maintain sliders viewable in the homepage\",\"permissions\":\"[\\\"create\\\",\\\"view\\\",\\\"update\\\",\\\"delete\\\"]\",\"link\":\"sliders.index\",\"icon\":\"fa-object-group\",\"created_by\":1,\"id\":5}', 'http://angeliq.com/admin/modules?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 20:58:41', '2019-05-31 20:58:41'),
(75, 'App\\AECore\\Model\\User', 1, 'updated', '5', 'App\\AECore\\Model\\Module', '{\"module_name\":null,\"description\":null,\"permissions\":null,\"link\":null,\"icon\":null,\"created_by\":null,\"id\":null}', '{\"module_name\":\"Sliders\",\"description\":\"Maintain sliders viewable in the homepage\",\"permissions\":\"[\\\"create-sliders\\\",\\\"view-sliders\\\",\\\"update-sliders\\\",\\\"delete-sliders\\\"]\",\"link\":\"sliders.index\",\"icon\":\"fa-object-group\",\"created_by\":1,\"id\":5}', 'http://angeliq.com/admin/modules?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 20:58:41', '2019-05-31 20:58:41'),
(76, 'App\\AECore\\Model\\User', 1, 'created', '15', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Sliders Main\",\"type\":\"M\",\"module_name\":\"\\\\App\\\\Http\\\\Controllers\\\\Sliders\\\\SlidersController\",\"fn_name\":\"main\",\"created_by\":1,\"id\":15}', 'http://angeliq.com/admin/modules?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 20:58:41', '2019-05-31 20:58:41'),
(77, 'App\\AECore\\Model\\User', 1, 'created', '16', 'App\\AECore\\Model\\Panel', '[]', '{\"name\":\"Sliders Panel\",\"type\":\"P\",\"module_name\":\"\\\\App\\\\Http\\\\Controllers\\\\Sliders\\\\SlidersController\",\"fn_name\":\"panel\",\"created_by\":1,\"id\":16}', 'http://angeliq.com/admin/modules?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 20:58:41', '2019-05-31 20:58:41'),
(78, 'App\\AECore\\Model\\User', 1, 'created', '1', 'App\\Model\\Slider', '[]', '{\"header\":\"Cake for everyone!\",\"description\":\"Everyone deserve a sweets\",\"image\":\"1559368119_cake1.jpg\",\"sequence\":\"1\",\"created_by\":1,\"id\":1}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:48:42', '2019-05-31 21:48:42'),
(79, 'App\\AECore\\Model\\User', 1, 'created', '2', 'App\\Model\\Slider', '[]', '{\"header\":\"Test 2\",\"description\":\"test 4\",\"image\":\"1559368207_cake2.png\",\"sequence\":\"2\",\"created_by\":1,\"id\":2}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:50:10', '2019-05-31 21:50:10'),
(80, 'App\\AECore\\Model\\User', 1, 'created', '3', 'App\\Model\\Slider', '[]', '{\"header\":\"test1\",\"description\":\"test3\",\"image\":\"1559368279_cake1.jpg\",\"sequence\":\"3\",\"created_by\":1,\"id\":3}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:51:22', '2019-05-31 21:51:22'),
(81, 'App\\AECore\\Model\\User', 1, 'created', '4', 'App\\Model\\Slider', '[]', '{\"header\":\"test4\",\"description\":\"test4\",\"image\":\"1559368356_cake3.jpg\",\"sequence\":\"3\",\"created_by\":1,\"id\":4}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:52:41', '2019-05-31 21:52:41'),
(82, 'App\\AECore\\Model\\User', 1, 'created', '5', 'App\\Model\\Slider', '[]', '{\"header\":\"3\",\"description\":\"3\",\"image\":\"1559368394_cake2.png\",\"sequence\":\"3\",\"created_by\":1,\"id\":5}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:53:17', '2019-05-31 21:53:17'),
(83, 'App\\AECore\\Model\\User', 1, 'created', '6', 'App\\Model\\Slider', '[]', '{\"header\":\"e\",\"description\":\"e\",\"image\":\"1559368476_cake2.png\",\"sequence\":\"4\",\"created_by\":1,\"id\":6}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:54:38', '2019-05-31 21:54:38'),
(84, 'App\\AECore\\Model\\User', 1, 'created', '7', 'App\\Model\\Slider', '[]', '{\"header\":\"3\",\"description\":\"3\",\"image\":\"1559368490_cake2.png\",\"sequence\":\"3\",\"created_by\":1,\"id\":7}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:54:51', '2019-05-31 21:54:51'),
(85, 'App\\AECore\\Model\\User', 1, 'created', '8', 'App\\Model\\Slider', '[]', '{\"header\":\"4\",\"description\":\"4\",\"image\":\"1559368531_cake3.jpg\",\"sequence\":\"4\",\"created_by\":1,\"id\":8}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:55:34', '2019-05-31 21:55:34'),
(86, 'App\\AECore\\Model\\User', 1, 'created', '9', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":9}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:01', '2019-05-31 21:56:01'),
(87, 'App\\AECore\\Model\\User', 1, 'created', '10', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":10}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:04', '2019-05-31 21:56:04'),
(88, 'App\\AECore\\Model\\User', 1, 'created', '11', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":11}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:08', '2019-05-31 21:56:08'),
(89, 'App\\AECore\\Model\\User', 1, 'created', '12', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":12}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:09', '2019-05-31 21:56:09'),
(90, 'App\\AECore\\Model\\User', 1, 'created', '13', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":13}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:09', '2019-05-31 21:56:09'),
(91, 'App\\AECore\\Model\\User', 1, 'created', '14', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":14}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:09', '2019-05-31 21:56:09'),
(92, 'App\\AECore\\Model\\User', 1, 'created', '15', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":15}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:09', '2019-05-31 21:56:09'),
(93, 'App\\AECore\\Model\\User', 1, 'created', '16', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":16}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:10', '2019-05-31 21:56:10'),
(94, 'App\\AECore\\Model\\User', 1, 'created', '17', 'App\\Model\\Slider', '[]', '{\"header\":\"1\",\"description\":\"1\",\"image\":\"1559368556_cake1.jpg\",\"sequence\":\"2\",\"created_by\":1,\"id\":17}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:56:11', '2019-05-31 21:56:11'),
(95, 'App\\AECore\\Model\\User', 1, 'created', '18', 'App\\Model\\Slider', '[]', '{\"header\":\"3\",\"description\":\"3\",\"image\":\"1559368671_cake2.png\",\"sequence\":\"3\",\"created_by\":1,\"id\":18}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 21:57:55', '2019-05-31 21:57:55'),
(96, 'App\\AECore\\Model\\User', 1, 'created', '19', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559368902_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":19}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:01:44', '2019-05-31 22:01:44'),
(97, 'App\\AECore\\Model\\User', 1, 'created', '20', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369114_cake3.jpg\",\"sequence\":null,\"created_by\":1,\"id\":20}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:05:16', '2019-05-31 22:05:16'),
(98, 'App\\AECore\\Model\\User', 1, 'created', '21', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369138_cake2.png\",\"sequence\":null,\"created_by\":1,\"id\":21}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:05:40', '2019-05-31 22:05:40'),
(99, 'App\\AECore\\Model\\User', 1, 'created', '22', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369138_cake2.png\",\"sequence\":null,\"created_by\":1,\"id\":22}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:05:41', '2019-05-31 22:05:41'),
(100, 'App\\AECore\\Model\\User', 1, 'created', '23', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369138_cake2.png\",\"sequence\":null,\"created_by\":1,\"id\":23}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:05:41', '2019-05-31 22:05:41'),
(101, 'App\\AECore\\Model\\User', 1, 'created', '24', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":24}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:12', '2019-05-31 22:06:12'),
(102, 'App\\AECore\\Model\\User', 1, 'created', '25', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":25}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:13', '2019-05-31 22:06:13'),
(103, 'App\\AECore\\Model\\User', 1, 'created', '26', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":26}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:14', '2019-05-31 22:06:14'),
(104, 'App\\AECore\\Model\\User', 1, 'created', '27', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":27}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:14', '2019-05-31 22:06:14'),
(105, 'App\\AECore\\Model\\User', 1, 'created', '28', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":28}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:14', '2019-05-31 22:06:14'),
(106, 'App\\AECore\\Model\\User', 1, 'created', '29', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":29}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:14', '2019-05-31 22:06:14'),
(107, 'App\\AECore\\Model\\User', 1, 'created', '30', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":30}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:14', '2019-05-31 22:06:14'),
(108, 'App\\AECore\\Model\\User', 1, 'created', '31', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369169_cake1.jpg\",\"sequence\":null,\"created_by\":1,\"id\":31}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:06:14', '2019-05-31 22:06:14'),
(109, 'App\\AECore\\Model\\User', 1, 'created', '32', 'App\\Model\\Slider', '[]', '{\"header\":null,\"description\":null,\"image\":\"1559369263_cake2.png\",\"sequence\":null,\"created_by\":1,\"id\":32}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-05-31 22:07:49', '2019-05-31 22:07:49'),
(110, 'App\\AECore\\Model\\User', 1, 'created', '1', 'App\\Model\\Slider', '[]', '{\"header\":\"tes 1\",\"description\":\"test\",\"image\":\"1559475714_cake2.png\",\"sequence\":\"1\",\"year\":2019,\"month\":6,\"created_by\":1,\"id\":1}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 03:41:58', '2019-06-02 03:41:58'),
(111, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\Model\\Slider', '{\"image\":\"1559475714_cake2.png\",\"updated_by\":null}', '{\"image\":\"1559477050_cake3.jpg\",\"updated_by\":1}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:04:51', '2019-06-02 04:04:51'),
(112, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\Model\\Slider', '{\"header\":\"tes 1\",\"image\":\"1559477050_cake3.jpg\"}', '{\"header\":\"tes 2\",\"image\":\"1559477120_cake2.png\"}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:05:24', '2019-06-02 04:05:24'),
(113, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\Model\\Slider', '{\"image\":\"1559477120_cake2.png\"}', '{\"image\":\"1559477450_cake1.jpg\"}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:10:52', '2019-06-02 04:10:52'),
(114, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\Model\\Slider', '{\"header\":\"tes 2\",\"image\":\"1559477450_cake1.jpg\"}', '{\"header\":\"tes 4\",\"image\":\"1559477476_cake2.png\"}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:11:20', '2019-06-02 04:11:20'),
(115, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\Model\\Slider', '{\"image\":\"1559477476_cake2.png\"}', '{\"image\":\"1559477522_cake1.jpg\"}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:12:05', '2019-06-02 04:12:05'),
(116, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\Model\\Slider', '{\"header\":\"tes 4\",\"image\":\"1559477522_cake1.jpg\"}', '{\"header\":\"tes 5\",\"image\":\"1559477534_cake3.jpg\"}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:12:20', '2019-06-02 04:12:20'),
(117, 'App\\AECore\\Model\\User', 1, 'created', '2', 'App\\Model\\Slider', '[]', '{\"header\":\"test 2\",\"description\":\"test 2\",\"image\":\"1559477553_cake2.png\",\"sequence\":null,\"year\":2019,\"month\":6,\"created_by\":1,\"id\":2}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:12:35', '2019-06-02 04:12:35'),
(118, 'App\\AECore\\Model\\User', 1, 'deleted', '2', 'App\\Model\\Slider', '{\"id\":2,\"header\":\"test 2\",\"description\":\"test 2\",\"image\":\"1559477553_cake2.png\",\"year\":\"2019\",\"month\":\"6\",\"sequence\":null,\"created_by\":1,\"updated_by\":null,\"deleted_by\":null}', '[]', 'http://angeliq.com/admin/sliders/2?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:14:36', '2019-06-02 04:14:36'),
(119, 'App\\AECore\\Model\\User', 1, 'deleted', '1', 'App\\Model\\Slider', '{\"id\":1,\"header\":\"tes 5\",\"description\":\"test\",\"image\":\"1559477534_cake3.jpg\",\"year\":\"2019\",\"month\":\"6\",\"sequence\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://angeliq.com/admin/sliders/1?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 04:14:43', '2019-06-02 04:14:43'),
(120, 'App\\AECore\\Model\\User', 1, 'created', '3', 'App\\Model\\Slider', '[]', '{\"header\":\"Cakes\",\"description\":\"Fresh from Farms!\",\"image\":\"1559483296_cake3.jpg\",\"sequence\":\"1\",\"year\":2019,\"month\":6,\"created_by\":1,\"id\":3}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 05:48:19', '2019-06-02 05:48:19'),
(121, 'App\\AECore\\Model\\User', 1, 'updated', '3', 'App\\Model\\Slider', '{\"image\":\"1559483296_cake3.jpg\",\"updated_by\":null}', '{\"image\":\"1559483322_cake2.png\",\"updated_by\":1}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 05:48:47', '2019-06-02 05:48:47'),
(122, 'App\\AECore\\Model\\User', 1, 'created', '4', 'App\\Model\\Slider', '[]', '{\"header\":\"Blue Berry\",\"description\":\"Sample Cake Made By Me\",\"image\":\"1559483346_cake3.jpg\",\"sequence\":null,\"year\":2019,\"month\":6,\"created_by\":1,\"id\":4}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 05:49:13', '2019-06-02 05:49:13'),
(123, 'App\\AECore\\Model\\User', 1, 'created', '5', 'App\\Model\\Slider', '[]', '{\"header\":\"Last Sample\",\"description\":\":)\",\"image\":\"1559483370_cake1.jpg\",\"sequence\":null,\"year\":2019,\"month\":6,\"created_by\":1,\"id\":5}', 'http://angeliq.com/admin/sliders?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 05:49:32', '2019-06-02 05:49:32'),
(124, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\PagePanel', '{\"panel_id\":3}', '{\"panel_id\":16}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 05:51:17', '2019-06-02 05:51:17'),
(125, 'App\\AECore\\Model\\User', 1, 'updated', '1', 'App\\AECore\\Model\\Page', '{\"javascripts\":\"common.js,header.js,table.js\"}', '{\"javascripts\":\"common.js,header.js,table.js,vue-ui.js\"}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 07:02:05', '2019-06-02 07:02:05'),
(126, 'App\\AECore\\Model\\User', 1, 'updated', '2', 'App\\AECore\\Model\\Page', '{\"css\":\"bootstrap.min.css,common.css,Damion-Regular.ttf,header.css,table.css\",\"updated_by\":null}', '{\"css\":\"bootstrap.min.css,common.css,header.css,table.css\",\"updated_by\":1}', 'http://angeliq.com/admin/pages?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, '2019-06-02 07:46:59', '2019-06-02 07:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marker` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `address`, `contact_person`, `telephone`, `mobile`, `email`, `marker`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '57 Rebisco Rd, Quezon City, 1125 Metro Manila', 'Angeliq', '456-55-55', '0919-5124-933', 'angeliq@gamil.com2', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d30870.545101181604!2d121.0277761!3d14.7228717!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1cf558a82c824d1a!2sRebisco+Main+Novaliches!5e0!3m2!1sen!2sph!4v1559355436174!5m2!1sen!2sph', 2, 1, NULL, NULL, '2019-05-21 07:01:02', '2019-05-31 18:17:27'),
(2, '57 Rebisco Rd, Quezon City, 1125 Metro Manila 2', 'Emman', '524 98 98', '09154267896', 'test@gamil.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.722959531043!2d121.01842495070332!3d14.557828881975682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c90f495ea927%3A0xe95d852c61d263b7!2sRobinson+Summit+Center!5e0!3m2!1sen!2sph!4v1558537899296!5m2!1sen!2sph', 2, 1, NULL, NULL, '2019-05-21 07:02:32', '2019-05-22 07:11:55'),
(3, 'Marikina Heigths Rd 57 Sumulong Highway', 'Emman', '678 49 48', '0919 5124 933', 'emman@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3858.8397649928597!2d121.0219031506756!3d14.721649589675131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b1050a05ee5f%3A0xb41a199643adcc68!2sRebisco+Rd%2C+Quezon+City%2C+Metro+Manila!5e0!3m2!1sen!2sph!4v1559361764106!5m2!1sen!2sph', 1, 1, NULL, NULL, '2019-05-22 07:12:32', '2019-05-31 20:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_store_hours`
--

CREATE TABLE `contact_us_store_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_us_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us_store_hours`
--

INSERT INTO `contact_us_store_hours` (`id`, `contact_us_id`, `day`, `start`, `end`) VALUES
(1, 1, 'Monday - Wednesday - Friday', '07 am', '05 pm'),
(3, 2, 'MWF', '07:00', '16:00'),
(7, 1, 'Tuesday - Thursday', '08 am', '06 pm'),
(8, 1, 'Saturday - Sunday', '08 am', '01 pm'),
(9, 2, 'TTH', '08:00', '17:00'),
(10, 2, 'SS', '08:00', '13:00'),
(22, 3, 'Monday', '08:00 am', '04:00 pm'),
(23, 3, 'Tuesday', '09:00 am', '05:00 pm'),
(24, 3, 'Wednesday', '08:0 am', '05:00 pm'),
(25, 3, 'Thursday', '06:00 pm', '03:00 am'),
(26, 3, 'Friday', '06:00 pm', '03:00 am'),
(27, 3, 'Saturday', '07:00 pm', '06:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_17_062746_create_audits_table', 1),
(4, '2018_06_17_063756_create_sessions_table', 1),
(5, '2018_06_17_065409_create_systemconfig_table', 1),
(6, '2018_06_17_130922_create_modules_table', 1),
(7, '2018_06_18_140530_create_user_permissions_table', 1),
(8, '2018_06_25_115943_create_pages_table', 1),
(9, '2018_07_09_141921_create_panels_table', 1),
(10, '2018_07_09_142037_create_page_panels_table', 1),
(11, '2018_09_03_071525_create_contact_us_table', 1),
(12, '2018_09_03_080231_create_contact_us_store_hours_table', 1),
(13, '2018_09_08_043246_create_sliders_table', 1),
(14, '2018_09_09_014922_create_product_categories_table', 1),
(15, '2018_09_09_014950_create_products_table', 1),
(16, '2018_09_09_020400_create_product_images_table', 1),
(17, '2018_09_09_020508_create_product_relateds_table', 1),
(21, '2019_06_02_161429_create_navigations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `description`, `permissions`, `link`, `icon`, `created_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Main Contents', 'Manage the main contents of the website', '[\"create-maincontents\",\"view-maincontents\",\"update-maincontents\",\"delete-maincontents\"]', 'maincontents.index', 'fa-book', 1, NULL, NULL, '2019-05-18 20:00:13', NULL),
(2, 'Panels', 'Manage the panels of the website', '[\"create-panels\",\"view-panels\",\"update-panels\",\"delete-panels\"]', 'panels.index', 'fa-sticky-note', 1, NULL, NULL, '2019-05-18 20:00:13', NULL),
(3, 'Contact Us', 'Manage the settings in the Contact Us page', '[\"view-contact\",\"update-contact\"]', 'contactus.index', 'fa-phone-square', 1, NULL, NULL, '2019-05-18 20:00:13', NULL),
(4, 'Uploaded Files', 'Manage the uploaded files on the website (except files uploaded thru different modules)', '[\"create-files\",\"view-files\",\"update-panels\",\"delete-files\"]', 'files.index', 'fa-archive', 1, NULL, NULL, '2019-05-18 20:00:13', NULL),
(5, 'Sliders', 'Maintain sliders viewable in the homepage', '[\"create-sliders\",\"view-sliders\",\"update-sliders\",\"delete-sliders\"]', 'sliders.index', 'fa-object-group', 1, NULL, NULL, '2019-05-31 20:58:41', '2019-05-31 20:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `lft` int(10) UNSIGNED NOT NULL,
  `rgt` int(10) UNSIGNED NOT NULL,
  `lvl` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `javascripts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_html` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `title`, `description`, `javascripts`, `css`, `template`, `type`, `template_html`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '/', 'Homepage', 'Sample Homepage', 'common.js,header.js,table.js,vue-ui.js', 'common.css,header.css,table.css,bootstrap.min.css', 'index.blade.php', 'Index', '@extends(\'layouts.app\')\r\n@section(\'content\')\r\n<body>\r\n    <header>Header</header>\r\n    <main>Main</main>\r\n    <footer>Footer</footer>\r\n</body>\r\n@endsection', 1, 1, NULL, NULL, '2019-05-18 20:04:42', '2019-06-02 07:02:05'),
(2, 'About Us', '/about-us', 'About Us', 'Sample About Us Page', 'common.js,header.js,table.js', 'bootstrap.min.css,common.css,header.css,table.css', 'default.blade.php', 'Index', '@extends(\'layouts.app\')\n\n@section(\'ae-css\')\n@if (!empty($css) && count($css) > 0)\n@foreach ($css as $style)\n<link href=\"{{ asset(\'css/templates/\' . $style) }}\" rel=\"stylesheet\">\n@endforeach\n@endif\n@endsection\n\n@section(\'content\')\n<body>\n    <header>\n        <div class=\"container\">\n            <div class=\"row\">\n                <div class=\"col-sm-4 logo\">\n                    <span class=\"main\">\n                        angeliq\n                    </span>\n                    <span class=\"sub\">\n                        Cakes, Breads & Butters\n                    </span>                \n                </div>\n                <div class=\"col-sm-8\"> \n                    <ul class=\"nav justify-content-end\">\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link active\" href=\"#\">About Us</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Cakes</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Breads</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Butters</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Contact</a>\n                        </li>\n                    </ul>\n                </div>\n            </div>\n        </div>\n    </header>\n    <main>\n        <div class=\"container\">\n            <div class=\"section\">\n                <div class=\"row\">\n                    <h1>About Us</h1>\n                    <p>\n                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n                    </p>\n                    <img src=\"images/corporate-clients-decobake.jpg\" width=\"100%\">\n                </div>\n            </div>\n        </div>\n    </main>\n    <footer>\n        <div class=\"container\">\n            <div class=\"section\">\n                <div class=\"row\">\n                    <div class=\"col-sm-6\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-3\">\n                                <img src=\"images/gelie.jpg\" width=\"120%\">\n                            </div>\n                            <div class=\"col-sm-9\">\n                                <h3>Meet Gelie</h3>\n                                <p style=\"text-align: justify\">\n                                    I\'m Gelie. I am the Creative Director of Angeliq. \n                                    I’m a self taught baker, trained in the comfort of my parents\' \n                                    kitchen, turned professional baker. <br><br>\n\n                                    I\'d like to thank you for visiting our website. \n                                    Decobake will custom-design any cake or cupcakes \n                                    to your specifications. <br><br>\n\n                                    We\'d love to hear from you so feel free to contact us!<br><br>\n\n                                    Regards,<br>\n                                    Gelie\n                                </p>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-sm-6\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-3\">\n                                <img src=\"images/b.png\" width=\"100%\"  style=\"border: 1px solid #fafafa; \n                                     border-radius: 50%; background: #fafafa;\">\n                            </div>\n                            <div class=\"col-sm-9\">\n                                <h3>Contact Us</h3>\n                                <p style=\"text-align: justify\">\n                                    We try very hard to respond to each email we receive. \n                                    Please forgive us if, for some reason, we are unable to get \n                                    back to you in a timely manner. <br><br>\n\n                                    We are here to help!<br><br>\n\n                                    Phone: +63 2 2140001<br>\n                                    Mobile: +63 9983070001<br>\n                                    Viber: +63 9062520001<br>\n                                    Email: info@angeliq.com.ph<br>\n                                    Facebook: https://www.facebook.com/Angeliq\n                                </p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n\n            <!-- Copyright -->\n            <div class=\"footer-copyright text-center py-3\" style=\"color: #fff\">© 2018 Copyright:\n                <a href=\"#\" style=\"color: #fff; text-decoration: underline\">AE Services</a>. All rights reserved.\n            </div>\n            <!-- Copyright -->\n        </div>\n    </footer>\n</body>\n@endsection\n\n@section(\'ae-scripts\')\n@if (!empty($js) && count($js) > 0)\n@foreach ($js as $scripts)\n<script src=\"{{ asset(\'js/templates/\' . $scripts) }}\"></script>\n@endforeach\n@endif\n@endsection', 1, 1, NULL, NULL, '2019-05-19 03:27:23', '2019-06-02 07:46:59'),
(3, 'Cake', '/cake', 'Cake', 'Cake page', 'common.js,header.js,table.js', 'bootstrap.min.css,common.css,header.css,table.css', 'default.blade.php', 'Index', '@extends(\'layouts.app\')\n\n@section(\'ae-css\')\n@if (!empty($css) && count($css) > 0)\n@foreach ($css as $style)\n<link href=\"{{ asset(\'css/templates/\' . $style) }}\" rel=\"stylesheet\">\n@endforeach\n@endif\n@endsection\n\n@section(\'content\')\n<body>\n    <header>\n        <div class=\"container\">\n            <div class=\"row\">\n                <div class=\"col-sm-4 logo\">\n                    <span class=\"main\">\n                        angeliq\n                    </span>\n                    <span class=\"sub\">\n                        Cakes, Breads & Butters\n                    </span>                \n                </div>\n                <div class=\"col-sm-8\"> \n                    <ul class=\"nav justify-content-end\">\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link active\" href=\"#\">About Us</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Cakes</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Breads</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Butters</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Contact</a>\n                        </li>\n                    </ul>\n                </div>\n            </div>\n        </div>\n    </header>\n    <main>\n        <div class=\"container\">\n            <div class=\"section\">\n                <div class=\"row\">\n                    <div class=\"col-sm-12\">\n                        <div class=\"tinyMce\">\n                            {!! $Main !!}\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </main>\n    <footer>\n        <div class=\"container\">\n            <div class=\"section\">\n                <div class=\"row\">\n                    <div class=\"col-sm-6\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-3 pr-0\">\n                                {!! $FooterSection1Image !!}\n                            </div>\n                            <div class=\"col-sm-9\">\n                                {!! $FooterSection1 !!}\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-sm-6\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-3\">\n                                <img src=\"images/b.png\" width=\"100%\"  style=\"border: 1px solid #fafafa; \n                                     border-radius: 50%; background: #fafafa;\">\n                            </div>\n                            <div class=\"col-sm-9\">\n                                {!! $FooterContact !!}\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n\n            <!-- Copyright -->\n            <div class=\"footer-copyright text-center py-3\" style=\"color: #fff\">© 2018 Copyright:\n                <a href=\"#\" style=\"color: #fff; text-decoration: underline\">AE Services</a>. All rights reserved.\n            </div>\n            <!-- Copyright -->\n        </div>\n    </footer>\n</body>\n@endsection\n\n@section(\'ae-scripts\')\n@if (!empty($js) && count($js) > 0)\n@foreach ($js as $scripts)\n<script src=\"{{ asset(\'js/templates/\' . $scripts) }}\"></script>\n@endforeach\n@endif\n@endsection', 1, NULL, NULL, NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(4, 'Contact', '/contact', 'Contact', 'Contact', 'vue-ui.js', 'bootstrap.min.css,common.css,header.css,table.css', 'default.blade.php', 'Index', '@extends(\'layouts.app\')\n\n@section(\'ae-css\')\n@if (!empty($css) && count($css) > 0)\n@foreach ($css as $style)\n<link href=\"{{ asset(\'css/templates/\' . $style) }}\" rel=\"stylesheet\">\n@endforeach\n@endif\n@endsection\n\n@section(\'content\')\n<body>\n    <header>\n        <div class=\"container\">\n            <div class=\"row\">\n                <div class=\"col-sm-4 logo\">\n                    <span class=\"main\">\n                        angeliq\n                    </span>\n                    <span class=\"sub\">\n                        Cakes, Breads & Butters\n                    </span>                \n                </div>\n                <div class=\"col-sm-8\"> \n                    <ul class=\"nav justify-content-end\">\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link active\" href=\"#\">About Us</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Cakes</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Breads</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Butters</a>\n                        </li>\n                        <li class=\"nav-item\">\n                            <a class=\"nav-link\" href=\"#\">Contact</a>\n                        </li>\n                    </ul>\n                </div>\n            </div>\n        </div>\n    </header>\n    <main>\n        <div class=\"container\">\n            <div class=\"section\">\n                <div class=\"row\">\n                    <div class=\"col-sm-12\">\n                        <div class=\"tinyMce\">\n                            {!! $Main !!}\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </main>\n    <footer>\n        <div class=\"container\">\n            <div class=\"section\">\n                <div class=\"row\">\n                    <div class=\"col-sm-6\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-3 pr-0\">\n                                {!! $FooterSection1Image !!}\n                            </div>\n                            <div class=\"col-sm-9\">\n                                {!! $FooterSection1 !!}\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-sm-6\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-3\">\n                                <img src=\"images/b.png\" width=\"100%\"  style=\"border: 1px solid #fafafa; \n                                     border-radius: 50%; background: #fafafa;\">\n                            </div>\n                            <div class=\"col-sm-9\">\n                                {!! $FooterContact !!}\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n\n            <!-- Copyright -->\n            <div class=\"footer-copyright text-center py-3\" style=\"color: #fff\">© 2018 Copyright:\n                <a href=\"#\" style=\"color: #fff; text-decoration: underline\">AE Services</a>. All rights reserved.\n            </div>\n            <!-- Copyright -->\n        </div>\n    </footer>\n</body>\n@endsection\n\n@section(\'ae-scripts\')\n@if (!empty($js) && count($js) > 0)\n@foreach ($js as $scripts)\n<script src=\"{{ asset(\'js/templates/\' . $scripts) }}\"></script>\n@endforeach\n@endif\n@endsection', 2, 1, NULL, NULL, '2019-05-21 07:27:19', '2019-05-22 05:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `page_panels`
--

CREATE TABLE `page_panels` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `panel_id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_panels`
--

INSERT INTO `page_panels` (`id`, `page_id`, `panel_id`, `tags`) VALUES
(1, 1, 16, 'Banner'),
(2, 1, 4, 'Section1'),
(3, 1, 5, 'Section1Image'),
(4, 1, 6, 'Section2Image'),
(5, 1, 7, 'Section2'),
(6, 1, 8, 'Section3'),
(7, 1, 9, 'Section3Image'),
(8, 1, 10, 'FooterSection1Image'),
(9, 1, 11, 'FooterSection1'),
(10, 1, 12, 'FooterContact'),
(11, 2, 13, 'Main'),
(12, 2, 10, 'FooterSection1Image'),
(13, 2, 11, 'FooterSection1'),
(14, 2, 12, 'FooterContact'),
(15, 3, 14, 'Main'),
(16, 3, 10, 'FooterSection1Image'),
(17, 3, 11, 'FooterSection1'),
(18, 3, 12, 'FooterContact'),
(19, 4, 1, 'Main'),
(20, 4, 10, 'FooterSection1Image'),
(21, 4, 11, 'FooterSection1'),
(22, 4, 12, 'FooterContact');

-- --------------------------------------------------------

--
-- Table structure for table `panels`
--

CREATE TABLE `panels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_template` text COLLATE utf8mb4_unicode_ci,
  `type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fn_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `panels`
--

INSERT INTO `panels` (`id`, `name`, `html_template`, `type`, `module_name`, `fn_name`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us main', NULL, 'M', '\\App\\Http\\Controllers\\ContactUs\\ContactUsController', 'main', 1, NULL, NULL, NULL, '2019-05-18 20:00:13', NULL),
(2, 'Contact Us Panel', NULL, 'P', '\\App\\Http\\Controllers\\ContactUs\\ContactUsController', 'panel', 1, NULL, NULL, NULL, '2019-05-18 20:00:13', NULL),
(3, 'Homepage Banner', '<p><code></code><img src=\"../storage/adminuploads/actives/1558446739_banner.jpg\" width=\"100%\" /></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:42', '2019-05-21 05:55:51'),
(4, 'Corporate Panel', '<p style=\"margin-top: 89px; padding: 20px 0px 20px 20px; text-align: center;\">CORPORATE<br /><em>Special treats for the industry</em><br />Angeliq can customize your sweet treats for product launches, corporate gifts, company events, corporate parties and many more. Corporate cupcakes and cookies are one of our specialties and our client list includes Philippines&rsquo;s most respected companies.<br /><br /><a style=\"color: #ef98c2;\" href=\"#\">read more</a></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:42', '2019-05-19 04:50:35'),
(5, 'Corporate Panel\'s Image', '<p><img src=\"../storage/adminuploads/actives/1558446739_ts-decobake.jpg\" width=\"650\" height=\"500\" /></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:42', '2019-05-21 05:55:27'),
(6, 'Wedding Panel\'s Image', '<p><img src=\"../storage/adminuploads/actives/1558446740_-decobake-1.jpg\" width=\"650\" height=\"500\" /></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:43', '2019-05-21 05:55:03'),
(7, 'Wedding Panel', '<p style=\"text-align: center; margin-top: 89px; padding: 20px 20px 20px 0;\">WEDDINGS 2<br /><em>by Decobake</em><br /><br />At Decobake we believe in a truly personal approach. We recognize that wedding is such an important celebration which deserves a very special cake and that is why we go to great lengths to create the wedding cake of your dreams.<br /><br /><a style=\"color: #ef98c2;\" href=\"#\">read more</a></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:43', '2019-05-22 03:47:54'),
(8, 'Dessert Panel', '<p style=\"text-align: center; margin-top: 89px; padding: 20px 0 20px 20px;\">DESSERT BUFFET<br /><em>Tailor-made just for you</em><br /><br />Let Decobake help you transform your event into dessert heaven with one of our magical dessert tables.<br /><br /><a style=\"color: #ef98c2;\" href=\"#\">read more</a></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:43', '2019-05-19 04:51:28'),
(9, 'Dessert Panel\'s Image', '<p><img src=\"../storage/adminuploads/actives/1558446740_uffet-1-min.png\" width=\"600\" height=\"464\" /></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:43', '2019-05-21 05:54:30'),
(10, 'Footer\'s Image', '<p><img src=\"../storage/adminuploads/actives/1558446740_gelie.jpg\" alt=\"\" /></p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:43', '2019-05-21 06:27:16'),
(11, 'Footer\'s About me', '<h3>Meet Gelie</h3>\n<p style=\"text-align: justify;\">I\'m Gelie. I am the Creative Director of Angeliq. I&rsquo;m a self taught baker, trained in the comfort of my parents\' kitchen, turned professional baker. <br /><br />I\'d like to thank you for visiting our website. Decobake will custom-design any cake or cupcakes to your specifications. <br /><br />We\'d love to hear from you so feel free to contact us!<br /><br />Regards,<br />Gelie&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:43', '2019-05-19 04:52:19'),
(12, 'Footer\'s Contact Us', '<h3>Contact Us</h3>\n<p style=\"text-align: justify;\">We try very hard to respond to each email we receive. Please forgive us if, for some reason, we are unable to get back to you in a timely manner. <br /><br />We are here to help!<br /><br />Phone: +63 2 2140001<br />Mobile: +63 9983070001<br />Viber: +63 9062520001<br />Email: info@angeliq.com.ph<br />Facebook: https://www.facebook.com/Angeliq&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'P', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:47:44', '2019-05-19 04:52:27'),
(13, 'About Us', '<h1>About Us</h1>\n<p><img src=\"../storage/adminuploads/actives/1558446740_tch_header1.png\" width=\"100%\" /></p>\n<p><a href=\"#\">Lorem Ipsum</a> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h2>Concept</h2>\n<p>Donec dignissim, <strong>ante in sodales sodales</strong>, nulla nisi lobortis lorem, nec tincidunt elit ligula et purus. Duis maximus pretium tempus. Donec convallis leo eu leo sagittis posuere. Donec quis dapibus leo, ac luctus dolor. In in viverra arcu, eget tempor purus. Quisque sem nibh, mattis nec tellus nec, ultricies tempus ipsum. Nullam non quam odio. Mauris mattis quam sed suscipit placerat.</p>\n<h3>Principle</h3>\n<p><em>Etiam fermentum tellus sed posuere volutpat</em>. Nunc nunc ipsum, auctor at venenatis id, fringilla vitae odio. In ut semper enim. Duis eu posuere lorem. Donec id sagittis sem. Nam odio enim, sollicitudin ac scelerisque eget, efficitur ut sem. Etiam consequat at orci vel mollis.</p>\n<p>Sed eu ante a diam volutpat condimentum. Fusce aliquam eleifend mi. Ut fermentum a lectus ac elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur, lorem tempus blandit varius, elit magna iaculis enim, nec faucibus risus purus et lorem. Vivamus tincidunt sapien turpis, nec efficitur neque condimentum sed. Sed sagittis sem sed nulla accumsan blandit. Ut tortor erat, venenatis et volutpat congue, dapibus ac dolor. Phasellus quis felis quis tortor tincidunt blandit. Praesent mauris tortor, vestibulum in nisl sed, mattis condimentum eros.</p>\n<h4>Dos and Dont\'s in H4</h4>\n<ul>\n<li><a href=\"#\">Donec bibendum</a> elit id libero finibus dignissim</li>\n<li>Vivamus placerat mi at tortor efficitur bibendum</li>\n<li>Curabitur suscipit venenatis odio nec porttitor</li>\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh</li>\n<li>In sed accumsan ipsum, vel semper mauris</li>\n</ul>\n<h5>Dos and Dont\'s in H5</h5>\n<ol>\n<li>Donec bibendum elit id libero finibus dignissim</li>\n<li>Vivamus placerat mi at tortor efficitur bibendum</li>\n<li>Curabitur suscipit venenatis odio nec porttitor</li>\n<li>Praesent velit velit, ultricies pretium efficitur a, lobortis eget mauris. Aliquam erat volutpat. Fusce in facilisis nibh</li>\n<li>In sed accumsan ipsum, vel semper mauris</li>\n</ol>\n<h6>Events in h6</h6>\n<table class=\"ae-table\">\n<tbody>\n<tr>\n<th>Head 1</th>\n<th>Head 2</th>\n<th>Head 3</th>\n<th>Head 4</th>\n<th>Head 5</th>\n<th>Head 6</th>\n</tr>\n<tr>\n<td><a href=\"#\">Content 1</a></td>\n<td>Content 2</td>\n<td>Content 3</td>\n<td>Content 4</td>\n<td>Content 5</td>\n<td>Content 6</td>\n</tr>\n<tr>\n<td><a href=\"#\">Content 1</a></td>\n<td>Content 2</td>\n<td>Content 3</td>\n<td>Content 4</td>\n<td>Content 5</td>\n<td>Content 6</td>\n</tr>\n<tr>\n<td><a href=\"#\">Content 1</a></td>\n<td>Content 2</td>\n<td>Content 3</td>\n<td>Content 4</td>\n<td>Content 5</td>\n<td>Content 6</td>\n</tr>\n<tr>\n<td><a href=\"#\">Content 1</a></td>\n<td>Content 2</td>\n<td>Content 3</td>\n<td>Content 4</td>\n<td>Content 5</td>\n<td>Content 6</td>\n</tr>\n<tr>\n<td><a href=\"#\">Content 1</a></td>\n<td>Content 2</td>\n<td>Content 3</td>\n<td>Content 4</td>\n<td>Content 5</td>\n<td>Content 6</td>\n</tr>\n<tr>\n<td><a href=\"#\">Content 1</a></td>\n<td>Content 2</td>\n<td>Content 3</td>\n<td>Content 4</td>\n<td>Content 5</td>\n<td>Content 6</td>\n</tr>\n<tr>\n<td><a href=\"#\">Content 1</a></td>\n<td>Content 2</td>\n<td>Content 3</td>\n<td>Content 4</td>\n<td>Content 5</td>\n<td>Content 6</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table style=\"width: auto; border-collapse: collapse;\" border=\"1\" cellpadding=\"5\"><caption>&nbsp;</caption>\n<tbody>\n<tr>\n<th style=\"width: 72px;\">TEST 1</th>\n<th style=\"width: 72px;\">TEST 2</th>\n<th style=\"width: 72px;\">TEST 3</th>\n</tr>\n<tr>\n<td style=\"width: 72px;\">test 2</td>\n<td style=\"width: 72px;\">tes 2</td>\n<td style=\"width: 72px;\">test 2</td>\n</tr>\n<tr>\n<td style=\"width: 72px;\">test 4</td>\n<td style=\"width: 72px;\">test 4</td>\n<td style=\"width: 72px;\">tes 5</td>\n</tr>\n</tbody>\n</table>', 'M', NULL, NULL, 1, 1, NULL, NULL, '2019-05-19 04:48:56', '2019-05-21 05:53:04'),
(14, 'NEW', '<p>Sample page</p>', 'M', NULL, NULL, 1, NULL, NULL, NULL, '2019-05-21 06:37:29', '2019-05-21 06:37:29'),
(15, 'Sliders Main', NULL, 'M', '\\App\\Http\\Controllers\\Sliders\\SlidersController', 'main', 1, NULL, NULL, NULL, '2019-05-31 20:58:41', '2019-05-31 20:58:41'),
(16, 'Sliders Panel', NULL, 'P', '\\App\\Http\\Controllers\\Sliders\\SlidersController', 'panel', 1, NULL, NULL, NULL, '2019-05-31 20:58:41', '2019-05-31 20:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `factory_price` double(8,2) NOT NULL,
  `selling_price` double(8,2) NOT NULL,
  `stocks` int(10) UNSIGNED DEFAULT NULL,
  `is_bestseller` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `primary_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_relateds`
--

CREATE TABLE `product_relateds` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HNz6qwzfUJqMIoqh1L35L6rWiCp9or58zlBPi6yx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYjF1WFhYckNZT01Wd2dWZzE0YlVybUM4VnpRUlJHZzZUeTBpc2dtcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9hbmdlbGlxLmNvbS9hZG1pbi9uYXZpZ2F0aW9ucyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1580647962),
('Y46mVhJA3DMWcDC81LrB1GMEXbHL4ZwE5zCil4aD', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRjNYSkRyUlJuRzNLOTJROURqWGtzcG02elJqMXc0eVhONkI5VnJyNSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2OiJodHRwOi8vbG9jYWxob3N0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1580647778);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `header` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `header`, `description`, `image`, `year`, `month`, `sequence`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tes 5', 'test', '1559477534_cake3.jpg', '2019', '6', 1, 1, 1, NULL, '2019-06-02 04:14:43', '2019-06-02 03:41:58', '2019-06-02 04:14:43'),
(2, 'test 2', 'test 2', '1559477553_cake2.png', '2019', '6', NULL, 1, NULL, NULL, '2019-06-02 04:14:36', '2019-06-02 04:12:35', '2019-06-02 04:14:36'),
(3, 'Cakes', 'Fresh from Farms!', '1559483322_cake2.png', '2019', '6', 1, 1, 1, NULL, NULL, '2019-06-02 05:48:19', '2019-06-02 05:48:46'),
(4, 'Blue Berry', 'Sample Cake Made By Me', '1559483346_cake3.jpg', '2019', '6', NULL, 1, NULL, NULL, NULL, '2019-06-02 05:49:13', '2019-06-02 05:49:13'),
(5, 'Last Sample', ':)', '1559483370_cake1.jpg', '2019', '6', NULL, 1, NULL, NULL, NULL, '2019-06-02 05:49:32', '2019-06-02 05:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `systemconfig`
--

CREATE TABLE `systemconfig` (
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyvalue` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systemconfig`
--

INSERT INTO `systemconfig` (`keyword`, `keyvalue`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('developer', '', 1, NULL, '2019-05-18 20:00:13', NULL),
('domain_name', '', 1, NULL, '2019-05-18 20:00:13', NULL),
('meta_description', '', 1, NULL, '2019-05-18 20:00:13', NULL),
('meta_keywords', '', 1, NULL, '2019-05-18 20:00:13', NULL),
('meta_title', '', 1, NULL, '2019-05-18 20:00:13', NULL),
('owner', '', 1, NULL, '2019-05-18 20:00:13', NULL),
('timezone', '', 1, NULL, '2019-05-18 20:00:13', NULL),
('website_name', '', 1, NULL, '2019-05-18 20:00:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `usertype`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Emmanuelle', 'Magtibay', 'Esguerra', 'emman.esguerra@gmail.com', '$2y$10$ILA.cOpoOI8cvPwY3XK1XOivzuRKu2hLbm3c0CsMbUepjorwywrui', 'AE Admin', 'VrpUjJPgAa794OBnw3ASPev7c6n87EgS8BZV7Uif78TSlri2PXKpz3ttnCVP', 1, 1, '2019-05-18 20:00:13', NULL),
(2, 'Emman', 'E', 'Esguerra', 'emman@gmail.com', '$2y$10$CNcExI9w7u.4Ylh48iH1ruxC4tmLtHYMc/pw5X45u76tU2wFnrvnW', 'Admin', NULL, 1, NULL, '2019-05-21 06:44:00', '2019-05-21 06:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `audits_auditable_id_auditable_type_index` (`auditable_id`,`auditable_type`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_store_hours`
--
ALTER TABLE `contact_us_store_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_us_store_hours_contact_us_id_foreign` (`contact_us_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_module_name_index` (`module_name`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigations_page_id_foreign` (`page_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_panels`
--
ALTER TABLE `page_panels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_panels_page_id_foreign` (`page_id`),
  ADD KEY `page_panels_panel_id_foreign` (`panel_id`);

--
-- Indexes for table `panels`
--
ALTER TABLE `panels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_relateds`
--
ALTER TABLE `product_relateds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_relateds_product_id_foreign` (`product_id`),
  ADD KEY `product_relateds_related_product_foreign` (`related_product`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemconfig`
--
ALTER TABLE `systemconfig`
  ADD PRIMARY KEY (`keyword`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_email_index` (`email`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_permissions_user_id_permission_unique` (`user_id`,`permission`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us_store_hours`
--
ALTER TABLE `contact_us_store_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_panels`
--
ALTER TABLE `page_panels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `panels`
--
ALTER TABLE `panels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_relateds`
--
ALTER TABLE `product_relateds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_us_store_hours`
--
ALTER TABLE `contact_us_store_hours`
  ADD CONSTRAINT `contact_us_store_hours_contact_us_id_foreign` FOREIGN KEY (`contact_us_id`) REFERENCES `contact_us` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigations`
--
ALTER TABLE `navigations`
  ADD CONSTRAINT `navigations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_panels`
--
ALTER TABLE `page_panels`
  ADD CONSTRAINT `page_panels_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `page_panels_panel_id_foreign` FOREIGN KEY (`panel_id`) REFERENCES `panels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_relateds`
--
ALTER TABLE `product_relateds`
  ADD CONSTRAINT `product_relateds_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_relateds_related_product_foreign` FOREIGN KEY (`related_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
