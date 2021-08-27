-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2021 at 08:53 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qtrans`
--

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ab', 'Abkhazian', NULL, NULL),
(2, 'aa', 'Afar', NULL, NULL),
(3, 'af', 'Afrikaans', NULL, NULL),
(4, 'ak', 'Akan', NULL, NULL),
(5, 'sq', 'Albanian', NULL, NULL),
(6, 'am', 'Amharic', NULL, NULL),
(7, 'ar', 'Arabic', NULL, NULL),
(8, 'an', 'Aragonese', NULL, NULL),
(9, 'hy', 'Armenian', NULL, NULL),
(10, 'as', 'Assamese', NULL, NULL),
(11, 'av', 'Avaric', NULL, NULL),
(12, 'ae', 'Avestan', NULL, NULL),
(13, 'ay', 'Aymara', NULL, NULL),
(14, 'az', 'Azerbaijani', NULL, NULL),
(15, 'bm', 'Bambara', NULL, NULL),
(16, 'ba', 'Bashkir', NULL, NULL),
(17, 'eu', 'Basque', NULL, NULL),
(18, 'be', 'Belarusian', NULL, NULL),
(19, 'bn', 'Bengali', NULL, NULL),
(20, 'bh', 'Bihari languages', NULL, NULL),
(21, 'bi', 'Bislama', NULL, NULL),
(22, 'bs', 'Bosnian', NULL, NULL),
(23, 'br', 'Breton', NULL, NULL),
(24, 'bg', 'Bulgarian', NULL, NULL),
(25, 'my', 'Burmese', NULL, NULL),
(26, 'ca', 'Catalan, Valcodeian', NULL, NULL),
(27, 'km', 'Central Khmer', NULL, NULL),
(28, 'ch', 'Chamorro', NULL, NULL),
(29, 'ce', 'Chechen', NULL, NULL),
(30, 'ny', 'Chichewa, Chewa, Nyanja', NULL, NULL),
(31, 'zh', 'Chinese', NULL, NULL),
(32, 'cu', 'Church Slavonic, Old Bulgarian, Old Church Slavonic', NULL, NULL),
(33, 'cv', 'Chuvash', NULL, NULL),
(34, 'kw', 'Cornish', NULL, NULL),
(35, 'co', 'Corsican', NULL, NULL),
(36, 'cr', 'Cree', NULL, NULL),
(37, 'hr', 'Croatian', NULL, NULL),
(38, 'cs', 'Czech', NULL, NULL),
(39, 'da', 'Danish', NULL, NULL),
(40, 'dv', 'Divehi, Dhivehi, Maldivian', NULL, NULL),
(41, 'nl', 'Dutch, Flemish', NULL, NULL),
(42, 'dz', 'Dzongkha', NULL, NULL),
(43, 'en', 'English', NULL, NULL),
(44, 'eo', 'Esperanto', NULL, NULL),
(45, 'et', 'Estonian', NULL, NULL),
(46, 'ee', 'Ewe', NULL, NULL),
(47, 'fo', 'Faroese', NULL, NULL),
(48, 'fj', 'Fijian', NULL, NULL),
(49, 'fi', 'Finnish', NULL, NULL),
(50, 'fr', 'Frcodeh', NULL, NULL),
(51, 'ff', 'Fulah', NULL, NULL),
(52, 'gd', 'Gaelic, Scottish Gaelic', NULL, NULL),
(53, 'gl', 'Galician', NULL, NULL),
(54, 'lg', 'Ganda', NULL, NULL),
(55, 'ka', 'Georgian', NULL, NULL),
(56, 'de', 'German', NULL, NULL),
(57, 'ki', 'Gikuyu, Kikuyu', NULL, NULL),
(58, 'el', 'Greek (Modern)', NULL, NULL),
(59, 'kl', 'Greenlandic, Kalaallisut', NULL, NULL),
(60, 'gn', 'Guarani', NULL, NULL),
(61, 'gu', 'Gujarati', NULL, NULL),
(62, 'ht', 'Haitian, Haitian Creole', NULL, NULL),
(63, 'ha', 'Hausa', NULL, NULL),
(64, 'he', 'Hebrew', NULL, NULL),
(65, 'hz', 'Herero', NULL, NULL),
(66, 'hi', 'Hindi', NULL, NULL),
(67, 'ho', 'Hiri Motu', NULL, NULL),
(68, 'hu', 'Hungarian', NULL, NULL),
(69, 'is', 'Icelandic', NULL, NULL),
(70, 'io', 'Ido', NULL, NULL),
(71, 'ig', 'Igbo', NULL, NULL),
(72, 'id', 'Indonesian', NULL, NULL),
(73, 'ia', 'Interlingua (International Auxiliary Language Association)', NULL, NULL),
(74, 'ie', 'Interlingue', NULL, NULL),
(75, 'iu', 'Inuktitut', NULL, NULL),
(76, 'ik', 'Inupiaq', NULL, NULL),
(77, 'ga', 'Irish', NULL, NULL),
(78, 'it', 'Italian', NULL, NULL),
(79, 'ja', 'Japanese', NULL, NULL),
(80, 'jv', 'Javanese', NULL, NULL),
(81, 'kn', 'Kannada', NULL, NULL),
(82, 'kr', 'Kanuri', NULL, NULL),
(83, 'ks', 'Kashmiri', NULL, NULL),
(84, 'kk', 'Kazakh', NULL, NULL),
(85, 'rw', 'Kinyarwanda', NULL, NULL),
(86, 'kv', 'Komi', NULL, NULL),
(87, 'kg', 'Kongo', NULL, NULL),
(88, 'ko', 'Korean', NULL, NULL),
(89, 'kj', 'Kwanyama, Kuanyama', NULL, NULL),
(90, 'ku', 'Kurdish', NULL, NULL),
(91, 'ky', 'Kyrgyz', NULL, NULL),
(92, 'lo', 'Lao', NULL, NULL),
(93, 'la', 'Latin', NULL, NULL),
(94, 'lv', 'Latvian', NULL, NULL),
(95, 'lb', 'Letzeburgesch, Luxembourgish', NULL, NULL),
(96, 'li', 'Limburgish, Limburgan, Limburger', NULL, NULL),
(97, 'ln', 'Lingala', NULL, NULL),
(98, 'lt', 'Lithuanian', NULL, NULL),
(99, 'lu', 'Luba-Katanga', NULL, NULL),
(100, 'mk', 'Macedonian', NULL, NULL),
(101, 'mg', 'Malagasy', NULL, NULL),
(102, 'ms', 'Malay', NULL, NULL),
(103, 'ml', 'Malayalam', NULL, NULL),
(104, 'mt', 'Maltese', NULL, NULL),
(105, 'gv', 'Manx', NULL, NULL),
(106, 'mi', 'Maori', NULL, NULL),
(107, 'mr', 'Marathi', NULL, NULL),
(108, 'mh', 'Marshallese', NULL, NULL),
(109, 'ro', 'Moldovan, Moldavian, Romanian', NULL, NULL),
(110, 'mn', 'Mongolian', NULL, NULL),
(111, 'na', 'Nauru', NULL, NULL),
(112, 'nv', 'Navajo, Navaho', NULL, NULL),
(113, 'nd', 'Northern Ndebele', NULL, NULL),
(114, 'ng', 'Ndonga', NULL, NULL),
(115, 'ne', 'Nepali', NULL, NULL),
(116, 'se', 'Northern Sami', NULL, NULL),
(117, 'no', 'Norwegian', NULL, NULL),
(118, 'nb', 'Norwegian Bokmål', NULL, NULL),
(119, 'nn', 'Norwegian Nynorsk', NULL, NULL),
(120, 'ii', 'Nuosu, Sichuan Yi', NULL, NULL),
(121, 'oc', 'Occitan (post 1500)', NULL, NULL),
(122, 'oj', 'Ojibwa', NULL, NULL),
(123, 'or', 'Oriya', NULL, NULL),
(124, 'om', 'Oromo', NULL, NULL),
(125, 'os', 'Ossetian, Ossetic', NULL, NULL),
(126, 'pi', 'Pali', NULL, NULL),
(127, 'pa', 'Panjabi, Punjabi', NULL, NULL),
(128, 'ps', 'Pashto, Pushto', NULL, NULL),
(129, 'fa', 'Persian', NULL, NULL),
(130, 'pl', 'Polish', NULL, NULL),
(131, 'pt', 'Portuguese', NULL, NULL),
(132, 'qu', 'Quechua', NULL, NULL),
(133, 'rm', 'Romansh', NULL, NULL),
(134, 'rn', 'Rundi', NULL, NULL),
(135, 'ru', 'Russian', NULL, NULL),
(136, 'sm', 'Samoan', NULL, NULL),
(137, 'sg', 'Sango', NULL, NULL),
(138, 'sa', 'Sanskrit', NULL, NULL),
(139, 'sc', 'Sardinian', NULL, NULL),
(140, 'sr', 'Serbian', NULL, NULL),
(141, 'sn', 'Shona', NULL, NULL),
(142, 'sd', 'Sindhi', NULL, NULL),
(143, 'si', 'Sinhala, Sinhalese', NULL, NULL),
(144, 'sk', 'Slovak', NULL, NULL),
(145, 'sl', 'Slovenian', NULL, NULL),
(146, 'so', 'Somali', NULL, NULL),
(147, 'st', 'Sotho, Southern', NULL, NULL),
(148, 'nr', 'South Ndebele', NULL, NULL),
(149, 'es', 'Spanish, Castilian', NULL, NULL),
(150, 'su', 'Sundanese', NULL, NULL),
(151, 'sw', 'Swahili', NULL, NULL),
(152, 'ss', 'Swati', NULL, NULL),
(153, 'sv', 'Swedish', NULL, NULL),
(154, 'tl', 'Tagalog', NULL, NULL),
(155, 'ty', 'Tahitian', NULL, NULL),
(156, 'tg', 'Tajik', NULL, NULL),
(157, 'ta', 'Tamil', NULL, NULL),
(158, 'tt', 'Tatar', NULL, NULL),
(159, 'te', 'Telugu', NULL, NULL),
(160, 'th', 'Thai', NULL, NULL),
(161, 'bo', 'Tibetan', NULL, NULL),
(162, 'ti', 'Tigrinya', NULL, NULL),
(163, 'to', 'Tonga (Tonga Islands)', NULL, NULL),
(164, 'ts', 'Tsonga', NULL, NULL),
(165, 'tn', 'Tswana', NULL, NULL),
(166, 'tr', 'Turkish', NULL, NULL),
(167, 'tk', 'Turkmen', NULL, NULL),
(168, 'tw', 'Twi', NULL, NULL),
(169, 'ug', 'Uighur, Uyghur', NULL, NULL),
(170, 'uk', 'Ukrainian', NULL, NULL),
(171, 'ur', 'Urdu', NULL, NULL),
(172, 'uz', 'Uzbek', NULL, NULL),
(173, 've', 'Venda', NULL, NULL),
(174, 'vi', 'Vietnamese', NULL, NULL),
(175, 'vo', 'Volap_k', NULL, NULL),
(176, 'wa', 'Walloon', NULL, NULL),
(177, 'cy', 'Welsh', NULL, NULL),
(178, 'fy', 'Western Frisian', NULL, NULL),
(179, 'wo', 'Wolof', NULL, NULL),
(180, 'xh', 'Xhosa', NULL, NULL),
(181, 'yi', 'Yiddish', NULL, NULL),
(182, 'yo', 'Yoruba', NULL, NULL),
(183, 'za', 'Zhuang, Chuang', NULL, NULL),
(184, 'zu', 'Zulu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_27_070747_create_languages_table', 1),
(6, '2021_08_27_070832_create_packages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_type` tinyint(4) NOT NULL COMMENT '1=Translation,2=Proofreading,3=TEP,4=Other',
  `field_of_text` tinyint(4) NOT NULL COMMENT '1=General Domain,2=Technical Domain,3=Medical Domain,4=Other',
  `language_id` json DEFAULT NULL,
  `number_of_words` int(10) UNSIGNED DEFAULT NULL,
  `is_complementary` tinyint(1) NOT NULL COMMENT '1=Yes,0=No',
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
