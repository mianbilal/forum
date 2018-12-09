-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2018 at 09:44 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2018-07-23 11:58:26', '2018-07-23 11:58:26'),
(2, 'CodeIgnitor', 'codeignitor', '2018-07-23 11:58:26', '2018-07-23 11:58:26'),
(3, 'Bootstrap', 'bootstrap', '2018-07-23 11:58:26', '2018-07-23 11:58:26'),
(4, 'Spark', 'spark', '2018-07-23 11:58:26', '2018-07-23 11:58:26'),
(5, 'Wordpress', 'wordpress', '2018-07-23 11:58:26', '2018-07-23 11:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `user_id`, `channel_id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Laravel Protects', 'laravel-protects', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-07-23 11:58:26', '2018-07-23 11:58:26'),
(2, 1, 3, 'PHP Protects', 'php-protects', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-07-23 11:58:26', '2018-07-23 11:58:26'),
(3, 2, 2, 'React.JS Protects', 'reactjs-protects', 'fucking awesome', '2018-07-23 11:58:26', '2018-07-24 01:23:04'),
(4, 1, 3, 'Vue.js Protects', 'vuejs-protects', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-07-23 11:58:26', '2018-07-23 11:58:26'),
(5, 1, 1, 'Laravel  artists', 'laravel-artists', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2018-07-23 12:03:43', '2018-07-23 12:03:43'),
(6, 1, 3, 'no Bootstrap', 'no-bootstrap', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2018-07-23 12:04:29', '2018-07-23 12:04:29'),
(7, 2, 4, 'aing te fir ing e saee', 'aing-te-fir-ing-e-saee', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin 1.1', '2018-07-24 08:12:51', '2018-07-24 08:13:28'),
(8, 1, 2, 'marrkdowns', 'marrkdowns', '<?php\r\n// PHP code goes here\r\n?>', '2018-07-24 21:42:39', '2018-07-25 01:58:50'),
(9, 1, 1, 'marrkdowns', 'marrkdowns', '---\r\n__Advertisement :)__\r\n\r\n- __[pica](https://nodeca.github.io/pica/demo/)__ - high quality and fast image\r\n  resize in browser.\r\n- __[babelfish](https://github.com/nodeca/babelfish/)__ - developer friendly\r\n  i18n with plurals support and easy syntax.\r\n\r\nYou will like those projects!\r\n\r\n---\r\n\r\n# h1 Heading 8-)\r\n## h2 Heading\r\n### h3 Heading\r\n#### h4 Heading\r\n##### h5 Heading\r\n###### h6 Heading\r\n\r\n\r\n## Horizontal Rules\r\n\r\n___\r\n\r\n---\r\n\r\n***\r\n\r\n\r\n## Typographic replacements\r\n\r\nEnable typographer option to see result.\r\n\r\n(c) (C) (r) (R) (tm) (TM) (p) (P) +-\r\n\r\ntest.. test... test..... test?..... test!....\r\n\r\n!!!!!! ???? ,,  -- ---\r\n\r\n\"Smartypants, double quotes\" and \'single quotes\'\r\n\r\n\r\n## Emphasis\r\n\r\n**This is bold text**\r\n\r\n__This is bold text__\r\n\r\n*This is italic text*\r\n\r\n_This is italic text_\r\n\r\n~~Strikethrough~~\r\n\r\n\r\n## Blockquotes\r\n\r\n\r\n> Blockquotes can also be nested...\r\n>> ...by using additional greater-than signs right next to each other...\r\n> > > ...or with spaces between arrows.\r\n\r\n\r\n## Lists\r\n\r\nUnordered\r\n\r\n+ Create a list by starting a line with `+`, `-`, or `*`\r\n+ Sub-lists are made by indenting 2 spaces:\r\n  - Marker character change forces new list start:\r\n    * Ac tristique libero volutpat at\r\n    + Facilisis in pretium nisl aliquet\r\n    - Nulla volutpat aliquam velit\r\n+ Very easy!\r\n\r\nOrdered\r\n\r\n1. Lorem ipsum dolor sit amet\r\n2. Consectetur adipiscing elit\r\n3. Integer molestie lorem at massa\r\n\r\n\r\n1. You can use sequential numbers...\r\n1. ...or keep all the numbers as `1.`\r\n\r\nStart numbering with offset:\r\n\r\n57. foo\r\n1. bar\r\n\r\n\r\n## Code\r\n\r\nInline `code`\r\n\r\nIndented code\r\n\r\n    // Some comments\r\n    line 1 of code\r\n    line 2 of code\r\n    line 3 of code\r\n\r\n\r\nBlock code \"fences\"\r\n\r\n```\r\nSample text here...\r\n```\r\n\r\nSyntax highlighting\r\n\r\n``` js\r\nvar foo = function (bar) {\r\n  return bar++;\r\n};\r\n\r\nconsole.log(foo(5));\r\n```\r\n\r\n## Tables\r\n\r\n| Option | Description |\r\n| ------ | ----------- |\r\n| data   | path to data files to supply the data that will be passed into templates. |\r\n| engine | engine to be used for processing templates. Handlebars is the default. |\r\n| ext    | extension to be used for dest files. |\r\n\r\nRight aligned columns\r\n\r\n| Option | Description |\r\n| ------:| -----------:|\r\n| data   | path to data files to supply the data that will be passed into templates. |\r\n| engine | engine to be used for processing templates. Handlebars is the default. |\r\n| ext    | extension to be used for dest files. |\r\n\r\n\r\n## Links\r\n\r\n[link text](http://dev.nodeca.com)\r\n\r\n[link with title](http://nodeca.github.io/pica/demo/ \"title text!\")\r\n\r\nAutoconverted link https://github.com/nodeca/pica (enable linkify to see)\r\n\r\n\r\n## Images\r\n\r\n![Minion](https://octodex.github.com/images/minion.png)\r\n![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg \"The Stormtroopocat\")\r\n\r\nLike links, Images also have a footnote style syntax\r\n\r\n![Alt text][id]\r\n\r\nWith a reference later in the document defining the URL location:\r\n\r\n[id]: https://octodex.github.com/images/dojocat.jpg  \"The Dojocat\"\r\n\r\n\r\n## Plugins\r\n\r\nThe killer feature of `markdown-it` is very effective support of\r\n[syntax plugins](https://www.npmjs.org/browse/keyword/markdown-it-plugin).\r\n\r\n\r\n### [Emojies](https://github.com/markdown-it/markdown-it-emoji)\r\n\r\n> Classic markup: :wink: :crush: :cry: :tear: :laughing: :yum:\r\n>\r\n> Shortcuts (emoticons): :-) :-( 8-) ;)\r\n\r\nsee [how to change output](https://github.com/markdown-it/markdown-it-emoji#change-output) with twemoji.\r\n\r\n\r\n### [Subscript](https://github.com/markdown-it/markdown-it-sub) / [Superscript](https://github.com/markdown-it/markdown-it-sup)\r\n\r\n- 19^th^\r\n- H~2~O\r\n\r\n\r\n### [\\<ins>](https://github.com/markdown-it/markdown-it-ins)\r\n\r\n++Inserted text++\r\n\r\n\r\n### [\\<mark>](https://github.com/markdown-it/markdown-it-mark)\r\n\r\n==Marked text==\r\n\r\n\r\n### [Footnotes](https://github.com/markdown-it/markdown-it-footnote)\r\n\r\nFootnote 1 link[^first].\r\n\r\nFootnote 2 link[^second].\r\n\r\nInline footnote^[Text of inline footnote] definition.\r\n\r\nDuplicated footnote reference[^second].\r\n\r\n[^first]: Footnote **can have markup**\r\n\r\n    and multiple paragraphs.\r\n\r\n[^second]: Footnote text.\r\n\r\n\r\n### [Definition lists](https://github.com/markdown-it/markdown-it-deflist)\r\n\r\nTerm 1\r\n\r\n:   Definition 1\r\nwith lazy continuation.\r\n\r\nTerm 2 with *inline markup*\r\n\r\n:   Definition 2\r\n\r\n        { some code, part of Definition 2 }\r\n\r\n    Third paragraph of definition 2.\r\n\r\n_Compact style:_\r\n\r\nTerm 1\r\n  ~ Definition 1\r\n\r\nTerm 2\r\n  ~ Definition 2a\r\n  ~ Definition 2b\r\n\r\n\r\n### [Abbreviations](https://github.com/markdown-it/markdown-it-abbr)\r\n\r\nThis is HTML abbreviation example.\r\n\r\nIt converts \"HTML\", but keep intact partial entries like \"xxxHTMLyyy\" and so on.\r\n\r\n*[HTML]: Hyper Text Markup Language\r\n\r\n### [Custom containers](https://github.com/markdown-it/markdown-it-container)\r\n\r\n::: warning\r\n*here be dragons*\r\n:::', '2018-07-24 21:46:57', '2018-07-24 21:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reply_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(156, '2014_10_12_000000_create_users_table', 1),
(157, '2014_10_12_100000_create_password_resets_table', 1),
(158, '2018_07_19_112129_create_oauth_identities_table', 1),
(159, '2018_07_20_042315_create_channels_table', 1),
(160, '2018_07_20_042531_create_discussions_table', 1),
(161, '2018_07_20_042551_create_replies_table', 1),
(162, '2018_07_22_125434_create_likes_table', 1),
(163, '2018_07_23_081639_create_watchers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_identities`
--

CREATE TABLE `oauth_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `best_answer` tinyint(1) NOT NULL DEFAULT '0',
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `best_answer`, `discussion_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut est dolor. In dapibus, elit et vulputate feugiat, dui odio semper est, non congue nibh orci non ipsum.', '2018-07-23 11:58:25', '2018-07-23 11:58:25'),
(2, 2, 0, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut est dolor. In dapibus, elit et vulputate feugiat, dui odio semper est, non congue nibh orci non ipsum.', '2018-07-23 11:58:25', '2018-07-23 11:58:25'),
(3, 2, 0, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut est dolor. In dapibus, elit et vulputate feugiat, dui odio semper est, non congue nibh orci non ipsum.', '2018-07-23 11:58:25', '2018-07-23 11:58:25'),
(4, 1, 0, 4, 'ok love you', '2018-07-23 11:58:25', '2018-07-24 07:55:22'),
(5, 1, 1, 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '2018-07-23 12:05:02', '2018-07-23 12:13:55'),
(6, 1, 1, 5, 'thas why', '2018-07-23 12:06:01', '2018-07-23 12:56:12'),
(7, 1, 1, 3, 'i love it', '2018-07-23 12:06:48', '2018-07-24 00:38:48'),
(8, 1, 0, 1, 'thk ha phir', '2018-07-23 12:07:41', '2018-07-23 12:07:41'),
(9, 1, 0, 6, 'thek ha', '2018-07-23 12:08:44', '2018-07-23 12:08:44'),
(10, 1, 0, 3, 'jSDJKhadAH', '2018-07-23 12:10:12', '2018-07-23 12:10:12'),
(11, 2, 0, 4, 'ok', '2018-07-23 12:11:22', '2018-07-24 07:56:23'),
(12, 2, 0, 2, 'ang te fir anj e saee', '2018-07-23 12:13:15', '2018-07-23 12:13:15'),
(13, 1, 0, 5, 'jhkshkasjklas', '2018-07-24 07:52:48', '2018-07-24 07:52:48'),
(14, 1, 0, 5, 'jhkshkasjklas', '2018-07-24 07:53:15', '2018-07-24 07:53:15'),
(15, 2, 0, 6, 'jdhdhKL', '2018-07-24 08:03:15', '2018-07-24 08:03:15'),
(16, 2, 1, 7, 'looks ggod', '2018-07-24 08:13:54', '2018-07-24 08:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `points` bigint(20) NOT NULL DEFAULT '50',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `admin`, `points`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'avatars/1.png', 1, 750, 'admin@forum.com', '$2y$10$Yokw3KLlV.htoPfly36/IumjnEXWHpDAdSFw3EKQ2QCqN.KVVZWqa', 'Q5RSwGsuA2AXRwfbfnmNejUNamBpHEd5cc6E1GBvj6OAup1ycNrctcSfJSYt', '2018-07-23 11:58:25', '2018-07-24 07:53:15'),
(2, 'Alia Samreen', 'avatars/2.png', 0, 350, 'alia@forum.com', '$2y$10$josBAN0cylbuBqIQrAm76eTicvDi/mBejFg2.W3gel8VcH.zW/4L6', 'xxfTWF1l4Mvfa67NirXt4amzN88zXyR40kzE3mI1behOMgpoBCCgcqRo2gQF', '2018-07-23 11:58:25', '2018-07-24 08:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `watchers`
--

CREATE TABLE `watchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watchers`
--

INSERT INTO `watchers` (`id`, `discussion_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2018-07-23 12:05:50', '2018-07-23 12:05:50'),
(3, 1, 1, '2018-07-23 12:07:31', '2018-07-23 12:07:31'),
(4, 6, 1, '2018-07-23 12:08:37', '2018-07-23 12:08:37'),
(5, 3, 1, '2018-07-23 12:10:01', '2018-07-23 12:10:01'),
(7, 2, 2, '2018-07-23 12:13:20', '2018-07-23 12:13:20'),
(8, 1, 2, '2018-07-23 12:18:03', '2018-07-23 12:18:03'),
(10, 5, 2, '2018-07-24 00:34:24', '2018-07-24 00:34:24'),
(17, 6, 2, '2018-07-24 08:06:57', '2018-07-24 08:06:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `watchers`
--
ALTER TABLE `watchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `watchers`
--
ALTER TABLE `watchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
