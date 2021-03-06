-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 10:37 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=508 ;

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
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:1;s:12:"hierarchical";i:1;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
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
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:10;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:12:"categories-2";i:4;s:7:"pages-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"sortby";s:10:"post_title";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1511964518;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511964519;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512001790;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1512007741;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.8.3";s:12:"last_checked";i:1511934749;}', 'no'),
(114, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511942093;}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511938676;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(133, 'theme_mods_twentysixteen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(146, '_transient_timeout_plugin_slugs', '1512028493', 'no'),
(147, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'WPLANG', '', 'yes'),
(352, '_site_transient_timeout_wporg_theme_feature_list', '1511347495', 'no'),
(353, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(418, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1511977984', 'no'),
(419, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(487, '_site_transient_timeout_theme_roots', '1511943864', 'no'),
(488, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(491, 'category_children', 'a:5:{i:33;a:5:{i:0;i:37;i:1;i:42;i:2;i:48;i:3;i:49;i:4;i:52;}i:34;a:4:{i:0;i:38;i:1;i:39;i:2;i:40;i:3;i:41;}i:43;a:3:{i:0;i:44;i:1;i:45;i:2;i:46;}i:50;a:1:{i:0;i:51;}i:37;a:1:{i:0;i:53;}}', 'yes'),
(507, '_transient_is_multi_author', '0', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=513 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(128, 1, '_edit_lock', '1511332404:1'),
(150, 59, '_edit_last', '1'),
(151, 59, '_edit_lock', '1511332524:1'),
(152, 84, '_edit_last', '1'),
(153, 84, '_edit_lock', '1511937340:1'),
(196, 106, '_edit_lock', '1511332580:1'),
(197, 106, '_edit_last', '1'),
(204, 114, '_wp_trash_meta_status', 'publish'),
(205, 114, '_wp_trash_meta_time', '1511333402'),
(207, 112, '_wp_trash_meta_status', 'publish'),
(208, 112, '_wp_trash_meta_time', '1511333361'),
(209, 117, '_wp_trash_meta_status', 'publish'),
(210, 117, '_wp_trash_meta_time', '1511333564'),
(212, 119, '_edit_lock', '1511333971:1'),
(213, 119, '_edit_last', '1'),
(216, 121, '_edit_lock', '1511335084:1'),
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
(356, 2, '_edit_lock', '1511744469:1'),
(357, 164, '_wp_trash_meta_status', 'publish'),
(358, 164, '_wp_trash_meta_time', '1511937076'),
(359, 164, '_wp_desired_post_slug', 'avavava'),
(360, 169, '_edit_lock', '1511940624:1'),
(361, 169, '_edit_last', '1'),
(362, 161, '_wp_trash_meta_status', 'publish'),
(363, 161, '_wp_trash_meta_time', '1511937153'),
(364, 161, '_wp_desired_post_slug', 'post-number-4'),
(365, 169, '_wp_trash_meta_status', 'draft'),
(366, 169, '_wp_trash_meta_time', '1511937155'),
(367, 169, '_wp_desired_post_slug', ''),
(368, 159, '_wp_trash_meta_status', 'publish'),
(369, 159, '_wp_trash_meta_time', '1511937163'),
(370, 159, '_wp_desired_post_slug', 'post-number-3'),
(371, 157, '_wp_trash_meta_status', 'publish'),
(372, 157, '_wp_trash_meta_time', '1511937166'),
(373, 157, '_wp_desired_post_slug', 'post-number-2'),
(374, 155, '_wp_trash_meta_status', 'publish'),
(375, 155, '_wp_trash_meta_time', '1511937168'),
(376, 155, '_wp_desired_post_slug', 'post-number-1'),
(377, 172, '_edit_lock', '1511939371:1'),
(378, 172, '_edit_last', '1'),
(379, 174, '_wp_attached_file', '2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603.jpg'),
(380, 174, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:330;s:4:"file";s:113:"2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:113:"Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:113:"Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:113:"Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(381, 171, '_edit_lock', '1511937320:1'),
(382, 177, '_wp_attached_file', '2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603.jpg'),
(383, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:113:"2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:113:"Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:113:"Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:113:"Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(384, 176, '_edit_lock', '1511940124:1'),
(387, 169, '_wp_old_slug', '__trashed'),
(390, 180, '_edit_lock', '1511946668:1'),
(391, 181, '_edit_lock', '1511939349:1'),
(392, 181, '_edit_last', '1'),
(393, 180, '_edit_last', '1'),
(394, 182, '_wp_attached_file', '2017/11/bi_mat_2911083955.jpg'),
(395, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:360;s:4:"file";s:29:"2017/11/bi_mat_2911083955.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"bi_mat_2911083955-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"bi_mat_2911083955-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"bi_mat_2911083955-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(396, 183, '_edit_lock', '1511939322:1'),
(397, 183, '_edit_last', '1'),
(402, 185, '_edit_lock', '1511946653:1'),
(403, 185, '_edit_last', '1'),
(404, 176, '_edit_last', '1'),
(405, 188, '_wp_attached_file', '2017/11/8-1511871962918.png'),
(406, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:900;s:4:"file";s:27:"2017/11/8-1511871962918.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"8-1511871962918-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"8-1511871962918-233x300.png";s:5:"width";i:233;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:27:"8-1511871962918-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(415, 194, '_edit_lock', '1511946609:1'),
(416, 194, '_edit_last', '1'),
(419, 195, '_edit_lock', '1511946629:1'),
(420, 195, '_edit_last', '1'),
(421, 197, '_edit_lock', '1511946709:1'),
(422, 198, '_edit_lock', '1511937335:1'),
(423, 198, '_edit_last', '1'),
(424, 201, '_wp_attached_file', '2017/11/2413132116251443909155972988150756213778734n-1511916361323.png'),
(425, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:853;s:4:"file";s:70:"2017/11/2413132116251443909155972988150756213778734n-1511916361323.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:70:"2413132116251443909155972988150756213778734n-1511916361323-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:70:"2413132116251443909155972988150756213778734n-1511916361323-225x300.png";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:70:"2413132116251443909155972988150756213778734n-1511916361323-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(426, 199, '_edit_lock', '1511940278:1'),
(427, 197, '_edit_last', '1'),
(428, 202, '_edit_last', '1'),
(429, 202, '_edit_lock', '1511937527:1'),
(430, 199, '_edit_last', '1'),
(437, 207, '_edit_lock', '1511946582:1'),
(438, 207, '_edit_last', '1'),
(443, 210, '_edit_lock', '1511937522:1'),
(444, 210, '_edit_last', '1'),
(447, 214, '_edit_lock', '1511946553:1'),
(448, 214, '_edit_last', '1'),
(451, 219, '_edit_lock', '1511937692:1'),
(452, 219, '_edit_last', '1'),
(453, 221, '_edit_lock', '1511937704:1'),
(454, 221, '_edit_last', '1'),
(455, 224, '_edit_lock', '1511939065:1'),
(456, 224, '_edit_last', '1'),
(457, 226, '_edit_lock', '1511937743:1'),
(458, 226, '_edit_last', '1'),
(461, 229, '_edit_lock', '1511937763:1'),
(462, 229, '_edit_last', '1'),
(463, 227, '_edit_lock', '1511937693:1'),
(464, 227, '_edit_last', '1'),
(465, 233, '_edit_last', '1'),
(466, 233, '_edit_lock', '1511937705:1'),
(467, 236, '_edit_lock', '1511937653:1'),
(468, 236, '_edit_last', '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=255 ;

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
(112, 1, '2017-11-22 06:49:21', '2017-11-22 06:49:21', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_recent-comments[2]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NDt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "d15b343517a4bf00481f5cf53d3d17b9"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjowO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "66848a7178c7da24d703b3c0af8d0311"\n        },\n        "type": "option",\n        "user_id": 1\n    },\n    "widget_categories[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDYXRlZ29yaWVzIjtzOjU6ImNvdW50IjtpOjA7czoxMjoiaGllcmFyY2hpY2FsIjtpOjA7czo4OiJkcm9wZG93biI7aToxO30=",\n            "title": "Categories",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "67ff249c6f520e1087e2433c9c72c900"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1b8742e5-3c32-4614-bb7b-b5f5d7ba85df', '', '', '2017-11-22 06:49:21', '2017-11-22 06:49:21', '', 0, 'http://localhost:82/wordpress/?p=112', 0, 'customize_changeset', '', 0),
(114, 1, '2017-11-22 06:50:02', '2017-11-22 06:50:02', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "search-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '27b515ca-a709-4d57-801e-1fc9efb69b05', '', '', '2017-11-22 06:50:02', '2017-11-22 06:50:02', '', 0, 'http://localhost:82/wordpress/?p=114', 0, 'customize_changeset', '', 0),
(117, 1, '2017-11-22 06:52:44', '2017-11-22 06:52:44', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "categories-2",\n            "recent-posts-2",\n            "archives-2",\n            "recent-comments-2",\n            "meta-2"\n        ],\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0493ff89-806f-4f56-bcda-1b827040a2b3', '', '', '2017-11-22 06:52:44', '2017-11-22 06:52:44', '', 0, 'http://localhost:82/wordpress/?p=117', 0, 'customize_changeset', '', 0),
(119, 1, '2017-11-22 06:57:30', '2017-11-22 06:57:30', 'ABC DEMO', 'Demo Post Category', '', 'trash', 'open', 'open', '', 'demo-post-category__trashed', '', '', '2017-11-22 07:25:46', '2017-11-22 07:25:46', '', 0, 'http://localhost:82/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2017-11-22 06:57:30', '2017-11-22 06:57:30', 'ABC DEMO', 'Demo Post Category', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2017-11-22 06:57:30', '2017-11-22 06:57:30', '', 119, 'http://localhost:82/wordpress/index.php/2017/11/22/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2017-11-22 07:17:16', '2017-11-22 07:17:16', '111111', 'abc', '', 'trash', 'open', 'open', '', 'abc__trashed', '', '', '2017-11-22 07:25:41', '2017-11-22 07:25:41', '', 0, 'http://localhost:82/wordpress/?p=121', 0, 'post', '', 0),
(123, 1, '2017-11-22 07:03:09', '2017-11-22 07:03:09', 'hihihiiiihih', 'hieu', '', 'trash', 'open', 'open', '', 'hieu__trashed', '', '', '2017-11-22 07:25:44', '2017-11-22 07:25:44', '', 0, 'http://localhost:82/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2017-11-22 07:03:09', '2017-11-22 07:03:09', 'hihihiiiihih', 'hieu', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2017-11-22 07:03:09', '2017-11-22 07:03:09', '', 123, 'http://localhost:82/wordpress/index.php/2017/11/22/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2017-11-22 07:13:55', '2017-11-22 07:13:55', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MjtzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "c4d8448f19c08aafe777c6b30b92a94f"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33afe6dc-d917-494d-b6c7-eead9b48c064', '', '', '2017-11-22 07:13:55', '2017-11-22 07:13:55', '', 0, 'http://localhost:82/wordpress/?p=125', 0, 'customize_changeset', '', 0),
(126, 1, '2017-11-22 07:17:16', '2017-11-22 07:17:16', '111111', 'abc', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2017-11-22 07:17:16', '2017-11-22 07:17:16', '', 121, 'http://localhost:82/wordpress/index.php/2017/11/22/121-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2017-11-22 07:17:59', '2017-11-22 07:17:59', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MjtzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "c4d8448f19c08aafe777c6b30b92a94f"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b9d6880a-8cfa-4f30-a695-7b10ac93af25', '', '', '2017-11-22 07:17:59', '2017-11-22 07:17:59', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/22/b9d6880a-8cfa-4f30-a695-7b10ac93af25/', 0, 'customize_changeset', '', 0),
(128, 1, '2017-11-22 07:18:04', '2017-11-22 07:18:04', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b68fc291d3d6050a15a6df5117d80175"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '640d46a4-a34a-4cbe-8cf4-acd30d7ce0e1', '', '', '2017-11-22 07:18:04', '2017-11-22 07:18:04', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/22/640d46a4-a34a-4cbe-8cf4-acd30d7ce0e1/', 0, 'customize_changeset', '', 0),
(129, 1, '2017-11-22 07:19:08', '2017-11-22 07:19:08', '{\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6MztzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "b68fc291d3d6050a15a6df5117d80175"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff10c0d7-a2b2-4bc9-9b29-b53512d70983', '', '', '2017-11-22 07:19:08', '2017-11-22 07:19:08', '', 0, 'http://localhost:82/wordpress/index.php/2017/11/22/ff10c0d7-a2b2-4bc9-9b29-b53512d70983/', 0, 'customize_changeset', '', 0),
(132, 1, '2017-11-22 07:31:01', '2017-11-22 07:31:01', '', 'POST NUMBER 3', '', 'trash', 'open', 'open', '', 'post-number-4__trashed', '', '', '2017-11-22 08:20:10', '2017-11-22 08:20:10', '', 0, 'http://localhost:82/wordpress/?p=132', 0, 'post', '', 0),
(133, 1, '2017-11-22 07:31:01', '2017-11-22 07:31:01', '', 'POST NUMBER 4', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2017-11-22 07:31:01', '2017-11-22 07:31:01', '', 132, 'http://localhost:82/wordpress/index.php/2017/11/22/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2017-11-22 07:28:54', '2017-11-22 07:28:54', 'Tin NHA', 'Demo', '', 'trash', 'open', 'open', '', 'demo__trashed', '', '', '2017-11-22 07:50:18', '2017-11-22 07:50:18', '', 0, 'http://localhost:82/wordpress/?p=134', 0, 'post', '', 0),
(135, 1, '2017-11-22 07:28:54', '2017-11-22 07:28:54', 'Tin NHA', 'Demo', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2017-11-22 07:28:54', '2017-11-22 07:28:54', '', 134, 'http://localhost:82/wordpress/index.php/2017/11/22/134-revision-v1/', 0, 'revision', '', 0),
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
(155, 1, '2017-11-22 08:20:33', '2017-11-22 08:20:33', '', 'POST NUMBER 1', '', 'trash', 'open', 'open', '', 'post-number-1__trashed', '', '', '2017-11-29 06:32:48', '2017-11-29 06:32:48', '', 0, 'http://localhost:82/wordpress/?p=155', 0, 'post', '', 0),
(156, 1, '2017-11-22 08:20:33', '2017-11-22 08:20:33', '', 'POST NUMBER 1', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-11-22 08:20:33', '2017-11-22 08:20:33', '', 155, 'http://localhost:82/wordpress/index.php/2017/11/22/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2017-11-22 08:25:05', '2017-11-22 08:25:05', '', 'POST NUMBER 2', '', 'trash', 'open', 'open', '', 'post-number-2__trashed-2', '', '', '2017-11-29 06:32:46', '2017-11-29 06:32:46', '', 0, 'http://localhost:82/wordpress/?p=157', 0, 'post', '', 0),
(158, 1, '2017-11-22 08:25:05', '2017-11-22 08:25:05', '', 'POST NUMBER 2', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2017-11-22 08:25:05', '2017-11-22 08:25:05', '', 157, 'http://localhost:82/wordpress/index.php/2017/11/22/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2017-11-22 08:25:26', '2017-11-22 08:25:26', '', 'POST NUMBER 3', '', 'trash', 'open', 'open', '', 'post-number-3__trashed', '', '', '2017-11-29 06:32:43', '2017-11-29 06:32:43', '', 0, 'http://localhost:82/wordpress/?p=159', 0, 'post', '', 0),
(160, 1, '2017-11-22 08:25:26', '2017-11-22 08:25:26', '', 'POST NUMBER 3', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2017-11-22 08:25:26', '2017-11-22 08:25:26', '', 159, 'http://localhost:82/wordpress/index.php/2017/11/22/159-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2017-11-22 08:25:44', '2017-11-22 08:25:44', '', 'POST NUMBER 4', '', 'trash', 'open', 'open', '', 'post-number-4__trashed-2', '', '', '2017-11-29 06:32:33', '2017-11-29 06:32:33', '', 0, 'http://localhost:82/wordpress/?p=161', 0, 'post', '', 0),
(162, 1, '2017-11-22 08:25:44', '2017-11-22 08:25:44', '', 'POST NUMBER 4', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2017-11-22 08:25:44', '2017-11-22 08:25:44', '', 161, 'http://localhost:82/wordpress/index.php/2017/11/22/161-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2017-11-22 09:51:11', '2017-11-22 09:51:11', 'avavavav', 'avavava', '', 'trash', 'open', 'open', '', 'avavava__trashed', '', '', '2017-11-29 06:31:16', '2017-11-29 06:31:16', '', 0, 'http://localhost:82/wordpress/?p=164', 0, 'post', '', 0),
(165, 1, '2017-11-22 09:51:11', '2017-11-22 09:51:11', 'avavavav', 'avavava', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2017-11-22 09:51:11', '2017-11-22 09:51:11', '', 164, 'http://localhost:82/wordpress/index.php/2017/11/22/164-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2017-11-27 00:14:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-27 00:14:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=167', 0, 'post', '', 0),
(168, 1, '2017-11-27 01:03:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-27 01:03:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=168', 0, 'page', '', 0),
(169, 1, '2017-11-29 06:31:45', '2017-11-29 06:31:45', 'Tôi 26 tuổi, chồng là mối tình đầu tiên. Tôi yêu anh ấy bởi sự chín chắn, chân thành và tài năng. Chúng tôi làm cùng cơ quan, tôi là kế toán còn anh làm ở phòng kinh doanh. Thực lòng mà nói, tôi không phải dòng dõi trâm anh đài các, nhưng cũng thuộc diện gia đình có điều kiện. Chỉ có điều nhan sắc của tôi không bằng người khác, trong khi anh phong độ, giỏi giang nên nhìn chúng tôi như một “đôi đũa lệch”.<a href="http://google.com">class="col-md-6"</a>\r\n\r\n<!--more-->', '5 - Hóa ra vì muốn con gái được nhà chồng yêu thương mà bố mẹ tôi đã phải hạ mình, nhún nhường', '', 'publish', 'open', 'open', '', '5-hoa-ra-vi-muon-con-gai-duoc-nha-chong-yeu-thuong-ma-bo-me-toi-da-phai-ha-minh-nhun-nhuong', '', '', '2017-11-29 07:32:45', '2017-11-29 07:32:45', '', 0, 'http://localhost:82/wordpress/?p=169', 0, 'post', '', 0),
(170, 1, '2017-11-29 06:32:35', '2017-11-29 06:32:35', '', '1 - hieu', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2017-11-29 06:32:35', '2017-11-29 06:32:35', '', 169, 'http://localhost:82/wordpress/index.php/2017/11/29/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2017-11-29 06:34:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:34:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=171', 0, 'post', '', 0),
(172, 1, '2017-11-29 06:34:17', '2017-11-29 06:34:17', 'Tối 11/11, các trận chung kết đầu tiên ở nội dung Boxing Đấu trường Thép 2016 đã diễn ra tại Nhà thi đấu Trịnh Hoài Đức, Hà Nội. Trong ngày thi đấu này, có 4 cặp thi đấu chung...\r\n\r\n<!--more-->', '1. Thể thao Hôm Nay', '', 'publish', 'open', 'open', '', 'the-thao-1', '', '', '2017-11-29 07:11:42', '2017-11-29 07:11:42', '', 0, 'http://localhost:82/wordpress/?p=172', 0, 'post', '', 0),
(173, 1, '2017-11-29 06:34:03', '2017-11-29 06:34:03', 'Tôi 26 tuổi, chồng là mối tình đầu tiên. Tôi yêu anh ấy bởi sự chín chắn, chân thành và tài năng. Chúng tôi làm cùng cơ quan, tôi là kế toán còn anh làm ở phòng kinh doanh. Thực lòng mà nói, tôi không phải dòng dõi trâm anh đài các, nhưng cũng thuộc diện gia đình có điều kiện. Chỉ có điều nhan sắc của tôi không bằng người khác, trong khi anh phong độ, giỏi giang nên nhìn chúng tôi như một “đôi đũa lệch”.\n\nNói về anh, ngoài những điều kiện của bản thân thì gia đình anh có nhiều rắc rối. Bố mẹ bán hàng thực phẩm ở chợ, việc cãi nhau của bố mẹ anh diễn ra như cơm bữa, khiến anh vô cùng chán nản. Và hơn hết, bố mẹ anh không ưng thuận tôi.\n\nThực lòng mà nói, tôi không kén chọn, cũng không quá suy nghĩ nhiều về gia thế nhưng việc mẹ anh không ưng khiến chúng tôi khó xử rất nhiều. Thậm chí, có lần anh dẫn tôi về nhà chơi, mẹ anh còn nói: “Cô đừng lấy tiền ra để mồi chài con trai tôi, nhà tôi nghèo nhưng không đến nỗi hèn đâu cô ạ”. Nên tôi chẳng tự tin mỗi lần đến nhà anh.\n\n<img class="alignnone size-medium wp-image-174" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603-300x198.jpg" alt="" width="300" height="198" />\n<div><em>Hôn lễ của chúng tôi được tổ chức long trọng, chu đáo khiến mợi người ngưỡng mộ. (Ảnh minh họa)</em></div>\nRồi tôi có bầu trước, tôi lo lắng vô cùng, còn anh thì vui vẻ, vì anh nghĩ, đứa con sẽ thuyết phục được bố mẹ. Nhưng mẹ anh nhất nhất bắt chúng tôi bỏ con và nói không đời nào chấp nhận đứa con dâu “xấu người xấu nết” như tôi.\n\nTôi và anh nói sự thật với bố mẹ tôi, cho dù bố mẹ tôi buồn và thất vọng song vẫn an ủi, nói chúng tôi cứ yên tâm. Rồi bố mẹ tôi đích thân đến nói chuyện với mẹ anh, không hiểu các cụ nói gì với nhau, nhưng sau đó 2 tuần thì mẹ anh đồng ý cho chúng tôi làm đám cưới.\n\nHôn lễ của chúng tôi được tổ chức long trọng, chu đáo khiến họ hàng nhà tôi mát mặt, ngưỡng mộ, và hơn hết, bố mẹ anh còn mua tặng chúng tôi một căn hộ chung cư làm quà cưới.\n\nKhi ấy, tôi đã nghĩ, mình đang mơ và là người may mắn nhất thế gian vì được bố mẹ chồng yêu thương, chu đáo đến vậy.\n\nCuộc sống sau hôn nhân của tôi cũng dễ chịu, thoải mái. Mỗi lần về thăm bố mẹ chồng, mẹ chồng đối xử với tôi rất tốt.<img class="alignnone size-medium wp-image-177" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603-300x225.jpg" alt="" width="300" height="225" />\n\n&nbsp;', '5 - Hiếu - Hóa ra vì muốn con gái được nhà chồng yêu thương mà bố mẹ tôi đã phải hạ mình, nhún nhường', '', 'inherit', 'closed', 'closed', '', '169-autosave-v1', '', '', '2017-11-29 06:34:03', '2017-11-29 06:34:03', '', 169, 'http://localhost:82/wordpress/index.php/2017/11/29/169-autosave-v1/', 0, 'revision', '', 0),
(174, 1, '2017-11-29 06:32:54', '2017-11-29 06:32:54', '', 'Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh,_nhun_nhuong1_2911100603', '', 'inherit', 'open', 'closed', '', 'hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603', '', '', '2017-11-29 06:32:54', '2017-11-29 06:32:54', '', 169, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2017-11-29 06:35:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:35:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=175', 0, 'post', '', 0),
(176, 1, '2017-11-29 06:34:54', '2017-11-29 06:34:54', 'hero lore dota 2\r\n\r\nvvvavasvsavasvsav\r\n\r\nasvas\r\n\r\nvas\r\n\r\nvas\r\n\r\nvasvasvsavsvs', '9- Category:Hero lore-luân', '', 'publish', 'open', 'open', '', '9-categoryhero-lore-luan', '', '', '2017-11-29 07:24:25', '2017-11-29 07:24:25', '', 0, 'http://localhost:82/wordpress/?p=176', 0, 'post', '', 0),
(177, 1, '2017-11-29 06:33:48', '2017-11-29 06:33:48', '', 'Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh,_nhun_nhuong2_2911100603', '', 'inherit', 'open', 'closed', '', 'hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603', '', '', '2017-11-29 06:33:48', '2017-11-29 06:33:48', '', 169, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2017-11-29 06:34:15', '2017-11-29 06:34:15', 'Tối 11/11, các trận chung kết đầu tiên ở nội dung Boxing Đấu trường Thép 2016 đã diễn ra tại Nhà thi đấu Trịnh Hoài Đức, Hà Nội. Trong ngày thi đấu này, có 4 cặp thi đấu chung...\r\n\r\nỞ các trận chung kết này, 10 “tay đấm” xuất sắc nhất đã vượt qua các đối thủ sau 5 tháng tranh tài quyết liệt để tiến đến trận đấu quyết định cho chiếc đai vô địch danh giá...', 'Thể thao 1', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-29 06:34:15', '2017-11-29 06:34:15', '', 172, 'http://localhost:82/wordpress/index.php/2017/11/29/172-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2017-11-29 06:34:14', '2017-11-29 06:34:14', 'Tôi 26 tuổi, chồng là mối tình đầu tiên. Tôi yêu anh ấy bởi sự chín chắn, chân thành và tài năng. Chúng tôi làm cùng cơ quan, tôi là kế toán còn anh làm ở phòng kinh doanh. Thực lòng mà nói, tôi không phải dòng dõi trâm anh đài các, nhưng cũng thuộc diện gia đình có điều kiện. Chỉ có điều nhan sắc của tôi không bằng người khác, trong khi anh phong độ, giỏi giang nên nhìn chúng tôi như một “đôi đũa lệch”.\r\n\r\nNói về anh, ngoài những điều kiện của bản thân thì gia đình anh có nhiều rắc rối. Bố mẹ bán hàng thực phẩm ở chợ, việc cãi nhau của bố mẹ anh diễn ra như cơm bữa, khiến anh vô cùng chán nản. Và hơn hết, bố mẹ anh không ưng thuận tôi.\r\n\r\nThực lòng mà nói, tôi không kén chọn, cũng không quá suy nghĩ nhiều về gia thế nhưng việc mẹ anh không ưng khiến chúng tôi khó xử rất nhiều. Thậm chí, có lần anh dẫn tôi về nhà chơi, mẹ anh còn nói: “Cô đừng lấy tiền ra để mồi chài con trai tôi, nhà tôi nghèo nhưng không đến nỗi hèn đâu cô ạ”. Nên tôi chẳng tự tin mỗi lần đến nhà anh.\r\n\r\n<img class="alignnone size-medium wp-image-174" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong1_2911100603-300x198.jpg" alt="" width="300" height="198" />\r\n<div><em>Hôn lễ của chúng tôi được tổ chức long trọng, chu đáo khiến mợi người ngưỡng mộ. (Ảnh minh họa)</em></div>\r\nRồi tôi có bầu trước, tôi lo lắng vô cùng, còn anh thì vui vẻ, vì anh nghĩ, đứa con sẽ thuyết phục được bố mẹ. Nhưng mẹ anh nhất nhất bắt chúng tôi bỏ con và nói không đời nào chấp nhận đứa con dâu “xấu người xấu nết” như tôi.\r\n\r\nTôi và anh nói sự thật với bố mẹ tôi, cho dù bố mẹ tôi buồn và thất vọng song vẫn an ủi, nói chúng tôi cứ yên tâm. Rồi bố mẹ tôi đích thân đến nói chuyện với mẹ anh, không hiểu các cụ nói gì với nhau, nhưng sau đó 2 tuần thì mẹ anh đồng ý cho chúng tôi làm đám cưới.\r\n\r\nHôn lễ của chúng tôi được tổ chức long trọng, chu đáo khiến họ hàng nhà tôi mát mặt, ngưỡng mộ, và hơn hết, bố mẹ anh còn mua tặng chúng tôi một căn hộ chung cư làm quà cưới.\r\n\r\nKhi ấy, tôi đã nghĩ, mình đang mơ và là người may mắn nhất thế gian vì được bố mẹ chồng yêu thương, chu đáo đến vậy.\r\n\r\nCuộc sống sau hôn nhân của tôi cũng dễ chịu, thoải mái. Mỗi lần về thăm bố mẹ chồng, mẹ chồng đối xử với tôi rất tốt.<img class="alignnone size-medium wp-image-177" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/Hoa_ra_vi_muon_con_gai_duoc_nha_chong_yeu_thuong_ma_bo_me_toi_da_phai_ha_minh_nhun_nhuong2_2911100603-300x225.jpg" alt="" width="300" height="225" />\r\n\r\nNhưng tuần trước, được nghỉ làm sớm, tôi ghé qua nhà mua ít đồ ăn cho bố mẹ chồng thì gặp một chuyện khiến tôi chẳng thể nào quên. Vì mẹ chồng không khóa cổng nên tôi cứ mở cửa đi vào. Tôi đi một mạch vào phòng khách mà không thấy mẹ chồng đâu, đang định gọi bà thì nghe tiếng bà nói chuyện điện thoại. Giọng bà rất gay gắt nên tôi không tiện quấy rầy.\r\n\r\nTôi đang định mang đồ xuống bếp thì nghe tiếng mẹ chồng giận dữ: “Bà tưởng bà đưa cho tôi số tiền mua nhà, làm đám cưới mà to à? Nhà thì con bà ở, chứ nhà tôi được gì đâu. Trong khi cả đời con trai tôi mới là quan trọng, nó phải sống cùng đứa con gái xấu xí, đoảng lười của bà. Rồi vài tháng nữa, nó đẻ nằm đấy, không đi làm thì nhà tôi chẳng nuôi báo cô là gì? Thôi, chẳng gì cũng chỗ thông gia mỗi tháng bà gửi thêm 10 triệu cho tôi, tôi sẽ chăm sóc nó cẩn thận, chứ nó đẻ tôi không đi chợ được, không có tiền chăm đâu”.\r\n\r\nTôi gần như chết lặng khi nghe những lời ấy. Bấy lâu nay tôi cứ nghĩ mẹ chồng đã thay đổi thái độ với mình, yêu quý và thương mình thực lòng. Nhưng hóa ra đó chỉ là một màn kịch, bà chỉ làm vì tiền mà thôi. Nhưng có đến chết tôi cũng không nghĩ, bố mẹ tôi lại hi sinh danh dự, sĩ diện của mình để đến thương thuyết cùng nhà chồng chuyện hôn nhân ấy.\r\n\r\nTôi vứt luôn túi đồ rồi chạy về căn hộ chung cư của mình. Có lẽ, có đến chết tôi cũng không thể quên được cái cảm giác khi ấy, đau đớn, tuyệt vọng và cảm thấy tội lỗi vô cùng. Nếu được lựa chọn lại, thì cho dù yêu chồng đến bao nhiêu tôi cũng không bao giờ sống chết, mù quáng cố cưới bằng được anh. Cuộc đời mình đã vậy, nhưng tôi lại kéo bố mẹ mình vào hoàn cảnh “ngậm đắng nuốt cay”, tủi hổ chẳng thể nào chấp nhận được.\r\n\r\nThực lòng, tôi hối hận, mệt mỏi vô cùng, tôi biết phải làm gì đây? Xin mọi người hãy cho tôi lời khuyên.', '5 - Hóa ra vì muốn con gái được nhà chồng yêu thương mà bố mẹ tôi đã phải hạ mình, nhún nhường', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2017-11-29 06:34:14', '2017-11-29 06:34:14', '', 169, 'http://localhost:82/wordpress/index.php/2017/11/29/169-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2017-11-29 06:37:00', '2017-11-29 06:37:00', '<img class="wp-image-188 alignleft" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/8-1511871962918-233x300.png" alt="" width="218" height="281" />\r\n<p class="">Có một lý do vô cùng hợp tình hợp lý để những người trẻ dành ra hàng giờ đồng hồ "dán mắt" vào màn hình từ điện thoại cho đến máy tính và... tự cười một mình, bạn biết lý do đó là gì không? Đó chính là vì trên<a class="link-inline-content" title=" mạng xã hội" href="http://kenh14.vn/mang-xa-hoi.html" target="_blank" rel="noopener" data-cke-saved-href="http://kenh14.vn/mang-xa-hoi.html"> mạng xã hội</a> có rất rất nhiều những bộ ảnh chế cháo với hình ảnh và nội dung hài hước khiến bạn cười cả ngày chẳng hết!</p>\r\n<p class=""><!--more--></p>', '3 - Tác giả của những câu nói trào lưu nhất năm 2017 là ai? Chính là sao Việt!', '', 'publish', 'open', 'open', '', '3-tac-gia-cua-nhung-cau-noi-trao-luu-nhat-nam-2017-la-ai-chinh-la-sao-viet', '', '', '2017-11-29 09:13:29', '2017-11-29 09:13:29', '', 0, 'http://localhost:82/wordpress/?p=180', 0, 'post', '', 0),
(181, 1, '2017-11-29 06:35:13', '2017-11-29 06:35:13', 'Tôi với vợ cưới nhau khi cả 2 còn tay trắng. Lúc đó cả 2 chúng tôi mới ra trường, đi làm, thu nhập rất eo hẹp, bấp bênh. Tuy phải đi ở nhà thuê và đồng lương eo hẹp nhưng tôi và vợ thương yêu nhau vô cùng.\r\n\r\n<!--more-->', '6 - Món quà sếp của vợ tặng con trai tôi trong lễ đầy tháng vô tình giúp tôi phát hiện ra bí mật động trời', '', 'publish', 'open', 'open', '', '6-mon-qua-sep-cua-vo-tang-con-trai-toi-trong-le-day-thang-vo-tinh-giup-toi-phat-hien-ra-bi-mat-dong-troi', '', '', '2017-11-29 07:11:22', '2017-11-29 07:11:22', '', 0, 'http://localhost:82/wordpress/?p=181', 0, 'post', '', 0),
(182, 1, '2017-11-29 06:34:58', '2017-11-29 06:34:58', '', 'bi_mat_2911083955', '', 'inherit', 'open', 'closed', '', 'bi_mat_2911083955', '', '', '2017-11-29 06:34:58', '2017-11-29 06:34:58', '', 181, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/bi_mat_2911083955.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2017-11-29 06:35:39', '2017-11-29 06:35:39', 'Hai võ sĩ Vi Văn Duyệt (Đắk Nông) và Đặng Trần Anh Tuấn (Bình Định) chẳng xa lạ gì nhau, vì cả 2 vừa so tài cao thấp ở một giải võ thuật lớn tại Bình Định. Định mệnh...\r\n\r\n<!--more-->', '2. Thể Thao thế giới', '', 'publish', 'open', 'open', '', 'the-thao-2', '', '', '2017-11-29 07:11:02', '2017-11-29 07:11:02', '', 0, 'http://localhost:82/wordpress/?p=183', 0, 'post', '', 0),
(184, 1, '2017-11-29 06:35:13', '2017-11-29 06:35:13', 'Tôi với vợ cưới nhau khi cả 2 còn tay trắng. Lúc đó cả 2 chúng tôi mới ra trường, đi làm, thu nhập rất eo hẹp, bấp bênh. Tuy phải đi ở nhà thuê và đồng lương eo hẹp nhưng tôi và vợ thương yêu nhau vô cùng.\r\n\r\nChúng tôi định bụng sẽ kế hoạch để kiếm tiền mua nhà. Khi nào cả 2 có nhà cửa ổn định ở Hà Nội thì mới sinh con. Khi biết được dự định của vợ chồng tôi, bố mẹ 2 bên rất ủng hộ vì họ cũng nghĩ rằng công việc, nhà cửa chúng tôi chưa ổn định, sinh con sẽ thêm khó khăn, vất vả.\r\n\r\nVợ chồng tôi cứ thế bảo ban nhau làm việc thật chăm chỉ. Ngoài làm công việc văn phòng, vợ tôi còn bán thêm quần áo, đồ ăn, mỹ phẩm trên mạng, tôi không nề hà giúp vợ đi ship hàng khắp thành phố sau giờ làm. Sau 5 năm dành dụm, cùng với sự giúp đỡ của bố mẹ 2 bên, chúng tôi mua được một căn chung cư khá ưng ý. Tôi và vợ quyết định có con.\r\n\r\nĐầu năm nay, vợ tôi mang thai và đến tháng 10, em đã sinh một bé trai rất đáng yêu. Lần đầu được làm bố, tôi yêu con trai vô cùng. Tôi nghĩ rằng, con trai chính là thứ quý giá nhất trong cuộc đời của mình.\r\n\r\nNgày đầy tháng con trai tôi, tôi quyết định tổ chức một bữa tiệc đầy tháng thật hoành tráng. Tôi đã mời tất cả gia đình và bạn bè thân thiết đến chung vui với gia đình tôi trong ngày này.\r\n\r\nTrong số khách mời ở công ty vợ, tôi thấy sếp của vợ cũng đích thân đến dự tiệc. Sếp của vợ tôi khá già, mái tóc đã ngả màu hoa râm, tôi đoán ông ta cũng tầm tuổi 50. Khi đến dự lễ đầy tháng con tôi, ông ta đã tặng bé 1 phong bao lì xì 1000 USD.\r\n\r\nKhông những thế, sếp của vợ còn liên tục bế ẵm và ngắm nghía con trai tôi không chán mắt. Lúc đầu tôi chỉ nghĩ rằng có thể anh này khá quý trẻ con nên mới có hành động như vậy. <img class="alignnone size-medium wp-image-182" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/bi_mat_2911083955-300x180.jpg" alt="" width="300" height="180" />\r\n\r\nSau khi ăn trưa, tôi và các bạn đồng nghiệp ra bàn uống nước trong khi vợ tôi tiễn bạn đồng nghiệp của cô ấy ra tận thang máy. Chờ mãi không thấy vợ tôi vào bế con, tôi mở cửa đi ra phía hành lang thì bắt gặp vợ tôi đang đứng nói chuyện với sếp. Khi tôi lên tiếng gọi thì vợ tôi tỏ ra hốt hoảng, vội vã chào sếp để đi vào nhà.\r\n\r\nCảm thấy có chút nghi ngờ về mối quan hệ trên mức bình thường của vợ và sếp, đêm đó, tôi đã thẳng thắn hỏi chuyện này với vợ. Tuy nhiên, vợ tôi vẫn quả quyết rằng tất cả chỉ là hiểu lầm. Cô ấy nói từ trước đến nay luôn một lòng một dạ với tôi và không hề có bất cứ một mối quan hệ nào với sếp của cả.\r\n\r\nTuy nhiên, những cử chỉ, hành động của vợ tôi và sếp của cô ấy trong ngày hôm đó làm tôi ám ảnh và suy nghĩ mãi. Tôi đã lén ôm con đến bệnh viện để kiểm tra. Kết quả bác sỹ đưa ra làm tôi tái mặt.\r\n\r\nCon trai không những không phải con tôi mà tôi còn mắc chứng suy nhược tinh trùng. Thật không thể tưởng tượng nổi! Trách gì vài năm trở lại đây vợ tôi rất thờ ơ, hững hờ chuyện chăn gối. Cô ấy thường lấy lý do rằng vì công việc quá vất vả, căng thẳng nên chẳng còn hứng thú.\r\n\r\nMắt tôi nhòa lệ, tôi cảm thấy thế giới xung quanh tôi sụp đổ trong phút chốc. Tôi còn rất yêu vợ và thương con trai tôi. Chỉ cần cô ấy chấp nhận cắt đứt mối quan hệ với sếp, tôi sẽ yêu thương và nuôi nấng con trai như con đẻ. Nhưng tôi chỉ sợ cô ấy đã sai đường rồi lại tiếp tục sai thêm. Tôi thực sự đang đau khổ và rối trí quá.', '6 - Món quà sếp của vợ tặng con trai tôi trong lễ đầy tháng vô tình giúp tôi phát hiện ra bí mật động trời', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2017-11-29 06:35:13', '2017-11-29 06:35:13', '', 181, 'http://localhost:82/wordpress/index.php/2017/11/29/181-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2017-11-29 06:38:21', '2017-11-29 06:38:21', 'Wow, ngạc nhiên chưa? Một đứa chuyên <b>ngủ muộn</b> viết bài về việc <b>ngủ sớm</b>, haha. Nhưng đúng là tớ, Juno đây. Lâu rồi mới viết blog, hehe!!\r\n\r\n<!--more-->', '7- Làm thế nào để đi ngủ sớm?', '', 'publish', 'open', 'open', '', '7-lam-the-nao-de-di-ngu-som', '', '', '2017-11-29 09:13:09', '2017-11-29 09:13:09', '', 0, 'http://localhost:82/wordpress/?p=185', 0, 'post', '', 0),
(186, 1, '2017-11-29 06:35:38', '2017-11-29 06:35:38', 'Hai võ sĩ Vi Văn Duyệt (Đắk Nông) và Đặng Trần Anh Tuấn (Bình Định) chẳng xa lạ gì nhau, vì cả 2 vừa so tài cao thấp ở một giải võ thuật lớn tại Bình Định. Định mệnh...\r\n\r\nKhông khí của buổi thi đấu hôm nay đã nóng lên ngay từ trận đầu tiên, khi nhà vô địch quốc gia – Vi Văn Duyệt đến từ Đắk Nông chạm trán với kiện tướng mùa 2 của Đấu...', 'Thể Thao 2', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2017-11-29 06:35:38', '2017-11-29 06:35:38', '', 183, 'http://localhost:82/wordpress/index.php/2017/11/29/183-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2017-11-29 06:35:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:35:43', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=187', 0, 'post', '', 0),
(188, 1, '2017-11-29 06:36:22', '2017-11-29 06:36:22', '', '8-1511871962918', '', 'inherit', 'open', 'closed', '', '8-1511871962918', '', '', '2017-11-29 06:36:22', '2017-11-29 06:36:22', '', 180, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/8-1511871962918.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2017-11-29 06:37:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:37:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=189', 0, 'post', '', 0),
(190, 1, '2017-11-29 06:36:23', '2017-11-29 06:36:23', 'Tối 11/11, các trận chung kết đầu tiên ở nội dung Boxing Đấu trường Thép 2016 đã diễn ra tại Nhà thi đấu Trịnh Hoài Đức, Hà Nội. Trong ngày thi đấu này, có 4 cặp thi đấu chung...\r\n\r\nỞ các trận chung kết này, 10 “tay đấm” xuất sắc nhất đã vượt qua các đối thủ sau 5 tháng tranh tài quyết liệt để tiến đến trận đấu quyết định cho chiếc đai vô địch danh giá...', '1. Thể thao Hôm Nay', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-29 06:36:23', '2017-11-29 06:36:23', '', 172, 'http://localhost:82/wordpress/index.php/2017/11/29/172-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2017-11-29 06:37:00', '2017-11-29 06:37:00', '<img class="wp-image-188 alignleft" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/8-1511871962918-233x300.png" alt="" width="218" height="281" />\r\n<p class="">Có một lý do vô cùng hợp tình hợp lý để những người trẻ dành ra hàng giờ đồng hồ "dán mắt" vào màn hình từ điện thoại cho đến máy tính và... tự cười một mình, bạn biết lý do đó là gì không? Đó chính là vì trên<a class="link-inline-content" title=" mạng xã hội" href="http://kenh14.vn/mang-xa-hoi.html" target="_blank" rel="noopener" data-cke-saved-href="http://kenh14.vn/mang-xa-hoi.html"> mạng xã hội</a> có rất rất nhiều những bộ ảnh chế cháo với hình ảnh và nội dung hài hước khiến bạn cười cả ngày chẳng hết!</p>\r\n<p class="">Sự nhạy cảm, vui tính và sức sáng tạo của cư dân mạng là vô biên nhưng chúng ta không thể không kể đến sự "góp công" của các <a class="link-inline-content" title="sao Việt" href="http://kenh14.vn/sao-viet.html" target="_blank" rel="noopener" data-cke-saved-href="http://kenh14.vn/sao-viet.html">sao Việt</a> nhà mình, khi họ chính là một nguồn tài nguyên bất tận cho loạt "content viral" trên mạng xã hội. Chả thế mà <a class="link-inline-content" title="WeChoice Awards 2016" href="http://kenh14.vn/wechoice-awards-2016.html" target="_blank" rel="noopener" data-cke-saved-href="http://kenh14.vn/wechoice-awards-2016.html">WeChoice Awards 2016</a> đã xuất hiện hạng mục Câu nói viral của năm và giải thưởng này đã xuất sắc thuộc về anh chàng "nói câu nào viral câu đấy": <a class="link-inline-content" title="Sơn Tùng M-TP" href="http://kenh14.vn/son-tung.html" target="_blank" rel="noopener" data-cke-saved-href="http://kenh14.vn/son-tung.html">Sơn Tùng M-TP</a>.</p>', '3 - Tác giả của những câu nói trào lưu nhất năm 2017 là ai? Chính là sao Việt!', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2017-11-29 06:37:00', '2017-11-29 06:37:00', '', 180, 'http://localhost:82/wordpress/index.php/2017/11/29/180-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2017-11-29 06:38:21', '2017-11-29 06:38:21', 'Wow, ngạc nhiên chưa? Một đứa chuyên <b>ngủ muộn</b> viết bài về việc <b>ngủ sớm</b>, haha. Nhưng đúng là tớ, Juno đây. Lâu rồi mới viết blog, hehe!!\r\n\r\nKhoảng 3, 4 tuần gần đây tớ bắt đầu đi ngủ muộn hơn... Thường thì vào 3-4 giờ sáng, có hôm là 5 giờ. Trước đây tớ cũng không ngủ sớm nhưng cũng không đến mức muộn như vậy. Và điều tệ nhất là việc ngủ muộn đang bắt đầu ảnh hưởng tới hiệu quả làm việc của cả ngày hôm đó.\r\n\r\nViệc tự nói với bản thân <b>"Tôi sẽ đi ngủ sớm!!"</b> có vẻ như không có tác dụng, vậy nên tớ nghĩ mình cần "mạnh tay" hơn... Đúng rồi, xách bàn phím lên và code nào!', '7- Làm thế nào để đi ngủ sớm?', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2017-11-29 06:38:21', '2017-11-29 06:38:21', '', 185, 'http://localhost:82/wordpress/index.php/2017/11/29/185-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2017-11-29 06:36:52', '2017-11-29 06:36:52', 'Hai võ sĩ Vi Văn Duyệt (Đắk Nông) và Đặng Trần Anh Tuấn (Bình Định) chẳng xa lạ gì nhau, vì cả 2 vừa so tài cao thấp ở một giải võ thuật lớn tại Bình Định. Định mệnh...\r\n\r\nKhông khí của buổi thi đấu hôm nay đã nóng lên ngay từ trận đầu tiên, khi nhà vô địch quốc gia – Vi Văn Duyệt đến từ Đắk Nông chạm trán với kiện tướng mùa 2 của Đấu...', '2. Thể Thao thế giới', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2017-11-29 06:36:52', '2017-11-29 06:36:52', '', 183, 'http://localhost:82/wordpress/index.php/2017/11/29/183-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(194, 1, '2017-11-29 06:40:06', '2017-11-29 06:40:06', 'Trong bài viết này tôi sẽ chia sẻ <b>12 thủ thuật vô cùng hữu ích cho JavaScript</b>. Những thủ thuật này sẽ giúp bạn giảm lượng code cũng như làm code chạy tối ưu hơn.\r\n<a name="more"></a>\r\n<h3><!--more--></h3>', '8- 12 thủ thuật vô cùng hữu ích mà lập trình viên JavaScript cần biết', '', 'publish', 'open', 'open', '', '8-12-thu-thuat-vo-cung-huu-ich-ma-lap-trinh-vien-javascript-can-biet', '', '', '2017-11-29 09:12:20', '2017-11-29 09:12:20', '', 0, 'http://localhost:82/wordpress/?p=194', 0, 'post', '', 0),
(195, 1, '2017-11-29 06:38:48', '2017-11-29 06:38:48', '"Bóc mẽ" nhan sắc thật của các <a class="link-tag" title="hot boy" href="http://kenh14.vn/hot-boy.html" target="_blank" rel="noopener">hot boy</a>, <a class="link-tag" title="hot girl" href="http://kenh14.vn/hot-girl.html" target="_blank" rel="noopener">hot girl</a> mạng khi chưa sử dụng phần mềm chỉnh sửa ảnh hay photoshop, là đề tài thu hút sự chú ý của số đông. Có khá nhiều hot girl mạng Trung Quốc khiến fan bàng hoàng khi lộ ảnh mặt mộc hay tắt nhầm ứng dụng chỉnh sửa hình ảnh khi livestream.\r\n\r\n<!--more-->\r\n\r\n<img class="alignnone wp-image-201" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/2413132116251443909155972988150756213778734n-1511916361323-225x300.png" alt="" width="313" height="417" />', '4 - Bị bóc mẽ nhan sắc thật khi chưa photoshop, "hot boy urgo" lên tiếng!', '', 'publish', 'open', 'open', '', '4-bi-boc-me-nhan-sac-that-khi-chua-photoshop-hot-boy-urgo-len-tieng', '', '', '2017-11-29 09:12:49', '2017-11-29 09:12:49', '', 0, 'http://localhost:82/wordpress/?p=195', 0, 'post', '', 0),
(196, 1, '2017-11-29 06:34:54', '2017-11-29 06:34:54', 'hero lore dota 2', '9- Category:Hero lore-luan', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2017-11-29 06:34:54', '2017-11-29 06:34:54', '', 176, 'http://localhost:82/wordpress/index.php/2017/11/29/176-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2017-11-29 06:36:25', '2017-11-29 06:36:25', 'wiki lore is pro but in game still sault', '10-fate grand order game android-luân', '', 'publish', 'open', 'open', '', '10-fate-grand-order-game-android-luan', '', '', '2017-11-29 09:13:43', '2017-11-29 09:13:43', '', 0, 'http://localhost:82/wordpress/?p=197', 0, 'post', '', 0),
(198, 1, '2017-11-29 06:37:55', '2017-11-29 06:37:55', 'qưeqweqweqweqweqweqweq', '5 - page Hieu', '', 'publish', 'closed', 'closed', '', '5-page-hieu', '', '', '2017-11-29 06:37:55', '2017-11-29 06:37:55', '', 0, 'http://localhost:82/wordpress/?page_id=198', 0, 'page', '', 0),
(199, 1, '2017-11-29 06:39:24', '2017-11-29 06:39:24', '', '1. Page Thông Tin Mới Nhất', '', 'publish', 'closed', 'closed', '', '1-thong-tin-moi-nhat', '', '', '2017-11-29 06:40:46', '2017-11-29 06:40:46', '', 0, 'http://localhost:82/wordpress/?page_id=199', 0, 'page', '', 0),
(200, 1, '2017-11-29 06:37:55', '2017-11-29 06:37:55', 'qưeqweqweqweqweqweqweq', '5 - page Hieu', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2017-11-29 06:37:55', '2017-11-29 06:37:55', '', 198, 'http://localhost:82/wordpress/index.php/2017/11/29/198-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2017-11-29 06:38:22', '2017-11-29 06:38:22', '', '2413132116251443909155972988150756213778734n-1511916361323', '', 'inherit', 'open', 'closed', '', '2413132116251443909155972988150756213778734n-1511916361323', '', '', '2017-11-29 06:38:22', '2017-11-29 06:38:22', '', 195, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/2413132116251443909155972988150756213778734n-1511916361323.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2017-11-29 06:38:13', '2017-11-29 06:38:13', '', '6 - page', '', 'publish', 'closed', 'closed', '', '6-page', '', '', '2017-11-29 06:38:13', '2017-11-29 06:38:13', '', 0, 'http://localhost:82/wordpress/?page_id=202', 0, 'page', '', 0),
(203, 1, '2017-11-29 06:38:13', '2017-11-29 06:38:13', '', '6 - page', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2017-11-29 06:38:13', '2017-11-29 06:38:13', '', 202, 'http://localhost:82/wordpress/index.php/2017/11/29/202-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2017-11-29 06:38:48', '2017-11-29 06:38:48', '"Bóc mẽ" nhan sắc thật của các <a class="link-tag" title="hot boy" href="http://kenh14.vn/hot-boy.html" target="_blank" rel="noopener">hot boy</a>, <a class="link-tag" title="hot girl" href="http://kenh14.vn/hot-girl.html" target="_blank" rel="noopener">hot girl</a> mạng khi chưa sử dụng phần mềm chỉnh sửa ảnh hay photoshop, là đề tài thu hút sự chú ý của số đông. Có khá nhiều hot girl mạng Trung Quốc khiến fan bàng hoàng khi lộ ảnh mặt mộc hay tắt nhầm ứng dụng chỉnh sửa hình ảnh khi livestream.\r\n\r\nNgười yêu mến thì thất vọng, kẻ ngoài cuộc thì càng tin vào "chân lý": Cứ lấy ảnh trên mạng mà giảm độ đẹp đi 1000 lần thì chắc chắn là ra mặt người đó ngoài đời, đừng tin những gì bạn thấy trên mạng!\r\n\r\nMới đây, <a class="link-tag" title="mạng xã hội" href="http://kenh14.vn/mang-xa-hoi.html" target="_blank" rel="noopener">cộng đồng mạng</a> Việt Nam xôn xao trước bức ảnh được cho là mặt mộc, chưa sử dụng "app" chỉnh ảnh của "hot boy urgo" sở hữu hơn chục ngàn lượt follow trên mạng. Sự khác biệt rõ rệt về nhan sắc giữa chàng trai ngoài đời thực và "hot boy" trong ảnh được dân mạng phát hiện khiến người xem dở khóc, dở cười.\r\n\r\n<img class="alignnone  wp-image-201" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/2413132116251443909155972988150756213778734n-1511916361323-225x300.png" alt="" width="313" height="417" />', '4 - Bị bóc mẽ nhan sắc thật khi chưa photoshop, "hot boy urgo" lên tiếng!', '', 'inherit', 'closed', 'closed', '', '195-revision-v1', '', '', '2017-11-29 06:38:48', '2017-11-29 06:38:48', '', 195, 'http://localhost:82/wordpress/index.php/2017/11/29/195-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2017-11-29 06:40:06', '2017-11-29 06:40:06', 'Trong bài viết này tôi sẽ chia sẻ <b>12 thủ thuật vô cùng hữu ích cho JavaScript</b>. Những thủ thuật này sẽ giúp bạn giảm lượng code cũng như làm code chạy tối ưu hơn.\r\n<a name="more"></a>\r\n<h3>1. Chuyển đổi kiểu dữ liệu sang boolean sử dụng toán tử !!</h3>\r\nĐôi lúc chúng ta cần kiểm tra nếu một vài biến tồn tại hoặc nếu nó có một giá trị hợp lệ hay không. Để xác nhận như vậy, bạn có thể sử dụng <code>!!</code> (toán tử phủ định đôi). Nó sẽ tự động chuyển đổi mọi kiểu dữ liệu về boolean và biến này sẽ trả về <code>false</code> chỉ khi nó có những giá trị như: <code>0</code>, <code>null</code>, <code>""</code>, <code>undefined</code> hoặc <code>NaN</code>, ngược lại nó sẽ trả về <code>true</code>. Để hiểu hơn về cách nó hoạt động, hãy xem ví dụ đơn giản sau:\r\n\r\n&nbsp;', '8- 12 thủ thuật vô cùng hữu ích mà lập trình viên JavaScript cần biết', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-11-29 06:40:06', '2017-11-29 06:40:06', '', 194, 'http://localhost:82/wordpress/index.php/2017/11/29/194-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2017-11-29 06:36:25', '2017-11-29 06:36:25', 'wiki lore is pro but in game still sault', '10-fate grand order game android-luan', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2017-11-29 06:36:25', '2017-11-29 06:36:25', '', 197, 'http://localhost:82/wordpress/index.php/2017/11/29/197-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2017-11-29 06:41:36', '2017-11-29 06:41:36', '<h2 class="description">Vụ thử ICBM hôm nay chính là lời khẳng định của Triều Tiên rằng không bao giờ có chuyện nước này từ bỏ chương trình hạt nhân và tên lửa.</h2>\r\n<p class="related_news"><a title="Triều Tiên phóng tên lửa đạn đạo xuyên lục địa" href="https://vnexpress.net/tin-tuc/the-gioi/trieu-tien-phong-ten-lua-dan-dao-xuyen-luc-dia-3677137.html#ctr=related_news_click">Triều Tiên phóng tên lửa đạn đạo xuyên lục địa</a>  /  <a title="Triều Tiên có thể đã phóng tên lửa đạn đạo Hwasong-14" href="https://vnexpress.net/tin-tuc/the-gioi/quan-su/trieu-tien-co-the-da-phong-ten-lua-dan-dao-hwasong-14-3677207.html#ctr=related_news_click">Triều Tiên có thể đã phóng tên lửa đạn đạo Hwasong-14</a></p>\r\n<p class="Normal"><!--more--></p>', '11- Thử ''tên lửa mạnh nhất'', Triều Tiên thách thức kiên nhẫn của Trump', '', 'publish', 'open', 'open', '', '11-thu-ten-lua-manh-nhat-trieu-tien-thach-thuc-kien-nhan-cua-trump', '', '', '2017-11-29 09:12:04', '2017-11-29 09:12:04', '', 0, 'http://localhost:82/wordpress/?p=207', 0, 'post', '', 0),
(208, 1, '2017-11-29 06:37:07', '2017-11-29 06:37:07', 'wiki lore is pro but in game still sault', '10-fate grand order game android-luân', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2017-11-29 06:37:07', '2017-11-29 06:37:07', '', 197, 'http://localhost:82/wordpress/index.php/2017/11/29/197-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2017-11-29 06:39:24', '2017-11-29 06:39:24', '', '1. Thông Tin Mới Nhất', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2017-11-29 06:39:24', '2017-11-29 06:39:24', '', 199, 'http://localhost:82/wordpress/index.php/2017/11/29/199-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2017-11-29 06:39:50', '2017-11-29 06:39:50', '', '2.Page Chuyên Ngành Hot', '', 'publish', 'closed', 'closed', '', '2-chuyen-nganh-hot', '', '', '2017-11-29 06:41:05', '2017-11-29 06:41:05', '', 0, 'http://localhost:82/wordpress/?page_id=210', 0, 'page', '', 0),
(211, 1, '2017-11-29 06:37:15', '2017-11-29 06:37:15', 'hero lore dota 2', '9- Category:Hero lore-luân', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2017-11-29 06:37:15', '2017-11-29 06:37:15', '', 176, 'http://localhost:82/wordpress/index.php/2017/11/29/176-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2017-11-29 06:39:50', '2017-11-29 06:39:50', '', '2. Chuyên Ngành Hot', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2017-11-29 06:39:50', '2017-11-29 06:39:50', '', 210, 'http://localhost:82/wordpress/index.php/2017/11/29/210-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2017-11-29 06:41:36', '2017-11-29 06:41:36', '<h2 class="description">Vụ thử ICBM hôm nay chính là lời khẳng định của Triều Tiên rằng không bao giờ có chuyện nước này từ bỏ chương trình hạt nhân và tên lửa.</h2>\r\n<p class="related_news"><a title="Triều Tiên phóng tên lửa đạn đạo xuyên lục địa" href="https://vnexpress.net/tin-tuc/the-gioi/trieu-tien-phong-ten-lua-dan-dao-xuyen-luc-dia-3677137.html#ctr=related_news_click">Triều Tiên phóng tên lửa đạn đạo xuyên lục địa</a>  /  <a title="Triều Tiên có thể đã phóng tên lửa đạn đạo Hwasong-14" href="https://vnexpress.net/tin-tuc/the-gioi/quan-su/trieu-tien-co-the-da-phong-ten-lua-dan-dao-hwasong-14-3677207.html#ctr=related_news_click">Triều Tiên có thể đã phóng tên lửa đạn đạo Hwasong-14</a></p>\r\n<p class="Normal">Triều Tiên sáng sớm nay phóng tên lửa đạn đạo xuyên lục địa (ICBM) mà nước này cho là "mạnh nhất từ trước tới nay" lần đầu tiên sau 4 tháng. Giới quan sát nhận định động thái trên được cho là nhằm phản ứng trước những cảnh báo từ Tổng thống Mỹ Donald Trump rằng sẽ ngừng chương trình hạt nhân mà Bình Nhưỡng đang theo đuổi, cũng như quyết định của ông liệt Triều Tiên vào danh sách các quốc gia tài trợ khủng bố, theo <em>New York Times</em>.</p>\r\n<p class="subtitle">Phô diễn uy lực</p>\r\n<p class="Normal">Đề cập tới việc Triều Tiên phóng ICBM, Tổng thống Trump cho biết ông "sẽ xử lý" tình hình. Nếu so với những phát ngôn cứng rắn trước đây như thề "tiêu diệt hoàn toàn" hay "trút lửa giận" lên Triều Tiên, phản ứng của ông chủ Nhà Trắng khá kiềm chế.</p>\r\n<p class="Normal">Theo chuyên gia, tên lửa Triều Tiên đạt độ cao tối đa 4.500 km, bay xa khoảng 1.000 km và rơi xuống biển Nhật Bản. Quỹ đạo bay tương tự hai ICBM mà Bình Nhưỡng phóng hồi tháng 7. Tuy nhiên, tên lửa lần này dường như bay lâu hơn, thời gian bay lên tới 53 phút, so với 37 phút và 47 phút ở hai lần thử ngày 4/7 và 28/7.</p>\r\n<p class="Normal">Ông David Wright từ Hiệp hội các Nhà khoa học Quan tâm (UCS) đánh giá tên lửa Triều Tiên phóng sáng nay hoạt động tốt hơn hai lần trước, có thể đạt tầm bắn lên tới gần 13.000 km, đủ sức vươn tới bất kỳ đâu trên đất liền Mỹ.</p>\r\n<p class="Normal">"Thật sự ấn tượng", ông Wright nhận xét. Triều Tiên "đang phô diễn uy lực để cho Mỹ thấy rằng họ vẫn đạt được những tiến triển nhất định".</p>\r\n<p class="Normal">Ông Daryl G. Kimball, giám đốc điều hành Hiệp hội Kiểm soát Vũ khí ở Washington, cho rằng lần phóng tên lửa này là vụ thử ICBM "mạnh mẽ nhất" được Triều Tiên thực hiện.</p>\r\n<p class="Normal">Nhà lãnh đạo Kim Jong-un tuyên bố tên lửa Triều Tiên phóng là một mẫu mới mang tên Hwasong-15, "mạnh nhất từ trước đến nay" của Bình Nhưỡng. Đây dường như cải tiến từ mẫu Hwasong-14 phóng thử hồi tháng 7. Nó bay 950 km, đạt độ cao 4.475 km.</p>\r\n<p class="Normal">Theo giới phân tích, vụ phóng mới nhất, diễn ra bất ngờ trong đêm, không có bất kỳ dấu hiệu cảnh báo nào, là bằng chứng về việc Triều Tiên có lẽ đang dần hoàn thiện khả năng tấn công hạt nhân phủ đầu để đối chọi với Mỹ.</p>\r\n<p class="Normal">Những bức ảnh chụp từ trên không tại các bãi thử của Triều Tiên trước đó không cho thấy bất kỳ tên lửa nào đang chờ trên bệ phóng hay chờ để nạp nhiên liệu.</p>\r\n<p class="Normal">Ông Rodger Baker, nhà phân tích tại tổ chức tư vấn tình báo Stratfor, cho hay Triều Tiên trong quá khứ thường phải trải qua quá trình lâu dài, có thể lên tới nhiều ngày, để đưa tên lửa tới bãi thử, nạp nhiên liệu lỏng và phóng. Nhằm rút ngắn thời gian, Bình Nhưỡng nay nạp nhiên liệu cho tên lửa theo chiều ngang, trước khi nó được đưa lên bệ phóng.</p>\r\n<p class="Normal">"Việc làm này giúp giảm thời gian kể từ lúc tên lửa lộ diện cho đến lúc nó được phóng vào không trung, khiến việc tấn công tên lửa trước thời điểm phóng trở nên khó khăn hơn đối với Mỹ", ông Baker nhấn mạnh. "Nếu bạn muốn dùng chúng như công cụ răn đe thì bạn phải có một hệ thống mà Mỹ không thể chống đỡ".</p>', '11- Thử ''tên lửa mạnh nhất'', Triều Tiên thách thức kiên nhẫn của Trump', '', 'inherit', 'closed', 'closed', '', '207-revision-v1', '', '', '2017-11-29 06:41:36', '2017-11-29 06:41:36', '', 207, 'http://localhost:82/wordpress/index.php/2017/11/29/207-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2017-11-29 06:42:23', '2017-11-29 06:42:23', '<h2 class="description">Triều Tiên xác nhận thử thành công tên lửa đạn đạo xuyên lục địa mạnh nhất từ trước đến nay, đặt "toàn bộ lục địa Mỹ" trong tầm phóng.</h2>\r\n<p class="related_news"><!--more--></p>', '12- Kim Jong-un tuyên bố tên lửa mới có thể tấn công toàn bộ nước Mỹ', '', 'publish', 'open', 'open', '', '12-kim-jong-un-tuyen-bo-ten-lua-moi-co-the-tan-cong-toan-bo-nuoc-my', '', '', '2017-11-29 09:11:30', '2017-11-29 09:11:30', '', 0, 'http://localhost:82/wordpress/?p=214', 0, 'post', '', 0),
(215, 1, '2017-11-29 06:40:46', '2017-11-29 06:40:46', '', '1. Page Thông Tin Mới Nhất', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2017-11-29 06:40:46', '2017-11-29 06:40:46', '', 199, 'http://localhost:82/wordpress/index.php/2017/11/29/199-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2017-11-29 06:42:23', '2017-11-29 06:42:23', '<h2 class="description">Triều Tiên xác nhận thử thành công tên lửa đạn đạo xuyên lục địa mạnh nhất từ trước đến nay, đặt "toàn bộ lục địa Mỹ" trong tầm phóng.</h2>\r\n<p class="related_news"><a title="Triều Tiên phóng tên lửa đạn đạo xuyên lục địa" href="https://vnexpress.net/tin-tuc/the-gioi/trieu-tien-phong-ten-lua-dan-dao-xuyen-luc-dia-3677137.html#ctr=related_news_click">Triều Tiên phóng tên lửa đạn đạo xuyên lục địa</a>  /  <a title="Hàn Quốc tập trận tấn công chính xác sau vụ phóng tên lửa Triều Tiên" href="https://vnexpress.net/tin-tuc/the-gioi/han-quoc-tap-tran-tan-cong-chinh-xac-sau-vu-phong-ten-lua-trieu-tien-3677150.html#ctr=related_news_click">Hàn Quốc tập trận tấn công chính xác sau vụ phóng tên lửa Triều Tiên</a></p>', '12- Kim Jong-un tuyên bố tên lửa mới có thể tấn công toàn bộ nước Mỹ', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2017-11-29 06:42:23', '2017-11-29 06:42:23', '', 214, 'http://localhost:82/wordpress/index.php/2017/11/29/214-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2017-11-29 06:41:05', '2017-11-29 06:41:05', '', '2.Page Chuyên Ngành Hot', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2017-11-29 06:41:05', '2017-11-29 06:41:05', '', 210, 'http://localhost:82/wordpress/index.php/2017/11/29/210-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2017-11-29 06:43:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:43:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=218', 0, 'page', '', 0),
(219, 1, '2017-11-29 06:43:54', '2017-11-29 06:43:54', 'Page demo1', '3 - Page Demo', '', 'publish', 'closed', 'closed', '', '3-page-demo', '', '', '2017-11-29 06:43:54', '2017-11-29 06:43:54', '', 0, 'http://localhost:82/wordpress/?page_id=219', 0, 'page', '', 0),
(220, 1, '2017-11-29 06:43:54', '2017-11-29 06:43:54', 'Page demo1', '3 - Page Demo', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2017-11-29 06:43:54', '2017-11-29 06:43:54', '', 219, 'http://localhost:82/wordpress/index.php/2017/11/29/219-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2017-11-29 06:44:06', '2017-11-29 06:44:06', 'Demopage 2', '4- Demo Page 2', '', 'publish', 'closed', 'closed', '', '4-demo-page-2', '', '', '2017-11-29 06:44:06', '2017-11-29 06:44:06', '', 0, 'http://localhost:82/wordpress/?page_id=221', 0, 'page', '', 0),
(222, 1, '2017-11-29 06:44:06', '2017-11-29 06:44:06', 'Demopage 2', '4- Demo Page 2', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2017-11-29 06:44:06', '2017-11-29 06:44:06', '', 221, 'http://localhost:82/wordpress/index.php/2017/11/29/221-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2017-11-29 06:44:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:44:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=223', 0, 'page', '', 0),
(224, 1, '2017-11-29 06:42:15', '2017-11-29 06:42:15', 'ranking servant hero', '7-appmedia ranking servant-luân', '', 'publish', 'closed', 'closed', '', '7-appmedia-ranking-servant-luan', '', '', '2017-11-29 06:42:15', '2017-11-29 06:42:15', '', 0, 'http://localhost:82/wordpress/?page_id=224', 0, 'page', '', 0),
(225, 1, '2017-11-29 06:44:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:44:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=225', 0, 'page', '', 0),
(226, 1, '2017-11-29 06:44:46', '2017-11-29 06:44:46', 'Demo page 3', '9- Demo Page 3', '', 'publish', 'closed', 'closed', '', '9-demo-page-3', '', '', '2017-11-29 06:44:46', '2017-11-29 06:44:46', '', 0, 'http://localhost:82/wordpress/?page_id=226', 0, 'page', '', 0),
(227, 1, '2017-11-29 06:43:56', '2017-11-29 06:43:56', '', '11 - Hoang Duy Page 1', '', 'publish', 'closed', 'closed', '', '11-hoang-duy-page-1', '', '', '2017-11-29 06:43:56', '2017-11-29 06:43:56', '', 0, 'http://localhost:82/wordpress/?page_id=227', 0, 'page', '', 0),
(228, 1, '2017-11-29 06:44:46', '2017-11-29 06:44:46', 'Demo page 3', '9- Demo Page 3', '', 'inherit', 'closed', 'closed', '', '226-revision-v1', '', '', '2017-11-29 06:44:46', '2017-11-29 06:44:46', '', 226, 'http://localhost:82/wordpress/index.php/2017/11/29/226-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2017-11-29 06:45:03', '2017-11-29 06:45:03', 'Demo page 4', '10- Demo page 4', '', 'publish', 'closed', 'closed', '', '10-demo-page-4', '', '', '2017-11-29 06:45:03', '2017-11-29 06:45:03', '', 0, 'http://localhost:82/wordpress/?page_id=229', 0, 'page', '', 0),
(230, 1, '2017-11-29 06:43:13', '2017-11-29 06:43:13', '<h2 class="description">Triều Tiên xác nhận thử thành công tên lửa đạn đạo xuyên lục địa mạnh nhất từ trước đến nay, đặt "toàn bộ lục địa Mỹ" trong tầm phóng.</h2>\r\n<p class="related_news"><a title="Triều Tiên phóng tên lửa đạn đạo xuyên lục địa" href="https://vnexpress.net/tin-tuc/the-gioi/trieu-tien-phong-ten-lua-dan-dao-xuyen-luc-dia-3677137.html#ctr=related_news_click">Triều Tiên phóng tên lửa đạn đạo xuyên lục địa</a>  /  <a title="Hàn Quốc tập trận tấn công chính xác sau vụ phóng tên lửa Triều Tiên" href="https://vnexpress.net/tin-tuc/the-gioi/han-quoc-tap-tran-tan-cong-chinh-xac-sau-vu-phong-ten-lua-trieu-tien-3677150.html#ctr=related_news_click">Hàn Quốc tập trận tấn công chính xác sau vụ phóng tên lửa Triều Tiên</a></p>\r\n&nbsp;\r\n\r\n<a href="http://ww.com.vn">dsaadasdasd</a>', '12- Kim Jong-un tuyên bố tên lửa mới có thể tấn công toàn bộ nước Mỹ', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2017-11-29 06:43:13', '2017-11-29 06:43:13', '', 214, 'http://localhost:82/wordpress/index.php/2017/11/29/214-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2017-11-29 06:45:03', '2017-11-29 06:45:03', 'Demo page 4', '10- Demo page 4', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2017-11-29 06:45:03', '2017-11-29 06:45:03', '', 229, 'http://localhost:82/wordpress/index.php/2017/11/29/229-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2017-11-29 06:43:56', '2017-11-29 06:43:56', '', '11 - Hoang Duy Page 1', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2017-11-29 06:43:56', '2017-11-29 06:43:56', '', 227, 'http://localhost:82/wordpress/index.php/2017/11/29/227-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2017-11-29 06:44:04', '2017-11-29 06:44:04', '', '12 - Hoang Duy Page 2', '', 'publish', 'closed', 'closed', '', '12-hoang-duy-page-2', '', '', '2017-11-29 06:44:04', '2017-11-29 06:44:04', '', 0, 'http://localhost:82/wordpress/?page_id=233', 0, 'page', '', 0),
(234, 1, '2017-11-29 06:44:04', '2017-11-29 06:44:04', '', '12 - Hoang Duy Page 2', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2017-11-29 06:44:04', '2017-11-29 06:44:04', '', 233, 'http://localhost:82/wordpress/index.php/2017/11/29/233-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2017-11-29 06:42:15', '2017-11-29 06:42:15', 'ranking servant hero', '7-appmedia ranking servant-luân', '', 'inherit', 'closed', 'closed', '', '224-revision-v1', '', '', '2017-11-29 06:42:15', '2017-11-29 06:42:15', '', 224, 'http://localhost:82/wordpress/index.php/2017/11/29/224-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2017-11-29 06:43:15', '2017-11-29 06:43:15', 'how to be master dota 2', '8- hero ranking website -luân', '', 'publish', 'closed', 'closed', '', '8-hero-ranking-website-luan', '', '', '2017-11-29 06:43:15', '2017-11-29 06:43:15', '', 0, 'http://localhost:82/wordpress/?page_id=236', 0, 'page', '', 0),
(237, 1, '2017-11-29 06:43:15', '2017-11-29 06:43:15', 'how to be master dota 2', '8- hero ranking website -luân', '', 'inherit', 'closed', 'closed', '', '236-revision-v1', '', '', '2017-11-29 06:43:15', '2017-11-29 06:43:15', '', 236, 'http://localhost:82/wordpress/index.php/2017/11/29/236-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2017-11-29 06:57:35', '2017-11-29 06:57:35', '<!--more-->ranking servant hero', '7-appmedia ranking servant-luân', '', 'inherit', 'closed', 'closed', '', '224-autosave-v1', '', '', '2017-11-29 06:57:35', '2017-11-29 06:57:35', '', 224, 'http://localhost:82/wordpress/index.php/2017/11/29/224-autosave-v1/', 0, 'revision', '', 0),
(239, 1, '2017-11-29 07:07:24', '2017-11-29 07:07:24', '<h2 class="description">Vụ thử ICBM hôm nay chính là lời khẳng định của Triều Tiên rằng không bao giờ có chuyện nước này từ bỏ chương trình hạt nhân và tên lửa.</h2>\r\n<p class="related_news"><a title="Triều Tiên phóng tên lửa đạn đạo xuyên lục địa" href="https://vnexpress.net/tin-tuc/the-gioi/trieu-tien-phong-ten-lua-dan-dao-xuyen-luc-dia-3677137.html#ctr=related_news_click">Triều Tiên phóng tên lửa đạn đạo xuyên lục địa</a>  /  <a title="Triều Tiên có thể đã phóng tên lửa đạn đạo Hwasong-14" href="https://vnexpress.net/tin-tuc/the-gioi/quan-su/trieu-tien-co-the-da-phong-ten-lua-dan-dao-hwasong-14-3677207.html#ctr=related_news_click">Triều Tiên có thể đã phóng tên lửa đạn đạo Hwasong-14</a></p>\r\n<p class="Normal"><!--more--></p>', '11- Thử ''tên lửa mạnh nhất'', Triều Tiên thách thức kiên nhẫn của Trump', '', 'inherit', 'closed', 'closed', '', '207-revision-v1', '', '', '2017-11-29 07:07:24', '2017-11-29 07:07:24', '', 207, 'http://localhost:82/wordpress/index.php/2017/11/29/207-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2017-11-29 07:08:19', '2017-11-29 07:08:19', '<h2 class="description">Triều Tiên xác nhận thử thành công tên lửa đạn đạo xuyên lục địa mạnh nhất từ trước đến nay, đặt "toàn bộ lục địa Mỹ" trong tầm phóng.</h2>\n<p class="related_news"><!--more--></p>', '12- Kim Jong-un tuyên bố tên lửa mới có thể tấn công toàn bộ nước Mỹ', '', 'inherit', 'closed', 'closed', '', '214-autosave-v1', '', '', '2017-11-29 07:08:19', '2017-11-29 07:08:19', '', 214, 'http://localhost:82/wordpress/index.php/2017/11/29/214-autosave-v1/', 0, 'revision', '', 0),
(241, 1, '2017-11-29 07:08:45', '2017-11-29 07:08:45', '<h2 class="description">Triều Tiên xác nhận thử thành công tên lửa đạn đạo xuyên lục địa mạnh nhất từ trước đến nay, đặt "toàn bộ lục địa Mỹ" trong tầm phóng.</h2>\r\n<p class="related_news"><!--more--></p>', '12- Kim Jong-un tuyên bố tên lửa mới có thể tấn công toàn bộ nước Mỹ', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2017-11-29 07:08:45', '2017-11-29 07:08:45', '', 214, 'http://localhost:82/wordpress/index.php/2017/11/29/214-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2017-11-29 07:09:45', '2017-11-29 07:09:45', 'Trong bài viết này tôi sẽ chia sẻ <b>12 thủ thuật vô cùng hữu ích cho JavaScript</b>. Những thủ thuật này sẽ giúp bạn giảm lượng code cũng như làm code chạy tối ưu hơn.\r\n<a name="more"></a>\r\n<h3><!--more--></h3>', '8- 12 thủ thuật vô cùng hữu ích mà lập trình viên JavaScript cần biết', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-11-29 07:09:45', '2017-11-29 07:09:45', '', 194, 'http://localhost:82/wordpress/index.php/2017/11/29/194-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2017-11-29 07:10:15', '2017-11-29 07:10:15', '"Bóc mẽ" nhan sắc thật của các <a class="link-tag" title="hot boy" href="http://kenh14.vn/hot-boy.html" target="_blank" rel="noopener">hot boy</a>, <a class="link-tag" title="hot girl" href="http://kenh14.vn/hot-girl.html" target="_blank" rel="noopener">hot girl</a> mạng khi chưa sử dụng phần mềm chỉnh sửa ảnh hay photoshop, là đề tài thu hút sự chú ý của số đông. Có khá nhiều hot girl mạng Trung Quốc khiến fan bàng hoàng khi lộ ảnh mặt mộc hay tắt nhầm ứng dụng chỉnh sửa hình ảnh khi livestream.\r\n\r\n<!--more-->\r\n\r\n<img class="alignnone wp-image-201" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/2413132116251443909155972988150756213778734n-1511916361323-225x300.png" alt="" width="313" height="417" />', '4 - Bị bóc mẽ nhan sắc thật khi chưa photoshop, "hot boy urgo" lên tiếng!', '', 'inherit', 'closed', 'closed', '', '195-revision-v1', '', '', '2017-11-29 07:10:15', '2017-11-29 07:10:15', '', 195, 'http://localhost:82/wordpress/index.php/2017/11/29/195-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2017-11-29 07:10:29', '2017-11-29 07:10:29', 'Wow, ngạc nhiên chưa? Một đứa chuyên <b>ngủ muộn</b> viết bài về việc <b>ngủ sớm</b>, haha. Nhưng đúng là tớ, Juno đây. Lâu rồi mới viết blog, hehe!!\r\n\r\n<!--more-->', '7- Làm thế nào để đi ngủ sớm?', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2017-11-29 07:10:29', '2017-11-29 07:10:29', '', 185, 'http://localhost:82/wordpress/index.php/2017/11/29/185-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2017-11-29 07:10:43', '2017-11-29 07:10:43', '<img class="wp-image-188 alignleft" src="http://localhost:82/wordpress/wp-content/uploads/2017/11/8-1511871962918-233x300.png" alt="" width="218" height="281" />\r\n<p class="">Có một lý do vô cùng hợp tình hợp lý để những người trẻ dành ra hàng giờ đồng hồ "dán mắt" vào màn hình từ điện thoại cho đến máy tính và... tự cười một mình, bạn biết lý do đó là gì không? Đó chính là vì trên<a class="link-inline-content" title=" mạng xã hội" href="http://kenh14.vn/mang-xa-hoi.html" target="_blank" rel="noopener" data-cke-saved-href="http://kenh14.vn/mang-xa-hoi.html"> mạng xã hội</a> có rất rất nhiều những bộ ảnh chế cháo với hình ảnh và nội dung hài hước khiến bạn cười cả ngày chẳng hết!</p>\r\n<p class=""><!--more--></p>', '3 - Tác giả của những câu nói trào lưu nhất năm 2017 là ai? Chính là sao Việt!', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2017-11-29 07:10:43', '2017-11-29 07:10:43', '', 180, 'http://localhost:82/wordpress/index.php/2017/11/29/180-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2017-11-29 07:11:02', '2017-11-29 07:11:02', 'Hai võ sĩ Vi Văn Duyệt (Đắk Nông) và Đặng Trần Anh Tuấn (Bình Định) chẳng xa lạ gì nhau, vì cả 2 vừa so tài cao thấp ở một giải võ thuật lớn tại Bình Định. Định mệnh...\r\n\r\n<!--more-->', '2. Thể Thao thế giới', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2017-11-29 07:11:02', '2017-11-29 07:11:02', '', 183, 'http://localhost:82/wordpress/index.php/2017/11/29/183-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2017-11-29 07:11:22', '2017-11-29 07:11:22', 'Tôi với vợ cưới nhau khi cả 2 còn tay trắng. Lúc đó cả 2 chúng tôi mới ra trường, đi làm, thu nhập rất eo hẹp, bấp bênh. Tuy phải đi ở nhà thuê và đồng lương eo hẹp nhưng tôi và vợ thương yêu nhau vô cùng.\r\n\r\n<!--more-->', '6 - Món quà sếp của vợ tặng con trai tôi trong lễ đầy tháng vô tình giúp tôi phát hiện ra bí mật động trời', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2017-11-29 07:11:22', '2017-11-29 07:11:22', '', 181, 'http://localhost:82/wordpress/index.php/2017/11/29/181-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2017-11-29 07:11:42', '2017-11-29 07:11:42', 'Tối 11/11, các trận chung kết đầu tiên ở nội dung Boxing Đấu trường Thép 2016 đã diễn ra tại Nhà thi đấu Trịnh Hoài Đức, Hà Nội. Trong ngày thi đấu này, có 4 cặp thi đấu chung...\r\n\r\n<!--more-->', '1. Thể thao Hôm Nay', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-29 07:11:42', '2017-11-29 07:11:42', '', 172, 'http://localhost:82/wordpress/index.php/2017/11/29/172-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2017-11-29 07:12:38', '2017-11-29 07:12:38', 'Tôi 26 tuổi, chồng là mối tình đầu tiên. Tôi yêu anh ấy bởi sự chín chắn, chân thành và tài năng. Chúng tôi làm cùng cơ quan, tôi là kế toán còn anh làm ở phòng kinh doanh. Thực lòng mà nói, tôi không phải dòng dõi trâm anh đài các, nhưng cũng thuộc diện gia đình có điều kiện. Chỉ có điều nhan sắc của tôi không bằng người khác, trong khi anh phong độ, giỏi giang nên nhìn chúng tôi như một “đôi đũa lệch”.\r\n\r\n<!--more-->', '5 - Hóa ra vì muốn con gái được nhà chồng yêu thương mà bố mẹ tôi đã phải hạ mình, nhún nhường', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2017-11-29 07:12:38', '2017-11-29 07:12:38', '', 169, 'http://localhost:82/wordpress/index.php/2017/11/29/169-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2017-11-29 07:24:25', '2017-11-29 07:24:25', 'hero lore dota 2\r\n\r\nvvvavasvsavasvsav\r\n\r\nasvas\r\n\r\nvas\r\n\r\nvas\r\n\r\nvasvasvsavsvs', '9- Category:Hero lore-luân', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2017-11-29 07:24:25', '2017-11-29 07:24:25', '', 176, 'http://localhost:82/wordpress/index.php/2017/11/29/176-revision-v1/', 0, 'revision', '', 0),
(251, 1, '2017-11-29 07:24:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:24:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=251', 0, 'page', '', 0),
(252, 1, '2017-11-29 07:24:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 07:24:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=252', 0, 'post', '', 0),
(253, 1, '2017-11-29 07:32:45', '2017-11-29 07:32:45', 'Tôi 26 tuổi, chồng là mối tình đầu tiên. Tôi yêu anh ấy bởi sự chín chắn, chân thành và tài năng. Chúng tôi làm cùng cơ quan, tôi là kế toán còn anh làm ở phòng kinh doanh. Thực lòng mà nói, tôi không phải dòng dõi trâm anh đài các, nhưng cũng thuộc diện gia đình có điều kiện. Chỉ có điều nhan sắc của tôi không bằng người khác, trong khi anh phong độ, giỏi giang nên nhìn chúng tôi như một “đôi đũa lệch”.<a href="http://google.com">class="col-md-6"</a>\r\n\r\n<!--more-->', '5 - Hóa ra vì muốn con gái được nhà chồng yêu thương mà bố mẹ tôi đã phải hạ mình, nhún nhường', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2017-11-29 07:32:45', '2017-11-29 07:32:45', '', 169, 'http://localhost:82/wordpress/index.php/2017/11/29/169-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2017-11-29 07:54:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:54:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=254', 0, 'page', '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=54 ;

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
(51, 'CATEGORYCON', 'categorycon', 0),
(52, 'assasdasd', 'assasdasd', 0),
(53, 'asdasdasdasd', 'asdasdasdasd', 0);

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
(164, 51, 0),
(169, 1, 0),
(172, 1, 0),
(176, 1, 0),
(180, 40, 0),
(181, 1, 0),
(183, 1, 0),
(185, 39, 0),
(194, 43, 0),
(195, 38, 0),
(197, 47, 0),
(207, 34, 0),
(214, 33, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(33, 33, 'category', 'CATEGORY 1', 0, 1),
(34, 34, 'category', 'CATEGORY 2', 0, 1),
(37, 37, 'category', 'CATEGORY 1.3', 33, 0),
(38, 38, 'category', '', 34, 1),
(39, 39, 'category', '', 34, 1),
(40, 40, 'category', '', 34, 1),
(41, 41, 'category', '', 34, 0),
(42, 42, 'category', '', 33, 0),
(43, 43, 'category', '', 0, 1),
(44, 44, 'category', '', 43, 0),
(45, 45, 'category', '', 43, 0),
(46, 46, 'category', '', 43, 0),
(47, 47, 'category', '', 0, 1),
(48, 48, 'category', 'qweqweqweqweqweq qwe qew qwe qwe', 33, 0),
(49, 49, 'category', 'qweqweqwewqeqwe', 33, 0),
(50, 50, 'category', '', 0, 0),
(51, 51, 'category', '', 50, 0),
(52, 52, 'category', '', 33, 0),
(53, 53, 'category', 'asdasdasd', 37, 0);

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
(15, 1, 'session_tokens', 'a:5:{s:64:"05c3d83a3fb052d9e79a1018caa471e45793196d42bcac9825857139b67636e7";a:4:{s:10:"expiration";i:1512107574;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511934774;}s:64:"2a6d5bf0bf67816b3a990f835bef828d5c546a0bfb95318dc9811e016509ef6e";a:4:{s:10:"expiration";i:1512107846;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511935046;}s:64:"d58c479c84122216d24ff69e88dbe5bfa06feac6cacc71b8bf10c1ca1c79b7aa";a:4:{s:10:"expiration";i:1512107697;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511934897;}s:64:"4781673b104a62dc2f88cc8d9d7a5842d57a6186da3f382beed8bc5702ec68fa";a:4:{s:10:"expiration";i:1512107837;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511935037;}s:64:"8cb75b99844c87833b708259d8e11cbb344c9e3880b2dcce1a3d7e9bf987bf68";a:4:{s:10:"expiration";i:1512109835;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511937035;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '167'),
(17, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:"dashboard_primary";}'),
(18, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:38:"dashboard_right_now,dashboard_activity";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(20, 1, 'wp_user-settings', 'mfold=o&posts_list_mode=list&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1511937250'),
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
