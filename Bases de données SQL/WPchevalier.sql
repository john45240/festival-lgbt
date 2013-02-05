-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Mar 05 Février 2013 à 13:56
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPchevalier`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-14 14:53:14', '2013-01-14 14:53:14', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=276 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~jchevalier/festival_cinema', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Festival de films gays et lesbiens', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'john45240@hotmail.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~jchevalier/festival_cinema', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:699:"<strong>Vendredi 24 septembre : 20h00</strong>\r\n<p>Soirée d’ouverture : séance de courts métrages\r\nRencontre-débat avec un réalisateur.</p>\r\n\r\n<strong>Samedi 25 septembre : 19h30</strong>\r\n<p>Documentaire :\r\nIt’s elementary, talking about gays issues in school\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\nRencontre-débat avec le Groupe Action Gay & Lesbien – Loiret\r\nsur les interventions en milieu scolaire.</p>\r\n\r\n<strong>Samedi 25 septembre : 21h45</strong>\r\n<p>Fiction : Ander</p>\r\n\r\n <strong>Dimanche 26 septembre : 16h00</strong>\r\n<p>Fiction : El niño pez</p>\r\n\r\n <strong>Dimanche 26 septembre : 18h00</strong>\r\n<p>Fiction : I can’t think straight</p>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '4', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1360076007;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360076151;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360076503;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1360055986;}', 'yes'),
(102, '_transient_random_seed', '014050dd418926ab7b6cdba84ee732fd', 'yes'),
(103, 'auth_key', 'pQIqIkkAfm7}4d=n$c?lzDBnJrg,t9uD|3hTsry3-cKb8^F)~4TTP6zzyx0y_Ytg', 'yes'),
(104, 'auth_salt', 'w2{qoSHrH,J7]]B;O3L_5rSK9cxk}]9wEW^R ^Cn!4h$,oLD3~5H~wAVq* }^&5Q', 'yes'),
(105, 'logged_in_key', '(][N`1B~eL^KwMTGUJ!A(_PsJ+`TF5;RNLvGSU*cuH7RxgRz0J SSg[94tiz`!.-', 'yes'),
(106, 'logged_in_salt', 'sU4YtKu-OVm:Jq85zII8S{pbH`OOk8O mPgf6x{r^|P#_a<|_XfSU~<(ub->4OOY', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360068537;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360056089;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:44:"http://localhost/~jchevalier/festival_cinema";s:4:"link";s:120:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~jchevalier/festival_cinema/";s:3:"url";s:153:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~jchevalier/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'xy(m;b2:na0/{XeMqN:Ea]aN^k!3gUoL<%lAfdM??o cQcw3$tpxbxf{rB?G2=x`', 'yes'),
(113, 'nonce_salt', 'VBl1`c#G@B$?@?209!/4L{}675}@j~<tsci|^CMh0y~pPI,rxs+*M#7OtMnCq-Wh', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(128, 'category_children', 'a:0:{}', 'yes'),
(166, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358846414;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:6:"text-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(167, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(186, 'current_theme', 'Festival', 'yes'),
(187, 'theme_mods_eclipse', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358244668;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:7:{i:0;s:8:"search-2";i:1;s:6:"text-2";i:2;s:14:"recent-posts-2";i:3;s:17:"recent-comments-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";i:6;s:6:"meta-2";}s:12:"sidebar-left";a:0:{}s:13:"sidebar-right";a:0:{}s:14:"footer-widgets";N;}}}', 'yes'),
(188, 'theme_switched', '', 'yes'),
(189, '_transient_timeout_response_latest_tweet', '1358247982', 'no'),
(190, '_transient_response_latest_tweet', 'a:3:{s:8:"username";s:11:"cyberchimps";s:12:"show_replies";b:1;s:12:"latest_tweet";s:0:"";}', 'no'),
(206, 'theme_mods_festival', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"header_textcolor";s:3:"444";s:16:"background_color";s:6:"e6e6e6";s:17:"background_repeat";s:9:"no-repeat";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:5:"fixed";}', 'yes'),
(226, 'recently_activated', 'a:0:{}', 'yes'),
(247, '_site_transient_timeout_theme_roots', '1360057847', 'yes'),
(248, '_site_transient_theme_roots', 'a:5:{s:7:"eclipse";s:7:"/themes";s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(249, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1360099291', 'no'),
(250, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(251, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1360099291', 'no'),
(252, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(253, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1360099291', 'no'),
(254, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(255, '_site_transient_timeout_wporg_theme_feature_list', '1360066892', 'yes'),
(256, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(257, '_transient_timeout_plugin_slugs', '1360154940', 'no'),
(258, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(259, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1360099302', 'no'),
(260, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=328 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1359388803:1'),
(6, 1, '_edit_lock', '1358177275:1'),
(7, 8, '_edit_last', '1'),
(8, 8, '_edit_lock', '1360059648:1'),
(16, 13, '_edit_last', '1'),
(17, 13, '_edit_lock', '1360059667:1'),
(48, 29, '_edit_last', '1'),
(49, 29, '_edit_lock', '1360059601:1'),
(52, 31, '_edit_last', '1'),
(53, 31, '_edit_lock', '1360059689:1'),
(56, 33, '_edit_last', '1'),
(57, 33, '_edit_lock', '1360059707:1'),
(60, 35, '_edit_last', '1'),
(61, 35, '_edit_lock', '1360059726:1'),
(64, 37, '_edit_last', '1'),
(65, 37, '_edit_lock', '1360059744:1'),
(68, 39, '_edit_last', '1'),
(69, 39, '_edit_lock', '1360059783:1'),
(72, 39, 'Titre Français', 'C’est élémentaire - Parler de l’homosexualité à l’école'),
(73, 39, 'Pays', 'Etats-Unis'),
(74, 39, 'Date de sortie', '1996'),
(75, 39, 'Genre', 'Documentaire'),
(76, 39, 'Durée', '01h20'),
(77, 39, 'Réalisation', 'Debra Chasnoff'),
(80, 43, '_edit_last', '1'),
(81, 43, '_edit_lock', '1360059801:1'),
(82, 43, 'Réalisation', 'Roberto Castón'),
(83, 43, 'Pays', 'Espagne'),
(84, 43, 'Date de sortie', '2009'),
(85, 43, 'Durée', '02h08'),
(86, 43, 'Langue', 'VOSTF'),
(87, 43, 'Interprétation', 'Josean Bengoetxea, Eriz Alberdi,\r\nChristian Esquive'),
(88, 43, 'Prix C.I.C.A.E', 'Festival International de Berlin (2009)\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\nGrand prix du jury – Festival Cinehorizontes (2009)'),
(91, 45, '_edit_last', '1'),
(92, 45, '_edit_lock', '1360059844:1'),
(93, 45, 'Réalisation', 'Lucía Puenzo'),
(94, 45, 'Pays', 'Argentine'),
(95, 45, 'Date de sortie', '2008'),
(96, 45, 'Durée', '01h36'),
(97, 45, 'Langue', 'VOSTF'),
(98, 45, 'Interprétation', 'Inés Efron, Mariela Vitale, Pep Munne'),
(101, 48, '_edit_last', '1'),
(102, 48, '_edit_lock', '1360059862:1'),
(103, 48, 'Réalisation', 'Shamim Sarif'),
(104, 48, 'Pays', 'Grande Bretagne'),
(105, 48, 'Date de sortie', '2007'),
(106, 48, 'Durée', '01h20'),
(107, 48, 'Genre', 'Comédie romantique'),
(108, 48, 'Langue', 'VOSTF'),
(109, 48, 'Interprétation', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(110, 48, 'Prix', 'Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)'),
(113, 1, '_wp_trash_meta_status', 'publish'),
(114, 1, '_wp_trash_meta_time', '1358241284'),
(115, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(116, 8, 'Réalisation', 'Pascal-Alex Vincent'),
(117, 8, 'Pays', 'France'),
(118, 8, 'Date de sortie', '2009'),
(119, 8, 'Durée', '8 minutes'),
(122, 13, 'Réalisation', 'Céline Sciamma'),
(123, 13, 'Pays', 'France'),
(124, 13, 'Date de sortie', '2009'),
(125, 13, 'Durée', '7 minutes'),
(128, 29, 'Réalisation', 'Sébastien Gabriel'),
(129, 29, 'Pays', 'France'),
(130, 29, 'Date de sortie', '2009'),
(131, 29, 'Durée', '9 minutes'),
(134, 31, 'Réalisation', 'Bénédicte Delgéhier'),
(135, 31, 'Pays', 'France'),
(136, 31, 'Date de sortie', '2006'),
(137, 31, 'Durée', '10 minutes'),
(140, 33, 'Réalisation', 'René Guerra Luiz'),
(141, 33, 'Pays', 'Brésil'),
(142, 33, 'Date de sortie', '2008'),
(143, 33, 'Langue', 'VOSTF'),
(144, 33, 'Durée', '17 minutes'),
(147, 35, 'Réalisation', 'Jean Baptiste Erreca'),
(148, 35, 'Pays', 'France'),
(149, 35, 'Date de sortie', '2006'),
(150, 35, 'Durée', '26 minutes'),
(153, 37, 'Réalisation', 'Patricia & Colette'),
(154, 37, 'Pays', 'France'),
(155, 37, 'Date de sortie', '2008'),
(156, 37, 'Durée', '4 minutes'),
(159, 59, '_menu_item_type', 'post_type'),
(160, 59, '_menu_item_menu_item_parent', '0'),
(161, 59, '_menu_item_object_id', '4'),
(162, 59, '_menu_item_object', 'page'),
(163, 59, '_menu_item_target', ''),
(164, 59, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(165, 59, '_menu_item_xfn', ''),
(166, 59, '_menu_item_url', ''),
(168, 60, '_menu_item_type', 'taxonomy'),
(169, 60, '_menu_item_menu_item_parent', '0'),
(170, 60, '_menu_item_object_id', '3'),
(171, 60, '_menu_item_object', 'category'),
(172, 60, '_menu_item_target', ''),
(173, 60, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(174, 60, '_menu_item_xfn', ''),
(175, 60, '_menu_item_url', ''),
(177, 61, '_menu_item_type', 'taxonomy'),
(178, 61, '_menu_item_menu_item_parent', '0'),
(179, 61, '_menu_item_object_id', '2'),
(180, 61, '_menu_item_object', 'category'),
(181, 61, '_menu_item_target', ''),
(182, 61, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(183, 61, '_menu_item_xfn', ''),
(184, 61, '_menu_item_url', ''),
(186, 2, '_wp_trash_meta_status', 'publish'),
(187, 2, '_wp_trash_meta_time', '1358242017'),
(188, 63, '_edit_last', '1'),
(189, 63, '_wp_page_template', 'default'),
(190, 63, '_edit_lock', '1359452647:1'),
(191, 64, '_edit_last', '1'),
(192, 64, '_wp_page_template', 'default'),
(193, 64, '_edit_lock', '1360068717:1'),
(194, 65, '_edit_last', '1'),
(195, 65, '_wp_page_template', 'default'),
(196, 65, '_edit_lock', '1360068951:1'),
(197, 66, '_menu_item_type', 'post_type'),
(198, 66, '_menu_item_menu_item_parent', '0'),
(199, 66, '_menu_item_object_id', '65'),
(200, 66, '_menu_item_object', 'page'),
(201, 66, '_menu_item_target', ''),
(202, 66, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(203, 66, '_menu_item_xfn', ''),
(204, 66, '_menu_item_url', ''),
(206, 67, '_menu_item_type', 'post_type'),
(207, 67, '_menu_item_menu_item_parent', '0'),
(208, 67, '_menu_item_object_id', '64'),
(209, 67, '_menu_item_object', 'page'),
(210, 67, '_menu_item_target', ''),
(211, 67, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-bleu";}'),
(212, 67, '_menu_item_xfn', ''),
(213, 67, '_menu_item_url', ''),
(215, 68, '_menu_item_type', 'post_type'),
(216, 68, '_menu_item_menu_item_parent', '0'),
(217, 68, '_menu_item_object_id', '63'),
(218, 68, '_menu_item_object', 'page'),
(219, 68, '_menu_item_target', ''),
(220, 68, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-violet";}'),
(221, 68, '_menu_item_xfn', ''),
(222, 68, '_menu_item_url', ''),
(230, 73, '_wp_attached_file', '2013/01/37_it_s_still_elementary.jpg'),
(231, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:228;s:4:"file";s:36:"2013/01/37_it_s_still_elementary.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(232, 74, '_wp_attached_file', '2013/01/American-boy.png'),
(233, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(234, 75, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(235, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:506;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x350.jpg";s:5:"width";i:624;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(236, 76, '_wp_attached_file', '2013/01/ANDER2.jpg'),
(237, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:506;s:4:"file";s:18:"2013/01/ANDER2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER2-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER2-624x350.jpg";s:5:"width";i:624;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(238, 77, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(239, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(240, 78, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(241, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:615;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(242, 79, '_wp_attached_file', '2013/01/EL-NINO-PEZ-2.jpg'),
(243, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:608;s:6:"height";i:900;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(244, 80, '_wp_attached_file', '2013/01/EN_COLO.jpg'),
(245, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:589;s:4:"file";s:19:"2013/01/EN_COLO.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"EN_COLO-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"EN_COLO-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"EN_COLO-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(246, 81, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(247, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:589;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(248, 82, '_wp_attached_file', '2013/01/I-cant-think-straight-2.jpg'),
(249, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:35:"2013/01/I-cant-think-straight-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(250, 83, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(251, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(252, 84, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(253, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(254, 85, '_wp_attached_file', '2013/01/Odile-.jpg'),
(255, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:609;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(256, 86, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(257, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(258, 87, '_wp_attached_file', '2013/01/Os-sapatos-de-Aristeu.jpg'),
(259, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:33:"2013/01/Os-sapatos-de-Aristeu.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Os-sapatos-de-Aristeu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Os-sapatos-de-Aristeu-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"Os-sapatos-de-Aristeu-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1161573055;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"75";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(260, 88, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(261, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(262, 8, '_thumbnail_id', '80'),
(265, 13, '_thumbnail_id', '88'),
(268, 29, '_thumbnail_id', '86'),
(271, 31, '_thumbnail_id', '85'),
(274, 33, '_thumbnail_id', '87'),
(279, 35, '_thumbnail_id', '77'),
(282, 37, '_thumbnail_id', '74'),
(285, 39, '_thumbnail_id', '73'),
(288, 43, '_thumbnail_id', '75'),
(291, 45, '_thumbnail_id', '78'),
(294, 48, '_thumbnail_id', '82'),
(295, 4, '_wp_page_template', 'default'),
(296, 115, '_edit_last', '1'),
(297, 115, '_edit_lock', '1360059504:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-14 14:53:14', '2013-01-14 14:53:14', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'closed', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-15 10:14:44', '2013-01-15 09:14:44', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-14 14:53:14', '2013-01-14 14:53:14', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~jchevalier/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple', '', '', '2013-01-15 10:26:57', '2013-01-15 09:26:57', '', 0, 'http://localhost/~jchevalier/festival_cinema/?page_id=2', 0, 'page', '', 0),
(4, 1, '2013-01-14 16:07:56', '2013-01-14 15:07:56', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'closed', 'open', '', 'edito', '', '', '2013-01-28 17:01:53', '2013-01-28 16:01:53', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=4', 0, 'page', '', 0),
(7, 1, '2013-01-14 16:25:34', '2013-01-14 15:25:34', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'open', '', '1-autosave', '', '', '2013-01-14 16:25:34', '2013-01-14 15:25:34', '', 1, 'http://localhost/~jchevalier/festival_cinema/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-01-29 10:46:03', '2013-01-29 09:46:03', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'closed', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-02-05 11:20:42', '2013-02-05 10:20:42', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=8', 0, 'post', '', 0),
(9, 1, '2013-01-14 16:30:32', '2013-01-14 15:30:32', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '8-revision', '', '', '2013-01-14 16:30:32', '2013-01-14 15:30:32', '', 8, 'http://localhost/~jchevalier/festival_cinema/?p=9', 0, 'revision', '', 0),
(11, 1, '2013-01-15 10:15:59', '2013-01-15 09:15:59', '2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'closed', 'open', '', '8-autosave', '', '', '2013-01-15 10:15:59', '2013-01-15 09:15:59', '', 8, 'http://localhost/~jchevalier/festival_cinema/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-14 16:31:03', '2013-01-14 15:31:03', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '8-revision-2', '', '', '2013-01-14 16:31:03', '2013-01-14 15:31:03', '', 8, 'http://localhost/~jchevalier/festival_cinema/?p=12', 0, 'revision', '', 0),
(13, 1, '2013-01-29 10:45:15', '2013-01-29 09:45:15', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'publish', 'closed', 'open', '', 'pauline-celine-sciamma-france-2009', '', '', '2013-02-05 11:22:57', '2013-02-05 10:22:57', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=13', 0, 'post', '', 0),
(26, 1, '2013-01-14 16:33:27', '2013-01-14 15:33:27', '7 minutes\n\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '13-revision', '', '', '2013-01-14 16:33:27', '2013-01-14 15:33:27', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=26', 0, 'revision', '', 0),
(27, 1, '2013-01-14 16:34:15', '2013-01-14 15:34:15', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '13-revision-2', '', '', '2013-01-14 16:34:15', '2013-01-14 15:34:15', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=27', 0, 'revision', '', 0),
(28, 1, '2013-01-14 16:34:30', '2013-01-14 15:34:30', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '13-revision-3', '', '', '2013-01-14 16:34:30', '2013-01-14 15:34:30', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=28', 0, 'revision', '', 0),
(29, 1, '2013-01-29 10:44:18', '2013-01-29 09:44:18', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'publish', 'closed', 'open', '', 'omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-02-05 11:21:53', '2013-02-05 10:21:53', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=29', 0, 'post', '', 0),
(30, 1, '2013-01-14 16:34:59', '2013-01-14 15:34:59', '', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '29-revision', '', '', '2013-01-14 16:34:59', '2013-01-14 15:34:59', '', 29, 'http://localhost/~jchevalier/festival_cinema/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-29 10:43:57', '2013-01-29 09:43:57', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'publish', 'closed', 'open', '', 'odile-benedicte-delgehier-france-2006-10-minutes', '', '', '2013-02-05 11:22:12', '2013-02-05 10:22:12', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=31', 0, 'post', '', 0),
(32, 1, '2013-01-14 16:35:40', '2013-01-14 15:35:40', '', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '31-revision', '', '', '2013-01-14 16:35:40', '2013-01-14 15:35:40', '', 31, 'http://localhost/~jchevalier/festival_cinema/?p=32', 0, 'revision', '', 0),
(33, 1, '2013-01-29 10:42:07', '2013-01-29 09:42:07', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'publish', 'closed', 'open', '', 'os-sapatos-de-aristeu-rene-guerra-luiz-bresil-2008', '', '', '2013-02-05 11:23:38', '2013-02-05 10:23:38', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=33', 0, 'post', '', 0),
(34, 1, '2013-01-14 16:37:03', '2013-01-14 15:37:03', '17 minutes - VOSTF\n\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '33-revision', '', '', '2013-01-14 16:37:03', '2013-01-14 15:37:03', '', 33, 'http://localhost/~jchevalier/festival_cinema/?p=34', 0, 'revision', '', 0),
(35, 1, '2013-01-29 10:41:00', '2013-01-29 09:41:00', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'publish', 'closed', 'open', '', 'cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-02-05 11:23:58', '2013-02-05 10:23:58', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=35', 0, 'post', '', 0),
(36, 1, '2013-01-14 16:37:39', '2013-01-14 15:37:39', '', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '35-revision', '', '', '2013-01-14 16:37:39', '2013-01-14 15:37:39', '', 35, 'http://localhost/~jchevalier/festival_cinema/?p=36', 0, 'revision', '', 0),
(37, 1, '2013-01-29 10:40:43', '2013-01-29 09:40:43', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'publish', 'closed', 'open', '', 'american-boy-patricia-colette-france', '', '', '2013-02-05 11:24:16', '2013-02-05 10:24:16', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=37', 0, 'post', '', 0),
(38, 1, '2013-01-14 16:38:18', '2013-01-14 15:38:18', '', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '37-revision', '', '', '2013-01-14 16:38:18', '2013-01-14 15:38:18', '', 37, 'http://localhost/~jchevalier/festival_cinema/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-29 10:39:24', '2013-01-29 09:39:24', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'closed', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-02-05 11:24:54', '2013-02-05 10:24:54', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=39', 0, 'post', '', 0),
(40, 1, '2013-01-14 16:39:01', '2013-01-14 15:39:01', '', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '39-revision', '', '', '2013-01-14 16:39:01', '2013-01-14 15:39:01', '', 39, 'http://localhost/~jchevalier/festival_cinema/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-14 16:41:27', '2013-01-14 15:41:27', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '39-autosave', '', '', '2013-01-14 16:41:27', '2013-01-14 15:41:27', '', 39, 'http://localhost/~jchevalier/festival_cinema/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-14 16:40:24', '2013-01-14 15:40:24', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '39-revision-2', '', '', '2013-01-14 16:40:24', '2013-01-14 15:40:24', '', 39, 'http://localhost/~jchevalier/festival_cinema/?p=42', 0, 'revision', '', 0),
(43, 1, '2013-01-29 10:38:45', '2013-01-29 09:38:45', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER', '', 'publish', 'closed', 'open', '', 'ander', '', '', '2013-02-05 11:25:13', '2013-02-05 10:25:13', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=43', 0, 'post', '', 0),
(44, 1, '2013-01-14 16:50:38', '2013-01-14 15:50:38', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER', '', 'inherit', 'closed', 'open', '', '43-revision', '', '', '2013-01-14 16:50:38', '2013-01-14 15:50:38', '', 43, 'http://localhost/~jchevalier/festival_cinema/?p=44', 0, 'revision', '', 0),
(45, 1, '2013-01-29 10:37:59', '2013-01-29 09:37:59', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'publish', 'closed', 'open', '', 'el-nino-pez', '', '', '2013-02-05 11:25:56', '2013-02-05 10:25:56', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=45', 0, 'post', '', 0),
(46, 1, '2013-01-14 16:54:50', '2013-01-14 15:54:50', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'open', '', '45-revision', '', '', '2013-01-14 16:54:50', '2013-01-14 15:54:50', '', 45, 'http://localhost/~jchevalier/festival_cinema/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-01-14 16:57:01', '2013-01-14 15:57:01', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'open', '', '45-autosave', '', '', '2013-01-14 16:57:01', '2013-01-14 15:57:01', '', 45, 'http://localhost/~jchevalier/festival_cinema/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-29 10:36:57', '2013-01-29 09:36:57', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'publish', 'closed', 'open', '', 'cant-think-straight', '', '', '2013-02-05 11:26:14', '2013-02-05 10:26:14', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=48', 0, 'post', '', 0),
(49, 1, '2013-01-15 10:11:45', '2013-01-15 09:11:45', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'open', '', '48-revision', '', '', '2013-01-15 10:11:45', '2013-01-15 09:11:45', '', 48, 'http://localhost/~jchevalier/festival_cinema/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-14 14:53:14', '2013-01-14 14:53:14', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'open', '', '1-revision', '', '', '2013-01-14 14:53:14', '2013-01-14 14:53:14', '', 1, 'http://localhost/~jchevalier/festival_cinema/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-14 16:32:18', '2013-01-14 15:32:18', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '8-revision-3', '', '', '2013-01-14 16:32:18', '2013-01-14 15:32:18', '', 8, 'http://localhost/~jchevalier/festival_cinema/?p=51', 0, 'revision', '', 0),
(52, 1, '2013-01-14 16:34:38', '2013-01-14 15:34:38', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '13-revision-4', '', '', '2013-01-14 16:34:38', '2013-01-14 15:34:38', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-01-14 16:35:18', '2013-01-14 15:35:18', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '29-revision-2', '', '', '2013-01-14 16:35:18', '2013-01-14 15:35:18', '', 29, 'http://localhost/~jchevalier/festival_cinema/?p=53', 0, 'revision', '', 0),
(54, 1, '2013-01-14 16:35:57', '2013-01-14 15:35:57', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '31-revision-2', '', '', '2013-01-14 16:35:57', '2013-01-14 15:35:57', '', 31, 'http://localhost/~jchevalier/festival_cinema/?p=54', 0, 'revision', '', 0),
(55, 1, '2013-01-15 10:21:29', '2013-01-15 09:21:29', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'closed', 'open', '', '33-autosave', '', '', '2013-01-15 10:21:29', '2013-01-15 09:21:29', '', 33, 'http://localhost/~jchevalier/festival_cinema/?p=55', 0, 'revision', '', 0),
(56, 1, '2013-01-14 16:37:07', '2013-01-14 15:37:07', '17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '33-revision-2', '', '', '2013-01-14 16:37:07', '2013-01-14 15:37:07', '', 33, 'http://localhost/~jchevalier/festival_cinema/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-01-14 16:38:00', '2013-01-14 15:38:00', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '35-revision-2', '', '', '2013-01-14 16:38:00', '2013-01-14 15:38:00', '', 35, 'http://localhost/~jchevalier/festival_cinema/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-01-14 16:38:43', '2013-01-14 15:38:43', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '37-revision-2', '', '', '2013-01-14 16:38:43', '2013-01-14 15:38:43', '', 37, 'http://localhost/~jchevalier/festival_cinema/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-15 10:26:48', '2013-01-15 09:26:48', ' ', '', '', 'publish', 'closed', 'open', '', '59', '', '', '2013-01-22 11:06:30', '2013-01-22 10:06:30', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2013-01-15 10:26:49', '2013-01-15 09:26:49', ' ', '', '', 'publish', 'closed', 'open', '', '60', '', '', '2013-01-22 11:06:31', '2013-01-22 10:06:31', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=60', 2, 'nav_menu_item', '', 0),
(61, 1, '2013-01-15 10:26:49', '2013-01-15 09:26:49', ' ', '', '', 'publish', 'closed', 'open', '', '61', '', '', '2013-01-22 11:06:31', '2013-01-22 10:06:31', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=61', 3, 'nav_menu_item', '', 0),
(62, 1, '2013-01-14 14:53:14', '2013-01-14 14:53:14', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~jchevalier/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'open', '', '2-revision', '', '', '2013-01-14 14:53:14', '2013-01-14 14:53:14', '', 2, 'http://localhost/~jchevalier/festival_cinema/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-01-15 10:27:21', '2013-01-15 09:27:21', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : \r\nPlein tarif : 7,50 €\r\nPass Festival : 25 € (5 séances)\r\nSoirée courts métrages : 6 € (vendredi)\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes & réductions acceptées :\r\nCartes DECOUVERTE & PASSION,\r\ntitulaire du PAC étudiant & de la JPASS, tarif – de 26 ans...\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant\r\ndes projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de\r\ntous continents.\r\n\r\nEquipe :\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\nProgrammation : Christel Guillard en collaboration avec\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\nCommunication & partenariats : Christel Guillard\r\nConception graphique : Yannis Bellair\r\nConception du site internet : rccc\r\nImpression : Prevost Offset\r\n\r\nContacts :\r\nMail: festival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com\r\n', 'Infos pratiques', '', 'publish', 'closed', 'open', '', 'infos-pratiques', '', '', '2013-01-29 10:43:48', '2013-01-29 09:43:48', '', 0, 'http://localhost/~jchevalier/festival_cinema/?page_id=63', 0, 'page', '', 0),
(64, 1, '2013-01-15 10:27:34', '2013-01-15 09:27:34', '- <a href="http://www.regioncentre.fr/accueil.html">Région Centre</a>\r\n\r\n- <a href="http://www.orleans.fr/">Orléans</a>\r\n\r\n- <a href="http://www.cinemalescarmes.com/">Cinéma des Carmes</a>\r\n\r\n- <a href="http://www.centrelgbtorleans.org/">GAGL</a>\r\n\r\n- <a href="http://www.tetu.com/">Têtu</a>\r\n\r\n- <a href="http://www.muse-out.com/">La dixième MUSE</a>\r\n\r\n- <a href="http://www.citegay.fr/">CiteGay</a>\r\n\r\n-<a href="http://yagg.com/">Yagg.com</a>\r\n\r\n- <a href="http://www.francebleu.fr/">France Bleu</a>', 'Partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-02-05 13:53:49', '2013-02-05 12:53:49', '', 0, 'http://localhost/~jchevalier/festival_cinema/?page_id=64', 0, 'page', '', 0),
(65, 1, '2013-01-15 10:27:46', '2013-01-15 09:27:46', '- <a href="http://www.regioncentre.fr/accueil.html">Région Centre</a>\r\n\r\n- <a href="http://www.orleans.fr/">Orléans</a>\r\n\r\n- <a href="http://www.cinemalescarmes.com/">Cinéma des Carmes</a>\r\n\r\n- <a href="http://www.centrelgbtorleans.org/">GAGL</a>\r\n\r\n- <a href="http://www.tetu.com/">Têtu</a>\r\n\r\n- <a href="http://www.muse-out.com/">La dixième MUSE</a>\r\n\r\n- <a href="http://www.citegay.fr/">CiteGay</a>\r\n\r\n-<a href="http://yagg.com/">Yagg.com</a>\r\n\r\n- <a href="http://www.francebleu.fr/">France Bleu</a>\r\n- <a href="http://www.regioncentre.fr/accueil.html">La Région Centre</a>\r\n\r\n- <a href="http://www.orleans.fr/">La Mairie d''Orléans</a>\r\n\r\n- <a href="http://www.cinemalescarmes.com/">Le cinéma des Carmes</a>\r\n\r\n- <a href="http://federation-lgbt.org/groupe-action-gay-lesbien-orleans">Le Groupe Action Gay &amp; Lesbien</a>\r\n\r\n- <a href="http://www.citegay.fr/">Loiret - Citégay</a>\r\n\r\n- <a href="http://www.muse-out.com/">La dixième Muse</a>\r\n\r\n- <a href="http://www.tetu.com/">Têtu</a>\r\n\r\n- <a href="http://yagg.com/">Yagg.com</a>\r\n\r\n- <a href="http://www.francebleu.fr/station/france-bleu-orleans/">France Bleu Orléans</a>\r\n\r\n- <a href="http://www.bagdam.org/">Bagdam Espace Lesbien ( Toulouse )</a>\r\n\r\n- <a href="http://www.cineffable.fr/fr/edito.htm">Cineffable</a>\r\n\r\n- <a href="http://www.festivaltouscourts.com/">Le Festival Tous Courts (Aix en Provence)</a>\r\n\r\n- <a href="http://www.lesvideobstinees.org/">Les VidéObstinées</a>', 'Remerciments', '', 'publish', 'closed', 'open', '', 'remerciments', '', '', '2013-02-05 13:54:50', '2013-02-05 12:54:50', '', 0, 'http://localhost/~jchevalier/festival_cinema/?page_id=65', 0, 'page', '', 0),
(66, 1, '2013-01-15 10:28:14', '2013-01-15 09:28:14', ' ', '', '', 'publish', 'closed', 'open', '', '66', '', '', '2013-01-22 11:06:31', '2013-01-22 10:06:31', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2013-01-15 10:28:14', '2013-01-15 09:28:14', ' ', '', '', 'publish', 'closed', 'open', '', '67', '', '', '2013-01-22 11:06:31', '2013-01-22 10:06:31', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=67', 5, 'nav_menu_item', '', 0),
(68, 1, '2013-01-15 10:28:14', '2013-01-15 09:28:14', ' ', '', '', 'publish', 'closed', 'open', '', '68', '', '', '2013-01-22 11:06:31', '2013-01-22 10:06:31', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=68', 6, 'nav_menu_item', '', 0),
(70, 1, '2013-01-15 10:18:00', '2013-01-15 09:18:00', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'closed', 'open', '', '13-revision-5', '', '', '2013-01-15 10:18:00', '2013-01-15 09:18:00', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-15 10:19:03', '2013-01-15 09:19:03', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'closed', 'open', '', '29-revision-3', '', '', '2013-01-15 10:19:03', '2013-01-15 09:19:03', '', 29, 'http://localhost/~jchevalier/festival_cinema/?p=71', 0, 'revision', '', 0),
(72, 1, '2013-01-15 10:36:57', '2013-01-15 09:36:57', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'closed', 'open', '', '29-autosave', '', '', '2013-01-15 10:36:57', '2013-01-15 09:36:57', '', 29, 'http://localhost/~jchevalier/festival_cinema/?p=72', 0, 'revision', '', 0),
(73, 1, '2013-01-15 10:47:56', '2013-01-15 09:47:56', '', '37_it_s_still_elementary', '', 'inherit', 'closed', 'open', '', '37_it_s_still_elementary', '', '', '2013-01-15 10:47:56', '2013-01-15 09:47:56', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/37_it_s_still_elementary.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2013-01-15 10:47:57', '2013-01-15 09:47:57', '', 'American boy', '', 'inherit', 'closed', 'open', '', 'american-boy', '', '', '2013-01-15 10:47:57', '2013-01-15 09:47:57', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2013-01-15 10:47:58', '2013-01-15 09:47:58', '', 'ANDER1', '', 'inherit', 'closed', 'open', '', 'ander1', '', '', '2013-01-15 10:47:58', '2013-01-15 09:47:58', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2013-01-15 10:47:58', '2013-01-15 09:47:58', '', 'ANDER2', '', 'inherit', 'closed', 'open', '', 'ander2', '', '', '2013-01-15 10:47:58', '2013-01-15 09:47:58', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/ANDER2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2013-01-15 10:47:59', '2013-01-15 09:47:59', '', 'COWBOY FOREVER', '', 'inherit', 'closed', 'open', '', 'cowboy-forever', '', '', '2013-01-15 10:47:59', '2013-01-15 09:47:59', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2013-01-15 10:47:59', '2013-01-15 09:47:59', '', 'EL NINO PEZ 1', '', 'inherit', 'closed', 'open', '', 'el-nino-pez-1', '', '', '2013-01-15 10:47:59', '2013-01-15 09:47:59', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2013-01-15 10:48:00', '2013-01-15 09:48:00', '', 'EL NINO PEZ  2', '', 'inherit', 'closed', 'open', '', 'el-nino-pez-2', '', '', '2013-01-15 10:48:00', '2013-01-15 09:48:00', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/EL-NINO-PEZ-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2013-01-15 10:48:00', '2013-01-15 09:48:00', '', 'EN_COLO', '', 'inherit', 'closed', 'open', '', 'en_colo', '', '', '2013-01-15 10:48:00', '2013-01-15 09:48:00', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/EN_COLO.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-01-15 10:48:00', '2013-01-15 09:48:00', '', 'EN_COLOricco', '', 'inherit', 'closed', 'open', '', 'en_coloricco', '', '', '2013-01-15 10:48:00', '2013-01-15 09:48:00', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2013-01-15 10:48:01', '2013-01-15 09:48:01', '', 'I can''t think straight 2', '', 'inherit', 'closed', 'open', '', 'i-cant-think-straight-2', '', '', '2013-01-15 10:48:01', '2013-01-15 09:48:01', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/I-cant-think-straight-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-01-15 10:48:01', '2013-01-15 09:48:01', '', 'I_cant_think_straight_001', '', 'inherit', 'closed', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-15 10:48:01', '2013-01-15 09:48:01', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2013-01-15 10:48:02', '2013-01-15 09:48:02', '', 'ItsElementaryGBan', '', 'inherit', 'closed', 'open', '', 'itselementarygban', '', '', '2013-01-15 10:48:02', '2013-01-15 09:48:02', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-01-15 10:48:02', '2013-01-15 09:48:02', '', 'Odile', '', 'inherit', 'closed', 'open', '', 'odile', '', '', '2013-01-15 10:48:02', '2013-01-15 09:48:02', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2013-01-15 10:48:03', '2013-01-15 09:48:03', '', 'OMAR_', '', 'inherit', 'closed', 'open', '', 'omar_', '', '', '2013-01-15 10:48:03', '2013-01-15 09:48:03', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2013-01-15 10:48:03', '2013-01-15 09:48:03', '', 'Os sapatos de Aristeu', '', 'inherit', 'closed', 'open', '', 'os-sapatos-de-aristeu', '', '', '2013-01-15 10:48:03', '2013-01-15 09:48:03', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/Os-sapatos-de-Aristeu.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2013-01-15 10:48:04', '2013-01-15 09:48:04', '', 'PAULINE_1', '', 'inherit', 'closed', 'open', '', 'pauline_1', '', '', '2013-01-15 10:48:04', '2013-01-15 09:48:04', '', 0, 'http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2013-01-15 10:16:51', '2013-01-15 09:16:51', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'closed', 'open', '', '8-revision-4', '', '', '2013-01-15 10:16:51', '2013-01-15 09:16:51', '', 8, 'http://localhost/~jchevalier/festival_cinema/?p=89', 0, 'revision', '', 0),
(90, 1, '2013-01-15 10:35:09', '2013-01-15 09:35:09', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'closed', 'open', '', '13-revision-6', '', '', '2013-01-15 10:35:09', '2013-01-15 09:35:09', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=90', 0, 'revision', '', 0),
(91, 1, '2013-01-15 10:35:54', '2013-01-15 09:35:54', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'closed', 'open', '', '29-revision-4', '', '', '2013-01-15 10:35:54', '2013-01-15 09:35:54', '', 29, 'http://localhost/~jchevalier/festival_cinema/?p=91', 0, 'revision', '', 0),
(92, 1, '2013-01-15 10:20:13', '2013-01-15 09:20:13', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'closed', 'open', '', '31-revision-3', '', '', '2013-01-15 10:20:13', '2013-01-15 09:20:13', '', 31, 'http://localhost/~jchevalier/festival_cinema/?p=92', 0, 'revision', '', 0),
(93, 1, '2013-01-15 10:21:32', '2013-01-15 09:21:32', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'closed', 'open', '', '33-revision-3', '', '', '2013-01-15 10:21:32', '2013-01-15 09:21:32', '', 33, 'http://localhost/~jchevalier/festival_cinema/?p=93', 0, 'revision', '', 0),
(94, 1, '2013-01-15 10:54:10', '2013-01-15 09:54:10', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'closed', 'open', '', '33-revision-4', '', '', '2013-01-15 10:54:10', '2013-01-15 09:54:10', '', 33, 'http://localhost/~jchevalier/festival_cinema/?p=94', 0, 'revision', '', 0),
(95, 1, '2013-01-15 10:22:40', '2013-01-15 09:22:40', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'inherit', 'closed', 'open', '', '35-revision-3', '', '', '2013-01-15 10:22:40', '2013-01-15 09:22:40', '', 35, 'http://localhost/~jchevalier/festival_cinema/?p=95', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2013-01-15 10:23:36', '2013-01-15 09:23:36', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '37-revision-3', '', '', '2013-01-15 10:23:36', '2013-01-15 09:23:36', '', 37, 'http://localhost/~jchevalier/festival_cinema/?p=96', 0, 'revision', '', 0),
(97, 1, '2013-01-14 16:48:24', '2013-01-14 15:48:24', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '39-revision-3', '', '', '2013-01-14 16:48:24', '2013-01-14 15:48:24', '', 39, 'http://localhost/~jchevalier/festival_cinema/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-01-14 16:53:45', '2013-01-14 15:53:45', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER', '', 'inherit', 'closed', 'open', '', '43-revision-2', '', '', '2013-01-14 16:53:45', '2013-01-14 15:53:45', '', 43, 'http://localhost/~jchevalier/festival_cinema/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-14 16:55:59', '2013-01-14 15:55:59', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'open', '', '45-revision-2', '', '', '2013-01-14 16:55:59', '2013-01-14 15:55:59', '', 45, 'http://localhost/~jchevalier/festival_cinema/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-15 10:13:57', '2013-01-15 09:13:57', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'open', '', '48-revision-2', '', '', '2013-01-15 10:13:57', '2013-01-15 09:13:57', '', 48, 'http://localhost/~jchevalier/festival_cinema/?p=100', 0, 'revision', '', 0),
(103, 1, '2013-01-22 11:07:39', '2013-01-22 10:07:39', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '4-autosave', '', '', '2013-01-22 11:07:39', '2013-01-22 10:07:39', '', 4, 'http://localhost/~jchevalier/festival_cinema/?p=103', 0, 'revision', '', 0),
(104, 1, '2013-01-14 16:07:56', '2013-01-14 15:07:56', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '4-revision', '', '', '2013-01-14 16:07:56', '2013-01-14 15:07:56', '', 4, 'http://localhost/~jchevalier/festival_cinema/?p=104', 0, 'revision', '', 0),
(105, 1, '2013-01-22 11:19:57', '2013-01-22 10:19:57', '&lt;ul&gt;\r\n&lt;li&gt;&lt;img src=".uploads/2013/01/ANDER1-624x350.jpg" alt=""&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;img src=".uploads/2013/01/American-boy-624x416.png" alt=""&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;img src=".uploads/2013/01/37_it_s_still_elementary.jpg" alt=""&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '4-revision-2', '', '', '2013-01-22 11:19:57', '2013-01-22 10:19:57', '', 4, 'http://localhost/~jchevalier/festival_cinema/?p=105', 0, 'revision', '', 0),
(106, 1, '2013-01-22 11:20:40', '2013-01-22 10:20:40', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '4-revision-3', '', '', '2013-01-22 11:20:40', '2013-01-22 10:20:40', '', 4, 'http://localhost/~jchevalier/festival_cinema/?p=106', 0, 'revision', '', 0),
(107, 1, '2013-01-22 11:21:37', '2013-01-22 10:21:37', '<ul class="slideshow">\r\n<li><img src=".uploads/2013/01/ANDER1-624x350.jpg" alt=""></li>\r\n<li><img src=".uploads/2013/01/American-boy-624x416.png" alt=""></li>\r\n<li><img src=".uploads/2013/01/37_it_s_still_elementary.jpg" alt=""></li>\r\n</ul>\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '4-revision-4', '', '', '2013-01-22 11:21:37', '2013-01-22 10:21:37', '', 4, 'http://localhost/~jchevalier/festival_cinema/?p=107', 0, 'revision', '', 0),
(108, 1, '2013-01-22 11:27:23', '2013-01-22 10:27:23', '<ul class="slideshow">\r\n<li><img src=".uploads/2013/01/ANDER1-624x350.jpg" alt=""></li>\r\n<li><img src=".uploads/2013/01/American-boy-624x416.png" alt=""></li>\r\n<li><img src="http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/American-boy-624x416.png" alt=""></li>\r\n</ul>\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '4-revision-5', '', '', '2013-01-22 11:27:23', '2013-01-22 10:27:23', '', 4, 'http://localhost/~jchevalier/festival_cinema/?p=108', 0, 'revision', '', 0),
(109, 1, '2013-01-28 16:01:01', '2013-01-28 15:01:01', '<ul class="slideshow">\r\n<li><img src="http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/COWBOY-FOREVER-624x416.jpg" alt=""></li>\r\n<li><img src="http://localhost/~jchevalier/festival_cinema/wp-content/uploads/2013/01/American-boy-624x416.png" alt=""></li>\r\n</ul>\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '4-revision-6', '', '', '2013-01-28 16:01:01', '2013-01-28 15:01:01', '', 4, 'http://localhost/~jchevalier/festival_cinema/?p=109', 0, 'revision', '', 0),
(110, 1, '2013-01-15 10:27:46', '2013-01-15 09:27:46', '', 'Remerciments', '', 'inherit', 'closed', 'open', '', '65-revision', '', '', '2013-01-15 10:27:46', '2013-01-15 09:27:46', '', 65, 'http://localhost/~jchevalier/festival_cinema/?p=110', 0, 'revision', '', 0),
(111, 1, '2013-01-15 10:27:34', '2013-01-15 09:27:34', '', 'Partenaires', '', 'inherit', 'closed', 'open', '', '64-revision', '', '', '2013-01-15 10:27:34', '2013-01-15 09:27:34', '', 64, 'http://localhost/~jchevalier/festival_cinema/?p=111', 0, 'revision', '', 0),
(112, 1, '2013-01-29 10:43:05', '2013-01-29 09:43:05', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\nTarifs : \nPlein tarif : 7,50 €\nPass Festival : 25 € (5 séances)\nSoirée courts métrages : 6 € (vendredi)\n2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes & réductions acceptées :\nCartes DECOUVERTE & PASSION,\ntitulaire du PAC étudiant & de la JPASS, tarif – de 26 ans...\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant\ndes projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de\ntous continents.\nEquipe :\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\nProgrammation : Christel Guillard en collaboration avec\nFrançoise Dahmane (Cinéma Les Carmes)\nCommunication & partenariats : Christel Guillard\nConception graphique : Yannis Bellair\nConception du site internet : rccc\nImpression : Prevost Offset\nContacts :\nfestival.dunbordalautre@gmail.com\nwww.festivaldunbordalautre.com\n', 'Infos pratiques', '', 'inherit', 'closed', 'open', '', '63-autosave', '', '', '2013-01-29 10:43:05', '2013-01-29 09:43:05', '', 63, 'http://localhost/~jchevalier/festival_cinema/?p=112', 0, 'revision', '', 0),
(113, 1, '2013-01-15 10:27:21', '2013-01-15 09:27:21', '', 'Infos pratiques', '', 'inherit', 'closed', 'open', '', '63-revision', '', '', '2013-01-15 10:27:21', '2013-01-15 09:27:21', '', 63, 'http://localhost/~jchevalier/festival_cinema/?p=113', 0, 'revision', '', 0),
(114, 1, '2013-01-29 10:43:18', '2013-01-29 09:43:18', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : \r\nPlein tarif : 7,50 €\r\nPass Festival : 25 € (5 séances)\r\nSoirée courts métrages : 6 € (vendredi)\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes & réductions acceptées :\r\nCartes DECOUVERTE & PASSION,\r\ntitulaire du PAC étudiant & de la JPASS, tarif – de 26 ans...\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant\r\ndes projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de\r\ntous continents.\r\n\r\nEquipe :\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\nProgrammation : Christel Guillard en collaboration avec\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\nCommunication & partenariats : Christel Guillard\r\nConception graphique : Yannis Bellair\r\nConception du site internet : rccc\r\nImpression : Prevost Offset\r\nContacts :\r\nfestival.dunbordalautre@gmail.com\r\nwww.festivaldunbordalautre.com\r\n', 'Infos pratiques', '', 'inherit', 'closed', 'open', '', '63-revision-2', '', '', '2013-01-29 10:43:18', '2013-01-29 09:43:18', '', 63, 'http://localhost/~jchevalier/festival_cinema/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-29 10:47:06', '2013-01-29 09:47:06', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune\r\net homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en\r\nscène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le\r\nMinistère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le\r\nsoutien du groupe Canal+.\r\n', 'Intro', '', 'publish', 'closed', 'open', '', 'intro', '', '', '2013-01-29 10:47:06', '2013-01-29 09:47:06', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=115', 0, 'post', '', 0),
(116, 1, '2013-01-29 10:46:45', '2013-01-29 09:46:45', '\n==========\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune\net homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en\nscène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le\nMinistère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le\nsoutien du groupe Canal+.\n', 'Intro', '', 'inherit', 'closed', 'open', '', '115-revision', '', '', '2013-01-29 10:46:45', '2013-01-29 09:46:45', '', 115, 'http://localhost/~jchevalier/festival_cinema/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-02-05 10:21:19', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2013-02-05 10:21:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/~jchevalier/festival_cinema/?p=117', 0, 'post', '', 0),
(119, 1, '2013-01-15 10:49:10', '2013-01-15 09:49:10', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'closed', 'open', '', '8-revision-5', '', '', '2013-01-15 10:49:10', '2013-01-15 09:49:10', '', 8, 'http://localhost/~jchevalier/festival_cinema/?p=119', 0, 'revision', '', 0),
(120, 1, '2013-01-15 10:51:55', '2013-01-15 09:51:55', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'closed', 'open', '', '13-revision-7', '', '', '2013-01-15 10:51:55', '2013-01-15 09:51:55', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=120', 0, 'revision', '', 0),
(121, 1, '2013-01-15 10:52:22', '2013-01-15 09:52:22', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'closed', 'open', '', '29-revision-5', '', '', '2013-01-15 10:52:22', '2013-01-15 09:52:22', '', 29, 'http://localhost/~jchevalier/festival_cinema/?p=121', 0, 'revision', '', 0),
(122, 1, '2013-01-15 10:53:14', '2013-01-15 09:53:14', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'closed', 'open', '', '31-revision-4', '', '', '2013-01-15 10:53:14', '2013-01-15 09:53:14', '', 31, 'http://localhost/~jchevalier/festival_cinema/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-02-05 11:21:24', '2013-02-05 10:21:24', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'closed', 'open', '', '13-revision-8', '', '', '2013-02-05 11:21:24', '2013-02-05 10:21:24', '', 13, 'http://localhost/~jchevalier/festival_cinema/?p=123', 0, 'revision', '', 0),
(124, 1, '2013-01-15 10:54:20', '2013-01-15 09:54:20', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'closed', 'open', '', '33-revision-5', '', '', '2013-01-15 10:54:20', '2013-01-15 09:54:20', '', 33, 'http://localhost/~jchevalier/festival_cinema/?p=124', 0, 'revision', '', 0),
(125, 1, '2013-01-15 10:54:56', '2013-01-15 09:54:56', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'inherit', 'closed', 'open', '', '35-revision-4', '', '', '2013-01-15 10:54:56', '2013-01-15 09:54:56', '', 35, 'http://localhost/~jchevalier/festival_cinema/?p=125', 0, 'revision', '', 0),
(126, 1, '2013-01-15 10:55:23', '2013-01-15 09:55:23', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'open', '', '37-revision-4', '', '', '2013-01-15 10:55:23', '2013-01-15 09:55:23', '', 37, 'http://localhost/~jchevalier/festival_cinema/?p=126', 0, 'revision', '', 0),
(127, 1, '2013-01-15 10:56:15', '2013-01-15 09:56:15', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '39-revision-4', '', '', '2013-01-15 10:56:15', '2013-01-15 09:56:15', '', 39, 'http://localhost/~jchevalier/festival_cinema/?p=127', 0, 'revision', '', 0),
(128, 1, '2013-01-15 10:56:46', '2013-01-15 09:56:46', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER', '', 'inherit', 'closed', 'open', '', '43-revision-3', '', '', '2013-01-15 10:56:46', '2013-01-15 09:56:46', '', 43, 'http://localhost/~jchevalier/festival_cinema/?p=128', 0, 'revision', '', 0),
(129, 1, '2013-01-15 10:57:27', '2013-01-15 09:57:27', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'open', '', '45-revision-3', '', '', '2013-01-15 10:57:27', '2013-01-15 09:57:27', '', 45, 'http://localhost/~jchevalier/festival_cinema/?p=129', 0, 'revision', '', 0),
(130, 1, '2013-02-05 11:25:41', '2013-02-05 10:25:41', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'open', '', '45-revision-4', '', '', '2013-02-05 11:25:41', '2013-02-05 10:25:41', '', 45, 'http://localhost/~jchevalier/festival_cinema/?p=130', 0, 'revision', '', 0),
(131, 1, '2013-01-15 10:57:57', '2013-01-15 09:57:57', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'open', '', '48-revision-3', '', '', '2013-01-15 10:57:57', '2013-01-15 09:57:57', '', 48, 'http://localhost/~jchevalier/festival_cinema/?p=131', 0, 'revision', '', 0),
(132, 1, '2013-01-29 10:41:58', '2013-01-29 09:41:58', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '64-revision-2', '', '', '2013-01-29 10:41:58', '2013-01-29 09:41:58', '', 64, 'http://localhost/~jchevalier/festival_cinema/?p=132', 0, 'revision', '', 0),
(133, 1, '2013-01-29 10:41:24', '2013-01-29 09:41:24', '- La Région Centre\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay & Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciments', '', 'inherit', 'closed', 'closed', '', '65-revision-2', '', '', '2013-01-29 10:41:24', '2013-01-29 09:41:24', '', 65, 'http://localhost/~jchevalier/festival_cinema/?p=133', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts­-métrages', 'courts%c2%ad-metrages', 0),
(4, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(8, 3, 0),
(13, 3, 0),
(29, 3, 0),
(31, 3, 0),
(33, 3, 0),
(35, 3, 0),
(37, 3, 0),
(39, 2, 0),
(43, 2, 0),
(45, 2, 0),
(48, 2, 0),
(59, 4, 0),
(60, 4, 0),
(61, 4, 0),
(66, 4, 0),
(67, 4, 0),
(68, 4, 0),
(115, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 8),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'johnC'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '117'),
(15, 1, 'wp_user-settings', 'hidetb=1&libraryContent=browse&editor=html'),
(16, 1, 'wp_user-settings-time', '1358850092'),
(17, 1, 'closedpostboxes_post', 'a:0:{}'),
(18, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'johnC', '$P$BHTVn9tPjTqc4tHUAkl2TZpZmjkW/N/', 'johnc', 'john45240@hotmail.fr', '', '2013-01-14 14:53:12', '', 0, 'johnC');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
