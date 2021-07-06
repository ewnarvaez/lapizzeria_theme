-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-06-30 21:15:36','2021-06-30 21:15:36','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://la-pizzeria.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://la-pizzeria.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','La Pizzeria','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','1','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','lapizzeria','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','lapizzeria','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:11:\"Categorías\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','11','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','7','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1640639734','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:6:\"Buscar\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:17:\"Últimas Entradas\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"blog_sidebar\";a:3:{i:0;s:8:\"search-3\";i:1;s:12:\"categories-3\";i:2;s:14:\"recent-posts-3\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1625537741;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625562941;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625606140;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625606169;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625606173;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625778940;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','U77f7)JiFsOjz6@*|%hr0ssBm{@9eFvrZ[!` *9Gm@C,HObI8(2a4W+<a#kn$vF-','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','i}Xf)gpGeI(jPL.M99%?8!dPl=@~labQ1I@Sq$J3=xU;a5CNA+$bpkNf(4t[p<UK','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625093328;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:24:\"Solicitud HTTPS fallida.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625525354;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (125,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1625525356;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625525357;s:7:\"checked\";a:1:{s:10:\"lapizzeria\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_d57bf7af33bc5b7923c68ca46271944f','1625692570','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_d57bf7af33bc5b7923c68ca46271944f','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1625692571','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (152,'WPLANG','es_CO','yes');
INSERT INTO `wp_options` VALUES (153,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (163,'current_theme','La Pizzeria','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_lapizzeria','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:14:\"redes-sociales\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (169,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (184,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":6,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (243,'_site_transient_timeout_theme_roots','1625527156','no');
INSERT INTO `wp_options` VALUES (244,'_site_transient_theme_roots','a:1:{s:10:\"lapizzeria\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (251,'category_children','a:0:{}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,1,'_edit_lock','1625092622:1');
INSERT INTO `wp_postmeta` VALUES (4,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (5,2,'_wp_trash_meta_time','1625092719');
INSERT INTO `wp_postmeta` VALUES (6,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (7,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (8,3,'_wp_trash_meta_time','1625092724');
INSERT INTO `wp_postmeta` VALUES (9,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (10,7,'_edit_lock','1625092648:1');
INSERT INTO `wp_postmeta` VALUES (11,9,'_edit_lock','1625187810:1');
INSERT INTO `wp_postmeta` VALUES (12,11,'_edit_lock','1625282557:1');
INSERT INTO `wp_postmeta` VALUES (13,13,'_edit_lock','1625092725:1');
INSERT INTO `wp_postmeta` VALUES (14,15,'_edit_lock','1625092757:1');
INSERT INTO `wp_postmeta` VALUES (15,17,'_edit_lock','1625092801:1');
INSERT INTO `wp_postmeta` VALUES (25,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (26,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (27,20,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (28,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (29,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (30,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (31,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (32,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (34,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (35,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (36,21,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (37,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (38,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (39,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (40,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (41,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (43,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (44,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (45,22,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (46,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (47,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (48,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (49,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (50,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (52,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (53,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (54,23,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (55,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (56,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (57,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (58,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (59,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (61,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (62,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (63,24,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (64,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (65,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (66,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (67,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (68,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (70,25,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (71,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (72,25,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (73,25,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (74,25,'_menu_item_target','_blank');
INSERT INTO `wp_postmeta` VALUES (75,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (76,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (77,25,'_menu_item_url','http://facebook.com');
INSERT INTO `wp_postmeta` VALUES (79,26,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (80,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (81,26,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (82,26,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (83,26,'_menu_item_target','_blank');
INSERT INTO `wp_postmeta` VALUES (84,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (85,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (86,26,'_menu_item_url','http://twitter.com');
INSERT INTO `wp_postmeta` VALUES (88,27,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (89,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (90,27,'_menu_item_object_id','27');
INSERT INTO `wp_postmeta` VALUES (91,27,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (92,27,'_menu_item_target','_blank');
INSERT INTO `wp_postmeta` VALUES (93,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (94,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (95,27,'_menu_item_url','http://youtube.com');
INSERT INTO `wp_postmeta` VALUES (97,28,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (98,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (99,28,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (100,28,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (101,28,'_menu_item_target','_blank');
INSERT INTO `wp_postmeta` VALUES (102,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (103,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (104,28,'_menu_item_url','http://instagram.com');
INSERT INTO `wp_postmeta` VALUES (106,29,'_wp_attached_file','2021/07/destacada.jpg');
INSERT INTO `wp_postmeta` VALUES (107,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1286;s:4:\"file\";s:21:\"2021/07/destacada.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"destacada-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"destacada-1024x686.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:686;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"destacada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"destacada-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"destacada-1536x1029.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1029;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (108,9,'_thumbnail_id','29');
INSERT INTO `wp_postmeta` VALUES (109,24,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (110,23,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (111,20,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (112,21,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (113,22,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (114,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (115,11,'_thumbnail_id','29');
INSERT INTO `wp_postmeta` VALUES (116,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (117,1,'_wp_trash_meta_time','1625283774');
INSERT INTO `wp_postmeta` VALUES (118,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (119,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (120,34,'_edit_lock','1625368265:1');
INSERT INTO `wp_postmeta` VALUES (121,35,'_wp_attached_file','2021/07/blog_02.jpg');
INSERT INTO `wp_postmeta` VALUES (122,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:19:\"2021/07/blog_02.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog_02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog_02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:19:\"blog_02-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:19:\"blog_02-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:19:\"blog_02-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (123,36,'_wp_attached_file','2021/07/blog_03.jpg');
INSERT INTO `wp_postmeta` VALUES (124,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:589;s:4:\"file\";s:19:\"2021/07/blog_03.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog_03-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog_03-768x452.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:19:\"blog_03-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:19:\"blog_03-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:19:\"blog_03-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (125,37,'_wp_attached_file','2021/07/blog_01.jpg');
INSERT INTO `wp_postmeta` VALUES (126,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2021/07/blog_01.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog_01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"blog_01-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog_01-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"blog_01-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:19:\"blog_01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:19:\"blog_01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:19:\"blog_01-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (129,34,'_thumbnail_id','36');
INSERT INTO `wp_postmeta` VALUES (130,39,'_edit_lock','1625368245:1');
INSERT INTO `wp_postmeta` VALUES (133,41,'_edit_lock','1625368222:1');
INSERT INTO `wp_postmeta` VALUES (136,41,'_thumbnail_id','35');
INSERT INTO `wp_postmeta` VALUES (139,39,'_thumbnail_id','37');
INSERT INTO `wp_postmeta` VALUES (146,25,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (147,25,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (148,26,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (149,26,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (150,27,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (151,27,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (152,28,'_wp_old_date','2021-07-01');
INSERT INTO `wp_postmeta` VALUES (153,28,'_wp_old_date','2021-07-01');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-06-30 21:15:36','2021-06-30 21:15:36','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2021-07-03 03:42:54','2021-07-03 03:42:54','',0,'http://la-pizzeria.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-06-30 21:15:36','2021-06-30 21:15:36','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://la-pizzeria.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-06-30 22:38:39','2021-06-30 22:38:39','',0,'http://la-pizzeria.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-06-30 21:15:36','2021-06-30 21:15:36','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://la-pizzeria.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-06-30 22:38:44','2021-06-30 22:38:44','',0,'http://la-pizzeria.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-06-30 21:16:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-06-30 21:16:13','0000-00-00 00:00:00','',0,'http://la-pizzeria.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-06-30 22:38:39','2021-06-30 22:38:39','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://la-pizzeria.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-06-30 22:38:39','2021-06-30 22:38:39','',2,'http://la-pizzeria.local/?p=5',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-06-30 22:38:44','2021-06-30 22:38:44','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://la-pizzeria.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-06-30 22:38:44','2021-06-30 22:38:44','',3,'http://la-pizzeria.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-06-30 22:39:17','2021-06-30 22:39:17','','Inicio','','publish','closed','closed','','inicio','','','2021-06-30 22:39:17','2021-06-30 22:39:17','',0,'http://la-pizzeria.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-06-30 22:39:17','2021-06-30 22:39:17','','Inicio','','inherit','closed','closed','','7-revision-v1','','','2021-06-30 22:39:17','2021-06-30 22:39:17','',7,'http://la-pizzeria.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-06-30 22:40:31','2021-06-30 22:40:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis arcu neque, et euismod massa sodales ac. Sed ut justo tempus, aliquam felis non, porta velit. In hac habitasse platea dictumst. Sed elementum tempus enim. Donec eget congue quam, vel pellentesque nibh. Fusce facilisis pulvinar lorem rutrum blandit. Vivamus facilisis elementum diam, a blandit dolor dictum blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi ultricies urna eu iaculis consequat. Etiam id lacus eu est rutrum hendrerit ut eget lacus. Quisque maximus libero at viverra aliquam. Quisque pretium enim in ex luctus, vel facilisis tortor egestas. Sed sed egestas enim, non iaculis enim. Sed et ante at neque ultricies tempus. Maecenas lacinia fermentum ex a dapibus. Phasellus cursus nisl et lorem posuere, quis viverra neque laoreet.</p>\n<!-- /wp:paragraph -->','Sobre Nosotros','','publish','closed','closed','','nosotros','','','2021-07-02 01:03:40','2021-07-02 01:03:40','',0,'http://la-pizzeria.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-06-30 22:40:31','2021-06-30 22:40:31','<!-- wp:paragraph -->\n<p>Sobre nosotros</p>\n<!-- /wp:paragraph -->','Nosotros','','inherit','closed','closed','','9-revision-v1','','','2021-06-30 22:40:31','2021-06-30 22:40:31','',9,'http://la-pizzeria.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-06-30 22:40:52','2021-06-30 22:40:52','','Blog','','publish','closed','closed','','blog','','','2021-07-03 03:13:29','2021-07-03 03:13:29','',0,'http://la-pizzeria.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-06-30 22:40:52','2021-06-30 22:40:52','','Blog','','inherit','closed','closed','','11-revision-v1','','','2021-06-30 22:40:52','2021-06-30 22:40:52','',11,'http://la-pizzeria.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-06-30 22:41:07','2021-06-30 22:41:07','','Menú','','publish','closed','closed','','menu','','','2021-06-30 22:41:07','2021-06-30 22:41:07','',0,'http://la-pizzeria.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-06-30 22:41:07','2021-06-30 22:41:07','','Menú','','inherit','closed','closed','','13-revision-v1','','','2021-06-30 22:41:07','2021-06-30 22:41:07','',13,'http://la-pizzeria.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-06-30 22:41:38','2021-06-30 22:41:38','','Galería','','publish','closed','closed','','galeria','','','2021-06-30 22:41:38','2021-06-30 22:41:38','',0,'http://la-pizzeria.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-06-30 22:41:38','2021-06-30 22:41:38','','Galería','','inherit','closed','closed','','15-revision-v1','','','2021-06-30 22:41:38','2021-06-30 22:41:38','',15,'http://la-pizzeria.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-06-30 22:41:59','2021-06-30 22:41:59','','Contacto','','publish','closed','closed','','contacto','','','2021-06-30 22:41:59','2021-06-30 22:41:59','',0,'http://la-pizzeria.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-06-30 22:41:59','2021-06-30 22:41:59','','Contacto','','inherit','closed','closed','','17-revision-v1','','','2021-06-30 22:41:59','2021-06-30 22:41:59','',17,'http://la-pizzeria.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-07-02 01:05:01','2021-07-01 02:41:47',' ','','','publish','closed','closed','','20','','','2021-07-02 01:05:01','2021-07-02 01:05:01','',0,'http://la-pizzeria.local/?p=20',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-07-02 01:05:01','2021-07-01 02:41:47',' ','','','publish','closed','closed','','21','','','2021-07-02 01:05:01','2021-07-02 01:05:01','',0,'http://la-pizzeria.local/?p=21',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-07-02 01:05:01','2021-07-01 02:41:47',' ','','','publish','closed','closed','','22','','','2021-07-02 01:05:01','2021-07-02 01:05:01','',0,'http://la-pizzeria.local/?p=22',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-07-02 01:05:01','2021-07-01 02:41:47',' ','','','publish','closed','closed','','23','','','2021-07-02 01:05:01','2021-07-02 01:05:01','',0,'http://la-pizzeria.local/?p=23',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-07-02 01:05:01','2021-07-01 02:41:48','','Nosotros','','publish','closed','closed','','24','','','2021-07-02 01:05:01','2021-07-02 01:05:01','',0,'http://la-pizzeria.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-07-06 00:38:48','2021-07-01 17:43:44','','Facebook','','publish','closed','closed','','facebook','','','2021-07-06 00:38:48','2021-07-06 00:38:48','',0,'http://la-pizzeria.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-07-06 00:38:48','2021-07-01 17:43:44','','Twitter','','publish','closed','closed','','twitter','','','2021-07-06 00:38:48','2021-07-06 00:38:48','',0,'http://la-pizzeria.local/?p=26',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-07-06 00:38:49','2021-07-01 17:43:45','','YouTube','','publish','closed','closed','','youtube','','','2021-07-06 00:38:49','2021-07-06 00:38:49','',0,'http://la-pizzeria.local/?p=27',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-07-06 00:38:49','2021-07-01 17:43:45','','Instagram','','publish','closed','closed','','instagram','','','2021-07-06 00:38:49','2021-07-06 00:38:49','',0,'http://la-pizzeria.local/?p=28',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-07-02 00:25:46','2021-07-02 00:25:46','','destacada','','inherit','open','closed','','destacada','','','2021-07-02 00:25:46','2021-07-02 00:25:46','',9,'http://la-pizzeria.local/wp-content/uploads/2021/07/destacada.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-07-02 00:26:21','2021-07-02 00:26:21','','Nosotros','','inherit','closed','closed','','9-autosave-v1','','','2021-07-02 00:26:21','2021-07-02 00:26:21','',9,'http://la-pizzeria.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-07-02 01:01:56','2021-07-02 01:01:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis arcu neque, et euismod massa sodales ac. Sed ut justo tempus, aliquam felis non, porta velit. In hac habitasse platea dictumst. Sed elementum tempus enim. Donec eget congue quam, vel pellentesque nibh. Fusce facilisis pulvinar lorem rutrum blandit. Vivamus facilisis elementum diam, a blandit dolor dictum blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi ultricies urna eu iaculis consequat. Etiam id lacus eu est rutrum hendrerit ut eget lacus. Quisque maximus libero at viverra aliquam. Quisque pretium enim in ex luctus, vel facilisis tortor egestas. Sed sed egestas enim, non iaculis enim. Sed et ante at neque ultricies tempus. Maecenas lacinia fermentum ex a dapibus. Phasellus cursus nisl et lorem posuere, quis viverra neque laoreet.</p>\n<!-- /wp:paragraph -->','Nosotros','','inherit','closed','closed','','9-revision-v1','','','2021-07-02 01:01:56','2021-07-02 01:01:56','',9,'http://la-pizzeria.local/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-07-02 01:03:40','2021-07-02 01:03:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis arcu neque, et euismod massa sodales ac. Sed ut justo tempus, aliquam felis non, porta velit. In hac habitasse platea dictumst. Sed elementum tempus enim. Donec eget congue quam, vel pellentesque nibh. Fusce facilisis pulvinar lorem rutrum blandit. Vivamus facilisis elementum diam, a blandit dolor dictum blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi ultricies urna eu iaculis consequat. Etiam id lacus eu est rutrum hendrerit ut eget lacus. Quisque maximus libero at viverra aliquam. Quisque pretium enim in ex luctus, vel facilisis tortor egestas. Sed sed egestas enim, non iaculis enim. Sed et ante at neque ultricies tempus. Maecenas lacinia fermentum ex a dapibus. Phasellus cursus nisl et lorem posuere, quis viverra neque laoreet.</p>\n<!-- /wp:paragraph -->','Sobre Nosotros','','inherit','closed','closed','','9-revision-v1','','','2021-07-02 01:03:40','2021-07-02 01:03:40','',9,'http://la-pizzeria.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-07-03 03:42:54','2021-07-03 03:42:54','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-07-03 03:42:54','2021-07-03 03:42:54','',1,'http://la-pizzeria.local/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-07-03 03:47:41','2021-07-03 03:47:41','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Promociones del mes','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula.','publish','open','open','','promociones-del-mes','','','2021-07-04 03:13:25','2021-07-04 03:13:25','',0,'http://la-pizzeria.local/?p=34',0,'post','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-07-03 03:46:43','2021-07-03 03:46:43','','blog_02','','inherit','open','closed','','blog_02','','','2021-07-03 03:46:43','2021-07-03 03:46:43','',34,'http://la-pizzeria.local/wp-content/uploads/2021/07/blog_02.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-07-03 03:46:44','2021-07-03 03:46:44','','blog_03','','inherit','open','closed','','blog_03','','','2021-07-03 03:46:44','2021-07-03 03:46:44','',34,'http://la-pizzeria.local/wp-content/uploads/2021/07/blog_03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-07-03 03:46:46','2021-07-03 03:46:46','','blog_01','','inherit','open','closed','','blog_01','','','2021-07-03 03:46:46','2021-07-03 03:46:46','',34,'http://la-pizzeria.local/wp-content/uploads/2021/07/blog_01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-07-03 03:47:41','2021-07-03 03:47:41','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Promociones del mes','','inherit','closed','closed','','34-revision-v1','','','2021-07-03 03:47:41','2021-07-03 03:47:41','',34,'http://la-pizzeria.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-07-03 03:49:33','2021-07-03 03:49:33','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Nuevo curso','Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu.','publish','open','open','','nuevo-curso','','','2021-07-04 03:13:04','2021-07-04 03:13:04','',0,'http://la-pizzeria.local/?p=39',0,'post','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-07-03 03:49:33','2021-07-03 03:49:33','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Nuevo curso','','inherit','closed','closed','','39-revision-v1','','','2021-07-03 03:49:33','2021-07-03 03:49:33','',39,'http://la-pizzeria.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-07-03 04:06:03','2021-07-03 04:06:03','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Especialidad del mes','Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam','publish','open','open','','especialidad-del-mes','','','2021-07-04 03:12:41','2021-07-04 03:12:41','',0,'http://la-pizzeria.local/?p=41',0,'post','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-07-03 04:06:03','2021-07-03 04:06:03','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Especialidad del mes','','inherit','closed','closed','','41-revision-v1','','','2021-07-03 04:06:03','2021-07-03 04:06:03','',41,'http://la-pizzeria.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-07-04 03:12:41','2021-07-04 03:12:41','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Especialidad del mes','Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam','inherit','closed','closed','','41-revision-v1','','','2021-07-04 03:12:41','2021-07-04 03:12:41','',41,'http://la-pizzeria.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-07-04 03:13:04','2021-07-04 03:13:04','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Nuevo curso','Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu.','inherit','closed','closed','','39-revision-v1','','','2021-07-04 03:13:04','2021-07-04 03:13:04','',39,'http://la-pizzeria.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-07-04 03:13:25','2021-07-04 03:13:25','<!-- wp:paragraph -->\n<p>Nullam non tincidunt quam. Duis rutrum aliquet tortor vitae semper. Duis in semper massa. Nam a sollicitudin diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in est tortor. Curabitur consequat sodales arcu, a egestas nisl imperdiet et. Suspendisse potenti. Nulla facilisi. Integer quis vehicula dolor, at posuere ex. Aliquam sit amet justo et ligula lacinia interdum. Aenean vitae urna tristique, iaculis velit eu, dictum magna. Aliquam pretium tellus nec rutrum egestas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec dignissim turpis non dolor interdum, eget tincidunt neque mollis. Cras lorem orci, tempor eu ante in, condimentum pellentesque quam. Proin aliquam nisl in velit ultricies vestibulum. Maecenas id ullamcorper diam. Duis maximus, sapien sed ornare semper, tellus ipsum rhoncus odio, eu ultrices est quam ac quam. Integer massa est, pulvinar non ultricies ut, malesuada quis nulla. Etiam luctus ac neque id dignissim. Cras arcu felis, consectetur non sem ac, fermentum aliquet purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra metus purus, quis rutrum urna tempor eget. Vivamus elementum semper posuere. Donec convallis posuere velit, in egestas turpis viverra non. Morbi et nisl ac tortor dictum dapibus. Proin blandit pulvinar eros, vitae elementum felis vestibulum vel. Nullam non leo eros. Vivamus scelerisque dapibus dui, ut bibendum leo tristique eu. Curabitur non leo sit amet justo pretium fringilla eu eget arcu. Aliquam ultricies lacinia risus, ut finibus nisl consectetur in. Morbi sollicitudin nulla augue, id auctor neque sollicitudin vel. Vestibulum non maximus arcu, ac ultricies enim. Donec condimentum turpis et ex dignissim aliquet. Fusce ac semper magna, non commodo turpis. Sed pretium urna nec varius tempus. Curabitur ornare odio massa, sed tincidunt tellus commodo ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula. Mauris sem lorem, sollicitudin at lorem id, varius hendrerit urna. Morbi velit neque, placerat eu aliquam molestie, facilisis eu nibh. Etiam ac odio mauris. Integer bibendum viverra varius. Donec finibus, ante vitae imperdiet sollicitudin, orci dui auctor magna, vitae pharetra felis turpis vitae urna. Maecenas feugiat nisl at urna ullamcorper, ut iaculis ipsum euismod. Etiam sagittis porttitor risus, vel congue augue viverra quis. Curabitur vehicula at leo ac sodales. Nulla vitae accumsan elit. Maecenas pellentesque elit quam, non pretium diam interdum eget. Suspendisse mattis lacus est, ut interdum arcu efficitur quis. Pellentesque eget eros quis nibh bibendum sodales.</p>\n<!-- /wp:paragraph -->','Promociones del mes','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec diam sapien, malesuada a dolor vel, rutrum consectetur ligula.','inherit','closed','closed','','34-revision-v1','','','2021-07-04 03:13:25','2021-07-04 03:13:25','',34,'http://la-pizzeria.local/?p=45',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,3,0);
INSERT INTO `wp_term_relationships` VALUES (26,3,0);
INSERT INTO `wp_term_relationships` VALUES (27,3,0);
INSERT INTO `wp_term_relationships` VALUES (28,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,1,0);
INSERT INTO `wp_term_relationships` VALUES (39,1,0);
INSERT INTO `wp_term_relationships` VALUES (41,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Promociones','promociones',0);
INSERT INTO `wp_terms` VALUES (2,'Menu Principal','menu-principal',0);
INSERT INTO `wp_terms` VALUES (3,'Redes Sociales','redes-sociales',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Edwin Willer');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Narváez Burbano');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Ingeniero desarrollador apasionado que prefiere desarrollar que salir de rumba');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"8b41723361df3ec43deaa06add74a829a8edc0af548509aab11a503aae3ede7a\";a:4:{s:10:\"expiration\";i:1625698159;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\";s:5:\"login\";i:1625525359;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:4:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1625187842');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','3');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BaDoNOUmojs5rjC4fOjTquZ.qRYP521','admin','dev-email@flywheel.local','http://la-pizzeria.local','2021-06-30 21:15:35','',0,'Edwin Willer Narváez Burbano');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-05 20:41:47
