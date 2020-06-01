-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-06-2020 a las 18:48:19
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id13801584_wp_e575abf7b47cfb388d3b509f48c85c30`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(7, 'action_scheduler/migration_hook', 'complete', '2020-05-14 23:27:31', '2020-05-14 23:27:31', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1589498851;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1589498851;}', 1, 1, '2020-05-14 23:27:54', '2020-05-14 23:27:54', 0, NULL),
(8, 'action_scheduler/migration_hook', 'canceled', '2020-05-14 23:27:31', '2020-05-14 23:27:31', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1589498851;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1589498851;}', 1, 0, '2020-05-14 23:27:54', '2020-05-14 23:27:54', 0, NULL),
(9, 'wc-admin_import_customers', 'complete', '2020-05-18 21:39:16', '2020-05-18 21:39:16', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1589837956;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1589837956;}', 2, 1, '2020-05-18 21:39:28', '2020-05-18 21:39:28', 0, NULL),
(10, 'wc-admin_import_orders', 'complete', '2020-05-18 21:39:17', '2020-05-18 21:39:17', '[30]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1589837957;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1589837957;}', 2, 1, '2020-05-18 21:39:29', '2020-05-18 21:39:29', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 7, 'action created', '2020-05-14 23:26:32', '2020-05-14 23:26:32'),
(2, 8, 'action created', '2020-05-14 23:26:32', '2020-05-14 23:26:32'),
(3, 7, 'action started via WP Cron', '2020-05-14 23:27:54', '2020-05-14 23:27:54'),
(4, 8, 'action canceled', '2020-05-14 23:27:54', '2020-05-14 23:27:54'),
(5, 7, 'action complete via WP Cron', '2020-05-14 23:27:54', '2020-05-14 23:27:54'),
(6, 8, 'action ignored via WP Cron', '2020-05-14 23:27:55', '2020-05-14 23:27:55'),
(7, 9, 'action created', '2020-05-18 21:39:12', '2020-05-18 21:39:12'),
(8, 10, 'action created', '2020-05-18 21:39:12', '2020-05-18 21:39:12'),
(9, 9, 'action started via WP Cron', '2020-05-18 21:39:27', '2020-05-18 21:39:27'),
(10, 9, 'action complete via WP Cron', '2020-05-18 21:39:28', '2020-05-18 21:39:28'),
(11, 10, 'action started via WP Cron', '2020-05-18 21:39:28', '2020-05-18 21:39:28'),
(12, 10, 'action complete via WP Cron', '2020-05-18 21:39:29', '2020-05-18 21:39:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-14 23:17:46', '2020-05-14 23:17:46', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 30, 'WooCommerce', '', '', '', '2020-05-18 21:39:19', '2020-05-18 21:39:19', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailchimp_jobs`
--

CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://TiendaElectronicaOnlineweb.000webhostapp.com', 'yes'),
(2, 'home', 'https://TiendaElectronicaOnlineweb.000webhostapp.com', 'yes'),
(3, 'blogname', 'Tienda en Linea', 'yes'),
(4, 'blogdescription', 'Compras Rapidas y Seguras - Que esperas?', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '1430177@upv.edu.mx', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:211:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"album/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"album/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"album/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"album/([^/]+)/embed/?$\";s:38:\"index.php?album=$matches[1]&embed=true\";s:26:\"album/([^/]+)/trackback/?$\";s:32:\"index.php?album=$matches[1]&tb=1\";s:34:\"album/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?album=$matches[1]&paged=$matches[2]\";s:41:\"album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?album=$matches[1]&cpage=$matches[2]\";s:31:\"album/([^/]+)/wc-api(/(.*))?/?$\";s:46:\"index.php?album=$matches[1]&wc-api=$matches[3]\";s:37:\"album/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:48:\"album/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"album/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?album=$matches[1]&page=$matches[2]\";s:22:\"album/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"album/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"album/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"genre/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:39:\"genre/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:20:\"genre/(.+?)/embed/?$\";s:38:\"index.php?genre=$matches[1]&embed=true\";s:32:\"genre/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?genre=$matches[1]&paged=$matches[2]\";s:14:\"genre/(.+?)/?$\";s:27:\"index.php?genre=$matches[1]\";s:32:\"work/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"work/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"work/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"work/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"work/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"work/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"work/([^/]+)/embed/?$\";s:37:\"index.php?work=$matches[1]&embed=true\";s:25:\"work/([^/]+)/trackback/?$\";s:31:\"index.php?work=$matches[1]&tb=1\";s:33:\"work/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?work=$matches[1]&paged=$matches[2]\";s:40:\"work/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?work=$matches[1]&cpage=$matches[2]\";s:30:\"work/([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?work=$matches[1]&wc-api=$matches[3]\";s:36:\"work/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"work/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"work/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?work=$matches[1]&page=$matches[2]\";s:21:\"work/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"work/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"work/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"work/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"work/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"work/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"work_genre/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?work_genre=$matches[1]&feed=$matches[2]\";s:44:\"work_genre/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?work_genre=$matches[1]&feed=$matches[2]\";s:25:\"work_genre/(.+?)/embed/?$\";s:43:\"index.php?work_genre=$matches[1]&embed=true\";s:37:\"work_genre/(.+?)/page/?([0-9]{1,})/?$\";s:50:\"index.php?work_genre=$matches[1]&paged=$matches[2]\";s:19:\"work_genre/(.+?)/?$\";s:32:\"index.php?work_genre=$matches[1]\";s:46:\"group/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?group=$matches[1]&feed=$matches[2]\";s:41:\"group/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?group=$matches[1]&feed=$matches[2]\";s:22:\"group/([^/]+)/embed/?$\";s:38:\"index.php?group=$matches[1]&embed=true\";s:34:\"group/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?group=$matches[1]&paged=$matches[2]\";s:16:\"group/([^/]+)/?$\";s:27:\"index.php?group=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:79:\"/storage/ssd1/584/13801584/public_html/wp-content/themes/orchid-store/style.css\";i:2;s:77:\"/storage/ssd1/584/13801584/public_html/wp-content/plugins/akismet/akismet.php\";i:3;s:0:\"\";}', 'no'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1605050253', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_MX', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:19:\"woocommerce-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:19:{i:1591035471;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591035497;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1591035983;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591036002;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591036290;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591036672;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1591053469;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591053472;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591053494;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591053496;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591053984;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591053989;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591056000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591064774;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591075574;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591119911;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591399069;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1592090834;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589499272;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'action_scheduler_hybrid_store_demarkation', '6', 'yes'),
(156, 'schema-ActionScheduler_StoreSchema', '3.0.1589498724', 'yes'),
(157, 'schema-ActionScheduler_LoggerSchema', '2.0.1589498724', 'yes'),
(160, 'woocommerce_store_address', 'Fracc.LosAlamos, Cipriano Guerra Espinosa', 'yes'),
(161, 'woocommerce_store_address_2', '', 'yes'),
(162, 'woocommerce_store_city', 'victoria', 'yes'),
(163, 'woocommerce_default_country', 'MX:TM', 'yes'),
(164, 'woocommerce_store_postcode', '87086', 'yes'),
(165, 'woocommerce_allowed_countries', 'all', 'yes'),
(166, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(167, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(168, 'woocommerce_ship_to_countries', '', 'yes'),
(169, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(170, 'woocommerce_default_customer_address', 'base', 'yes'),
(171, 'woocommerce_calc_taxes', 'yes', 'yes'),
(172, 'woocommerce_enable_coupons', 'yes', 'yes'),
(173, 'woocommerce_calc_discounts_sequentially', 'yes', 'no'),
(174, 'woocommerce_currency', 'MXN', 'yes'),
(175, 'woocommerce_currency_pos', 'left', 'yes'),
(176, 'woocommerce_price_thousand_sep', ',', 'yes'),
(177, 'woocommerce_price_decimal_sep', '.', 'yes'),
(178, 'woocommerce_price_num_decimals', '2', 'yes'),
(179, 'woocommerce_shop_page_id', '8', 'yes'),
(180, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(181, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(182, 'woocommerce_placeholder_image', '7', 'yes'),
(183, 'woocommerce_weight_unit', 'kg', 'yes'),
(184, 'woocommerce_dimension_unit', 'cm', 'yes'),
(185, 'woocommerce_enable_reviews', 'yes', 'yes'),
(186, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(187, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(188, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(189, 'woocommerce_review_rating_required', 'yes', 'no'),
(190, 'woocommerce_manage_stock', 'yes', 'yes'),
(191, 'woocommerce_hold_stock_minutes', '60', 'no'),
(192, 'woocommerce_notify_low_stock', 'yes', 'no'),
(193, 'woocommerce_notify_no_stock', 'yes', 'no'),
(194, 'woocommerce_stock_email_recipient', '1430177@upv.edu.mx', 'no'),
(195, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(196, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(197, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(198, 'woocommerce_stock_format', '', 'yes'),
(199, 'woocommerce_file_download_method', 'force', 'no'),
(200, 'woocommerce_downloads_require_login', 'no', 'no'),
(201, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(202, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(203, 'woocommerce_prices_include_tax', 'no', 'yes'),
(204, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(205, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(206, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(207, 'woocommerce_tax_classes', '', 'yes'),
(208, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(209, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(210, 'woocommerce_price_display_suffix', '', 'yes'),
(211, 'woocommerce_tax_total_display', 'itemized', 'no'),
(212, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(213, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(214, 'woocommerce_ship_to_destination', 'billing', 'no'),
(215, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(216, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(217, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(218, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(219, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(220, 'woocommerce_registration_generate_username', 'yes', 'no'),
(221, 'woocommerce_registration_generate_password', 'yes', 'no'),
(222, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(223, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(224, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(225, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(226, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(227, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(228, 'woocommerce_trash_pending_orders', '', 'no'),
(229, 'woocommerce_trash_failed_orders', '', 'no'),
(230, 'woocommerce_trash_cancelled_orders', '', 'no'),
(231, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(232, 'woocommerce_email_from_name', 'Tienda en Linea', 'no'),
(233, 'woocommerce_email_from_address', '1430177@upv.edu.mx', 'no'),
(234, 'woocommerce_email_header_image', '', 'no'),
(235, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(236, 'woocommerce_email_base_color', '#96588a', 'no'),
(237, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(238, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(239, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(240, 'woocommerce_cart_page_id', '9', 'no'),
(241, 'woocommerce_checkout_page_id', '10', 'no'),
(242, 'woocommerce_myaccount_page_id', '11', 'no'),
(243, 'woocommerce_terms_page_id', '', 'no'),
(244, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(245, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(246, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(247, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(248, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(249, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(250, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(251, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(252, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(253, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(254, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(255, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(256, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(257, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(258, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(259, 'woocommerce_api_enabled', 'no', 'yes'),
(260, 'woocommerce_allow_tracking', 'yes', 'no'),
(261, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(262, 'woocommerce_single_image_width', '600', 'yes'),
(263, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(264, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(265, 'woocommerce_demo_store', 'no', 'no'),
(266, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(267, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(268, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(271, 'default_product_cat', '15', 'yes'),
(272, 'woocommerce_admin_notices', 'a:1:{i:0;s:7:\"install\";}', 'yes'),
(275, 'woocommerce_version', '4.1.0', 'yes'),
(276, 'woocommerce_db_version', '4.1.0', 'yes'),
(277, 'action_scheduler_lock_async-request-runner', '1591035398', 'yes'),
(278, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"Rh1JNFJGtUQLmeTt27a2fmHlvXUKneRe\";}', 'yes'),
(280, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(295, 'woocommerce_admin_version', '1.1.1', 'yes'),
(296, 'woocommerce_admin_install_timestamp', '1589498789', 'yes'),
(301, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(302, 'woocommerce_admin_last_orders_milestone', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(306, 'woocommerce_onboarding_profile', 'a:9:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:1;s:8:\"industry\";a:6:{i:0;a:1:{s:4:\"slug\";s:21:\"electronics-computers\";}i:1;a:1:{s:4:\"slug\";s:10:\"food-drink\";}i:2;a:1:{s:4:\"slug\";s:21:\"home-furniture-garden\";}i:3;a:1:{s:4:\"slug\";s:13:\"health-beauty\";}i:4;a:1:{s:4:\"slug\";s:21:\"art-music-photography\";}i:5;a:1:{s:4:\"slug\";s:27:\"fashion-apparel-accessories\";}}s:13:\"product_types\";a:2:{i:0;s:9:\"downloads\";i:1;s:8:\"physical\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:3:{i:0;s:24:\"facebook-for-woocommerce\";i:1;s:25:\"mailchimp-for-woocommerce\";i:2;s:27:\"kliken-marketing-for-google\";}s:5:\"theme\";s:7:\"petshop\";s:7:\"plugins\";s:9:\"installed\";}', 'yes'),
(323, 'action_scheduler_migration_status', 'complete', 'yes'),
(339, 'mailchimp-woocommerce', 'a:3:{s:24:\"mailchimp_permission_cap\";s:14:\"manage_options\";s:33:\"woocommerce_settings_save_general\";b:1;s:19:\"store_currency_code\";s:3:\"MXN\";}', 'yes'),
(341, 'mailchimp-woocommerce-store_id', '5ebdd47dd32ec', 'yes'),
(342, 'mailchimp-woocommerce-store-id-last-verified', '1591035145', 'yes'),
(343, 'woocommerce_kk_wcintegration_settings', 'a:3:{s:10:\"account_id\";i:0;s:9:\"app_token\";s:0:\"\";s:12:\"google_token\";s:0:\"\";}', 'yes'),
(349, 'wc_facebook_for_woocommerce_is_active', 'yes', 'yes'),
(350, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(351, 'mailchimp_woocommerce_version', '2.4.0', 'no'),
(352, 'mailchimp-woocommerce_cart_table_add_index_update', '1', 'yes'),
(353, 'wc_facebook_for_woocommerce_lifecycle_events', '[{\"name\":\"install\",\"time\":1589499054,\"version\":\"1.11.2\"}]', 'no'),
(354, 'wc_facebook_for_woocommerce_version', '1.11.2', 'yes'),
(360, 'jetpack_activated', '1', 'yes'),
(363, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(364, 'jetpack_sync_settings_disable', '0', 'yes'),
(365, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"8.5:1589499089\";s:11:\"old_version\";s:14:\"8.5:1589499089\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}', 'yes'),
(366, 'wc_connect_options', 'a:1:{s:12:\"tos_accepted\";b:1;}', 'yes'),
(369, 'jetpack_testimonial', '0', 'yes'),
(372, 'jetpack_available_modules', 'a:1:{s:3:\"8.5\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(379, 'do_activate', '0', 'yes'),
(385, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(391, 'current_theme', 'Orchid Store', 'yes'),
(392, 'theme_mods_orchid-store', 'a:17:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:23;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589829821;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:19:\"woocommerce-sidebar\";a:0:{}}}s:32:\"orchid_store_field_primary_color\";s:7:\"#0286e7\";s:34:\"orchid_store_field_secondary_color\";s:7:\"#f2752e\";s:57:\"orchid_store_field_enable_parallax_page_header_background\";b:0;s:40:\"orchid_store_field_blog_sidebar_position\";s:4:\"left\";s:16:\"background_color\";s:6:\"ffffff\";s:36:\"orchid_store_field_blog_display_cats\";b:1;s:36:\"orchid_store_field_blog_display_date\";b:1;s:38:\"orchid_store_field_blog_display_author\";b:1;s:39:\"orchid_store_field_archive_display_cats\";b:1;s:39:\"orchid_store_field_display_special_menu\";b:1;s:40:\"orchid_store_field_enable_sticky_sidebar\";b:1;s:47:\"orchid_store_field_enable_sidebar_small_devices\";b:1;s:47:\"orchid_store_field_woocommerce_sidebar_position\";s:4:\"none\";}', 'yes'),
(393, 'theme_switched', '', 'yes'),
(394, 'widget_orchid-store-banner-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(395, 'widget_orchid-store-post-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(396, 'widget_orchid-store-advertisement-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(397, 'widget_orchid-store-services-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(398, 'widget_orchid-store-about-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(399, 'widget_orchid-store-featured-product-categories-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(400, 'widget_orchid-store-products-filter-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(401, 'widget_orchid-store-products-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(402, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(413, 'theme_mods_sydney', 'a:5:{i:0;b:0;s:19:\"forked_owl_carousel\";b:1;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589499535;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}}}}', 'yes'),
(414, 'elementor_disable_color_schemes', 'yes', 'yes'),
(415, 'elementor_disable_typography_schemes', 'yes', 'yes'),
(418, 'kk_wc_welcome_message_dismissed', '1', 'yes'),
(426, 'widget_sydney_contact_info', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(514, 'wc_facebook_feed_url_secret', 'b9b0fd12afc2b37d47137cb3a3b40e01', 'yes'),
(518, 'woocommerce_helper_data', 'a:2:{s:4:\"auth\";a:5:{s:12:\"access_token\";s:40:\"cccd100d15dab7ea1103f12de4ec105ee4081a41\";s:19:\"access_token_secret\";s:40:\"e713c4d03c5bc7c887b792fef6595eda64e54ff1\";s:7:\"site_id\";i:531827;s:7:\"user_id\";i:1;s:7:\"updated\";i:1589503305;}s:14:\"auth_user_data\";a:2:{s:4:\"name\";s:9:\"wp1430177\";s:5:\"email\";s:18:\"1430177@upv.edu.mx\";}}', 'yes'),
(519, 'woocommerce_tracker_last_send', '1591033078', 'yes'),
(526, 'woocommerce_admin-wc-helper-last-refresh', '1591033078', 'yes'),
(569, 'woocommerce_tracker_ua', 'a:2:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";i:1;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";}', 'yes'),
(614, 'theme_mods_rife-free', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590093638;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"blog-widget-area\";a:0:{}s:16:\"post-widget-area\";a:0:{}s:16:\"page-widget-area\";a:0:{}s:16:\"shop-widget-area\";a:0:{}s:16:\"side-widget-area\";a:0:{}s:18:\"basket-widget-area\";a:0:{}s:18:\"header-widget-area\";a:0:{}s:18:\"footer-widget-area\";a:0:{}}}}', 'yes'),
(616, 'a13_rife-free_rating', '1589829825', 'yes'),
(619, 'a13_force_to_flush', 'off', 'yes'),
(620, 'a13_user_css_update', 'off', 'yes'),
(621, 'widget_a13-shortcodes', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(636, 'woocommerce_task_list_tracked_completed_tasks', 'a:3:{i:0;s:7:\"connect\";i:1;s:8:\"products\";i:2;s:8:\"payments\";}', 'yes'),
(640, 'wc_ppec_version', '1.6.21', 'yes'),
(662, 'category_children', 'a:0:{}', 'yes'),
(665, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}', 'yes'),
(666, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(668, 'widget_contact-info', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(669, 'widget_filter', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(670, 'widget_popular-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(671, 'widget_recent-albums', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(672, 'widget_recent-works', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(673, 'widget_related-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(674, 'widget_a13-social-icons', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(696, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:18:\"1430177@upv.edu.mx\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:18:\"1430177@upv.edu.mx\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:26:\"cali_magnifico@hotmail.com\";s:12:\"api_password\";s:8:\"drakoz09\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(699, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(701, 'woocommerce_task_list_payments', 'a:1:{s:9:\"completed\";i:1;}', 'yes'),
(760, 'woocommerce_sales_record_date', '2020-05-18', 'yes'),
(761, 'woocommerce_sales_record_amount', '45598', 'yes'),
(811, 'product_cat_children', 'a:0:{}', 'yes'),
(1123, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(1184, 'ai1wm_updater', 'a:1:{s:38:\"all-in-one-wp-migration-file-extension\";a:13:{s:4:\"name\";s:14:\"File Extension\";s:4:\"slug\";s:14:\"file-extension\";s:8:\"homepage\";s:31:\"https://import.wp-migration.com\";s:13:\"download_link\";s:74:\"https://import.wp-migration.com/all-in-one-wp-migration-file-extension.zip\";s:7:\"version\";s:3:\"1.6\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:60:\"<ul class=\"description\"><li>Import from file</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:71:\"https://import.wp-migration.com/img/products/file-extension-772x250.png\";s:4:\"high\";s:72:\"https://import.wp-migration.com/img/products/file-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-128x128.png\";s:2:\"2x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";s:7:\"default\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}', 'yes'),
(1266, 'woocommerce_ppec_paypal_settings', 'a:60:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:16:\"account_settings\";s:0:\"\";s:11:\"environment\";s:4:\"live\";s:15:\"api_credentials\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:15:\"api_certificate\";s:0:\"\";s:11:\"api_subject\";s:0:\"\";s:23:\"sandbox_api_credentials\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:23:\"sandbox_api_certificate\";s:0:\"\";s:19:\"sandbox_api_subject\";s:0:\"\";s:22:\"paypal_hosted_settings\";s:0:\"\";s:10:\"brand_name\";s:15:\"Tienda en Linea\";s:14:\"logo_image_url\";s:0:\"\";s:16:\"header_image_url\";s:0:\"\";s:10:\"page_style\";s:0:\"\";s:12:\"landing_page\";s:5:\"Login\";s:8:\"advanced\";s:0:\"\";s:5:\"debug\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:15:\"require_billing\";s:2:\"no\";s:20:\"require_phone_number\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:16:\"instant_payments\";s:2:\"no\";s:26:\"subtotal_mismatch_behavior\";s:3:\"add\";s:15:\"button_settings\";s:0:\"\";s:7:\"use_spb\";s:3:\"yes\";s:12:\"button_color\";s:4:\"gold\";s:12:\"button_shape\";s:4:\"rect\";s:13:\"button_layout\";s:8:\"vertical\";s:11:\"button_size\";s:10:\"responsive\";s:20:\"hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:14:\"credit_enabled\";s:3:\"yes\";s:21:\"cart_checkout_enabled\";s:3:\"yes\";s:18:\"mini_cart_settings\";s:0:\"\";s:25:\"mini_cart_settings_toggle\";s:2:\"no\";s:23:\"mini_cart_button_layout\";s:8:\"vertical\";s:21:\"mini_cart_button_size\";s:10:\"responsive\";s:30:\"mini_cart_hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:24:\"mini_cart_credit_enabled\";s:3:\"yes\";s:23:\"single_product_settings\";s:0:\"\";s:34:\"checkout_on_single_product_enabled\";s:3:\"yes\";s:30:\"single_product_settings_toggle\";s:3:\"yes\";s:28:\"single_product_button_layout\";s:10:\"horizontal\";s:26:\"single_product_button_size\";s:10:\"responsive\";s:35:\"single_product_hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:29:\"single_product_credit_enabled\";s:3:\"yes\";s:13:\"mark_settings\";s:0:\"\";s:12:\"mark_enabled\";s:3:\"yes\";s:20:\"mark_settings_toggle\";s:2:\"no\";s:18:\"mark_button_layout\";s:8:\"vertical\";s:16:\"mark_button_size\";s:10:\"responsive\";s:25:\"mark_hide_funding_methods\";a:1:{i:0;s:4:\"CARD\";}s:19:\"mark_credit_enabled\";s:3:\"yes\";}', 'yes'),
(1270, 'active_plugins', 'a:10:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:81:\"all-in-one-wp-migration-file-extension/all-in-one-wp-migration-file-extension.php\";i:2;s:63:\"apollo13-framework-extensions/apollo13-framework-extensions.php\";i:3;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:4;s:19:\"jetpack/jetpack.php\";i:5;s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";i:6;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:7;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:8;s:45:\"woocommerce-services/woocommerce-services.php\";i:9;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(1271, 'ai1wm_secret_key', '7mCMETDqV4UJ', 'yes'),
(1272, 'ai1wm_backups_labels', 'a:0:{}', 'yes'),
(1273, 'ai1wm_sites_links', 'a:0:{}', 'yes'),
(1275, 'ai1wmte_plugin_key', '1', 'yes'),
(1276, 'ai1wm_status', 'a:3:{s:4:\"type\";s:5:\"error\";s:5:\"title\";s:27:\"No ha sido posible exportar\";s:7:\"message\";s:235:\"Out of disk space. Unable to write content to file. File: /storage/ssd1/584/13801584/public_html/wp-content/plugins/all-in-one-wp-migration/storage/7x1or5k40k97/tiendaelectronicaonlineweb.000webhostapp.com-20200527-221329-qdoj5k.wpress\";}', 'yes'),
(1277, 'template', 'orchid-store', 'yes'),
(1278, 'stylesheet', 'orchid-store', 'yes'),
(1279, 'jetpack_active_modules', 'a:0:{}', 'yes'),
(1282, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(1283, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(1334, '_site_transient_timeout_php_check_0b33beef925141e64ee7657dbe3ef273', '1591212744', 'no'),
(1335, '_site_transient_php_check_0b33beef925141e64ee7657dbe3ef273', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1340, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"6\",\"critical\":\"0\"}', 'yes'),
(1354, '_transient_woocommerce_reports-transient-version', '1591033087', 'yes'),
(1355, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1356, '_transient_shipping-transient-version', '1590609111', 'yes'),
(1357, '_transient_timeout_wc_shipping_method_count_legacy', '1593201111', 'no'),
(1358, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1590609111\";s:5:\"value\";i:0;}', 'no'),
(1364, '_transient_timeout_jetpack_file_data_8.5', '1593114740', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1365, '_transient_jetpack_file_data_8.5', 'a:52:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:102:\"Help visitors quickly find answers with highly relevant instant search results and powerful filtering.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:51:\"sso, single sign on, login, log in, 2fa, two-factor\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"21b59e7bb3fe0784e7525ad11ad8a8f6\";a:14:{s:4:\"name\";s:21:\"WooCommerce Analytics\";s:11:\"description\";s:53:\"Enhanced analytics for WooCommerce and Jetpack users.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"8.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Other, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:69:\"woocommerce, analytics, stats, statistics, tracking, analytics, views\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}', 'no'),
(1366, '_transient_timeout_sv_wc_plugin_wc_versions', '1591213941', 'no'),
(1367, '_transient_sv_wc_plugin_wc_versions', 'a:61:{i:0;s:5:\"4.1.1\";i:1;s:5:\"4.1.0\";i:2;s:5:\"4.0.1\";i:3;s:5:\"4.0.0\";i:4;s:5:\"3.9.3\";i:5;s:5:\"3.9.2\";i:6;s:5:\"3.9.1\";i:7;s:5:\"3.9.0\";i:8;s:5:\"3.8.1\";i:9;s:5:\"3.8.0\";i:10;s:5:\"3.7.1\";i:11;s:5:\"3.7.0\";i:12;s:5:\"3.6.5\";i:13;s:5:\"3.6.4\";i:14;s:5:\"3.6.3\";i:15;s:5:\"3.6.2\";i:16;s:5:\"3.6.1\";i:17;s:5:\"3.6.0\";i:18;s:5:\"3.5.8\";i:19;s:5:\"3.5.7\";i:20;s:5:\"3.5.6\";i:21;s:5:\"3.5.5\";i:22;s:5:\"3.5.4\";i:23;s:5:\"3.5.3\";i:24;s:5:\"3.5.2\";i:25;s:5:\"3.5.1\";i:26;s:5:\"3.5.0\";i:27;s:5:\"3.4.7\";i:28;s:5:\"3.4.6\";i:29;s:5:\"3.4.5\";i:30;s:5:\"3.4.4\";i:31;s:5:\"3.4.3\";i:32;s:5:\"3.4.2\";i:33;s:5:\"3.4.1\";i:34;s:5:\"3.4.0\";i:35;s:5:\"3.3.5\";i:36;s:5:\"3.3.4\";i:37;s:5:\"3.3.3\";i:38;s:5:\"3.3.2\";i:39;s:5:\"3.3.1\";i:40;s:5:\"3.3.0\";i:41;s:5:\"3.2.6\";i:42;s:5:\"3.2.5\";i:43;s:5:\"3.2.4\";i:44;s:5:\"3.2.3\";i:45;s:5:\"3.2.2\";i:46;s:5:\"3.2.1\";i:47;s:5:\"3.2.0\";i:48;s:5:\"3.1.2\";i:49;s:5:\"3.1.1\";i:50;s:5:\"3.1.0\";i:51;s:5:\"3.0.9\";i:52;s:5:\"3.0.8\";i:53;s:5:\"3.0.7\";i:54;s:5:\"3.0.6\";i:55;s:5:\"3.0.5\";i:56;s:5:\"3.0.4\";i:57;s:5:\"3.0.3\";i:58;s:5:\"3.0.2\";i:59;s:5:\"3.0.1\";i:60;s:5:\"3.0.0\";}', 'no'),
(1368, '_transient_timeout_orders-all-statuses', '1591637984', 'no'),
(1369, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1591033087\";s:5:\"value\";a:1:{i:0;s:13:\"wc-processing\";}}', 'no'),
(1373, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1374, '_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459', '1591214037', 'no'),
(1375, '_site_transient_browser_31f552011cd49d12bc3cd930bb193459', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1376, '_transient_timeout_wc_low_stock_count', '1593201237', 'no'),
(1377, '_transient_wc_low_stock_count', '0', 'no'),
(1378, '_transient_timeout_wc_outofstock_count', '1593201237', 'no'),
(1379, '_transient_wc_outofstock_count', '0', 'no'),
(1380, '_transient_product_query-transient-version', '1590609670', 'yes'),
(1404, '_transient_timeout_wc_term_counts', '1593201833', 'no'),
(1405, '_transient_wc_term_counts', 'a:5:{i:20;s:1:\"2\";i:21;s:1:\"6\";i:16;s:1:\"5\";i:19;s:1:\"5\";i:15;s:1:\"5\";}', 'no'),
(1407, 'woocommerce_shop_page_display', '', 'yes'),
(1471, '_transient_timeout_jetpack_idc_allowed', '1591036671', 'no'),
(1472, '_transient_jetpack_idc_allowed', '1', 'no'),
(1475, '_transient_timeout__woocommerce_helper_subscriptions', '1591036673', 'no'),
(1476, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1477, '_site_transient_timeout_theme_roots', '1591034873', 'no'),
(1478, '_site_transient_theme_roots', 'a:8:{s:13:\"glamour-world\";s:7:\"/themes\";s:12:\"orchid-store\";s:7:\"/themes\";s:9:\"rife-free\";s:7:\"/themes\";s:7:\"shapely\";s:7:\"/themes\";s:6:\"sydney\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1479, '_transient_timeout__woocommerce_helper_updates', '1591076274', 'no'),
(1480, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1591033073;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1483, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"es_MX\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1591033076;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1484, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591033076;s:7:\"checked\";a:8:{s:13:\"glamour-world\";s:3:\"2.0\";s:12:\"orchid-store\";s:5:\"1.2.0\";s:9:\"rife-free\";s:5:\"2.4.8\";s:7:\"shapely\";s:5:\"1.2.8\";s:6:\"sydney\";s:4:\"1.62\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:9:\"rife-free\";a:6:{s:5:\"theme\";s:9:\"rife-free\";s:11:\"new_version\";s:5:\"2.4.9\";s:3:\"url\";s:39:\"https://wordpress.org/themes/rife-free/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/rife-free.2.4.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.3.0\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1485, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591033077;s:7:\"checked\";a:15:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.22\";s:81:\"all-in-one-wp-migration-file-extension/all-in-one-wp-migration-file-extension.php\";s:3:\"1.6\";s:63:\"apollo13-framework-extensions/apollo13-framework-extensions.php\";s:5:\"1.8.4\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:6:\"1.11.2\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:5:\"1.0.4\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:6:\"7.10.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"jetpack/jetpack.php\";s:3:\"8.5\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.4.0\";s:46:\"under-construction-page/under-construction.php\";s:4:\"3.75\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.1.0\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:6:\"1.6.21\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.23.0\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.6.0.2\";}s:8:\"response\";a:3:{s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.11.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.11.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.2.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.1.0\";s:7:\"updated\";s:19:\"2020-05-20 18:45:51\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/4.1.0/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.1.0\";s:7:\"updated\";s:19:\"2020-05-20 18:45:46\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/4.1.0/es_MX.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:11:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.22\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.22.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2246309\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2246309\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2246309\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2246309\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"apollo13-framework-extensions/apollo13-framework-extensions.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/apollo13-framework-extensions\";s:4:\"slug\";s:29:\"apollo13-framework-extensions\";s:6:\"plugin\";s:63:\"apollo13-framework-extensions/apollo13-framework-extensions.php\";s:11:\"new_version\";s:5:\"1.8.4\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/apollo13-framework-extensions/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/apollo13-framework-extensions.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/apollo13-framework-extensions/assets/icon-256x256.png?rev=1854162\";s:2:\"1x\";s:82:\"https://ps.w.org/apollo13-framework-extensions/assets/icon-128x128.png?rev=1854162\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/kliken-marketing-for-google\";s:4:\"slug\";s:27:\"kliken-marketing-for-google\";s:6:\"plugin\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/kliken-marketing-for-google/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/kliken-marketing-for-google.1.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";s:3:\"svg\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-1544x500.png?rev=2305036\";s:2:\"1x\";s:82:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-772x250.png?rev=2305038\";}s:11:\"banners_rtl\";a:0:{}}s:50:\"google-analytics-for-wordpress/googleanalytics.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:44:\"w.org/plugins/google-analytics-for-wordpress\";s:4:\"slug\";s:30:\"google-analytics-for-wordpress\";s:6:\"plugin\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:11:\"new_version\";s:6:\"7.10.4\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/google-analytics-for-wordpress/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/google-analytics-for-wordpress.7.10.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:83:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon-256x256.png?rev=1598927\";s:2:\"1x\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";s:3:\"svg\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-1544x500.png?rev=2159532\";s:2:\"1x\";s:85:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-772x250.png?rev=2159532\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"8.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.8.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:46:\"under-construction-page/under-construction.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/under-construction-page\";s:4:\"slug\";s:23:\"under-construction-page\";s:6:\"plugin\";s:46:\"under-construction-page/under-construction.php\";s:11:\"new_version\";s:4:\"3.75\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/under-construction-page/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/under-construction-page.3.75.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/under-construction-page/assets/icon-256x256.gif?rev=2284849\";s:2:\"1x\";s:76:\"https://ps.w.org/under-construction-page/assets/icon-128x128.gif?rev=2284852\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/under-construction-page/assets/banner-1544x500.png?rev=1628376\";s:2:\"1x\";s:78:\"https://ps.w.org/under-construction-page/assets/banner-772x250.png?rev=1575797\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.23.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.23.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.6.0.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.6.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1489, '_transient_timeout_wc_onboarding_product_data', '1591119480', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1490, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 01 Jun 2020 17:38:00 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:4:\"3892\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:27:\"X-WP-Total, X-WP-TotalPages\";s:28:\"access-control-allow-headers\";s:27:\"Authorization, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"dca3 87 202 3256\";s:3:\"age\";s:2:\"44\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:15612:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:15612:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277}]}\";s:3:\"raw\";s:16177:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Mon, 01 Jun 2020 17:38:00 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 3892\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages\r\nAccess-Control-Allow-Headers: Authorization, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: dca3 87 202 3256\r\nAge: 44\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Mon, 01 Jun 2020 17:38:00 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:4:\"3892\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:27:\"X-WP-Total, X-WP-TotalPages\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:27:\"Authorization, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"dca3 87 202 3256\";}s:3:\"age\";a:1:{i:0;s:2:\"44\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:81:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search?category=product-type\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1492, '_transient_timeout_jetpack_https_test', '1591119496', 'no'),
(1493, '_transient_jetpack_https_test', '1', 'no'),
(1494, '_transient_timeout_jetpack_https_test_message', '1591119496', 'no'),
(1495, '_transient_jetpack_https_test_message', '', 'no'),
(1496, '_site_transient_timeout_browser_3159e548b459a213a1c6a2a1736ee626', '1591637896', 'no'),
(1497, '_site_transient_browser_3159e548b459a213a1c6a2a1736ee626', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1498, '_transient_timeout_wc_report_sales_by_date', '1591121545', 'no'),
(1499, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"45ecd8a9b9d4a2b50aaf68dd5d4776e5\";a:0:{}s:32:\"77d507c23fab234695e81a954a4940c6\";a:0:{}s:32:\"a39e9645b76f1cf7bf556dd5de9d9534\";a:0:{}s:32:\"6b570d732b2e602051f8c4beed5dd3e4\";N;s:32:\"2240a919c8a99cb0d78cf85436df9347\";a:0:{}s:32:\"53992113e7592139e7da08e7554cf3ac\";a:0:{}s:32:\"3bd4607409257fe5ce6d8d0975bc2cdc\";a:0:{}s:32:\"9ec946239834e45823a1cc0d50c2cac4\";a:0:{}}', 'no'),
(1500, '_transient_timeout_wc_admin_report', '1591121545', 'no'),
(1501, '_transient_wc_admin_report', 'a:1:{s:32:\"3d97d11067636a434f90437e0b042eab\";a:0:{}}', 'no'),
(1502, '_site_transient_timeout_community-events-1c659d6924927f06f90dd86a5ea222b6', '1591076300', 'no'),
(1503, '_site_transient_community-events-1c659d6924927f06f90dd86a5ea222b6', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"187.136.25.0\";}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:22:\"WordCamp Europe Online\";s:3:\"url\";s:32:\"https://2020.europe.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-06-04 00:00:00\";s:8:\"end_date\";s:19:\"2020-06-06 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.1579438;s:9:\"longitude\";d:-8.6291053;}}}}', 'no'),
(1504, '_transient_timeout_feed_203ddaeab844647ccdc6525a1073e4d6', '1591076300', 'no'),
(1505, '_transient_timeout_feed_mod_203ddaeab844647ccdc6525a1073e4d6', '1591076300', 'no'),
(1506, '_transient_feed_mod_203ddaeab844647ccdc6525a1073e4d6', '1591033100', 'no'),
(1507, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1591076301', 'no'),
(1508, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1591076301', 'no'),
(1509, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1591033101', 'no'),
(1510, '_transient_timeout_dash_v2_3605f57d6641b1f6504fce9d39bcf566', '1591076301', 'no'),
(1511, '_transient_dash_v2_3605f57d6641b1f6504fce9d39bcf566', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://es-mx.wordpress.org/2020/04/30/wordpress-5-4-1/\'>WordPress 5.4.1</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ma.tt/2020/05/ceo-video-streaming/\'>Matt: Stream Like a CEO</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/gutenberg-8-2-includes-editing-flow-improvements-cover-block-content-positioning-and-pattern-categories?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=gutenberg-8-2-includes-editing-flow-improvements-cover-block-content-positioning-and-pattern-categories\'>WPTavern: Gutenberg 8.2 Includes Editing Flow Improvements, Cover Block Content Positioning, and Pattern Categories</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/google-search-to-introduce-new-page-experience-ranking-signal-in-2021?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=google-search-to-introduce-new-page-experience-ranking-signal-in-2021\'>WPTavern: Google Search to Introduce New Page Experience Ranking Signal in 2021</a></li></ul></div>', 'no'),
(1512, '_transient_timeout_woocommerce_admin_low_out_of_stock_count', '1591036784', 'no'),
(1513, '_transient_woocommerce_admin_low_out_of_stock_count', '0', 'no'),
(1521, '_site_transient_timeout_available_translations', '1591044519', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1522, '_site_transient_available_translations', 'a:122:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-31 13:46:18\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 08:41:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.14\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.14/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.13\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.13/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-16 06:26:18\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-17 13:16:49\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 06:27:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-27 14:39:02\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-18 08:28:16\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-20 09:36:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-19 19:54:21\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 13:49:05\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.4.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 08:19:53\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 08:20:18\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 13:48:51\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-28 09:41:30\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 06:28:24\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 22:03:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 09:33:04\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-08 05:34:29\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-28 09:08:47\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 22:04:10\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-04 01:49:30\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-15 19:01:12\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 07:32:04\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-31 09:30:36\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 13:33:56\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-24 19:45:47\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 17:57:39\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 08:36:50\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-24 09:39:32\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 14:22:41\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 12:25:22\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 21:16:26\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-30 09:42:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-18 15:51:49\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 19:34:46\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 12:18:53\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 23:17:45\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 21:40:48\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-30 15:16:11\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 04:31:01\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-30 07:54:16\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-24 12:23:59\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.14\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.14/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-21 16:29:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-06 14:36:42\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.13\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.13/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 19:43:01\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-25 07:13:37\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 14:42:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-14 13:52:48\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-25 09:47:39\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 23:19:07\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-15 10:13:20\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-16 02:27:25\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 09:19:21\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 06:42:14\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-30 14:51:08\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-27 06:26:12\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-27 17:42:38\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 15:07:21\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-01 01:42:23\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 16:02:59\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-27 08:54:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 19:27:37\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 01:47:18\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.5\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.5/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.9\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.9/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 06:34:34\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 20:54:59\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(6, 7, '_wp_attached_file', 'woocommerce-placeholder.png'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 18, '_edit_lock', '1589499740:1'),
(17, 18, '_wp_trash_meta_status', 'publish'),
(18, 18, '_wp_trash_meta_time', '1589499748'),
(19, 19, '_edit_last', '1'),
(20, 19, '_edit_lock', '1589837494:1'),
(21, 20, '_wp_attached_file', '2020/05/HPOMEN.jpg'),
(22, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:18:\"2020/05/HPOMEN.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"HPOMEN-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"HPOMEN-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"HPOMEN-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:34:\"orchid-store-thumbnail-extra-large\";a:4:{s:4:\"file\";s:18:\"HPOMEN-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"orchid-store-thumbnail-large\";a:4:{s:4:\"file\";s:18:\"HPOMEN-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"HPOMEN-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"HPOMEN-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"HPOMEN-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"HPOMEN-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"HPOMEN-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"HPOMEN-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 19, '_thumbnail_id', '20'),
(24, 19, '_regular_price', '39999'),
(25, 19, '_sale_price', '38000'),
(26, 19, 'total_sales', '1'),
(27, 19, '_tax_status', 'taxable'),
(28, 19, '_tax_class', ''),
(29, 19, '_manage_stock', 'no'),
(30, 19, '_backorders', 'no'),
(31, 19, '_sold_individually', 'no'),
(32, 19, '_virtual', 'no'),
(33, 19, '_downloadable', 'no'),
(34, 19, '_download_limit', '-1'),
(35, 19, '_download_expiry', '-1'),
(36, 19, '_stock', NULL),
(37, 19, '_stock_status', 'instock'),
(38, 19, '_wc_average_rating', '0'),
(39, 19, '_wc_review_count', '0'),
(40, 19, '_product_version', '4.1.0'),
(41, 19, '_price', '38000'),
(42, 19, '_wc_facebook_sync_enabled', 'no'),
(43, 22, '_edit_last', '1'),
(44, 22, '_edit_lock', '1589837544:1'),
(45, 22, '_oembed_a2773f0fedeca753225f194368e78c39', '{{unknown}}'),
(46, 23, '_wp_attached_file', '2020/05/c06403836.jpg'),
(47, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:170;s:6:\"height\";i:190;s:4:\"file\";s:21:\"2020/05/c06403836.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"c06403836-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"c06403836-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"c06403836-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 22, '_thumbnail_id', '23'),
(49, 22, '_regular_price', '4000'),
(50, 22, '_sale_price', '3799'),
(51, 22, 'total_sales', '2'),
(52, 22, '_tax_status', 'taxable'),
(53, 22, '_tax_class', ''),
(54, 22, '_manage_stock', 'no'),
(55, 22, '_backorders', 'no'),
(56, 22, '_sold_individually', 'no'),
(57, 22, '_virtual', 'no'),
(58, 22, '_downloadable', 'no'),
(59, 22, '_download_limit', '-1'),
(60, 22, '_download_expiry', '-1'),
(61, 22, '_stock', NULL),
(62, 22, '_stock_status', 'instock'),
(63, 22, '_wc_average_rating', '0'),
(64, 22, '_wc_review_count', '0'),
(65, 22, '_product_version', '4.1.0'),
(66, 22, '_price', '3799'),
(67, 22, '_wc_facebook_sync_enabled', 'no'),
(68, 24, '_wp_attached_file', '2020/05/electronicos.jpg'),
(69, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2319;s:6:\"height\";i:1305;s:4:\"file\";s:24:\"2020/05/electronicos.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"electronicos-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"electronicos-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"electronicos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"electronicos-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"electronicos-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"electronicos-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:34:\"orchid-store-thumbnail-extra-large\";a:4:{s:4:\"file\";s:24:\"electronicos-800x600.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"orchid-store-thumbnail-large\";a:4:{s:4:\"file\";s:24:\"electronicos-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"electronicos-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"electronicos-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"electronicos-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"electronicos-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"electronicos-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"electronicos-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 29, '_edit_last', '1'),
(80, 29, '_alt_link', ''),
(81, 29, '_subtitle', ''),
(82, 29, '_brick_ratio_x', '1'),
(83, 29, '_cover_color', 'rgba(0,0,0, 0.7)'),
(84, 29, '_exclude_in_works_list', 'off'),
(85, 29, '_order', 'ASC'),
(86, 29, '_enable_desc', 'off'),
(87, 29, '_theme', 'bricks'),
(88, 29, '_brick_columns', '3'),
(89, 29, '_bricks_max_width', '1920px'),
(90, 29, '_brick_margin', '0px'),
(91, 29, '_bricks_proportions_size', '0'),
(92, 29, '_bricks_lightbox', 'on'),
(93, 29, '_bricks_lightbox_mobile', 'on'),
(94, 29, '_slide_cover_color', 'rgba(0,0,0, 0.7)'),
(95, 29, '_bricks_hover', 'cross'),
(96, 29, '_bricks_title_position', 'bottom_center'),
(97, 29, '_bricks_overlay_cover', 'off'),
(98, 29, '_bricks_overlay_cover_hover', 'on'),
(99, 29, '_bricks_overlay_gradient', 'off'),
(100, 29, '_bricks_overlay_gradient_hover', 'off'),
(101, 29, '_bricks_overlay_texts', 'off'),
(102, 29, '_bricks_overlay_texts_hover', 'on'),
(103, 29, '_slider_window_high', 'off'),
(104, 29, '_slider_width_proportion', '16'),
(105, 29, '_slider_height_proportion', '9'),
(106, 29, '_fit_variant', '4'),
(107, 29, '_autoplay', 'G'),
(108, 29, '_transition', '-1'),
(109, 29, '_ken_scale', '120%'),
(110, 29, '_gradient', 'off'),
(111, 29, '_slide_title_bg_color', ''),
(112, 29, '_pattern', '0'),
(113, 29, '_thumbs', 'G'),
(114, 29, '_thumbs_on_load', 'off'),
(115, 29, '_slider_bg_color', ''),
(116, 29, '_media_margin_top', '0px'),
(117, 29, '_media_margin_bottom', '0px'),
(118, 29, '_content_layout', 'global'),
(119, 29, '_content_padding', 'both'),
(120, 29, '_content_side_padding', 'both'),
(121, 29, '_content_under_header', 'G'),
(122, 29, '_title_bar_settings', 'global'),
(123, 29, '_title_bar_position', 'outside'),
(124, 29, '_title_bar_variant', 'classic'),
(125, 29, '_title_bar_width', 'full'),
(126, 29, '_title_bar_image_fit', 'repeat'),
(127, 29, '_title_bar_parallax', 'off'),
(128, 29, '_title_bar_parallax_type', 'tb'),
(129, 29, '_title_bar_parallax_speed', '1.00'),
(130, 29, '_title_bar_bg_color', ''),
(131, 29, '_title_bar_title_color', ''),
(132, 29, '_title_bar_color_1', ''),
(133, 29, '_title_bar_space_width', '40px'),
(134, 29, '_breadcrumbs', 'on'),
(135, 29, '_content_categories', 'G'),
(136, 29, '_page_bg_settings', 'global'),
(137, 29, '_page_image', ''),
(138, 29, '_page_image_fit', 'cover'),
(139, 29, '_page_bg_color', ''),
(140, 29, '_www', ''),
(141, 29, '_custom_1', ''),
(142, 29, '_custom_2', ''),
(143, 29, '_custom_3', ''),
(144, 29, '_custom_4', ''),
(145, 29, '_custom_5', ''),
(146, 29, '_images_n_videos', '[]'),
(147, 29, '_edit_lock', '1589830328:1'),
(148, 22, '_wp_old_date', '2020-05-14'),
(149, 30, '_order_key', 'wc_order_ZyxNGjFgT1ISZ'),
(150, 30, '_customer_user', '1'),
(151, 30, '_payment_method', 'cod'),
(152, 30, '_payment_method_title', 'Cash on delivery'),
(153, 30, '_customer_ip_address', '::1'),
(154, 30, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36'),
(155, 30, '_created_via', 'checkout'),
(156, 30, '_cart_hash', 'b07e59a808f49b4664a7e751b9d74cf3'),
(157, 30, '_billing_first_name', 'oscar'),
(158, 30, '_billing_last_name', 'rosas'),
(159, 30, '_billing_address_1', 'avenida'),
(160, 30, '_billing_city', 'victoria'),
(161, 30, '_billing_state', 'TM'),
(162, 30, '_billing_postcode', '87087'),
(163, 30, '_billing_country', 'MX'),
(164, 30, '_billing_email', '1430177@upv.edu.mx'),
(165, 30, '_billing_phone', '8341555628'),
(166, 30, '_order_currency', 'MXN'),
(167, 30, '_cart_discount', '0'),
(168, 30, '_cart_discount_tax', '0'),
(169, 30, '_order_shipping', '0.00'),
(170, 30, '_order_shipping_tax', '0'),
(171, 30, '_order_tax', '0'),
(172, 30, '_order_total', '45598.00'),
(173, 30, '_order_version', '4.1.0'),
(174, 30, '_prices_include_tax', 'no'),
(175, 30, '_billing_address_index', 'oscar rosas  avenida  victoria TM 87087 MX 1430177@upv.edu.mx 8341555628'),
(176, 30, '_shipping_address_index', '        '),
(177, 30, 'is_vat_exempt', 'no'),
(178, 30, '_download_permissions_granted', 'yes'),
(179, 30, '_recorded_sales', 'yes'),
(180, 30, '_recorded_coupon_usage_counts', 'yes'),
(181, 30, '_order_stock_reduced', 'yes'),
(182, 31, '_wp_attached_file', '2020/05/pcgamer.jpg'),
(183, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2020/05/pcgamer.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"pcgamer-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"pcgamer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"pcgamer-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"pcgamer-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"pcgamer-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"pcgamer-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"pcgamer-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"pcgamer-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"pcgamer-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 32, '_wp_attached_file', '2020/05/accesorios.jpg'),
(185, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1300;s:4:\"file\";s:22:\"2020/05/accesorios.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"accesorios-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"accesorios-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"accesorios-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"accesorios-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"accesorios-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"accesorios-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"accesorios-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"accesorios-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"accesorios-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"accesorios-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:195:\"Computer parts network component accessories various electronics devices and desktop pc processor drive hardware memory card vector illustration. Electronics network component accessories symbol.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:145:\"Computer parts network component accessories various electronics devices and desktop pc processor drive hardware memory card vector illustration.\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:50:{i:0;s:12:\"illustration\";i:1;s:6:\"vector\";i:2;s:8:\"computer\";i:3;s:3:\"set\";i:4;s:4:\"icon\";i:5;s:4:\"chip\";i:6;s:4:\"part\";i:7;s:6:\"memory\";i:8;s:5:\"drive\";i:9;s:8:\"hardware\";i:10;s:4:\"card\";i:11;s:3:\"cpu\";i:12;s:10:\"technology\";i:13;s:4:\"hard\";i:14;s:2:\"pc\";i:15;s:9:\"processor\";i:16;s:3:\"ram\";i:17;s:11:\"motherboard\";i:18;s:3:\"web\";i:19;s:7:\"monitor\";i:20;s:5:\"mouse\";i:21;s:6:\"device\";i:22;s:4:\"disk\";i:23;s:11:\"electronics\";i:24;s:6:\"symbol\";i:25;s:6:\"design\";i:26;s:8:\"internet\";i:27;s:5:\"video\";i:28;s:3:\"hdd\";i:29;s:7:\"network\";i:30;s:9:\"component\";i:31;s:11:\"accessories\";i:32;s:7:\"desktop\";i:33;s:7:\"graphic\";i:34;s:3:\"fan\";i:35;s:8:\"keyboard\";i:36;s:9:\"pictogram\";i:37;s:6:\"cooler\";i:38;s:3:\"dvd\";i:39;s:10:\"connection\";i:40;s:5:\"power\";i:41;s:8:\"isolated\";i:42;s:4:\"data\";i:43;s:13:\"configuration\";i:44;s:8:\"detailed\";i:45;s:4:\"case\";i:46;s:8:\"elements\";i:47;s:6:\"server\";i:48;s:6:\"router\";i:49;s:14:\"computer parts\";}}}'),
(186, 33, '_wp_attached_file', '2020/05/audifonos.jpg'),
(187, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:21:\"2020/05/audifonos.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"audifonos-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"audifonos-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"audifonos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"audifonos-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"audifonos-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"audifonos-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"audifonos-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"audifonos-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"audifonos-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"audifonos-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 34, '_edit_last', '1'),
(189, 34, '_edit_lock', '1589902055:1'),
(190, 34, '_thumbnail_id', '33'),
(191, 34, '_regular_price', '500'),
(192, 34, '_sale_price', '489'),
(193, 34, 'total_sales', '0'),
(194, 34, '_tax_status', 'taxable'),
(195, 34, '_tax_class', ''),
(196, 34, '_manage_stock', 'no'),
(197, 34, '_backorders', 'no'),
(198, 34, '_sold_individually', 'no'),
(199, 34, '_virtual', 'no'),
(200, 34, '_downloadable', 'no'),
(201, 34, '_download_limit', '-1'),
(202, 34, '_download_expiry', '-1'),
(203, 34, '_stock', NULL),
(204, 34, '_stock_status', 'instock'),
(205, 34, '_wc_average_rating', '0'),
(206, 34, '_wc_review_count', '0'),
(207, 34, '_product_version', '4.1.0'),
(208, 34, '_price', '489'),
(209, 34, '_wc_facebook_sync_enabled', 'no'),
(210, 35, '_edit_last', '1'),
(211, 35, '_edit_lock', '1589902273:1'),
(212, 36, '_wp_attached_file', '2020/05/audifonos-1.jpg'),
(213, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:335;s:6:\"height\";i:355;s:4:\"file\";s:23:\"2020/05/audifonos-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"audifonos-1-283x300.jpg\";s:5:\"width\";i:283;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"audifonos-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"audifonos-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"audifonos-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"audifonos-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"audifonos-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 35, '_thumbnail_id', '36'),
(215, 35, '_regular_price', '600'),
(216, 35, '_sale_price', '589'),
(217, 35, 'total_sales', '0'),
(218, 35, '_tax_status', 'taxable'),
(219, 35, '_tax_class', ''),
(220, 35, '_manage_stock', 'no'),
(221, 35, '_backorders', 'no'),
(222, 35, '_sold_individually', 'no'),
(223, 35, '_virtual', 'no'),
(224, 35, '_downloadable', 'no'),
(225, 35, '_download_limit', '-1'),
(226, 35, '_download_expiry', '-1'),
(227, 35, '_stock', NULL),
(228, 35, '_stock_status', 'instock'),
(229, 35, '_wc_average_rating', '0'),
(230, 35, '_wc_review_count', '0'),
(231, 35, '_product_version', '4.1.0'),
(232, 35, '_price', '589'),
(233, 35, '_wc_facebook_sync_enabled', 'no'),
(234, 37, '_edit_last', '1'),
(235, 37, '_edit_lock', '1589904071:1'),
(236, 38, '_wp_attached_file', '2020/05/audifx.jpg'),
(237, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:664;s:4:\"file\";s:18:\"2020/05/audifx.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"audifx-300x293.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"audifx-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"audifx-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"audifx-600x587.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"audifx-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"audifx-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"audifx-600x587.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:587;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"audifx-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 37, '_thumbnail_id', '38'),
(239, 37, '_regular_price', '300'),
(240, 37, '_sale_price', '229'),
(241, 37, 'total_sales', '0'),
(242, 37, '_tax_status', 'taxable'),
(243, 37, '_tax_class', ''),
(244, 37, '_manage_stock', 'no'),
(245, 37, '_backorders', 'no'),
(246, 37, '_sold_individually', 'no'),
(247, 37, '_virtual', 'no'),
(248, 37, '_downloadable', 'no'),
(249, 37, '_download_limit', '-1'),
(250, 37, '_download_expiry', '-1'),
(251, 37, '_stock', NULL),
(252, 37, '_stock_status', 'instock'),
(253, 37, '_wc_average_rating', '0'),
(254, 37, '_wc_review_count', '0'),
(255, 37, '_product_version', '4.1.0'),
(256, 37, '_price', '229'),
(257, 37, '_wc_facebook_sync_enabled', 'no'),
(258, 39, '_edit_last', '1'),
(259, 39, '_edit_lock', '1589904863:1'),
(260, 40, '_wp_attached_file', '2020/05/audifonos3.jpg'),
(261, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2020/05/audifonos3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"audifonos3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"audifonos3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"audifonos3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"audifonos3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"audifonos3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"audifonos3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"audifonos3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"audifonos3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"audifonos3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"audifonos3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 39, '_thumbnail_id', '40'),
(263, 39, '_regular_price', '1899'),
(264, 39, '_sale_price', '553'),
(265, 39, 'total_sales', '0'),
(266, 39, '_tax_status', 'taxable'),
(267, 39, '_tax_class', ''),
(268, 39, '_manage_stock', 'no'),
(269, 39, '_backorders', 'no'),
(270, 39, '_sold_individually', 'no'),
(271, 39, '_virtual', 'no'),
(272, 39, '_downloadable', 'no'),
(273, 39, '_download_limit', '-1'),
(274, 39, '_download_expiry', '-1'),
(275, 39, '_stock', NULL),
(276, 39, '_stock_status', 'instock'),
(277, 39, '_wc_average_rating', '0'),
(278, 39, '_wc_review_count', '0'),
(279, 39, '_product_version', '4.1.0'),
(280, 39, '_price', '553'),
(281, 39, '_wc_facebook_sync_enabled', 'no'),
(282, 41, '_edit_last', '1'),
(283, 41, '_edit_lock', '1589904507:1'),
(284, 42, '_wp_attached_file', '2020/05/audif4.jpg'),
(285, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:276;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2020/05/audif4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"audif4-166x300.jpg\";s:5:\"width\";i:166;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"audif4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"audif4-276x300.jpg\";s:5:\"width\";i:276;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"audif4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"audif4-276x300.jpg\";s:5:\"width\";i:276;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"audif4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 41, '_thumbnail_id', '42'),
(287, 41, '_regular_price', '800'),
(288, 41, '_sale_price', '780'),
(289, 41, 'total_sales', '0'),
(290, 41, '_tax_status', 'taxable'),
(291, 41, '_tax_class', ''),
(292, 41, '_manage_stock', 'no'),
(293, 41, '_backorders', 'no'),
(294, 41, '_sold_individually', 'no'),
(295, 41, '_virtual', 'no'),
(296, 41, '_downloadable', 'no'),
(297, 41, '_download_limit', '-1'),
(298, 41, '_download_expiry', '-1'),
(299, 41, '_stock', NULL),
(300, 41, '_stock_status', 'instock'),
(301, 41, '_wc_average_rating', '0'),
(302, 41, '_wc_review_count', '0'),
(303, 41, '_product_version', '4.1.0'),
(304, 41, '_price', '780'),
(305, 41, '_wc_facebook_sync_enabled', 'no'),
(306, 43, '_edit_last', '1'),
(307, 43, '_edit_lock', '1589904661:1'),
(308, 44, '_wp_attached_file', '2020/05/audif5.jpg'),
(309, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2020/05/audif5.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"audif5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"audif5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"audif5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"audif5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"audif5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"audif5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 43, '_thumbnail_id', '44'),
(311, 43, '_regular_price', '400'),
(312, 43, '_sale_price', '399'),
(313, 43, 'total_sales', '0'),
(314, 43, '_tax_status', 'taxable'),
(315, 43, '_tax_class', ''),
(316, 43, '_manage_stock', 'no'),
(317, 43, '_backorders', 'no'),
(318, 43, '_sold_individually', 'no'),
(319, 43, '_virtual', 'no'),
(320, 43, '_downloadable', 'no'),
(321, 43, '_download_limit', '-1'),
(322, 43, '_download_expiry', '-1'),
(323, 43, '_stock', NULL),
(324, 43, '_stock_status', 'instock'),
(325, 43, '_wc_average_rating', '0'),
(326, 43, '_wc_review_count', '0'),
(327, 43, '_product_version', '4.1.0'),
(328, 43, '_price', '399'),
(329, 43, '_wc_facebook_sync_enabled', 'no'),
(330, 45, '_edit_last', '1'),
(331, 45, '_edit_lock', '1589905284:1'),
(332, 46, '_wp_attached_file', '2020/05/lenovo.jpg'),
(333, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:287;s:4:\"file\";s:18:\"2020/05/lenovo.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"lenovo-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"lenovo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"lenovo-300x287.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:287;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"lenovo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"lenovo-300x287.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:287;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"lenovo-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 45, '_thumbnail_id', '46'),
(335, 45, '_regular_price', '32999'),
(336, 45, '_sale_price', '26000'),
(337, 45, 'total_sales', '0'),
(338, 45, '_tax_status', 'taxable'),
(339, 45, '_tax_class', ''),
(340, 45, '_manage_stock', 'no'),
(341, 45, '_backorders', 'no'),
(342, 45, '_sold_individually', 'no'),
(343, 45, '_virtual', 'no'),
(344, 45, '_downloadable', 'no'),
(345, 45, '_download_limit', '-1'),
(346, 45, '_download_expiry', '-1'),
(347, 45, '_stock', NULL),
(348, 45, '_stock_status', 'instock'),
(349, 45, '_wc_average_rating', '0'),
(350, 45, '_wc_review_count', '0'),
(351, 45, '_product_version', '4.1.0'),
(352, 45, '_price', '26000'),
(353, 45, '_wc_facebook_sync_enabled', 'no'),
(354, 47, '_edit_last', '1'),
(355, 47, '_edit_lock', '1589905424:1'),
(356, 48, '_wp_attached_file', '2020/05/IdeaPad-L340-Gaming.jpg'),
(357, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:399;s:6:\"height\";i:355;s:4:\"file\";s:31:\"2020/05/IdeaPad-L340-Gaming.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IdeaPad-L340-Gaming-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IdeaPad-L340-Gaming-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"IdeaPad-L340-Gaming-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"IdeaPad-L340-Gaming-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"IdeaPad-L340-Gaming-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"IdeaPad-L340-Gaming-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 47, '_thumbnail_id', '48'),
(359, 47, '_regular_price', '26999'),
(360, 47, '_sale_price', '25649'),
(361, 47, 'total_sales', '0'),
(362, 47, '_tax_status', 'taxable'),
(363, 47, '_tax_class', ''),
(364, 47, '_manage_stock', 'no'),
(365, 47, '_backorders', 'no'),
(366, 47, '_sold_individually', 'no'),
(367, 47, '_virtual', 'no'),
(368, 47, '_downloadable', 'no'),
(369, 47, '_download_limit', '-1'),
(370, 47, '_download_expiry', '-1'),
(371, 47, '_stock', NULL),
(372, 47, '_stock_status', 'instock'),
(373, 47, '_wc_average_rating', '0'),
(374, 47, '_wc_review_count', '0'),
(375, 47, '_product_version', '4.1.0'),
(376, 47, '_price', '25649'),
(377, 47, '_wc_facebook_sync_enabled', 'no'),
(378, 49, '_edit_last', '1'),
(379, 49, '_edit_lock', '1589905632:1'),
(380, 50, '_wp_attached_file', '2020/05/Amd.jpg'),
(381, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2020/05/Amd.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"Amd-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"Amd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"Amd-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"Amd-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"Amd-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"Amd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"Amd-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"Amd-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"Amd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(382, 49, '_thumbnail_id', '50'),
(383, 49, '_regular_price', '8999'),
(384, 49, '_sale_price', '7998'),
(385, 49, 'total_sales', '0'),
(386, 49, '_tax_status', 'taxable'),
(387, 49, '_tax_class', ''),
(388, 49, '_manage_stock', 'no'),
(389, 49, '_backorders', 'no'),
(390, 49, '_sold_individually', 'no'),
(391, 49, '_virtual', 'no'),
(392, 49, '_downloadable', 'no'),
(393, 49, '_download_limit', '-1'),
(394, 49, '_download_expiry', '-1'),
(395, 49, '_stock', NULL),
(396, 49, '_stock_status', 'instock'),
(397, 49, '_wc_average_rating', '0'),
(398, 49, '_wc_review_count', '0'),
(399, 49, '_product_version', '4.1.0'),
(400, 49, '_price', '7998'),
(401, 49, '_wc_facebook_sync_enabled', 'no'),
(402, 51, '_edit_last', '1'),
(403, 51, '_edit_lock', '1589905802:1'),
(404, 52, '_wp_attached_file', '2020/05/HP.jpg'),
(405, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:14:\"2020/05/HP.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"HP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"HP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"HP-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"HP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"HP-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"HP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"HP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"HP-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"HP-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(406, 51, '_thumbnail_id', '52'),
(407, 51, '_regular_price', '25000'),
(408, 51, '_sale_price', '22999'),
(409, 51, 'total_sales', '0'),
(410, 51, '_tax_status', 'taxable'),
(411, 51, '_tax_class', ''),
(412, 51, '_manage_stock', 'no'),
(413, 51, '_backorders', 'no'),
(414, 51, '_sold_individually', 'no'),
(415, 51, '_virtual', 'no'),
(416, 51, '_downloadable', 'no'),
(417, 51, '_download_limit', '-1'),
(418, 51, '_download_expiry', '-1'),
(419, 51, '_stock', NULL),
(420, 51, '_stock_status', 'instock'),
(421, 51, '_wc_average_rating', '0'),
(422, 51, '_wc_review_count', '0'),
(423, 51, '_product_version', '4.1.0'),
(424, 51, '_price', '22999'),
(425, 51, '_wc_facebook_sync_enabled', 'no'),
(426, 53, '_edit_last', '1'),
(427, 53, '_edit_lock', '1589906107:1'),
(428, 54, '_wp_attached_file', '2020/05/Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite.jpg'),
(429, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:72:\"2020/05/Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:72:\"Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(430, 53, '_thumbnail_id', '54'),
(431, 53, '_regular_price', '7320'),
(432, 53, '_sale_price', '5129'),
(433, 53, 'total_sales', '0'),
(434, 53, '_tax_status', 'taxable'),
(435, 53, '_tax_class', ''),
(436, 53, '_manage_stock', 'no'),
(437, 53, '_backorders', 'no'),
(438, 53, '_sold_individually', 'no'),
(439, 53, '_virtual', 'no'),
(440, 53, '_downloadable', 'no'),
(441, 53, '_download_limit', '-1'),
(442, 53, '_download_expiry', '-1'),
(443, 53, '_stock', NULL),
(444, 53, '_stock_status', 'instock'),
(445, 53, '_wc_average_rating', '0'),
(446, 53, '_wc_review_count', '0'),
(447, 53, '_product_version', '4.1.0'),
(448, 53, '_price', '5129'),
(449, 53, '_wc_facebook_sync_enabled', 'no'),
(450, 55, '_edit_last', '1'),
(451, 55, '_edit_lock', '1589906269:1'),
(452, 56, '_wp_attached_file', '2020/05/pcgamer1.jpg'),
(453, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:20:\"2020/05/pcgamer1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pcgamer1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"pcgamer1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pcgamer1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pcgamer1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"pcgamer1-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"pcgamer1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"pcgamer1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"pcgamer1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"pcgamer1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"pcgamer1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"pcgamer1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(454, 55, '_thumbnail_id', '56'),
(455, 55, '_regular_price', '12499'),
(456, 55, '_sale_price', '11899'),
(457, 55, 'total_sales', '0'),
(458, 55, '_tax_status', 'taxable'),
(459, 55, '_tax_class', ''),
(460, 55, '_manage_stock', 'no'),
(461, 55, '_backorders', 'no'),
(462, 55, '_sold_individually', 'no'),
(463, 55, '_virtual', 'no'),
(464, 55, '_downloadable', 'no'),
(465, 55, '_download_limit', '-1'),
(466, 55, '_download_expiry', '-1'),
(467, 55, '_stock', NULL),
(468, 55, '_stock_status', 'instock'),
(469, 55, '_wc_average_rating', '0'),
(470, 55, '_wc_review_count', '0'),
(471, 55, '_product_version', '4.1.0'),
(472, 55, '_price', '11899'),
(473, 55, '_wc_facebook_sync_enabled', 'no'),
(474, 57, '_edit_last', '1'),
(475, 57, '_edit_lock', '1589906570:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(476, 58, '_wp_attached_file', '2020/05/pcgamer2.jpg'),
(477, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:20:\"2020/05/pcgamer2.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pcgamer2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"pcgamer2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pcgamer2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pcgamer2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"pcgamer2-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"pcgamer2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"pcgamer2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"pcgamer2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"pcgamer2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"pcgamer2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"pcgamer2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(478, 57, '_thumbnail_id', '58'),
(479, 57, '_regular_price', '29058'),
(480, 57, '_sale_price', '28499'),
(481, 57, 'total_sales', '0'),
(482, 57, '_tax_status', 'taxable'),
(483, 57, '_tax_class', ''),
(484, 57, '_manage_stock', 'no'),
(485, 57, '_backorders', 'no'),
(486, 57, '_sold_individually', 'no'),
(487, 57, '_virtual', 'no'),
(488, 57, '_downloadable', 'no'),
(489, 57, '_download_limit', '-1'),
(490, 57, '_download_expiry', '-1'),
(491, 57, '_stock', NULL),
(492, 57, '_stock_status', 'instock'),
(493, 57, '_wc_average_rating', '0'),
(494, 57, '_wc_review_count', '0'),
(495, 57, '_product_version', '4.1.0'),
(496, 57, '_price', '28499'),
(497, 57, '_wc_facebook_sync_enabled', 'no'),
(498, 59, '_edit_last', '1'),
(499, 59, '_edit_lock', '1589906600:1'),
(500, 61, '_wp_attached_file', '2020/05/pc3.jpg'),
(501, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:15:\"2020/05/pc3.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"pc3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"pc3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"pc3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"pc3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"pc3-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"pc3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"pc3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"pc3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"pc3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"pc3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"pc3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(502, 59, '_thumbnail_id', '61'),
(503, 59, '_regular_price', '10099'),
(504, 59, '_sale_price', '9499'),
(505, 59, 'total_sales', '0'),
(506, 59, '_tax_status', 'taxable'),
(507, 59, '_tax_class', ''),
(508, 59, '_manage_stock', 'no'),
(509, 59, '_backorders', 'no'),
(510, 59, '_sold_individually', 'no'),
(511, 59, '_virtual', 'no'),
(512, 59, '_downloadable', 'no'),
(513, 59, '_download_limit', '-1'),
(514, 59, '_download_expiry', '-1'),
(515, 59, '_stock', NULL),
(516, 59, '_stock_status', 'instock'),
(517, 59, '_wc_average_rating', '0'),
(518, 59, '_wc_review_count', '0'),
(519, 59, '_product_version', '4.1.0'),
(520, 59, '_price', '9499'),
(521, 59, '_wc_facebook_sync_enabled', 'no'),
(522, 62, '_edit_last', '1'),
(523, 62, '_edit_lock', '1589906748:1'),
(524, 63, '_wp_attached_file', '2020/05/pc5.jpg'),
(525, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:15:\"2020/05/pc5.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"pc5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"pc5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"pc5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"pc5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"pc5-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"pc5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"pc5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"pc5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"pc5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"pc5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"pc5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(526, 62, '_thumbnail_id', '63'),
(527, 62, '_regular_price', '7599'),
(528, 62, '_sale_price', '6999'),
(529, 62, 'total_sales', '0'),
(530, 62, '_tax_status', 'taxable'),
(531, 62, '_tax_class', ''),
(532, 62, '_manage_stock', 'no'),
(533, 62, '_backorders', 'no'),
(534, 62, '_sold_individually', 'no'),
(535, 62, '_virtual', 'no'),
(536, 62, '_downloadable', 'no'),
(537, 62, '_download_limit', '-1'),
(538, 62, '_download_expiry', '-1'),
(539, 62, '_stock', NULL),
(540, 62, '_stock_status', 'instock'),
(541, 62, '_wc_average_rating', '0'),
(542, 62, '_wc_review_count', '0'),
(543, 62, '_product_version', '4.1.0'),
(544, 62, '_price', '6999'),
(545, 62, '_wc_facebook_sync_enabled', 'no'),
(546, 64, '_edit_last', '1'),
(547, 64, '_edit_lock', '1589907019:1'),
(548, 65, '_wp_attached_file', '2020/05/sillaeconomica.jpg'),
(549, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:608;s:4:\"file\";s:26:\"2020/05/sillaeconomica.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"sillaeconomica-174x300.jpg\";s:5:\"width\";i:174;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"sillaeconomica-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"sillaeconomica-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"sillaeconomica-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"sillaeconomica-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"sillaeconomica-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(550, 64, '_thumbnail_id', '65'),
(551, 64, '_regular_price', '4000'),
(552, 64, '_sale_price', '3599'),
(553, 64, 'total_sales', '0'),
(554, 64, '_tax_status', 'taxable'),
(555, 64, '_tax_class', ''),
(556, 64, '_manage_stock', 'no'),
(557, 64, '_backorders', 'no'),
(558, 64, '_sold_individually', 'no'),
(559, 64, '_virtual', 'no'),
(560, 64, '_downloadable', 'no'),
(561, 64, '_download_limit', '-1'),
(562, 64, '_download_expiry', '-1'),
(563, 64, '_stock', NULL),
(564, 64, '_stock_status', 'instock'),
(565, 64, '_wc_average_rating', '0'),
(566, 64, '_wc_review_count', '0'),
(567, 64, '_product_version', '4.1.0'),
(568, 64, '_price', '3599'),
(569, 64, '_wc_facebook_sync_enabled', 'no'),
(570, 66, '_edit_last', '1'),
(571, 66, '_edit_lock', '1589907220:1'),
(572, 67, '_wp_attached_file', '2020/05/silla-verde.jpg'),
(573, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2020/05/silla-verde.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"silla-verde-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"silla-verde-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"silla-verde-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"silla-verde-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"silla-verde-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"silla-verde-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"silla-verde-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"silla-verde-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"silla-verde-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(574, 66, '_thumbnail_id', '67'),
(575, 66, '_regular_price', '4000'),
(576, 66, '_sale_price', '3499'),
(577, 66, 'total_sales', '0'),
(578, 66, '_tax_status', 'taxable'),
(579, 66, '_tax_class', ''),
(580, 66, '_manage_stock', 'no'),
(581, 66, '_backorders', 'no'),
(582, 66, '_sold_individually', 'no'),
(583, 66, '_virtual', 'no'),
(584, 66, '_downloadable', 'no'),
(585, 66, '_download_limit', '-1'),
(586, 66, '_download_expiry', '-1'),
(587, 66, '_stock', NULL),
(588, 66, '_stock_status', 'instock'),
(589, 66, '_wc_average_rating', '0'),
(590, 66, '_wc_review_count', '0'),
(591, 66, '_product_version', '4.1.0'),
(592, 66, '_price', '3499'),
(593, 66, '_wc_facebook_sync_enabled', 'no'),
(594, 68, '_edit_last', '1'),
(595, 68, '_edit_lock', '1589907393:1'),
(596, 69, '_wp_attached_file', '2020/05/Silla-gaming-Yeyian-cadira-2150-yar-9015n.jpg'),
(597, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:228;s:6:\"height\";i:225;s:4:\"file\";s:53:\"2020/05/Silla-gaming-Yeyian-cadira-2150-yar-9015n.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"Silla-gaming-Yeyian-cadira-2150-yar-9015n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:53:\"Silla-gaming-Yeyian-cadira-2150-yar-9015n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:53:\"Silla-gaming-Yeyian-cadira-2150-yar-9015n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(598, 68, '_thumbnail_id', '69'),
(599, 68, '_regular_price', '5345'),
(600, 68, '_sale_price', '4200'),
(601, 68, 'total_sales', '0'),
(602, 68, '_tax_status', 'taxable'),
(603, 68, '_tax_class', ''),
(604, 68, '_manage_stock', 'no'),
(605, 68, '_backorders', 'no'),
(606, 68, '_sold_individually', 'no'),
(607, 68, '_virtual', 'no'),
(608, 68, '_downloadable', 'no'),
(609, 68, '_download_limit', '-1'),
(610, 68, '_download_expiry', '-1'),
(611, 68, '_stock', NULL),
(612, 68, '_stock_status', 'instock'),
(613, 68, '_wc_average_rating', '0'),
(614, 68, '_wc_review_count', '0'),
(615, 68, '_product_version', '4.1.0'),
(616, 68, '_price', '4200'),
(617, 68, '_wc_facebook_sync_enabled', 'no'),
(618, 70, '_edit_last', '1'),
(619, 70, '_edit_lock', '1589907507:1'),
(620, 70, '_regular_price', '4200'),
(621, 70, '_sale_price', '3700'),
(622, 70, 'total_sales', '0'),
(623, 70, '_tax_status', 'taxable'),
(624, 70, '_tax_class', ''),
(625, 70, '_manage_stock', 'no'),
(626, 70, '_backorders', 'no'),
(627, 70, '_sold_individually', 'no'),
(628, 70, '_virtual', 'no'),
(629, 70, '_downloadable', 'no'),
(630, 70, '_download_limit', '-1'),
(631, 70, '_download_expiry', '-1'),
(632, 70, '_stock', NULL),
(633, 70, '_stock_status', 'instock'),
(634, 70, '_wc_average_rating', '0'),
(635, 70, '_wc_review_count', '0'),
(636, 70, '_product_version', '4.1.0'),
(637, 70, '_price', '3700'),
(638, 70, '_wc_facebook_sync_enabled', 'no'),
(639, 71, '_edit_last', '1'),
(640, 71, '_edit_lock', '1589907766:1'),
(641, 72, '_wp_attached_file', '2020/05/Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda.jpg'),
(642, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:378;s:4:\"file\";s:64:\"2020/05/Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda-300x243.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:243;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:64:\"Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:64:\"Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:64:\"Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(643, 71, '_thumbnail_id', '72'),
(644, 71, '_regular_price', '10000'),
(645, 71, '_sale_price', '8000'),
(646, 71, 'total_sales', '0'),
(647, 71, '_tax_status', 'taxable'),
(648, 71, '_tax_class', ''),
(649, 71, '_manage_stock', 'no'),
(650, 71, '_backorders', 'no'),
(651, 71, '_sold_individually', 'no'),
(652, 71, '_virtual', 'no'),
(653, 71, '_downloadable', 'no'),
(654, 71, '_download_limit', '-1'),
(655, 71, '_download_expiry', '-1'),
(656, 71, '_stock', NULL),
(657, 71, '_stock_status', 'instock'),
(658, 71, '_wc_average_rating', '0'),
(659, 71, '_wc_review_count', '0'),
(660, 71, '_product_version', '4.1.0'),
(661, 71, '_price', '8000'),
(662, 71, '_wc_facebook_sync_enabled', 'no'),
(663, 73, '_edit_last', '1'),
(664, 73, '_edit_lock', '1589907981:1'),
(665, 74, '_wp_attached_file', '2020/05/Mouse-de-juego-Eagle-Warrior-G13-negro.jpg'),
(666, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:281;s:6:\"height\";i:500;s:4:\"file\";s:50:\"2020/05/Mouse-de-juego-Eagle-Warrior-G13-negro.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Mouse-de-juego-Eagle-Warrior-G13-negro-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Mouse-de-juego-Eagle-Warrior-G13-negro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"Mouse-de-juego-Eagle-Warrior-G13-negro-281x300.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"Mouse-de-juego-Eagle-Warrior-G13-negro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"Mouse-de-juego-Eagle-Warrior-G13-negro-281x300.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"Mouse-de-juego-Eagle-Warrior-G13-negro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(667, 73, '_thumbnail_id', '74'),
(668, 73, '_regular_price', '300'),
(669, 73, '_sale_price', '216'),
(670, 73, 'total_sales', '0'),
(671, 73, '_tax_status', 'taxable'),
(672, 73, '_tax_class', ''),
(673, 73, '_manage_stock', 'no'),
(674, 73, '_backorders', 'no'),
(675, 73, '_sold_individually', 'no'),
(676, 73, '_virtual', 'no'),
(677, 73, '_downloadable', 'no'),
(678, 73, '_download_limit', '-1'),
(679, 73, '_download_expiry', '-1'),
(680, 73, '_stock', NULL),
(681, 73, '_stock_status', 'instock'),
(682, 73, '_wc_average_rating', '0'),
(683, 73, '_wc_review_count', '0'),
(684, 73, '_product_version', '4.1.0'),
(685, 73, '_price', '216'),
(686, 73, '_wc_facebook_sync_enabled', 'no'),
(691, 11, '_edit_lock', '1590609017:1'),
(707, 83, '_menu_item_type', 'post_type'),
(708, 83, '_menu_item_menu_item_parent', '0'),
(709, 83, '_menu_item_object_id', '11'),
(710, 83, '_menu_item_object', 'page'),
(711, 83, '_menu_item_target', ''),
(712, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(713, 83, '_menu_item_xfn', ''),
(714, 83, '_menu_item_url', ''),
(715, 83, '_menu_item_orphaned', '1590609532'),
(716, 83, '_a13_mega_menu', ''),
(717, 83, '_a13_mm_remove_item', ''),
(718, 83, '_a13_mm_html', ''),
(719, 83, '_a13_item_icon', ''),
(720, 83, '_a13_unlinkable', ''),
(721, 84, '_menu_item_type', 'post_type'),
(722, 84, '_menu_item_menu_item_parent', '0'),
(723, 84, '_menu_item_object_id', '10'),
(724, 84, '_menu_item_object', 'page'),
(725, 84, '_menu_item_target', ''),
(726, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(727, 84, '_menu_item_xfn', ''),
(728, 84, '_menu_item_url', ''),
(729, 84, '_menu_item_orphaned', '1590609532'),
(730, 84, '_a13_mega_menu', ''),
(731, 84, '_a13_mm_remove_item', ''),
(732, 84, '_a13_mm_html', ''),
(733, 84, '_a13_item_icon', ''),
(734, 84, '_a13_unlinkable', ''),
(735, 85, '_menu_item_type', 'post_type'),
(736, 85, '_menu_item_menu_item_parent', '0'),
(737, 85, '_menu_item_object_id', '9'),
(738, 85, '_menu_item_object', 'page'),
(739, 85, '_menu_item_target', ''),
(740, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(741, 85, '_menu_item_xfn', ''),
(742, 85, '_menu_item_url', ''),
(743, 85, '_menu_item_orphaned', '1590609532'),
(744, 85, '_a13_mega_menu', ''),
(745, 85, '_a13_mm_remove_item', ''),
(746, 85, '_a13_mm_html', ''),
(747, 85, '_a13_item_icon', ''),
(748, 85, '_a13_unlinkable', ''),
(749, 86, '_menu_item_type', 'post_type'),
(750, 86, '_menu_item_menu_item_parent', '0'),
(751, 86, '_menu_item_object_id', '8'),
(752, 86, '_menu_item_object', 'page'),
(753, 86, '_menu_item_target', ''),
(754, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(755, 86, '_menu_item_xfn', ''),
(756, 86, '_menu_item_url', ''),
(757, 86, '_menu_item_orphaned', '1590609532'),
(758, 86, '_a13_mega_menu', ''),
(759, 86, '_a13_mm_remove_item', ''),
(760, 86, '_a13_mm_html', ''),
(761, 86, '_a13_item_icon', ''),
(762, 86, '_a13_unlinkable', ''),
(763, 87, '_menu_item_type', 'post_type'),
(764, 87, '_menu_item_menu_item_parent', '0'),
(765, 87, '_menu_item_object_id', '2'),
(766, 87, '_menu_item_object', 'page'),
(767, 87, '_menu_item_target', ''),
(768, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(769, 87, '_menu_item_xfn', ''),
(770, 87, '_menu_item_url', ''),
(771, 87, '_menu_item_orphaned', '1590609532'),
(772, 87, '_a13_mega_menu', ''),
(773, 87, '_a13_mm_remove_item', ''),
(774, 87, '_a13_mm_html', ''),
(775, 87, '_a13_item_icon', ''),
(776, 87, '_a13_unlinkable', ''),
(777, 88, '_menu_item_type', 'post_type'),
(778, 88, '_menu_item_menu_item_parent', '0'),
(779, 88, '_menu_item_object_id', '11'),
(780, 88, '_menu_item_object', 'page'),
(781, 88, '_menu_item_target', ''),
(782, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 88, '_menu_item_xfn', ''),
(784, 88, '_menu_item_url', ''),
(785, 88, '_menu_item_orphaned', '1590609550'),
(786, 88, '_a13_mega_menu', ''),
(787, 88, '_a13_mm_remove_item', ''),
(788, 88, '_a13_mm_html', ''),
(789, 88, '_a13_item_icon', ''),
(790, 88, '_a13_unlinkable', ''),
(791, 89, '_menu_item_type', 'post_type'),
(792, 89, '_menu_item_menu_item_parent', '0'),
(793, 89, '_menu_item_object_id', '10'),
(794, 89, '_menu_item_object', 'page'),
(795, 89, '_menu_item_target', ''),
(796, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(797, 89, '_menu_item_xfn', ''),
(798, 89, '_menu_item_url', ''),
(799, 89, '_menu_item_orphaned', '1590609550'),
(800, 89, '_a13_mega_menu', ''),
(801, 89, '_a13_mm_remove_item', ''),
(802, 89, '_a13_mm_html', ''),
(803, 89, '_a13_item_icon', ''),
(804, 89, '_a13_unlinkable', ''),
(805, 90, '_menu_item_type', 'post_type'),
(806, 90, '_menu_item_menu_item_parent', '0'),
(807, 90, '_menu_item_object_id', '9'),
(808, 90, '_menu_item_object', 'page'),
(809, 90, '_menu_item_target', ''),
(810, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(811, 90, '_menu_item_xfn', ''),
(812, 90, '_menu_item_url', ''),
(813, 90, '_menu_item_orphaned', '1590609550'),
(814, 90, '_a13_mega_menu', ''),
(815, 90, '_a13_mm_remove_item', ''),
(816, 90, '_a13_mm_html', ''),
(817, 90, '_a13_item_icon', ''),
(818, 90, '_a13_unlinkable', ''),
(819, 91, '_menu_item_type', 'post_type'),
(820, 91, '_menu_item_menu_item_parent', '0'),
(821, 91, '_menu_item_object_id', '8'),
(822, 91, '_menu_item_object', 'page'),
(823, 91, '_menu_item_target', ''),
(824, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(825, 91, '_menu_item_xfn', ''),
(826, 91, '_menu_item_url', ''),
(827, 91, '_menu_item_orphaned', '1590609550'),
(828, 91, '_a13_mega_menu', ''),
(829, 91, '_a13_mm_remove_item', ''),
(830, 91, '_a13_mm_html', ''),
(831, 91, '_a13_item_icon', ''),
(832, 91, '_a13_unlinkable', ''),
(833, 92, '_menu_item_type', 'post_type'),
(834, 92, '_menu_item_menu_item_parent', '0'),
(835, 92, '_menu_item_object_id', '11'),
(836, 92, '_menu_item_object', 'page'),
(837, 92, '_menu_item_target', ''),
(838, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(839, 92, '_menu_item_xfn', ''),
(840, 92, '_menu_item_url', ''),
(842, 92, '_a13_mega_menu', ''),
(843, 92, '_a13_mm_remove_item', ''),
(844, 92, '_a13_mm_html', ''),
(845, 92, '_a13_item_icon', ''),
(846, 92, '_a13_unlinkable', ''),
(847, 93, '_menu_item_type', 'post_type'),
(848, 93, '_menu_item_menu_item_parent', '0'),
(849, 93, '_menu_item_object_id', '10'),
(850, 93, '_menu_item_object', 'page'),
(851, 93, '_menu_item_target', ''),
(852, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(853, 93, '_menu_item_xfn', ''),
(854, 93, '_menu_item_url', ''),
(856, 93, '_a13_mega_menu', ''),
(857, 93, '_a13_mm_remove_item', ''),
(858, 93, '_a13_mm_html', ''),
(859, 93, '_a13_item_icon', ''),
(860, 93, '_a13_unlinkable', ''),
(861, 94, '_menu_item_type', 'post_type'),
(862, 94, '_menu_item_menu_item_parent', '0'),
(863, 94, '_menu_item_object_id', '9'),
(864, 94, '_menu_item_object', 'page'),
(865, 94, '_menu_item_target', ''),
(866, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(867, 94, '_menu_item_xfn', ''),
(868, 94, '_menu_item_url', ''),
(870, 94, '_a13_mega_menu', ''),
(871, 94, '_a13_mm_remove_item', ''),
(872, 94, '_a13_mm_html', ''),
(873, 94, '_a13_item_icon', ''),
(874, 94, '_a13_unlinkable', ''),
(875, 95, '_menu_item_type', 'post_type'),
(876, 95, '_menu_item_menu_item_parent', '0'),
(877, 95, '_menu_item_object_id', '8'),
(878, 95, '_menu_item_object', 'page'),
(879, 95, '_menu_item_target', ''),
(880, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(881, 95, '_menu_item_xfn', ''),
(882, 95, '_menu_item_url', ''),
(884, 95, '_a13_mega_menu', ''),
(885, 95, '_a13_mm_remove_item', ''),
(886, 95, '_a13_mm_html', ''),
(887, 95, '_a13_item_icon', ''),
(888, 95, '_a13_unlinkable', ''),
(889, 92, '_a13_mm_columns', '2'),
(890, 93, '_a13_mm_columns', '2'),
(891, 94, '_a13_mm_columns', '2'),
(892, 95, '_a13_mm_columns', '2'),
(893, 96, '_menu_item_type', 'post_type'),
(894, 96, '_menu_item_menu_item_parent', '0'),
(895, 96, '_menu_item_object_id', '2'),
(896, 96, '_menu_item_object', 'page'),
(897, 96, '_menu_item_target', ''),
(898, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(899, 96, '_menu_item_xfn', ''),
(900, 96, '_menu_item_url', ''),
(902, 96, '_a13_mega_menu', ''),
(903, 96, '_a13_mm_remove_item', ''),
(904, 96, '_a13_mm_html', ''),
(905, 96, '_a13_item_icon', ''),
(906, 96, '_a13_unlinkable', ''),
(907, 96, '_a13_mm_columns', '2'),
(908, 27, '_edit_lock', '1590609804:1'),
(909, 27, '_wp_trash_meta_status', 'publish'),
(910, 27, '_wp_trash_meta_time', '1590609815'),
(911, 97, '_edit_lock', '1590609893:1'),
(912, 97, '_wp_trash_meta_status', 'publish'),
(913, 97, '_wp_trash_meta_time', '1590609922'),
(914, 98, '_edit_lock', '1590610104:1'),
(915, 98, '_wp_trash_meta_status', 'publish'),
(916, 98, '_wp_trash_meta_time', '1590610121'),
(917, 99, '_edit_lock', '1590610193:1'),
(918, 99, '_wp_trash_meta_status', 'publish'),
(919, 99, '_wp_trash_meta_time', '1590610213'),
(920, 100, '_wp_trash_meta_status', 'publish'),
(921, 100, '_wp_trash_meta_time', '1590622299'),
(922, 2, '_edit_lock', '1591033291:1'),
(923, 2, '_edit_last', '1'),
(924, 2, 'orchid_store_sidebar_position', 'right');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-14 23:17:46', '2020-05-14 23:17:46', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2020-05-14 23:17:46', '2020-05-14 23:17:46', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-14 23:17:46', '2020-05-14 23:17:46', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Morelia, tengo un perro que se llama Firulais y me gusta el mezcal. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'draft', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2020-06-01 17:41:30', '2020-06-01 17:41:30', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-14 23:17:46', '2020-05-14 23:17:46', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: https://TiendaElectronicaOnlineweb.000webhostapp.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2020-05-14 23:17:46', '2020-05-14 23:17:46', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?page_id=3', 0, 'page', '', 0),
(7, 1, '2020-05-14 23:26:14', '2020-05-14 23:26:14', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-05-14 23:26:14', '2020-05-14 23:26:14', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2020-05-14 23:28:43', '2020-05-14 23:28:43', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-05-14 23:28:43', '2020-05-14 23:28:43', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/shop/', 0, 'page', '', 0),
(9, 1, '2020-05-14 23:28:44', '2020-05-14 23:28:44', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-05-14 23:28:44', '2020-05-14 23:28:44', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/cart/', 0, 'page', '', 0),
(10, 1, '2020-05-14 23:28:44', '2020-05-14 23:28:44', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-05-14 23:28:44', '2020-05-14 23:28:44', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/checkout/', 0, 'page', '', 0),
(11, 1, '2020-05-14 23:28:44', '2020-05-14 23:28:44', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-05-14 23:28:44', '2020-05-14 23:28:44', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/my-account/', 0, 'page', '', 0),
(18, 1, '2020-05-14 23:42:28', '2020-05-14 23:42:28', '{\n    \"orchid-store::orchid_store_field_primary_color\": {\n        \"value\": \"#0060aa\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-14 23:41:59\"\n    },\n    \"orchid-store::orchid_store_field_secondary_color\": {\n        \"value\": \"#e26143\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-14 23:41:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e20ca306-2c37-41e5-9f26-598502f8875f', '', '', '2020-05-14 23:42:28', '2020-05-14 23:42:28', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2020-05-18 21:33:44', '2020-05-18 21:33:44', '<h1 class=\"type-subhead-alt-regular\">HP- Laptop OMEN 15-dh0003la de 15.6\"- NVIDIA GeForce GTX 1660 Ti- Intel Core i7- Memoria 16GB- HDD 1TB+SSD 128GB- Negro</h1>\r\nLaptop de gaming HP OMEN 15-dh0003la: Gaming de alto nivel, donde quieras. Súper delgada, súper ligera e increíblemente potente. La nueva OMEN 15 Laptop está diseñada con gráficos NVIDIA GeForce GTX súper poderosos, pantalla con alta taza de refresco, con procesador Intel® Core™ i7 de novena generación de ultra desempeño y capacidad de expansión para una nueva experiencia gaming.', 'Laptop Hp OMEN CoreI7-9thGen', '', 'publish', 'open', 'closed', '', 'laptop-hp-omen-corei7-9thgen', '', '', '2020-05-18 21:33:45', '2020-05-18 21:33:45', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2020-05-14 23:45:48', '2020-05-14 23:45:48', '', 'HPOMEN', '', 'inherit', 'open', 'closed', '', 'hpomen', '', '', '2020-05-14 23:45:48', '2020-05-14 23:45:48', '', 19, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/HPOMEN.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-05-18 21:34:18', '2020-05-18 21:34:18', '', 'Silla Gamer Ergonomica Reclinable 200kg Xzeal Gaming Stylos', '', 'publish', 'open', 'closed', '', 'silla-gamer-ergonomica-reclinable-200kg-xzeal-gaming-stylos', '', '', '2020-05-18 21:34:19', '2020-05-18 21:34:19', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2020-05-14 23:56:33', '2020-05-14 23:56:33', '', 'c06403836', '', 'inherit', 'open', 'closed', '', 'c06403836', '', '', '2020-05-14 23:56:33', '2020-05-14 23:56:33', '', 22, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/c06403836.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-05-15 00:00:44', '2020-05-15 00:00:44', '', 'electronicos', '', 'inherit', 'open', 'closed', '', 'electronicos', '', '', '2020-05-15 00:00:44', '2020-05-15 00:00:44', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/electronicos.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2020-05-27 20:03:35', '2020-05-27 20:03:35', '{\n    \"orchid-store::orchid_store_field_enable_parallax_page_header_background\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-15 00:35:24\"\n    },\n    \"apollo13_option_rife[header_tools_color]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:31:42\"\n    },\n    \"apollo13_option_rife[footer_text]\": {\n        \"value\": \"<a href=\\\"https://apollo13themes.com/rife\\\">Bienvenido a tu tienda Electronica</a> WordPress <a href=\\\"https://apollo13themes.com/\\\"></a> -  Tienda en Linea\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:31:42\"\n    },\n    \"apollo13_option_rife[header_button]\": {\n        \"value\": \"<- Busqueda\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:32:18\"\n    },\n    \"apollo13_option_rife[menu_hover_color]\": {\n        \"value\": \"#f25435\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:33:18\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Compras Rapidas y Seguras - Que esperas?\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:44:20\"\n    },\n    \"widget_categories[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MDt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5f218be5c03bb6ac702326307f0331c5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:03:35\"\n    },\n    \"widget_recent-comments[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8ef44244fe6dd6f5a523eaf8419ba1b5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:03:35\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:49:27\"\n    },\n    \"orchid-store::orchid_store_field_blog_sidebar_position\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:49:27\"\n    },\n    \"orchid-store::orchid_store_field_primary_color\": {\n        \"value\": \"#0286e7\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:49:27\"\n    },\n    \"orchid-store::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:51:28\"\n    },\n    \"orchid-store::orchid_store_field_blog_display_cats\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:51:14\"\n    },\n    \"orchid-store::orchid_store_field_blog_display_date\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:51:14\"\n    },\n    \"orchid-store::orchid_store_field_blog_display_author\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:51:14\"\n    },\n    \"orchid-store::orchid_store_field_archive_display_cats\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-21 20:51:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c16a61df-1d56-4790-87c7-86188532b0a7', '', '', '2020-05-27 20:03:35', '2020-05-27 20:03:35', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=27', 0, 'customize_changeset', '', 0),
(29, 1, '2020-05-18 19:33:39', '0000-00-00 00:00:00', '', 'SOPORTE DE ATENCIÓN', '', 'draft', 'open', 'closed', '', '', '', '', '2020-05-18 19:33:39', '2020-05-18 19:33:39', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=work&#038;p=29', 0, 'work', '', 0),
(30, 1, '2020-05-18 21:39:12', '2020-05-18 21:39:12', '', 'Order &ndash; mayo 18, 2020 @ 09:39 PM', '', 'wc-processing', 'open', 'closed', 'wc_order_ZC0H0qrxtygGR', 'order-may-18-2020-0939-pm', '', '', '2020-05-18 21:39:18', '2020-05-18 21:39:18', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=shop_order&#038;p=30', 0, 'shop_order', '', 1),
(31, 1, '2020-05-19 15:19:48', '2020-05-19 15:19:48', '', 'pcgamer', '', 'inherit', 'open', 'closed', '', 'pcgamer', '', '', '2020-05-19 15:19:48', '2020-05-19 15:19:48', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/pcgamer.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-05-19 15:22:02', '2020-05-19 15:22:02', '', 'Computer parts network component accessories various electronics devices and desktop pc processor drive hardware memory card vector illustration.', 'Computer parts network component accessories various electronics devices and desktop pc processor drive hardware memory card vector illustration. Electronics network component accessories symbol.', 'inherit', 'open', 'closed', '', 'computer-parts-network-component-accessories-various-electronics-devices-and-desktop-pc-processor-drive-hardware-memory-card-vector-illustration', '', '', '2020-05-19 15:22:02', '2020-05-19 15:22:02', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/accesorios.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-05-19 15:24:00', '2020-05-19 15:24:00', '', 'audifonos', '', 'inherit', 'open', 'closed', '', 'audifonos', '', '', '2020-05-19 15:27:21', '2020-05-19 15:27:21', '', 34, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/audifonos.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-05-19 15:29:46', '2020-05-19 15:29:46', 'Diadema Gamer Profesional ONIKUMA Para Consolas Ps4, Xbox One S, Laptop, Pc, Celular, Tablet y Mas!!\r\n\r\nLleva tus Partidas a Otro Nivel\r\n\r\nLos auriculares GAMING ONIKUMA K2 ofrecen un campo de sonido vívido y claro, lo que permite disfrutar tus juegos al Máximo!!\r\n\r\nLas Almohadillas incorporadas brindan una excelente Comodidad Para uso Prolongado. Son un complemento Ideal Para Todas Tus Partidas!\r\n\r\nCaracterísticas :\r\n- Ofrecen una alta calidad con experiencias de frecuencias de sonido alta, media y baja.\r\n- Sonido Perfecto : controlador de alta precisión de 50 mm, le ofrece un campo de sonido intenso, claridad de sonido.\r\n- Micrófono : El micrófono de juego flexible y largo es muy sensible y duradero.\r\n- Compatible con la mayoría del dispositivo con puerto de auriculares o micrófono de 3,5 mm, PC, Laptop, Ps4, Xbox One S, iPhone, iPad y otros dispositivos.\r\n\r\n*** NOTA: No incluye adaptador para controles de consolas, de ningún modelo. ***\r\n\r\nTamaño de la Bocina: 50 mm\r\nImpedancia: 16 +/- 15%\r\nSensibilidad: 116dB +/- 3dB\r\nRango de Frecuencia: 20-20KHz\r\n\r\nMicrófono: 6.0x2.7mm\r\nSensibilidad del Micrófono : -38dB + / - 1dB\r\nImpedancia del Micrófono: 2.2KO\r\nDirección: Omnidireccional\r\nLargo del cable: 2.2metros +/- 15%\r\nCorriente de Trabajo: PUEDE COTIZAR EL COSTO DE SU ENVIOS A UN LADO DE L A IMAGEN PRINCIPAL INDICANDO EL NUMERO DE PIEZAS Y CODIGO POSTAL.', 'Audifonos Diadema Gamer Ps4 Xbox One S Jakc 3.5mm Pc Laptop', '', 'publish', 'open', 'closed', '', 'audifonos-diadema-gamer-ps4-xbox-one-s-jakc-3-5mm-pc-laptop', '', '', '2020-05-19 15:29:47', '2020-05-19 15:29:47', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=34', 0, 'product', '', 0),
(35, 1, '2020-05-19 15:33:21', '2020-05-19 15:33:21', 'Diadema Gamer Profesional ONIKUMA Para Consolas Ps4, Xbox One S, Laptop, Pc, Celular, Tablet y Mas!!\r\n\r\nLleva tus Partidas a Otro Nivel\r\n\r\nLos auriculares GAMING ONIKUMA K8 ofrecen un campo de sonido vívido y claro, lo que permite disfrutar tus juegos al Máximo!!\r\n\r\nLas Almohadillas incorporadas brindan una excelente Comodidad Para uso Prolongado. Son un complemento Ideal Para Todas Tus Partidas!\r\n\r\nCaracterísticas :\r\n- Ofrecen una alta calidad con experiencias de frecuencias de sonido alta, media y baja.\r\n- Sonido Perfecto : controlador de alta precisión de 50 mm, le ofrece un campo de sonido intenso, claridad de sonido.\r\n- Micrófono : El micrófono de juego flexible y largo es muy sensible y duradero.\r\n- Compatible con la mayoría del dispositivo con puerto de auriculares o micrófono de 3,5 mm, PC, Laptop, Ps4, Xbox One S, iPhone, iPad y otros dispositivos.\r\n\r\nTamaño de la Bocina: 50 mm\r\nImpedancia: 32 +/- 15%\r\nSensibilidad: 105dB +/- 3dB\r\nRango de Frecuencia: 20-20KHz\r\n\r\nMicrófono: 6.0x5.0mm\r\nSensibilidad del Micrófono : -42dB + / - 1dB\r\nImpedancia del Micrófono: 2.2KO\r\nDirección: Omnidireccional\r\nLargo del cable: 2.2metros +/- 15%', 'Audifonos K8 Diadema Gamer Ps4 Xbox One S Jakc 3.5mm Pc', '', 'publish', 'open', 'closed', '', 'audifonos-k8-diadema-gamer-ps4-xbox-one-s-jakc-3-5mm-pc', '', '', '2020-05-19 15:33:23', '2020-05-19 15:33:23', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2020-05-19 15:32:51', '2020-05-19 15:32:51', '', 'audifonos', '', 'inherit', 'open', 'closed', '', 'audifonos-2', '', '', '2020-05-19 15:32:51', '2020-05-19 15:32:51', '', 35, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/audifonos-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-05-19 16:03:18', '2020-05-19 16:03:18', '<div id=\"descriptive_attributes\" class=\"descriptive_attributes tab-pane fade col-xs-12 col-md-12 active in\">\r\n<table class=\"table table-bordered\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"active\"><span id=\"descAttributeName_1_8_-1018_17810\">Conector:</span></td>\r\n<td><span id=\"descAttributeValue_1_8_-1018_17810\">3.5 mm</span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"active\"><span id=\"descAttributeName_2_8_-1018_17810\">Tipo de audífono:</span></td>\r\n<td><span id=\"descAttributeValue_2_8_-1018_17810\">diadema</span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"active\"><span id=\"descAttributeName_3_8_-1018_17810\">Beneficios:</span></td>\r\n<td><span id=\"descAttributeValue_3_8_-1018_17810\">micrófono, alta calidad de audio, diseño plegable</span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"active\"><span id=\"descAttributeName_4_8_-1018_17810\">Marca:</span></td>\r\n<td><span id=\"descAttributeValue_4_8_-1018_17810\">M</span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"active\"><span id=\"descAttributeName_5_8_-1018_17810\">Color:</span></td>\r\n<td><span id=\"descAttributeValue_5_8_-1018_17810\">negro</span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"active\"><span id=\"descAttributeName_6_8_-1018_17810\">Modelo #:</span></td>\r\n<td><span id=\"descAttributeValue_6_8_-1018_17810\">61859-G</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div id=\"contentRecommendationWidget_8_-1012_33103\" class=\"contentRecommendationWidget\">\r\n<div class=\"left_espot\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-12\">\r\n\r\n*Los abonos quincenales, el plazo del crédito y el pago inicial, pueden variar según el margen de crédito y el historial de pago de cada cliente.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Audífonos Xpert Pro 61859-G Negros', '', 'publish', 'open', 'closed', '', 'audifonos-xpert-pro-61859-g-negros', '', '', '2020-05-19 16:03:19', '2020-05-19 16:03:19', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2020-05-19 16:02:45', '2020-05-19 16:02:45', '', 'audifx', '', 'inherit', 'open', 'closed', '', 'audifx', '', '', '2020-05-19 16:02:45', '2020-05-19 16:02:45', '', 37, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/audifx.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-05-19 16:07:42', '2020-05-19 16:07:42', 'Escucha a tus oponentes cuando se acerquen acechando gracias a estos auriculares para juegos que poseen imanes de alto rendimiento de 50 mm de neodimio. Los auriculares estéreo Lenovo Legion ofrecen agudos nítidos y graves ensordecedores y te permiten jugar durante más tiempo gracias a su textura de fibra de carbono ligero y a su micrófono retráctil con anulación de ruido. Controladores de alto rendimiento de 50 mm para sonido estéreo de alta calidad; Auriculares suaves y duraderos con almohadillas acolchadas para el aislamiento máximo; Micrófono retraíble que elimina el ruido; Conector de audio de 3,5 mm con divisor de audio 1 * 3,5 mm; Presentamos los auriculares giratorios con diseño ergonómico', 'Auriculares estéreo Lenovo Legion', '', 'publish', 'open', 'closed', '', 'auriculares-estereo-lenovo-legion', '', '', '2020-05-19 16:13:47', '2020-05-19 16:13:47', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2020-05-19 16:07:19', '2020-05-19 16:07:19', '', 'audifonos3', '', 'inherit', 'open', 'closed', '', 'audifonos3', '', '', '2020-05-19 16:07:19', '2020-05-19 16:07:19', '', 39, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/audifonos3.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-05-19 16:10:32', '2020-05-19 16:10:32', '<h2 class=\"main-section__title\">Características</h2>\r\n<div class=\"specs-wrapper\"><section class=\"specs-container specs-primary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-primary specs-structure-medium\">\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Marca</strong>Naceb</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Línea</strong>NAJA RGB</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Modelo</strong>NA-0315</li>\r\n</ul>\r\n</section><section class=\"specs-container specs-secondary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-secondary specs-structure-xlarge\">\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Formato del audífono</strong> Headset</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Bluetooth</strong> No</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Micrófono</strong> Sí</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Monoaural</strong> No</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Largo del cable</strong> 2 m</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Gamer</strong> Sí</li>\r\n</ul>\r\n</section></div>', 'Diadema Gamer Naceb Naja Rgb / 7.1 Canales / Usb / Microfono', '', 'publish', 'open', 'closed', '', 'diadema-gamer-naceb-naja-rgb-7-1-canales-usb-microfono', '', '', '2020-05-19 16:10:33', '2020-05-19 16:10:33', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2020-05-19 16:10:11', '2020-05-19 16:10:11', '', 'audif4', '', 'inherit', 'open', 'closed', '', 'audif4', '', '', '2020-05-19 16:10:11', '2020-05-19 16:10:11', '', 41, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/audif4.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-05-19 16:13:04', '2020-05-19 16:13:04', '<h2 class=\"main-section__title\">Características</h2>\r\n<div class=\"specs-wrapper\"><section class=\"specs-container specs-primary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-primary specs-structure-medium\">\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Marca</strong>Necnon</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Línea</strong>Rubberized</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Modelo</strong>NBH-05</li>\r\n</ul>\r\n</section><section class=\"specs-container specs-secondary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-secondary specs-structure-xlarge\">\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Formato del audífono</strong> Headset</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Bluetooth</strong> Sí</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Micrófono</strong> Sí</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Monoaural</strong> No</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Sensibilidad</strong> 115 dB</li>\r\n</ul>\r\n</section></div>', 'Diadema Necnon Nbh-05 Bluetooth', '', 'publish', 'open', 'closed', '', 'diadema-necnon-nbh-05-bluetooth', '', '', '2020-05-19 16:13:06', '2020-05-19 16:13:06', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2020-05-19 16:12:38', '2020-05-19 16:12:38', '', 'audif5', '', 'inherit', 'open', 'closed', '', 'audif5', '', '', '2020-05-19 16:12:38', '2020-05-19 16:12:38', '', 43, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/audif5.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-05-19 16:21:49', '2020-05-19 16:21:49', 'Esta laptop de 15,6” lleva el rendimiento de los juegos a un nuevo nivel. Sus especificaciones de última generación te garantizan una gran potencia. Optimizada térmicamente para funcionar de forma más fría y silenciosa con un teclado de tamaño completo retroiluminado en blanco, la laptop Legion Y540 de Lenovo está preparada para aquellos que demandan juegos dondequiera que la vida los lleve. La pantalla puede variar según el modelo, revisa las características de tu equipo antes de la compra.', 'Lenovo Legion Y540 (15.6”, Intel)', '', 'publish', 'open', 'closed', '', 'lenovo-legion-y540-15-6-intel', '', '', '2020-05-19 16:21:50', '2020-05-19 16:21:50', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=45', 0, 'product', '', 0),
(46, 1, '2020-05-19 16:21:30', '2020-05-19 16:21:30', '', 'lenovo', '', 'inherit', 'open', 'closed', '', 'lenovo', '', '', '2020-05-19 16:21:30', '2020-05-19 16:21:30', '', 45, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/lenovo.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-05-19 16:25:46', '2020-05-19 16:25:46', '<h3 class=\"heroSubHeader\">Un equipo listo para jugar. ¿Te apuntas?</h3>\r\n<div class=\"hero-productDescription-body mediaGallery-productDescription-body\">Cuando hablamos de videojuegos, lo importante es seleccionar la opción correcta. Con la IdeaPad L340 Gaming de 15.6”, estarás tomando la mejor decisión desde el principio. Equipada con hasta los últimos procesadores Intel® Core™ i7, tarjetas gráficas NVIDIA® GeForce® de hasta las últimas generaciones y un espectacular sonido Dolby Audio™ (estas características varían según el modelo, revisa la configuración de tu equipo antes de la compra), disfrutarás de toda la potencia y el rendimiento que necesitas. Además, estarás preparado para cualquier rival, cualquier partida y cualquier escenario. La unidad óptica y la retroiluminación LED del teclado son opcionales; la pantalla puede variar según el equipo.</div>', 'IdeaPad L340 Gaming (15.6”, Intel)', '', 'publish', 'open', 'closed', '', 'ideapad-l340-gaming-15-6-intel', '', '', '2020-05-19 16:25:47', '2020-05-19 16:25:47', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=47', 0, 'product', '', 0),
(48, 1, '2020-05-19 16:25:27', '2020-05-19 16:25:27', '', 'IdeaPad L340 Gaming', '', 'inherit', 'open', 'closed', '', 'ideapad-l340-gaming', '', '', '2020-05-19 16:25:27', '2020-05-19 16:25:27', '', 47, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/IdeaPad-L340-Gaming.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-05-19 16:29:19', '2020-05-19 16:29:19', '<p data-reactid=\"3\">ASUS Laptop es un equipo clásico, diseñada para productividad y entretenimiento. Ligera y elegante. Con Procesador AMD A9, que permite funcionalidad y entretenimiento. Esta computadora portátil Asus tiene dimensiones compactas, es fácil de transportar y es increíblemente liviana.</p>\r\n\r\n<div>\r\n<p class=\"null\"><span class=\"null1\"><strong>En la compra de cualquier PC o impresora obtén un código de regalo Bitdefender Internet Security. Vigencia del 7 de mayo al 30 de junio del 2020. Promoción limitada a un código por producto. Los códigos serán enviados una semana después de la compra por medio de correo electrónico, tienen una fecha de expiración al 31 de diciembre del 2020, son compatibles sólo con plataformas Windows y solo son activables en territorio Mexicano. Cada código protege un dispositivo Windows hasta el cierre del año 2020, desde la fecha en que se active. Para redimir la licencia entrar a la página <a href=\"https://canjearlicenciamexico.com/\" target=\"_BLANK翽\" rel=\"noopener noreferrer\">https://canjearlicenciamexico.com/</a> escriba su nombre, correo electrónico y el código recibido, así como debe aceptar condiciones de activación. Nota: Se requiere un correo electrónico por cada código registrado en <a href=\"https://canjearlicenciamexico.com/\" target=\"_BLANK翽\" rel=\"noopener noreferrer\">https://canjearlicenciamexico.com/</a>. En automático será redirigido a Bitdefender donde deberá establecer una contraseña. Está listo para proteger su dispositivo. BBY no es responsable del correcto funcionamiento del código, por lo que en caso de tener algún problema con el mismo, ingresar al chat de soporte en la página <a href=\"https://urldefense.com/v3/__http:/www.tasmicro.com__;!!KtbpKd1p8A!57kDNtJH5LhrOdutrGD69XhD1LOAlssz_2Pr69uDmI0M3lD1_-XSzsRvIbn6g29HnHpY$\" target=\"_BLANK翽\" rel=\"noopener noreferrer\">www.tasmicro.com</a>.</strong></span></p>\r\n\r\n</div>', 'Asus - Laptop de 15.6\" - AMD A9 - AMD Radeon R5 - Memoria de 8GB - Disco duro de 1TB - Gris', '', 'publish', 'open', 'closed', '', 'asus-laptop-de-15-6-amd-a9-amd-radeon-r5-memoria-de-8gb-disco-duro-de-1tb-gris', '', '', '2020-05-19 16:29:20', '2020-05-19 16:29:20', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2020-05-19 16:28:35', '2020-05-19 16:28:35', '', 'Amd', '', 'inherit', 'open', 'closed', '', 'amd', '', '', '2020-05-19 16:28:35', '2020-05-19 16:28:35', '', 49, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/Amd.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-05-19 16:31:55', '2020-05-19 16:31:55', '<p data-reactid=\"3\">Laptop de gaming HP Pavilion 15-dk0011la: Para los que juegan de todo y hacen de todo. El diseño agresivo de la HP Pavilion Gaming Laptop trae la nueva tecnología de enfriamiento, poderosos gráficos NVIDIA GeForce GTX y procesador Intel® Core i5 de novena generación para que seas el número uno en el terreno de juego.</p>\r\n\r\n<div>\r\n<p class=\"null\"><span class=\"null1\"><strong>En la compra de cualquier PC o impresora obtén un código de regalo Bitdefender Internet Security. Vigencia del 7 de mayo al 30 de junio del 2020. Promoción limitada a un código por producto. Los códigos serán enviados una semana después de la compra por medio de correo electrónico, tienen una fecha de expiración al 31 de diciembre del 2020, son compatibles sólo con plataformas Windows y solo son activables en territorio Mexicano. Cada código protege un dispositivo Windows hasta el cierre del año 2020, desde la fecha en que se active. Para redimir la licencia entrar a la página <a href=\"https://canjearlicenciamexico.com/\" target=\"_BLANK翽\" rel=\"noopener noreferrer\">https://canjearlicenciamexico.com/</a> escriba su nombre, correo electrónico y el código recibido, así como debe aceptar condiciones de activación. Nota: Se requiere un correo electrónico por cada código registrado en <a href=\"https://canjearlicenciamexico.com/\" target=\"_BLANK翽\" rel=\"noopener noreferrer\">https://canjearlicenciamexico.com/</a>. En automático será redirigido a Bitdefender donde deberá establecer una contraseña. Está listo para proteger su dispositivo. BBY no es responsable del correcto funcionamiento del código, por lo que en caso de tener algún problema con el mismo, ingresar al chat de soporte en la página <a href=\"https://urldefense.com/v3/__http:/www.tasmicro.com__;!!KtbpKd1p8A!57kDNtJH5LhrOdutrGD69XhD1LOAlssz_2Pr69uDmI0M3lD1_-XSzsRvIbn6g29HnHpY$\" target=\"_BLANK翽\" rel=\"noopener noreferrer\">www.tasmicro.com</a>.</strong></span></p>\r\n\r\n</div>', 'HP - Laptop Pavilion 15-dk0011la de 15.6\" - NVIDIA GeForce GTX 1650- Intel Core i5- Memoria 8GB - SSD de 512GB - Negro', '', 'publish', 'open', 'closed', '', 'hp-laptop-pavilion-15-dk0011la-de-15-6-nvidia-geforce-gtx-1650-intel-core-i5-memoria-8gb-ssd-de-512gb-negro', '', '', '2020-05-19 16:31:56', '2020-05-19 16:31:56', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2020-05-19 16:31:39', '2020-05-19 16:31:39', '', 'HP', '', 'inherit', 'open', 'closed', '', 'hp', '', '', '2020-05-19 16:31:39', '2020-05-19 16:31:39', '', 51, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/HP.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-05-19 16:37:05', '2020-05-19 16:37:05', '<section class=\"specs-container specs-primary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-primary specs-structure-medium\">\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Marca</strong>XTREME PC GAMING</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Modelo</strong>PC GAMER</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Procesador</strong>AMD RYZEN 3 3200G</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Disco duro</strong>500 GB</li>\r\n</ul>\r\n</section><section class=\"specs-container specs-secondary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-secondary specs-structure-xlarge\">\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>RAM</strong> 8 GB</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Sistema operativo</strong> Windows 10</li>\r\n</ul>\r\n</section>', 'Cpu Pc Gamer Xtreme Amd Ryzen 3 8gb 500gb Rx Vega 8 Fortnite', '', 'publish', 'open', 'closed', '', 'cpu-pc-gamer-xtreme-amd-ryzen-3-8gb-500gb-rx-vega-8-fortnite', '', '', '2020-05-19 16:37:06', '2020-05-19 16:37:06', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2020-05-19 16:36:41', '2020-05-19 16:36:41', '', 'Cpu Pc Gamer Xtreme Amd Ryzen 3 8gb 500gb Rx Vega 8 Fortnite', '', 'inherit', 'open', 'closed', '', 'cpu-pc-gamer-xtreme-amd-ryzen-3-8gb-500gb-rx-vega-8-fortnite', '', '', '2020-05-19 16:36:41', '2020-05-19 16:36:41', '', 53, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/Cpu-Pc-Gamer-Xtreme-Amd-Ryzen-3-8gb-500gb-Rx-Vega-8-Fortnite.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-05-19 16:39:54', '2020-05-19 16:39:54', 'Modelo: PC GAMER Procesador: RYZEN 3 3200G Almacenamiento: 1tb RAM: 8GB 2666 MHZ Monitor: 24\" Pulg. PRODUCTO 100% ORIGINAL, 3 MESES DE GARANTÍA DIRECTO CON VENDEDOR. SI REQUIERE FACTURA, CUENTA CON 5 DÍAS PARA TRAMITARLA, FACTURAMOS TODAS SUS COMPRAS. No aplica si el producto esta dañado o mal usado. Garantía: PRODUCTO 100% ORIGINAL, 1 AÑO DE GARANTÍA DIR', 'Pc Gamer Amd Ryzen 3 3200g 8gb 2tb Vega 8 Monitor 24 Kit Gamer', '', 'publish', 'open', 'closed', '', 'pc-gamer-amd-ryzen-3-3200g-8gb-2tb-vega-8-monitor-24-kit-gamer', '', '', '2020-05-19 16:39:56', '2020-05-19 16:39:56', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2020-05-19 16:39:32', '2020-05-19 16:39:32', '', 'pcgamer1', '', 'inherit', 'open', 'closed', '', 'pcgamer1', '', '', '2020-05-19 16:39:32', '2020-05-19 16:39:32', '', 55, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/pcgamer1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-05-19 16:42:47', '2020-05-19 16:42:47', 'DISFRUTA DE LOS MEJORES TÍTULOS DEL MOMENTO Fortnite *PUBG *Apex Legends *GTA V *Overwatch *League of Legends *The Witcher 3 *Left 4 Dead *Saga Battlefield *Half-Life 2 *Forza Horizon *Far Cry *Saga Call of Duty Y MUCHOS JUEGOS MÁS Juega y diviértete en directo con este gran equipo especializado para realizar Streaming en vivo. En las mejores plataformas como Twitch , Mixer , Youtube Gaming , Nonolive entre otras plataformas. Para tener un buen Streaming debes seguir puntos básicos para que tengas un Directo de calidad. Lo principal es una buena conexión de internet de Subida mínimo 2.5mb de subida. Micrófono MCG600 USB Streaming, con un audio de alta definición y alta sensibilidad. Monitor de 23.6 Pulgadas. En Resolución Full HD, tiempo de respuesta de 1MS Y taza de refresco de 144hz con tecnología Freesync Technology Un Kit de Teclado, Mouse, Diadema y Mouse Pad. Gamer Logitech C920 HD Pro Webcam EQUÍPATE PARA LA BATALLA CON LOS GRÁFICOS VEGA Los potentes gráficos Nvidia GTX 1660 6gb proporcionan un rendimiento rápido, sin interrupciones y fluido en los juegos que te apasionan. PROCESADOR El procesador Intel® Core™ I5-9400 lidera entre los procesadores. Diseñado para el desempeño, este procesador ofrece 6 núcleos 2.90 GHz y 9 MB de memoria caché. Turbo Boost 2.0 para incrementar a 4.10 GHz. Integramos la compatibilidad perfecta para todos tus Gadgets y accesorios Gamers con una placa madre ASUS PRIME B365. MEMORIA RAM El procesador junto con la memoria RAM de 16GB DDR4 3200MHz la potencia y la fuerza que necesitas para correr tus programas y juegos favoritos UNIDAD DE ESTADO SOLIDO Son 10 veces más rápidos que los HDD mecánicos, acelera el arranque de tu SO., videojuegos y programas. Transferencia de datos a la máxima velocidad , con SSD 240gb DISCO DURO Guarda todos tus juegos, música, archivos, fotos y programas en el disco duro de esta computadora, con capacidad de almacenamiento de 1Tb FUENTE DE PODER La fuente de poder 650W 80+ cuenta con un sistema de ventilación para facilitar el enfriamiento del CPU SISTEMA OPERATIVO: Windows 10 Versión para evaluación de componentes', 'Pc Gamer Streaming Intel Core I5 9400 16gb 1tb 240Gb Ssd Gtx 1660 Led 24', '', 'publish', 'open', 'closed', '', 'pc-gamer-streaming-intel-core-i5-9400-16gb-1tb-240gb-ssd-gtx-1660-led-24', '', '', '2020-05-19 16:42:48', '2020-05-19 16:42:48', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=57', 0, 'product', '', 0),
(58, 1, '2020-05-19 16:42:18', '2020-05-19 16:42:18', '', 'pcgamer2', '', 'inherit', 'open', 'closed', '', 'pcgamer2', '', '', '2020-05-19 16:42:18', '2020-05-19 16:42:18', '', 57, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/pcgamer2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-05-19 16:45:34', '2020-05-19 16:45:34', 'Computadora de Oficina / Equipo escolar / Equipo de Vídeo Juegos Los potentes gráficos AMD Radeon™ R7 Graphics proporcionan un rendimiento rápido, sin interrupciones y fluido en los juegos que te apasionan, brindándote el alto rendimiento que necesitas para trabajos exigentes y juego en serio, sin comprometer la calidad. PROCESADOR Eleva el nivel de tu juego con el procesador AMD FX-8800P Quad Core que te brinda 4 núcleos con turbo 3.4 GHz de velocidad y con 2 MB en Cache, convirtiendo tu PC en una máquina para derrotar a tus oponentes. TARJETA MADRE Integramos la compatibilidad perfecta para todos tus Gadgets y accesorios Gamers con una placa madre BIOSTAR AMD FX-8800P. Entre sus destacados tenemos las transferencias de datos más rápidas a 5 Gbps con USB 3.0. La potencia no es ningún problema para esta configuración. MEMORIA RAM El procesador junto con la memoria RAM ADATA de 8GB DDR4 a una frecuencia de 2666Mhz se encargaran de darle a tu equipo la potencia y la fuerza que necesitas para correr tus programas y juegos favoritos con la fluidez y rapidez que tu demandas, dándote el mejor rendimiento. DISCO DURO Guarda todos tus juegos, música, archivos, fotos y programas en el disco duro de esta computadora, con capacidad de almacenamiento de 1TB que cuenta con hasta 7200 revoluciones por minuto (RPM). No tendrás límite para almacenar todos tus documentos. FUENTE DE PODER La fuente de poder de 600W cuenta con una buena distribución del cableado para facilitar las conexiones y poder instalar los dispositivos que requieras. Cumple además con estrictos estándares de calidad para asegurar un uso prolongado en tu sistema de cómputo. SISTEMA OPERATIVO: Windows 10 Versión para evaluación de componentes, no es una licencia. No aplica garantía por software. SOMOS MAYORISTAS LAS IMÁGENES EXPUESTAS SON CON FINES ILUSTRATIVOS. Las Especificaciones y las imágenes están sujetas a cambios sin previo aviso. Todas las marcas de fábrica son propiedad de sus respectivos dueños. (Et)', 'Pc Gamer Xtreme Amd A10 Fx 8800E Ram 8Gb Disco 1Tb RadeonR7 Monitor Led 27 + Kit Gamer', '', 'publish', 'open', 'closed', '', 'pc-gamer-xtreme-amd-a10-fx-8800e-ram-8gb-disco-1tb-radeonr7-monitor-led-27-kit-gamer', '', '', '2020-05-19 16:45:37', '2020-05-19 16:45:37', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2020-05-19 16:43:53', '2020-05-19 16:43:53', 'DISFRUTA DE LOS MEJORES TÍTULOS DEL MOMENTO Fortnite *PUBG *Apex Legends *GTA V *Overwatch *League of Legends *The Witcher 3 *Left 4 Dead *Saga Battlefield *Half-Life 2 *Forza Horizon *Far Cry *Saga Call of Duty Y MUCHOS JUEGOS MÁS Juega y diviértete en directo con este gran equipo especializado para realizar Streaming en vivo. En las mejores plataformas como Twitch , Mixer , Youtube Gaming , Nonolive entre otras plataformas. Para tener un buen Streaming debes seguir puntos básicos para que tengas un Directo de calidad. Lo principal es una buena conexión de internet de Subida mínimo 2.5mb de subida. Micrófono MCG600 USB Streaming, con un audio de alta definición y alta sensibilidad. Monitor de 23.6 Pulgadas. En Resolución Full HD, tiempo de respuesta de 1MS Y taza de refresco de 144hz con tecnología Freesync Technology Un Kit de Teclado, Mouse, Diadema y Mouse Pad. Gamer Logitech C920 HD Pro Webcam EQUÍPATE PARA LA BATALLA CON LOS GRÁFICOS VEGA Los potentes gráficos Nvidia GTX 1660 6gb proporcionan un rendimiento rápido, sin interrupciones y fluido en los juegos que te apasionan. PROCESADOR El procesador Intel® Core™ I5-9400 lidera entre los procesadores. Diseñado para el desempeño, este procesador ofrece 6 núcleos 2.90 GHz y 9 MB de memoria caché. Turbo Boost 2.0 para incrementar a 4.10 GHz. Integramos la compatibilidad perfecta para todos tus Gadgets y accesorios Gamers con una placa madre ASUS PRIME B365. MEMORIA RAM El procesador junto con la memoria RAM de 16GB DDR4 3200MHz la potencia y la fuerza que necesitas para correr tus programas y juegos favoritos UNIDAD DE ESTADO SOLIDO Son 10 veces más rápidos que los HDD mecánicos, acelera el arranque de tu SO., videojuegos y programas. Transferencia de datos a la máxima velocidad , con SSD 240gb DISCO DURO Guarda todos tus juegos, música, archivos, fotos y programas en el disco duro de esta computadora, con capacidad de almacenamiento de 1Tb FUENTE DE PODER La fuente de poder 650W 80+ cuenta con un sistema de ventilación para facilitar el enfriamiento del CPU SISTEMA OPERATIVO: Windows 10 Versión para evaluación de componentes', 'Pc Gamer Streaming Intel Core I5 9400 16gb 1tb 240Gb Ssd Gtx 1660 Led 24', '<p><br data-mce-bogus=\"1\"></p>', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2020-05-19 16:43:53', '2020-05-19 16:43:53', '', 57, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/2020/05/19/57-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2020-05-19 16:44:51', '2020-05-19 16:44:51', '', 'pc3', '', 'inherit', 'open', 'closed', '', 'pc3', '', '', '2020-05-19 16:44:51', '2020-05-19 16:44:51', '', 59, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/pc3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(62, 1, '2020-05-19 16:47:30', '2020-05-19 16:47:30', 'Los potentes gráficos AMD Radeon™ R7 Graphics proporcionan un rendimiento rápido, sin interrupciones y fluido en los juegos que te apasionan, brindándote el alto rendimiento que necesitas para trabajos exigentes y juego en serio, sin comprometer la calidad. PROCESADOR Eleva el nivel de tu juego con el procesador AMD FX-8800P Quad Core que te brinda 4 núcleos con turbo 3.4 GHz de velocidad y con 2 MB en Cache, convirtiendo tu PC en una máquina para derrotar a tus oponentes. TARJETA MADRE Integramos la compatibilidad perfecta para todos tus Gadgets y accesorios Gamers con una placa madre BIOSTAR AMD FX-8800P. Entre sus destacados tenemos las transferencias de datos más rápidas a 5 Gbps con USB 3.0. La potencia no es ningún problema para esta configuración. MEMORIA RAM El procesador junto con la memoria RAM ADATA de 8GB DDR4 a una frecuencia de 2666Mhz se encargaran de darle a tu equipo la potencia y la fuerza que necesitas para correr tus programas y juegos favoritos con la fluidez y rapidez que tu demandas, dándote el mejor rendimiento. DISCO DURO Guarda todos tus juegos, música, archivos, fotos y programas en el disco duro de esta computadora, con capacidad de almacenamiento de 1tb. FUENTE DE PODER La fuente de poder de 600W cuenta con una buena distribución del cableado para facilitar las conexiones. SISTEMA OPERATIVO: Windows 10 Versión para evaluación de componentes, no es una licencia. No aplica garantía por software.', 'Pc Gamer Xtreme Amd A10 Fx 8800E Ram 8gb Disco 1Tb Radeon R7 Monitor Led 19.5\"', '', 'publish', 'open', 'closed', '', 'pc-gamer-xtreme-amd-a10-fx-8800e-ram-8gb-disco-1tb-radeon-r7-monitor-led-19-5', '', '', '2020-05-19 16:47:31', '2020-05-19 16:47:31', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2020-05-19 16:47:05', '2020-05-19 16:47:05', '', 'pc5', '', 'inherit', 'open', 'closed', '', 'pc5', '', '', '2020-05-19 16:47:05', '2020-05-19 16:47:05', '', 62, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/pc5.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-05-19 16:52:36', '2020-05-19 16:52:36', 'Complementa tu lugar de trabajo con nuestra cómodo sillón gamer modelo JM-9505H, fabricada con asiento y respaldo de madera con espuma, ambos tapizados en vinipiel PU, descansabrazos, base estrella, con mecanismo de reclinado sencillo con perilla para ajuste de tensión y sistema de bloqueo. Características: Asiento y respaldo de madera con espuma Descansabrazos Base tipo estrella Rodajas en nylon negro Pistón neumático con palanca reguladora de altura. Materiales: Madera Hule espuma Nylon Plástico de alta densidad', 'Silla Gamer Escritorio Reclinable Ergonomica Ajustable 9505H', '', 'publish', 'open', 'closed', '', 'silla-gamer-escritorio-reclinable-ergonomica-ajustable-9505h', '', '', '2020-05-19 16:52:37', '2020-05-19 16:52:37', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2020-05-19 16:52:13', '2020-05-19 16:52:13', '', 'sillaeconomica', '', 'inherit', 'open', 'closed', '', 'sillaeconomica', '', '', '2020-05-19 16:52:13', '2020-05-19 16:52:13', '', 64, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/sillaeconomica.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-05-19 16:55:52', '2020-05-19 16:55:52', '- ERGONOMÍA Te permite una postura más natural. - AJUSTE de altura para el asiento. - RESPALDO reclinable ajustable. - SOPORTE Base robusta y estable (Máximo 120Kg). - COMFORT Dos cojines desmontables para soporte lumbar y cervical. - 360º Giro libre y total. - VINIPIEL de excelente calidad. Incluye: - 1 Silla Gamer. - 1 Garantía - 1 Manual de usuario e instructivo para armado.', 'Silla Gamer Ergonómica Con Memory Foam Reclinable Alien Libitium Color Verde', '', 'publish', 'open', 'closed', '', 'silla-gamer-ergonomica-con-memory-foam-reclinable-alien-libitium-color-verde', '', '', '2020-05-19 16:55:53', '2020-05-19 16:55:53', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=66', 0, 'product', '', 0),
(67, 1, '2020-05-19 16:55:33', '2020-05-19 16:55:33', '', 'silla verde', '', 'inherit', 'open', 'closed', '', 'silla-verde', '', '', '2020-05-19 16:55:33', '2020-05-19 16:55:33', '', 66, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/silla-verde.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-05-19 16:58:41', '2020-05-19 16:58:41', 'Silla gaming Yeyian cadira 2150, poliuretano, reclinable 4d, negro (yar-9015n) La silla Cadira 2150 es una silla, cómoda, ergonómica, funcional y estética para poder pasar horas y horas de juego. Esta diseña para elevar la experiencia gaming, ofreciendo una estructura firme, respaldo reclinable y descansa brazos ajustables.', 'Silla gaming Yeyian cadira 2150, (yar-9015n)', '', 'publish', 'open', 'closed', '', 'silla-gaming-yeyian-cadira-2150-yar-9015n', '', '', '2020-05-19 16:58:41', '2020-05-19 16:58:41', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2020-05-19 16:58:22', '2020-05-19 16:58:22', '', 'Silla gaming Yeyian cadira 2150, (yar-9015n)', '', 'inherit', 'open', 'closed', '', 'silla-gaming-yeyian-cadira-2150-yar-9015n', '', '', '2020-05-19 16:58:22', '2020-05-19 16:58:22', '', 68, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/Silla-gaming-Yeyian-cadira-2150-yar-9015n.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-05-19 17:00:36', '2020-05-19 17:00:36', '¡Cada gobernante necesita un trono! La silla Ryon Gaming Trust GXT 705 ofrece comodidad para los verdaderos vencedores. El diseño ergonómico está optimizado para esas largas sesiones de juego: puede concentrarse completamente en la tarea antes que usted y dominar todas las habilidades de los últimos juegos. Esta silla completará su configuración de juego con un estilo majestuoso. Para cada jugador Ponte cómodo y comienza a aumentar tus habilidades. La silla de juego Trust tiene una amplia gama de altura recomendada: de 160 cm a 190 cm. Con sus características ajustables, la silla lo sentará perfectamente durante su progreso a través de las filas. Ajuste en consecuencia La silla es totalmente giratoria a 360 grados para un movimiento fácil y gratuito. El elevador de gas clase 4 le permite colocar su silla a una altura perfecta y el asiento inclinable con posibilidades de bloqueo le permite mirar su pantalla en el ángulo correcto en todo momento. Prepárate La espuma de alta densidad cubierta con cuero de PU proporciona la comodidad a largo plazo que buscas durante esas sesiones de juego prolongadas. Los reposabrazos están equipados con cojines para que tus brazos descansen durante el juego. Estabilidad duradera El sólido marco de madera de la silla para juegos Trust soportará esas apl¡Cada gobernante necesita un trono! La silla Ryon Gaming Trust GXT 705 ofrece comodidad para los verdaderos vencedores. El diseño ergonómico está optimizado para esas largas sesiones de juego: puede concentrarse completamente en la tarea antes que usted y dominar todas las habilidades de los últimos juegos. Esta silla completará su configuración de juego con un estilo majestuoso. Para cada jugador Ponte cómodo y comienza a aumentar tus habilidades. La silla de juego Trust tiene una amplia gama de altura recomendada: de 160 cm a 190 cm. Con sus características ajustables, la silla lo sentará perfectamente durante su progreso a través de las filas. Ajuste en consecuencia La silla es totalmente giratoria a 360 grados para un movimiento fácil y gratuito. El elevador de gas clase 4 le permite colocar su silla a una altura perfecta y el asiento inclinable con posibilidades de bloqueo le permite mirar su pantalla en el ángulo correcto en todo momento. Prepárate La espuma de alta densidad cubierta con cuero de PU proporciona la comodidad a largo plazo que buscas durante esas sesiones de juego prolongadas. Los reposabrazos están equipados con cojines para que tus brazos descansen durante el juego. Estabilidad duradera El sólido marco de madera de la silla para juegos Trust soportará esas aplastantes derrotas y victorias duras. El robusto bastidor combinado con el volante de 5 estrellas puede soportar hasta 150 kg de peso y le brinda estabilidad. Las ruedas dobles duraderas te llevarán sin problemas a través de tu juego hacia nuevos mundosastantes derrotas y victorias duras. El robusto bastidor combinado con el volante de 5 estrellas puede soportar hasta 150 kg de peso y le brinda estabilidad. Las ruedas dobles duraderas te llevarán sin problemas a través de tu juego hacia nuevos mundos', 'Silla Ergonómica Gaming GXT 705 Ryon Trust Rojo-Negro', '', 'publish', 'open', 'closed', '', 'silla-ergonomica-gaming-gxt-705-ryon-trust-rojo-negro', '', '', '2020-05-19 17:00:36', '2020-05-19 17:00:36', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=70', 0, 'product', '', 0),
(71, 1, '2020-05-19 17:04:37', '2020-05-19 17:04:37', '<h2 class=\"main-section__title\">Características</h2>\r\n<div class=\"specs-wrapper\"><section class=\"specs-container specs-primary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-primary specs-structure-medium\">\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Marca</strong>TP-Link</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Línea</strong>Archer</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Modelo</strong>AC5400X</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Color</strong>Negro/Rojo</li>\r\n 	<li class=\"specs-item specs-item-primary\"><strong>Voltaje</strong>100V/240V</li>\r\n</ul>\r\n</section><section class=\"specs-container specs-container__collapsable specs-secondary-specs specs-layout-default u-clearfix\">\r\n<ul class=\"specs-list specs-list-secondary specs-structure-xlarge\">\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Modelo detallado</strong> C5400X</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Tipo de router</strong> Router</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Tipo de conexión</strong> Inalámbrico</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Velocidad inalámbrica</strong> 666.75 MB/s</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Frecuencias</strong> 2.5 GHz,5GHz</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Cantidad de antenas</strong> 8</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Tipo de frecuencia</strong> Banda triple</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Cantidad de puertos</strong> 11</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Cantidad de puertos LAN</strong> 8</li>\r\n 	<li class=\"specs-item specs-item-secondary\"><strong>Cantidad de puertos WAN</strong> 1</li>\r\n</ul>\r\n</section></div>', 'Router Tp-link Gamer Archer C5400x Mu-mimo Tri Banda', '', 'publish', 'open', 'closed', '', 'router-tp-link-gamer-archer-c5400x-mu-mimo-tri-banda', '', '', '2020-05-19 17:04:38', '2020-05-19 17:04:38', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2020-05-19 17:03:43', '2020-05-19 17:03:43', '', 'Router Tp-link Gamer Archer C5400x Mu-mimo Tri Banda', '', 'inherit', 'open', 'closed', '', 'router-tp-link-gamer-archer-c5400x-mu-mimo-tri-banda', '', '', '2020-05-19 17:03:43', '2020-05-19 17:03:43', '', 71, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/Router-Tp-link-Gamer-Archer-C5400x-Mu-mimo-Tri-Banda.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-05-19 17:07:15', '2020-05-19 17:07:15', 'El mejor aliado para lo que necesites. Usa tu Eagle Warrior G13 en la oficina, en tu casa o donde quieras y navega en tus dispositivos sin límites.\r\n\r\nA un click de distancia\r\nEl mouse de juego te ofrecerá la posibilidad de marcar la diferencia y sacar ventajas en tus partidas. Su conectividad y sensor suave ayudará a que te desplaces rápido por la pantalla. Además, su sistema de detección de movimiento óptico te permitirá mover el cursor de una manera más precisa y sensible que en los sistemas tradicionales. Con sus 5 botones podrás tener mayor control e independencia para ejecutar.', 'Mouse de juego Eagle Warrior G13 negro', '', 'publish', 'open', 'closed', '', 'mouse-de-juego-eagle-warrior-g13-negro', '', '', '2020-05-19 17:07:16', '2020-05-19 17:07:16', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2020-05-19 17:06:52', '2020-05-19 17:06:52', '', 'Mouse de juego Eagle Warrior G13 negro', '', 'inherit', 'open', 'closed', '', 'mouse-de-juego-eagle-warrior-g13-negro', '', '', '2020-05-19 17:06:52', '2020-05-19 17:06:52', '', 73, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-content/uploads/2020/05/Mouse-de-juego-Eagle-Warrior-G13-negro.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-05-27 19:53:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-27 19:53:57', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=81', 0, 'post', '', 0),
(83, 1, '2020-05-27 19:58:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:58:52', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=83', 1, 'nav_menu_item', '', 0),
(84, 1, '2020-05-27 19:58:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:58:52', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2020-05-27 19:58:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:58:52', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2020-05-27 19:58:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:58:52', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=86', 1, 'nav_menu_item', '', 0),
(87, 1, '2020-05-27 19:58:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:58:52', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2020-05-27 19:59:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:59:10', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2020-05-27 19:59:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:59:10', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2020-05-27 19:59:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:59:10', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2020-05-27 19:59:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-27 19:59:10', '0000-00-00 00:00:00', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2020-05-27 19:59:50', '2020-05-27 19:59:50', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2020-05-27 20:01:10', '2020-05-27 20:01:10', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2020-05-27 19:59:50', '2020-05-27 19:59:50', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2020-05-27 20:01:10', '2020-05-27 20:01:10', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=93', 2, 'nav_menu_item', '', 0),
(94, 1, '2020-05-27 19:59:50', '2020-05-27 19:59:50', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2020-05-27 20:01:10', '2020-05-27 20:01:10', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=94', 3, 'nav_menu_item', '', 0),
(95, 1, '2020-05-27 19:59:50', '2020-05-27 19:59:50', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2020-05-27 20:01:10', '2020-05-27 20:01:10', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=95', 4, 'nav_menu_item', '', 0),
(96, 1, '2020-05-27 20:01:10', '2020-05-27 20:01:10', '', 'Starbucks', '', 'publish', 'closed', 'closed', '', 'starbucks', '', '', '2020-05-27 20:01:10', '2020-05-27 20:01:10', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=96', 5, 'nav_menu_item', '', 0),
(97, 1, '2020-05-27 20:05:22', '2020-05-27 20:05:22', '{\n    \"orchid-store::orchid_store_field_display_special_menu\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:04:53\"\n    },\n    \"orchid-store::orchid_store_field_secondary_color\": {\n        \"value\": \"#f2752e\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:05:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21042af8-e2a0-40e7-abd2-3cae1bb7d4d1', '', '', '2020-05-27 20:05:22', '2020-05-27 20:05:22', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=97', 0, 'customize_changeset', '', 0),
(98, 1, '2020-05-27 20:08:41', '2020-05-27 20:08:41', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"archives-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:08:41\"\n    },\n    \"orchid-store::orchid_store_field_enable_sticky_sidebar\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:07:53\"\n    },\n    \"orchid-store::orchid_store_field_enable_sidebar_small_devices\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:07:53\"\n    },\n    \"widget_categories[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"72f834f48db0c55477ad629cc88479d9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:08:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '670c08cb-9620-4c47-8446-3182e9e0ce68', '', '', '2020-05-27 20:08:41', '2020-05-27 20:08:41', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=98', 0, 'customize_changeset', '', 0),
(99, 1, '2020-05-27 20:10:13', '2020-05-27 20:10:13', '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:09:53\"\n    },\n    \"orchid-store::orchid_store_field_woocommerce_sidebar_position\": {\n        \"value\": \"none\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 20:10:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e0d5f2f-7ed8-40f6-b565-c12a8c95a6c0', '', '', '2020-05-27 20:10:13', '2020-05-27 20:10:13', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/?p=99', 0, 'customize_changeset', '', 0),
(100, 1, '2020-05-27 23:31:39', '2020-05-27 23:31:39', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-27 23:31:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86c65680-5a2f-4d84-8ccf-ad6a8def14f9', '', '', '2020-05-27 23:31:39', '2020-05-27 23:31:39', '', 0, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/2020/05/27/86c65680-5a2f-4d84-8ccf-ad6a8def14f9/', 0, 'customize_changeset', '', 0),
(101, 1, '2020-06-01 17:41:29', '2020-06-01 17:41:29', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Morelia, tengo un perro que se llama Firulais y me gusta el mezcal. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-01 17:41:29', '2020-06-01 17:41:29', '', 2, 'https://TiendaElectronicaOnlineweb.000webhostapp.com/2020/06/01/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '5'),
(2, 16, 'order', '0'),
(3, 16, 'display_type', ''),
(4, 16, 'thumbnail_id', '24'),
(5, 15, 'display_type', ''),
(6, 15, 'thumbnail_id', '23'),
(7, 16, 'product_count_product_cat', '5'),
(8, 19, 'order', '0'),
(9, 19, 'display_type', ''),
(10, 19, 'thumbnail_id', '31'),
(11, 20, 'order', '0'),
(12, 20, 'display_type', ''),
(13, 20, 'thumbnail_id', '32'),
(14, 21, 'order', '0'),
(15, 21, 'display_type', ''),
(16, 21, 'thumbnail_id', '33'),
(17, 21, 'product_count_product_cat', '6'),
(18, 20, 'product_count_product_cat', '2'),
(19, 19, 'product_count_product_cat', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sillas Gamers', 'sillas-gamers', 0),
(16, 'Laptop Gaming', 'laptop-gaming', 0),
(17, 'Laptops Gamers', 'laptopgamers', 0),
(18, 'Sillas Gamers', 'sillasgamers', 0),
(19, 'PC Gamer', 'pcgamer', 0),
(20, 'Accesorios', 'accesorios', 0),
(21, 'Audifonos', 'audifonos', 0),
(23, 'Starbucks', 'starbucks', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(19, 16, 0),
(22, 2, 0),
(22, 8, 0),
(22, 15, 0),
(34, 2, 0),
(34, 21, 0),
(35, 2, 0),
(35, 21, 0),
(37, 2, 0),
(37, 21, 0),
(39, 2, 0),
(39, 21, 0),
(41, 2, 0),
(41, 21, 0),
(43, 2, 0),
(43, 21, 0),
(45, 2, 0),
(45, 16, 0),
(47, 2, 0),
(47, 16, 0),
(49, 2, 0),
(49, 16, 0),
(51, 2, 0),
(51, 16, 0),
(53, 2, 0),
(53, 19, 0),
(55, 2, 0),
(55, 19, 0),
(57, 2, 0),
(57, 19, 0),
(59, 2, 0),
(59, 19, 0),
(62, 2, 0),
(62, 19, 0),
(64, 2, 0),
(64, 15, 0),
(66, 2, 0),
(66, 15, 0),
(68, 2, 0),
(68, 15, 0),
(70, 2, 0),
(70, 15, 0),
(71, 2, 0),
(71, 20, 0),
(73, 2, 0),
(73, 20, 0),
(92, 23, 0),
(93, 23, 0),
(94, 23, 0),
(95, 23, 0),
(96, 23, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 23),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 1),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 5),
(16, 16, 'product_cat', '', 0, 5),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'product_cat', '', 0, 5),
(20, 20, 'product_cat', '', 0, 2),
(21, 21, 'product_cat', '', 0, 6),
(23, 23, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'cali_magnifico@hotmail.com'),
(2, 1, 'first_name', 'oscar'),
(3, 1, 'last_name', 'rosas'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"3e5dbcad2e4cba08301cc6d588e1ff38cb50d0bb6f557b82af8b921677d00aa1\";a:4:{s:10:\"expiration\";i:1591039042;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589829442;}s:64:\"1c17b5be13897602160ad9e30ddb5d17d70a6faf96815a46c35e2ce324cf057f\";a:4:{s:10:\"expiration\";i:1591110239;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589900639;}s:64:\"3ca8b3244e7c8548df424cfa212dccadccde81dd82b0caec1025e6cc28bae495\";a:4:{s:10:\"expiration\";i:1591205887;s:2:\"ip\";s:13:\"187.136.25.21\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1591033087;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '81'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:pjevRNxsem0HUVwBr9St7N7/'),
(19, 1, 'wc_last_active', '1590969600'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(22, 1, 'jetpack_tracks_anon_id', 'jetpack:ji7Pc5XMbR/49qO/NRr4l8gA'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1589500081'),
(28, 1, 'last_update', '1589837950'),
(29, 1, 'billing_first_name', 'oscar'),
(30, 1, 'billing_last_name', 'rosas'),
(31, 1, 'billing_address_1', 'avenida'),
(32, 1, 'billing_city', 'victoria'),
(33, 1, 'billing_state', 'TM'),
(34, 1, 'billing_postcode', '87087'),
(35, 1, 'billing_country', 'MX'),
(36, 1, 'billing_email', '1430177@upv.edu.mx'),
(37, 1, 'billing_phone', '8341555628'),
(38, 1, 'shipping_method', ''),
(39, 1, '_order_count', '1'),
(42, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"187.136.25.0\";}'),
(43, 1, 'nav_menu_recently_edited', '23'),
(45, 2, 'nickname', 'admin'),
(46, 2, 'first_name', 'mario'),
(47, 2, 'last_name', 'rdz'),
(48, 2, 'description', ''),
(49, 2, 'rich_editing', 'true'),
(50, 2, 'syntax_highlighting', 'true'),
(51, 2, 'comment_shortcuts', 'false'),
(52, 2, 'admin_color', 'fresh'),
(53, 2, 'use_ssl', '0'),
(54, 2, 'show_admin_bar_front', 'true'),
(55, 2, 'locale', ''),
(56, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(57, 2, 'wp_user_level', '10'),
(58, 2, 'dismissed_wp_pointers', ''),
(59, 2, 'last_update', '1591035360');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'cali_magnifico@hotmail.com', '$P$BkN8vbgmrogRxjsbBKsf1ikNXyO.9w.', 'cali_magnificohotmail-com', '1430177@upv.edu.mx', 'https://TiendaElectronicaOnlineweb.000webhostapp.com', '2020-05-14 23:17:42', '', 0, ''),
(2, 'admin', '$P$BXROBD3YHpZ0WKbaSLgI59XcKL1SCx/', 'admin', 'mrodriguezc@upv.edu.mx', '', '2020-06-01 18:16:00', '1591035360:$P$BMWNVt9/3VK3IKN2xFrg6BX20Kno59/', 0, 'mario rdz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-14 23:26:29', NULL, 0),
(2, 'wc-admin-store-notice-setting-moved', 'info', 'en_US', 'Looking for the Store Notice setting?', 'It can now be found in the Customizer.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-14 23:26:30', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-14 23:26:35', NULL, 0),
(4, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', 'info', '{}', 'actioned', 'woocommerce-admin', '2020-05-14 23:26:43', NULL, 0),
(5, 'wc-admin-store-notice-giving-feedback', 'info', 'en_US', 'Review your experience', 'If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-18 18:07:59', NULL, 0),
(6, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2020-05-18 18:08:00', NULL, 0),
(7, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you — get tips, product updates, and inspiration straight to your mailbox.', 'mail', '{}', 'unactioned', 'woocommerce-admin', '2020-05-18 18:08:00', NULL, 0),
(8, 'wc-admin-orders-milestone', 'info', 'en_US', 'First order', 'Congratulations on getting your first order from a customer! Learn how to manage your orders.', 'trophy', '{}', 'unactioned', 'woocommerce-admin', '2020-05-19 15:02:53', NULL, 0),
(9, 'wc-admin-facebook-extension', 'info', 'en_US', 'Market on Facebook', 'Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.', 'thumbs-up', '{}', 'actioned', 'woocommerce-admin', '2020-05-19 15:03:09', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'open-customizer', 'Open Customizer', 'customize.php', 'actioned', 0),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0),
(4, 4, 'continue-profiler', 'Continue Store Setup', 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(5, 4, 'skip-profiler', 'Skip Setup', 'https://TiendaElectronicaOnlineweb.000webhostapp.com/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0),
(6, 5, 'share-feedback', 'Review', 'https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post', 'actioned', 0),
(7, 6, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0),
(8, 7, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0),
(9, 8, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/managing-orders/', 'actioned', 0),
(10, 9, 'learn-more', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 0),
(11, 9, 'install-now', 'Install now', '', 'unactioned', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_customer_lookup`
--

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'cali_magnifico@hotmail.com', 'oscar', 'rosas', '1430177@upv.edu.mx', '2020-06-01 00:00:00', '2020-05-14 23:17:42', 'MX', '87087', 'victoria', 'TM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_order_product_lookup`
--

INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 30, 22, 0, 1, '2020-05-18 21:39:12', 2, 7598, 7598, 0, 0, 0, 0),
(2, 30, 19, 0, 1, '2020-05-18 21:39:12', 1, 38000, 38000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_order_stats`
--

INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(30, 0, '2020-05-18 21:39:12', '2020-05-18 21:39:12', 3, 45598, 0, 0, 45598, 0, 'wc-processing', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(19, '', 0, 0, 38000.0000, 38000.0000, 1, NULL, 'instock', 0, 0.00, 1, 'taxable', ''),
(22, '', 0, 0, 3799.0000, 3799.0000, 1, NULL, 'instock', 0, 0.00, 2, 'taxable', ''),
(34, '', 0, 0, 489.0000, 489.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(35, '', 0, 0, 589.0000, 589.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(37, '', 0, 0, 229.0000, 229.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(39, '', 0, 0, 553.0000, 553.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(41, '', 0, 0, 780.0000, 780.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(43, '', 0, 0, 399.0000, 399.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(45, '', 0, 0, 26000.0000, 26000.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(47, '', 0, 0, 25649.0000, 25649.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(49, '', 0, 0, 7998.0000, 7998.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(51, '', 0, 0, 22999.0000, 22999.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(53, '', 0, 0, 5129.0000, 5129.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(55, '', 0, 0, 11899.0000, 11899.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(57, '', 0, 0, 28499.0000, 28499.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(59, '', 0, 0, 9499.0000, 9499.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(62, '', 0, 0, 6999.0000, 6999.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(64, '', 0, 0, 3599.0000, 3599.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(66, '', 0, 0, 3499.0000, 3499.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(68, '', 0, 0, 4200.0000, 4200.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(70, '', 0, 0, 3700.0000, 3700.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(71, '', 0, 0, 8000.0000, 8000.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(73, '', 0, 0, 216.0000, 216.0000, 1, NULL, 'instock', 0, 0.00, 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '22'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '7598'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '7598'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '19'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '38000'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '38000'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Silla Gamer Ergonomica Reclinable 200kg Xzeal Gaming Stylos', 'line_item', 30),
(2, 'Laptop Hp OMEN CoreI7-9thGen', 'line_item', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(35, '1', 'a:9:{s:22:\"mailchimp_landing_site\";s:64:\"https://TiendaElectronicaOnlineweb.000webhostapp.com/my-account/\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:784:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-05-18T21:39:10+00:00\";s:8:\"postcode\";s:5:\"87087\";s:4:\"city\";s:8:\"victoria\";s:9:\"address_1\";s:7:\"avenida\";s:7:\"address\";s:7:\"avenida\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"TM\";s:7:\"country\";s:2:\"MX\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"TM\";s:16:\"shipping_country\";s:2:\"MX\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:5:\"oscar\";s:9:\"last_name\";s:5:\"rosas\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"8341555628\";s:5:\"email\";s:18:\"1430177@upv.edu.mx\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1591208230);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpforms_tasks_meta`
--

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wpforms_tasks_meta`
--

INSERT INTO `wp_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2020-05-21 21:04:34'),
(2, 'wpforms_admin_notifications_update', 'W10=', '2020-05-21 21:04:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indices de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indices de la tabla `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indices de la tabla `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indices de la tabla `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indices de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indices de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1529;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=925;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
