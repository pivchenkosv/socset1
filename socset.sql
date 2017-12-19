-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 19 2017 г., 12:54
-- Версия сервера: 5.7.16
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `socset`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Audi', '<img src = \"uploads/Audi.jpg\">', '2017-11-02 08:24:09', '2017-12-17 13:12:21', NULL),
(2, 'BMW', '<img src = \"uploads/BMW.jpg\">', '2017-11-02 08:24:14', '2017-12-18 18:26:18', NULL),
(3, 'Jaguar', '<img src = \"uploads/Jaguar.jpg\">', '2017-11-02 08:24:20', '2017-11-02 08:24:20', NULL),
(4, 'Mercedes-Benz', '<img src = \"uploads/mercedes-benz.jpg\">', '2017-11-02 08:24:32', '2017-12-18 18:38:21', NULL),
(5, 'Bentley', '<img src = \"uploads/bentley.png\">', '2017-11-02 08:24:38', '2017-11-02 08:24:38', NULL),
(6, 'Lamborghini', '<img src = \"uploads/lamborghini.png\">', '2017-11-02 08:24:46', '2017-11-02 08:24:46', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `showhide`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'Данный сайт представляет собой интернет-магазин  для продажи автомобилей.', 'about', 'show', NULL, NULL),
(2, 'Contacts', '+375291111111 - Ян<br>\n+375228333333 - Стас', 'contacts', 'show', NULL, NULL),
(3, 'Services', 'You can order something here', 'catalogs', 'show', NULL, NULL),
(4, 'Images', '', 'images', 'show', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Catalog', 'Catalog', NULL, '2017-10-24 06:27:05', '2017-10-24 06:41:37'),
(11, 0, 1, 'fa-database', 'Product', 'Product', NULL, '2017-11-02 08:23:20', '2017-11-02 08:23:20');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_05_104822_create_maintexts_table', 1),
(4, '2015_10_10_000000_create_menus_table', 2),
(5, '2015_10_10_000000_create_roles_table', 2),
(6, '2015_10_10_000000_update_users_table', 2),
(7, '2015_12_11_000000_create_users_logs_table', 2),
(8, '2016_03_14_000000_update_menus_table', 2),
(9, '2017_10_19_114238_create_crudname_table', 2),
(12, '2017_11_02_111819_create_catalog_table', 3),
(13, '2017_11_02_112001_create_items_table', 4),
(14, '2017_11_02_112320_create_product_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` decimal(15,2) DEFAULT NULL,
  `small_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `body`, `picture`, `catalog_id`, `price`, `vip`, `status`, `currency`, `small_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Audi A8', '<p>Превосходство технологий&nbsp;&mdash; это&nbsp;то, что мы&nbsp;обещаем всем поклонникам нашего бренда. И&nbsp;никогда прежде это обещание не&nbsp;было реализовано так разносторонне и&nbsp;так полно, как в&nbsp;новом Audi A8. Он&nbsp;знаменует собой рождение нового языка дизайна, новой концепции управления, нового уровня качества. Новый Audi A8&nbsp;представляет будущее автомобилей премиум-класса.</p>', '1513527659-Audi-A8.jpeg', 1, NULL, 'sale', 'на складе', '70000.00', 'Audi-A8', '2017-11-02 08:28:21', '2017-12-17 13:20:59', NULL),
(2, 'BMW M4', '<p>Мощный атлет для дорог и гоночных трасс, для совершенного дрифта, скоростных поворотов и длинных прямых, соединяющих между собой виражи. Для заездов с выбросом огромного количества адреналина, когда в руках находится рулевое колесо с отличным хватом, а пальцы лежат на отзывчивых подрулевых лепестках и любой момент готовы переключать передачи. Усаживаясь в спортивное сиденье M, водитель становится неотъемлемой частью автомобиля. Спорткар, созданный для получения ярких впечатлений от спортивного воождения &ndash; BMW M4.</p>', '1513636077-BMW-M4.jpg', 2, NULL, 'sale', 'Есть в продаже', '80000.00', 'BMW-M4', '2017-12-18 19:27:14', '2017-12-18 19:29:49', NULL),
(3, 'Audi R8', '<p>Audi R8 V10 plus обеспечивает потрясающую мощность, которая дополнительно подчеркивается более отточенным дизайном. Нет никаких сомнений в том, что в Audi R8 Coup&eacute; присутствуют спортивные гены.</p>', '1513637961-Audi-r8.jpg', 1, NULL, 'sale', 'Есть в продаже', '120000.00', 'Audi-R8', '2017-12-18 19:59:22', '2017-12-18 19:59:53', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2017-10-24 06:23:25', '2017-10-24 06:23:25'),
(2, 'User', '2017-10-24 06:23:25', '2017-10-24 06:23:25'),
(3, 'Administrator', '2017-11-21 07:37:03', '2017-11-21 07:37:03'),
(4, 'User', '2017-11-21 07:37:03', '2017-11-21 07:37:03');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Yan', 'Yan@gmail.com', '$2y$10$YrHpAkJt/NmbsXFAQGTghOJbez5DaXAI0IsE2UHUdHJNJPxoZfGMq', 'LxP3c1QI1ZewNrL9QxsDZf0BF8FAZzh58ESqW9XD4T6IDmmOnPDN3U0h0t85', '2017-10-24 06:23:45', '2017-10-24 06:23:45'),
(2, 1, 'stas', 'stas@gmail.com', '$2y$10$DhEYDJwNRfuU0BqWovPnJO9c.MzLrs2UuymkOxvJqMQf7wo7S.3x.', NULL, '2017-11-21 07:37:27', '2017-11-21 07:37:27'),
(3, NULL, 'Kirill', 'kirill@gmail.com', '$2y$10$MwN98j4nCDQGGxikRZVN.u7fqf3u10SbzGMxjV8eyn1sHeRtOdxii', 'jkXCmcfTyU2eXTO4UHs6Yh1Y3Sn7IKm3y1ObvUk8faWbb7gxZpAlfNPUh0Ij', '2017-12-19 06:03:28', '2017-12-19 06:03:28');

-- --------------------------------------------------------

--
-- Структура таблицы `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'updated', 'users', 1, '2017-10-24 06:24:08', '2017-10-24 06:24:08'),
(2, 1, 'created', 'catalog', 1, '2017-10-24 06:51:56', '2017-10-24 06:51:56'),
(3, 1, 'updated', 'users', 1, '2017-10-24 07:40:51', '2017-10-24 07:40:51'),
(4, 1, 'created', 'catalog', 2, '2017-11-02 07:34:39', '2017-11-02 07:34:39'),
(5, 1, 'created', 'catalog', 3, '2017-11-02 07:34:49', '2017-11-02 07:34:49'),
(6, 1, 'created', 'catalog', 4, '2017-11-02 07:35:03', '2017-11-02 07:35:03'),
(7, 1, 'created', 'catalog', 5, '2017-11-02 07:35:21', '2017-11-02 07:35:21'),
(8, 1, 'created', 'catalog', 6, '2017-11-02 07:35:31', '2017-11-02 07:35:31'),
(9, 1, 'created', 'catalog', 1, '2017-11-02 08:24:09', '2017-11-02 08:24:09'),
(10, 1, 'created', 'catalog', 2, '2017-11-02 08:24:14', '2017-11-02 08:24:14'),
(11, 1, 'created', 'catalog', 3, '2017-11-02 08:24:20', '2017-11-02 08:24:20'),
(12, 1, 'created', 'catalog', 4, '2017-11-02 08:24:32', '2017-11-02 08:24:32'),
(13, 1, 'created', 'catalog', 5, '2017-11-02 08:24:38', '2017-11-02 08:24:38'),
(14, 1, 'created', 'catalog', 6, '2017-11-02 08:24:46', '2017-11-02 08:24:46'),
(15, 1, 'created', 'product', 1, '2017-11-02 08:28:21', '2017-11-02 08:28:21'),
(16, 1, 'updated', 'product', 1, '2017-11-16 07:54:18', '2017-11-16 07:54:18'),
(17, 1, 'updated', 'product', 1, '2017-11-16 07:56:36', '2017-11-16 07:56:36'),
(18, 1, 'updated', 'product', 1, '2017-11-16 08:05:57', '2017-11-16 08:05:57'),
(19, 1, 'updated', 'product', 1, '2017-11-16 08:06:22', '2017-11-16 08:06:22'),
(20, 1, 'updated', 'product', 1, '2017-11-16 08:14:39', '2017-11-16 08:14:39'),
(21, 1, 'updated', 'product', 1, '2017-11-16 08:26:09', '2017-11-16 08:26:09'),
(22, 2, 'updated', 'catalog', 1, '2017-12-17 13:12:21', '2017-12-17 13:12:21'),
(23, 2, 'updated', 'product', 1, '2017-12-17 13:17:19', '2017-12-17 13:17:19'),
(24, 2, 'updated', 'product', 1, '2017-12-17 13:18:17', '2017-12-17 13:18:17'),
(25, 2, 'updated', 'product', 1, '2017-12-17 13:18:51', '2017-12-17 13:18:51'),
(26, 2, 'updated', 'product', 1, '2017-12-17 13:20:59', '2017-12-17 13:20:59'),
(27, 2, 'updated', 'catalog', 2, '2017-12-18 18:26:18', '2017-12-18 18:26:18'),
(28, 2, 'updated', 'catalog', 4, '2017-12-18 18:38:21', '2017-12-18 18:38:21'),
(29, 2, 'created', 'product', 2, '2017-12-18 19:27:14', '2017-12-18 19:27:14'),
(30, 2, 'updated', 'product', 2, '2017-12-18 19:27:58', '2017-12-18 19:27:58'),
(31, 2, 'updated', 'product', 2, '2017-12-18 19:29:49', '2017-12-18 19:29:49'),
(32, 2, 'created', 'product', 3, '2017-12-18 19:59:22', '2017-12-18 19:59:22'),
(33, 2, 'updated', 'product', 3, '2017-12-18 19:59:53', '2017-12-18 19:59:53'),
(34, 3, 'updated', 'users', 3, '2017-12-19 06:14:49', '2017-12-19 06:14:49'),
(35, 3, 'updated', 'users', 3, '2017-12-19 06:21:41', '2017-12-19 06:21:41');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
