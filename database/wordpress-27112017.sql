-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2017 at 04:28 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-13 02:08:37', '2017-11-13 02:08:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=415 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/wordpress', 'yes'),
(2, 'home', 'http://localhost:82/wordpress', 'yes'),
(3, 'blogname', 'WordPress Beginning 4.8.3', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '3', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:65:"C:\\wamp\\www\\wordpress/wp-content/themes/twentyseventeen/style.css";i:2;s:60:"C:\\wamp\\www\\wordpress/wp-content/plugins/akismet/akismet.php";i:3;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:6:{s:5:"title";s:10:"Categories";s:5:"count";i:1;s:12:"hierarchical";i:1;s:8:"dropdown";i:0;s:6:"number";i:4;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:3;s:9:"show_date";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:1;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:12:"categories-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:17:"recent-comments-2";i:4;s:8:"search-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1511791718;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511791719;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511828990;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511834941;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.8.3";s:12:"last_checked";i:1511748561;}', 'no'),
(114, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511748561;}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511748561;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(133, 'theme_mods_twentysixteen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(146, '_transient_timeout_plugin_slugs', '1511423882', 'no'),
(147, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'WPLANG', '', 'yes'),
(352, '_site_transient_timeout_wporg_theme_feature_list', '1511347495', 'no'),
(353, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(397, 'category_children', 'a:4:{i:33;a:4:{i:0;i:37;i:1;i:42;i:2;i:48;i:3;i:49;}i:34;a:4:{i:0;i:38;i:1;i:39;i:2;i:40;i:3;i:41;}i:43;a:3:{i:0;i:44;i:1;i:45;i:2;i:46;}i:50;a:1:{i:0;i:51;}}', 'yes'),
(404, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1511784853', 'no'),
(405, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(408, '_transient_is_multi_author', '0', 'yes'),
(411, '_site_transient_timeout_theme_roots', '1511750201', 'no'),
(412, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(414, '_transient_twentyseventeen_categories', '2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=357 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(128, 1, '_edit_lock', '1511332404:1'),
(150, 59, '_edit_last', '1'),
(151, 59, '_edit_lock', '1511332524:1'),
(152, 84, '_edit_last', '1'),
(153, 84, '_edit_lock', '1511744456:1'),
(196, 106, '_edit_lock', '1511332580:1'),
(197, 106, '_edit_last', '1'),
(204, 114, '_wp_trash_meta_status', 'publish'),
(205, 114, '_wp_trash_meta_time', '1511333402'),
(206, 115, '_edit_lock', '1511333688:1'),
(207, 112, '_wp_trash_meta_status', 'publish'),
(208, 112, '_wp_trash_meta_time', '1511333361'),
(209, 117, '_wp_trash_meta_status', 'publish'),
(210, 117, '_wp_trash_meta_time', '1511333564'),
(211, 118, '_edit_lock', '1511334307:1'),
(212, 119, '_edit_lock', '1511333971:1'),
(213, 119, '_edit_last', '1'),
(216, 121, '_edit_lock', '1511335084:1'),
(217, 122, '_edit_lock', '1511333681:1'),
(218, 123, '_edit_lock', '1511334660:1'),
(219, 123, '_edit_last', '1'),
(222, 125, '_wp_trash_meta_status', 'publish'),
(223, 125, '_wp_trash_meta_time', '1511334835'),
(224, 121, '_edit_last', '1'),
(233, 127, '_wp_trash_meta_status', 'publish'),
(234, 127, '_wp_trash_meta_time', '1511335079'),
(235, 128, '_wp_trash_meta_status', 'publish'),
(236, 128, '_wp_trash_meta_time', '1511335085'),
(237, 129, '_wp_trash_meta_status', 'publish'),
(238, 129, '_wp_trash_meta_time', '1511335149'),
(239, 130, '_edit_lock', '1511335241:1'),
(240, 130, '_edit_last', '1'),
(241, 121, '_wp_trash_meta_status', 'publish'),
(242, 121, '_wp_trash_meta_time', '1511335541'),
(243, 121, '_wp_desired_post_slug', 'abc'),
(244, 123, '_wp_trash_meta_status', 'publish'),
(245, 123, '_wp_trash_meta_time', '1511335544'),
(246, 123, '_wp_desired_post_slug', 'hieu'),
(247, 119, '_wp_trash_meta_status', 'publish'),
(248, 119, '_wp_trash_meta_time', '1511335546'),
(249, 119, '_wp_desired_post_slug', 'demo-post-category'),
(250, 132, '_edit_last', '1'),
(253, 132, '_edit_lock', '1511336855:1'),
(254, 134, '_edit_lock', '1511336871:1'),
(255, 134, '_edit_last', '1'),
(258, 136, '_edit_lock', '1511336145:1'),
(261, 138, '_edit_lock', '1511336360:1'),
(262, 138, '_edit_last', '1'),
(273, 143, '_edit_lock', '1511338651:1'),
(274, 143, '_edit_last', '1'),
(277, 145, '_edit_lock', '1511336511:1'),
(278, 145, '_edit_last', '1'),
(281, 147, '_edit_lock', '1511336677:1'),
(282, 147, '_edit_last', '1'),
(285, 147, '_wp_trash_meta_status', 'publish'),
(286, 147, '_wp_trash_meta_time', '1511336877'),
(287, 147, '_wp_desired_post_slug', 'test'),
(288, 145, '_wp_trash_meta_status', 'publish'),
(289, 145, '_wp_trash_meta_time', '1511336881'),
(290, 145, '_wp_desired_post_slug', 'post-number-2-4'),
(293, 134, '_wp_trash_meta_status', 'publish'),
(294, 134, '_wp_trash_meta_time', '1511337018'),
(295, 134, '_wp_desired_post_slug', 'demo'),
(296, 59, '_wp_trash_meta_status', 'publish'),
(297, 59, '_wp_trash_meta_time', '1511337022'),
(298, 59, '_wp_desired_post_slug', 'tin-quoc-te-2'),
(299, 106, '_wp_trash_meta_status', 'publish'),
(300, 106, '_wp_trash_meta_time', '1511337025'),
(301, 106, '_wp_desired_post_slug', 'tin-quoc-te'),
(302, 1, '_wp_trash_meta_status', 'publish'),
(303, 1, '_wp_trash_meta_time', '1511337027'),
(304, 1, '_wp_desired_post_slug', 'hello-world'),
(305, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(306, 150, '_edit_lock', '1511337014:1'),
(307, 150, '_edit_last', '1'),
(312, 153, '_edit_lock', '1511337098:1'),
(313, 153, '_edit_last', '1'),
(316, 153, '_wp_trash_meta_status', 'publish'),
(317, 153, '_wp_trash_meta_time', '1511338773'),
(318, 153, '_wp_desired_post_slug', 'post-3'),
(319, 150, '_wp_trash_meta_status', 'publish'),
(320, 150, '_wp_trash_meta_time', '1511338779'),
(321, 150, '_wp_desired_post_slug', 'post-4'),
(324, 143, '_wp_trash_meta_status', 'publish'),
(325, 143, '_wp_trash_meta_time', '1511338806'),
(326, 143, '_wp_desired_post_slug', 'post-number-2-2'),
(327, 138, '_wp_trash_meta_status', 'publish'),
(328, 138, '_wp_trash_meta_time', '1511338808'),
(329, 138, '_wp_desired_post_slug', 'post-number-2'),
(330, 132, '_wp_trash_meta_status', 'publish'),
(331, 132, '_wp_trash_meta_time', '1511338810'),
(332, 132, '_wp_desired_post_slug', 'post-number-4'),
(333, 155, '_edit_lock', '1511338694:1'),
(334, 155, '_edit_last', '1'),
(337, 157, '_edit_lock', '1511338964:1'),
(338, 157, '_edit_last', '1'),
(341, 159, '_edit_lock', '1511338990:1'),
(342, 159, '_edit_last', '1'),
(345, 161, '_edit_lock', '1511339526:1'),
(346, 161, '_edit_last', '1'),
(351, 164, '_edit_lock', '1511344136:1'),
(352, 164, '_edit_last', '1'),
(355, 166, '_edit_lock', '1511344573:1'),
(356, 2, '_edit_lock', '1511744469:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=169 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-13 02:08:37', '2017-11-13 02:08:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-11-22 07:50:27', '2017-11-22 07:50:27', '', 0, 'http://localhost:82/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-13 02:08:37', '2017-11-13 02:08:37', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:82/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-13 02:08:37', '2017-11-13 02:08:37', '', 0, 'http://localhost:82/wordpress/?page_id=2', 0, 'page', '', 0),
(59, 1, '2017-11-22 06:37:44', '2017-11-22 06:37:44', '', 'Tin Quốc Tế', '', 'trash', 'open', 'open', '', 'tin-quoc-te-2__trashed', '', '', '2017-11-22 07:50:22', '2017-11-22 07:50:22', '', 0, 'http://localhost:82/wordpress/?p=59', 0, 'post', '', 0),
(84, 1, '2017-11-20 01:27:05', '0000-00-00 00:00:00', '', 'home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-20 01:27:05', '2017-11-20 01:27:05', '', 0, 'http://localhost:82/wordpress/?page_id=84', 0, 'page', '', 0),
(104, 1, '2017-11-20 01:59:36', '2017-11-20 01:59:36', '', 'user', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-11-20 01:59:36', '2017-11-20 01:59:36', '', 59, 'http://localhost:82/wordpress/index.php/2017/11/20/59-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-11-22 06:36:51', '2017-11-22 06:36:51', '', 'Tin Trong Nước', '', 'trash', 'open', 'open', '', 'tin-quoc-te__trashed', '', '', '2017-11-22 07:50:25', '2017-11-22 07:50:25', '', 0, 'http://localhost:82/wordpress/?p=106', 0, 'post', '', 0),
(107, 1, '2017-11-22 06:36:24', '2017-11-22 06:36:24', '', 'Tin Trong nuoc', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-11-22 06:36:24', '2017-11-22 06:36:24', '', 106, 'http://localhost:82/wordpress/index.php/2017/11/22/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-11-22 06:36:50', '2017-11-22 06:36:50', '', 'Tin Quốc Tế', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-11-22 06:36:50', '2017-11-22 06:36:50', '', 106, 'http://localhost:82/wordpress/index.php/2017/11/22/106-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2017-11-22 06:37:44', '2017-11-22 06:37:44', '', 'Tin Quốc Tế', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-11-22 06:37:44', '2017-11-22 06:37:44', '', 59, 'http://localhost:82/wordpress/index.php/2017/11/22/59-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2017-11-22 06:38:13', '2017-11-22 06:38:13', '', 'Tin Trong Nước', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-11-22 06:38:13', '2017-11-22 06:38:13', '', 106, 'http://localhost:82/wordpress/index.php/2017/11/22/106-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-11-22 06:45:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 06:45:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=111', 0, 'post', '', 0),
(112, 1, '2017-11-22 06:49:21', '2017-11-22 06:49:21', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_recent-comments[2]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NDt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d15b343517a4bf00481f5cf53d3d17b9"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjowO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "66848a7178c7da24d703b3c0af8d0311"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_categories[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDYXRlZ29yaWVzIjtzOjU6ImNvdW50IjtpOjA7czoxMjoiaGllcmFyY2hpY2FsIjtpOjA7czo4OiJkcm9wZG93biI7aToxO30=",\n            "title": "Categories",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "67ff249c6f520e1087e2433c9c72c900"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1b8742e5-3c32-4614-bb7b-b5f5d7ba85df', '', '', '2017-11-22 06:49:21', '2017-11-22 06:49:21', '', 0, 'http://localhost:82/wordpress/?p=112', 0, 'customize_changeset', '', 0),
(113, 1, '2017-11-22 06:59:17', '0000-00-00 00:00:00', '{\n    "widget_categories[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDYXRlZ29yaWVzIjtzOjU6ImNvdW50IjtpOjE7czoxMjoiaGllcmFyY2hpY2FsIjtpOjA7czo4OiJkcm9wZG93biI7aToxO30=",\n            "title": "Categories",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "892a237c1f097ca8f3a8de1289c9bff5"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9885cada-0ebe-4df0-add2-745da43e02fc', '', '', '2017-11-22 06:59:17', '2017-11-22 06:59:17', '', 0, 'http://localhost:82/wordpress/?p=113', 0, 'customize_changeset', '', 0),
(114, 1, '2017-11-22 06:50:02', '2017-11-22 06:50:02', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "search-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '27b515ca-a709-4d57-801e-1fc9efb69b05', '', '', '2017-11-22 06:50:02', '2017-11-22 06:50:02', '', 0, 'http://localhost:82/wordpress/?p=114', 0, 'customize_changeset', '', 0),
(115, 1, '2017-11-22 06:54:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 06:54:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=115', 0, 'post', '', 0),
(116, 1, '2017-11-22 06:54:05', '0000-00-00 00:00:00', '{\n    "widget_categories[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDYXRlZ29yaWVzIjtzOjU6ImNvdW50IjtpOjE7czoxMjoiaGllcmFyY2hpY2FsIjtpOjA7czo4OiJkcm9wZG93biI7aToxO30=",\n            "title": "Categories",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "892a237c1f097ca8f3a8de1289c9bff5"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '696b7075-4a9a-4ad3-8f77-f8be203a3443', '', '', '2017-11-22 06:54:05', '2017-11-22 06:54:05', '', 0, 'http://localhost:82/wordpress/?p=116', 0, 'customize_changeset', '', 0),
(117, 1, '2017-11-22 06:52:44', '2017-11-22 06:52:44', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0493ff89-806f-4f56-bcda-1b827040a2b3', '', '', '2017-11-22 06:52:44', '2017-11-22 06:52:44', '', 0, 'http://localhost:82/wordpress/?p=117', 0, 'customize_changeset', '', 0),
(118, 1, '2017-11-22 07:00:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 07:00:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=118', 0, 'post', '', 0),
(119, 1, '2017-11-22 06:57:30', '2017-11-22 06:57:30', 'ABC DEMO', 'Demo Post Category', '', 'trash', 'open', 'open', '', 'demo-post-category__trashed', '', '', '2017-11-22 07:25:46', '2017-11-22 07:25:46', '', 0, 'http://localhost:82/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2017-11-22 06:57:30', '2017-11-22 06:57:30', 'ABC DEMO', 'Demo Post Category', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2017-11-22 06:57:30', '2017-11-22 06:57:30', '', 119, 'http://localhost:82/wordpress/index.php/2017/11/22/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2017-11-22 07:17:16', '2017-11-22 07:17:16', '111111', 'abc', '', 'trash', 'open', 'open', '', 'abc__trashed', '', '', '2017-11-22 07:25:41', '2017-11-22 07:25:41', '', 0, 'http://localhost:82/wordpress/?p=121', 0, 'post', '', 0),
(122, 1, '2017-11-22 06:54:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 06:54:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=122', 0, 'post', '', 0),
(123, 1, '2017-11-22 07:03:09', '2017-11-22 07:03:09', 'hihihiiiihih', 'hieu', '', 'trash', 'open', 'open', '', 'hieu__trashed', '', '', '2017-11-22 07:25:44', '2017-11-22 07:25:44', '', 0, 'http://localhost:82/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2017-11-22 07:03:09', '2017-11-22 07:03:09', 'hihihiiiihih', 'hieu', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2017-11-22 07:03:09', '2017-11-22 07:03:09', '', 123, 'http://localhost:82/wordpress/index.php/2017/11/22/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2017-11-22 07:13:55', '2017-11-22 07:13:55', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MjtzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "c4d8448f19c08aafe777c6b30b92a94f"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33afe6dc-d917-494d-b6c7-eead9b48c064', '', '', '2017-11-22 07:13:55', '2017-11-22 07:13:55', '', 0, 'http://localhost:82/wordpress/?p=125', 0, 'customize_changeset', '', 0),
(126, 1, '2017-11-22 07:17:16', '2017-11-22 07:17:16', '111111', 'abc', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2017-11-22 07:17:16', '2017-11-22 07:17:16', '', 121, 'http://localhost:82/wordpress/index.php/2017/11/22/121-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2017-11-22 07:17:59', '2017-11-22 07:17:59', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MjtzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "c4d8448f19c08aafe777c6b30b92a94f"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b9d6880a-8cfa-4f30-a695-7b10ac93af25', '', '', '2017-11-22 07:17:59', '2017-11-22 07:17:59', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/22/b9d6880a-8cfa-4f30-a695-7b10ac93af25/', 0, 'customize_changeset', '', 0),
(128, 1, '2017-11-22 07:18:04', '2017-11-22 07:18:04', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b68fc291d3d6050a15a6df5117d80175"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '640d46a4-a34a-4cbe-8cf4-acd30d7ce0e1', '', '', '2017-11-22 07:18:04', '2017-11-22 07:18:04', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/22/640d46a4-a34a-4cbe-8cf4-acd30d7ce0e1/', 0, 'customize_changeset', '', 0),
(129, 1, '2017-11-22 07:19:08', '2017-11-22 07:19:08', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b68fc291d3d6050a15a6df5117d80175"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff10c0d7-a2b2-4bc9-9b29-b53512d70983', '', '', '2017-11-22 07:19:08', '2017-11-22 07:19:08', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/22/ff10c0d7-a2b2-4bc9-9b29-b53512d70983/', 0, 'customize_changeset', '', 0),
(130, 1, '2017-11-22 07:22:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 07:22:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=130', 0, 'post', '', 0),
(131, 1, '2017-11-22 07:23:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 07:23:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=131', 0, 'post', '', 0),
(132, 1, '2017-11-22 07:31:01', '2017-11-22 07:31:01', '', 'POST NUMBER 3', '', 'trash', 'open', 'open', '', 'post-number-4__trashed', '', '', '2017-11-22 08:20:10', '2017-11-22 08:20:10', '', 0, 'http://localhost:82/wordpress/?p=132', 0, 'post', '', 0),
(133, 1, '2017-11-22 07:31:01', '2017-11-22 07:31:01', '', 'POST NUMBER 4', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2017-11-22 07:31:01', '2017-11-22 07:31:01', '', 132, 'http://localhost:82/wordpress/index.php/2017/11/22/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2017-11-22 07:28:54', '2017-11-22 07:28:54', 'Tin NHA', 'Demo', '', 'trash', 'open', 'open', '', 'demo__trashed', '', '', '2017-11-22 07:50:18', '2017-11-22 07:50:18', '', 0, 'http://localhost:82/wordpress/?p=134', 0, 'post', '', 0),
(135, 1, '2017-11-22 07:28:54', '2017-11-22 07:28:54', 'Tin NHA', 'Demo', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2017-11-22 07:28:54', '2017-11-22 07:28:54', '', 134, 'http://localhost:82/wordpress/index.php/2017/11/22/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2017-11-22 07:35:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 07:35:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=136', 0, 'post', '', 0),
(137, 1, '2017-11-22 07:38:41', '2017-11-22 07:38:41', '', 'POST NUMBER 1', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2017-11-22 07:38:41', '2017-11-22 07:38:41', '', 132, 'http://localhost:82/wordpress/index.php/2017/11/22/132-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2017-11-22 07:40:01', '2017-11-22 07:40:01', '', 'POST NUMBER 1', '', 'trash', 'open', 'open', '', 'post-number-2__trashed', '', '', '2017-11-22 08:20:08', '2017-11-22 08:20:08', '', 0, 'http://localhost:82/wordpress/?p=138', 0, 'post', '', 0),
(139, 1, '2017-11-22 07:40:01', '2017-11-22 07:40:01', '', 'POST NUMBER 2', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2017-11-22 07:40:01', '2017-11-22 07:40:01', '', 138, 'http://localhost:82/wordpress/index.php/2017/11/22/138-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2017-11-22 07:40:27', '2017-11-22 07:40:27', '', 'POST NUMBER 3', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2017-11-22 07:40:27', '2017-11-22 07:40:27', '', 138, 'http://localhost:82/wordpress/index.php/2017/11/22/138-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2017-11-22 07:41:27', '2017-11-22 07:41:27', '', 'POST NUMBER 3', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2017-11-22 07:41:27', '2017-11-22 07:41:27', '', 132, 'http://localhost:82/wordpress/index.php/2017/11/22/132-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2017-11-22 07:41:40', '2017-11-22 07:41:40', '', 'POST NUMBER 1', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2017-11-22 07:41:40', '2017-11-22 07:41:40', '', 138, 'http://localhost:82/wordpress/index.php/2017/11/22/138-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2017-11-22 07:42:03', '2017-11-22 07:42:03', '', 'POST NUMBER 2', '', 'trash', 'open', 'open', '', 'post-number-2-2__trashed', '', '', '2017-11-22 08:20:06', '2017-11-22 08:20:06', '', 0, 'http://localhost:82/wordpress/?p=143', 0, 'post', '', 0),
(144, 1, '2017-11-22 07:42:03', '2017-11-22 07:42:03', '', 'POST NUMBER 2', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-11-22 07:42:03', '2017-11-22 07:42:03', '', 143, 'http://localhost:82/wordpress/index.php/2017/11/22/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2017-11-22 07:42:47', '2017-11-22 07:42:47', '', 'POST NUMBER 2.4', '', 'trash', 'open', 'open', '', 'post-number-2-4__trashed', '', '', '2017-11-22 07:48:01', '2017-11-22 07:48:01', '', 0, 'http://localhost:82/wordpress/?p=145', 0, 'post', '', 0),
(146, 1, '2017-11-22 07:42:47', '2017-11-22 07:42:47', '', 'POST NUMBER 2.4', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-11-22 07:42:47', '2017-11-22 07:42:47', '', 145, 'http://localhost:82/wordpress/index.php/2017/11/22/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2017-11-22 07:45:33', '2017-11-22 07:45:33', '', 'test', '', 'trash', 'open', 'open', '', 'test__trashed', '', '', '2017-11-22 07:47:57', '2017-11-22 07:47:57', '', 0, 'http://localhost:82/wordpress/?p=147', 0, 'post', '', 0),
(148, 1, '2017-11-22 07:45:33', '2017-11-22 07:45:33', '', 'test', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2017-11-22 07:45:33', '2017-11-22 07:45:33', '', 147, 'http://localhost:82/wordpress/index.php/2017/11/22/147-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2017-11-22 07:50:27', '2017-11-22 07:50:27', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-11-22 07:50:27', '2017-11-22 07:50:27', '', 1, 'http://localhost:82/wordpress/index.php/2017/11/22/1-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2017-11-22 07:51:40', '2017-11-22 07:51:40', '', 'POST 5', '', 'trash', 'open', 'open', '', 'post-4__trashed', '', '', '2017-11-22 08:19:39', '2017-11-22 08:19:39', '', 0, 'http://localhost:82/wordpress/?p=150', 0, 'post', '', 0),
(151, 1, '2017-11-22 07:51:40', '2017-11-22 07:51:40', '', 'POST 4', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2017-11-22 07:51:40', '2017-11-22 07:51:40', '', 150, 'http://localhost:82/wordpress/index.php/2017/11/22/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2017-11-22 07:52:28', '2017-11-22 07:52:28', '', 'POST 5', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2017-11-22 07:52:28', '2017-11-22 07:52:28', '', 150, 'http://localhost:82/wordpress/index.php/2017/11/22/150-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2017-11-22 07:53:10', '2017-11-22 07:53:10', '', 'POST 3', '', 'trash', 'open', 'open', '', 'post-3__trashed', '', '', '2017-11-22 08:19:33', '2017-11-22 08:19:33', '', 0, 'http://localhost:82/wordpress/?p=153', 0, 'post', '', 0),
(154, 1, '2017-11-22 07:53:10', '2017-11-22 07:53:10', '', 'POST 3', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-11-22 07:53:10', '2017-11-22 07:53:10', '', 153, 'http://localhost:82/wordpress/index.php/2017/11/22/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2017-11-22 08:20:33', '2017-11-22 08:20:33', '', 'POST NUMBER 1', '', 'publish', 'open', 'open', '', 'post-number-1', '', '', '2017-11-22 08:20:33', '2017-11-22 08:20:33', '', 0, 'http://localhost:82/wordpress/?p=155', 0, 'post', '', 0),
(156, 1, '2017-11-22 08:20:33', '2017-11-22 08:20:33', '', 'POST NUMBER 1', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-11-22 08:20:33', '2017-11-22 08:20:33', '', 155, 'http://localhost:82/wordpress/index.php/2017/11/22/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2017-11-22 08:25:05', '2017-11-22 08:25:05', '', 'POST NUMBER 2', '', 'publish', 'open', 'open', '', 'post-number-2', '', '', '2017-11-22 08:25:05', '2017-11-22 08:25:05', '', 0, 'http://localhost:82/wordpress/?p=157', 0, 'post', '', 0),
(158, 1, '2017-11-22 08:25:05', '2017-11-22 08:25:05', '', 'POST NUMBER 2', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2017-11-22 08:25:05', '2017-11-22 08:25:05', '', 157, 'http://localhost:82/wordpress/index.php/2017/11/22/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2017-11-22 08:25:26', '2017-11-22 08:25:26', '', 'POST NUMBER 3', '', 'publish', 'open', 'open', '', 'post-number-3', '', '', '2017-11-22 08:25:26', '2017-11-22 08:25:26', '', 0, 'http://localhost:82/wordpress/?p=159', 0, 'post', '', 0),
(160, 1, '2017-11-22 08:25:26', '2017-11-22 08:25:26', '', 'POST NUMBER 3', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2017-11-22 08:25:26', '2017-11-22 08:25:26', '', 159, 'http://localhost:82/wordpress/index.php/2017/11/22/159-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2017-11-22 08:25:44', '2017-11-22 08:25:44', '', 'POST NUMBER 4', '', 'publish', 'open', 'open', '', 'post-number-4', '', '', '2017-11-22 08:34:26', '2017-11-22 08:34:26', '', 0, 'http://localhost:82/wordpress/?p=161', 0, 'post', '', 0),
(162, 1, '2017-11-22 08:25:44', '2017-11-22 08:25:44', '', 'POST NUMBER 4', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2017-11-22 08:25:44', '2017-11-22 08:25:44', '', 161, 'http://localhost:82/wordpress/index.php/2017/11/22/161-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2017-11-22 08:29:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 08:29:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=163', 0, 'post', '', 0),
(164, 1, '2017-11-22 09:51:11', '2017-11-22 09:51:11', 'avavavav', 'avavava', '', 'publish', 'open', 'open', '', 'avavava', '', '', '2017-11-22 09:51:11', '2017-11-22 09:51:11', '', 0, 'http://localhost:82/wordpress/?p=164', 0, 'post', '', 0),
(165, 1, '2017-11-22 09:51:11', '2017-11-22 09:51:11', 'avavavav', 'avavava', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2017-11-22 09:51:11', '2017-11-22 09:51:11', '', 164, 'http://localhost:82/wordpress/index.php/2017/11/22/164-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2017-11-22 09:52:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-22 09:52:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=166', 0, 'post', '', 0),
(167, 1, '2017-11-27 00:14:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-27 00:14:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=167', 0, 'post', '', 0),
(168, 1, '2017-11-27 01:03:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-27 01:03:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=168', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(33, 'CATEGORY 1', 'category-1', 0),
(34, 'CATEGORY 2', 'category-2', 0),
(37, 'CATEGORY 1.3', 'category-1-3', 0),
(38, 'CATEGORY 2.1', 'category-2-1', 0),
(39, 'CATEGORY 2.2', 'category-2-2', 0),
(40, 'CATEGORY 2.3', 'category-2-3', 0),
(41, 'CATEGORY 2.4', 'category-2-4', 0),
(42, 'CATEGORY 1.4', 'category-1-4', 0),
(43, 'CATEGORY 3', 'category-3', 0),
(44, 'CATEGORY 3.1', 'category-3-1', 0),
(45, 'CATEGORY 3.2', 'category-3-2', 0),
(46, 'CATEGORY 3.3', 'category-3-3', 0),
(47, 'CATEGORY 4', 'category-4', 0),
(48, 'wre eqeqw', 'wre-eqeqw', 0),
(49, 'qweqweqwe', 'qweqweqwe', 0),
(50, 'CATEGORYCHA', 'categorycha', 0),
(51, 'CATEGORYCON', 'categorycon', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(59, 1, 0),
(106, 1, 0),
(119, 1, 0),
(121, 1, 0),
(123, 1, 0),
(132, 37, 0),
(134, 1, 0),
(138, 1, 0),
(143, 33, 0),
(145, 34, 0),
(145, 41, 0),
(147, 33, 0),
(147, 42, 0),
(150, 47, 0),
(153, 34, 0),
(153, 43, 0),
(155, 33, 0),
(157, 34, 0),
(159, 43, 0),
(161, 47, 0),
(164, 50, 0),
(164, 51, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(33, 33, 'category', 'CATEGORY 1', 0, 1),
(34, 34, 'category', 'CATEGORY 2', 0, 1),
(37, 37, 'category', 'CATEGORY 1.3', 33, 0),
(38, 38, 'category', '', 34, 0),
(39, 39, 'category', '', 34, 0),
(40, 40, 'category', '', 34, 0),
(41, 41, 'category', '', 34, 0),
(42, 42, 'category', '', 33, 0),
(43, 43, 'category', '', 0, 1),
(44, 44, 'category', '', 43, 0),
(45, 45, 'category', '', 43, 0),
(46, 46, 'category', '', 43, 0),
(47, 47, 'category', '', 0, 1),
(48, 48, 'category', 'qweqweqweqweqweq qwe qew qwe qwe', 33, 0),
(49, 49, 'category', 'qweqweqwewqeqwe', 33, 0),
(50, 50, 'category', '', 0, 1),
(51, 51, 'category', '', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=105 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:5:{s:64:"49bb4898f254eef1ac09dec17f2d7d12c5393ea9bb3071680ac257f833478924";a:4:{s:10:"expiration";i:1511914440;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511741640;}s:64:"c3aaf631971ee7a350256b6ebbc63201e49dbc83a6800dba0e038c20080e281f";a:4:{s:10:"expiration";i:1511914459;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511741659;}s:64:"2501bbac2a6b7e718c12edcee3d2b8470f7dd9592ccad95d28eff77bbebd2406";a:4:{s:10:"expiration";i:1511915020;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511742220;}s:64:"2aa7173925ddfce73c92d6834b28ea83636070317f974109a028b05c492ed262";a:4:{s:10:"expiration";i:1511917372;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511744572;}s:64:"f85e1b8e36e2755dc3ba5744ee346fec9609d4114a1411eefa295132d18842b3";a:4:{s:10:"expiration";i:1511922720;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511749920;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '167'),
(17, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(18, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:38:"dashboard_right_now,dashboard_activity";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(20, 1, 'wp_user-settings', 'mfold=o&posts_list_mode=list'),
(21, 1, 'wp_user-settings-time', '1511337946'),
(22, 1, 'users_per_page', '20'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(77, 6, 'nickname', 'duy'),
(78, 6, 'first_name', 'nguyen hoang'),
(79, 6, 'last_name', 'duy'),
(80, 6, 'description', ''),
(81, 6, 'rich_editing', 'true'),
(82, 6, 'comment_shortcuts', 'false'),
(83, 6, 'admin_color', 'fresh'),
(84, 6, 'use_ssl', '0'),
(85, 6, 'show_admin_bar_front', 'true'),
(86, 6, 'locale', ''),
(87, 6, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(88, 6, 'wp_user_level', '10'),
(89, 6, 'dismissed_wp_pointers', ''),
(90, 7, 'nickname', 'duy1112'),
(91, 7, 'first_name', 'nguyen hoang'),
(92, 7, 'last_name', 'duy'),
(93, 7, 'description', ''),
(94, 7, 'rich_editing', 'true'),
(95, 7, 'comment_shortcuts', 'false'),
(96, 7, 'admin_color', 'fresh'),
(97, 7, 'use_ssl', '0'),
(98, 7, 'show_admin_bar_front', 'true'),
(99, 7, 'locale', ''),
(100, 7, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(101, 7, 'wp_user_level', '10'),
(102, 7, 'dismissed_wp_pointers', ''),
(103, 1, 'edit_category_per_page', '20'),
(104, 1, 'edit_post_per_page', '20');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bj2W9AjJFgljnpjXTl3EX/7E2dJvSw.', 'admin', 'admin@gmail.com', '', '2017-11-13 02:08:37', '', 0, 'admin'),
(6, 'duy', '$P$BgyyQt4ykDEuO08BYAmNSTWkdb4s0w0', 'duy', 'duy@gmail.com', '', '2017-11-20 03:50:19', '1511149821:$P$B4O8AI.gDP3j2uU1p/sjBUBAfmwS70/', 0, 'nguyen hoang duy'),
(7, 'duy1112', '$P$Bkjlds9tzRlpZlvF2Oc5MeP6IEHx5E0', 'duy1112', 'duy1212@gmail.com', '', '2017-11-20 03:50:37', '1511149838:$P$BcykkPSSW31jsrBFG0Cjbaz2Us6j7X1', 0, 'nguyen hoang duy');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
