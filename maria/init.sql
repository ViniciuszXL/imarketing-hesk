/* Creating the initial table */
CREATE DATABASE IF NOT EXISTS `helpdesk` DEFAULT CHARACTER SET `utf8` COLLATE `utf8_general_ci`;

/* USE DATABASE */
USE `helpdesk`;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Mar-2021 às 14:48
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `helpdesk`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskattachments`
--

CREATE TABLE `helpdeskattachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `ticket_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskbanned_emails`
--

CREATE TABLE `helpdeskbanned_emails` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `banned_by` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskbanned_ips`
--

CREATE TABLE `helpdeskbanned_ips` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `ip_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip_display` varchar(100) NOT NULL,
  `banned_by` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskcategories`
--

CREATE TABLE `helpdeskcategories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cat_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `autoassign` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `helpdeskcategories`
--

INSERT INTO `helpdeskcategories` (`id`, `name`, `cat_order`, `autoassign`, `type`, `priority`) VALUES
(1, 'General', 10, '1', '0', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskcustom_fields`
--

CREATE TABLE `helpdeskcustom_fields` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `use` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `place` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `req` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 10
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `helpdeskcustom_fields`
--

INSERT INTO `helpdeskcustom_fields` (`id`, `use`, `place`, `type`, `req`, `category`, `name`, `value`, `order`) VALUES
(1, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(2, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(3, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(4, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(5, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(6, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(7, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(8, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(9, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(10, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(11, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(12, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(13, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(14, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(15, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(16, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(17, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(18, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(19, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(20, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(21, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(22, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(23, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(24, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(25, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(26, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(27, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(28, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(29, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(30, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(31, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(32, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(33, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(34, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(35, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(36, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(37, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(38, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(39, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(40, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(41, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(42, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(43, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(44, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(45, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(46, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(47, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(48, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(49, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(50, '0', '0', 'text', '0', NULL, '', NULL, 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskcustom_statuses`
--

CREATE TABLE `helpdeskcustom_statuses` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `can_customers_change` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 10
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskkb_articles`
--

CREATE TABLE `helpdeskkb_articles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` smallint(5) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` float NOT NULL DEFAULT 0,
  `votes` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `views` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `type` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `html` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sticky` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `art_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `history` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskkb_attachments`
--

CREATE TABLE `helpdeskkb_attachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskkb_categories`
--

CREATE TABLE `helpdeskkb_categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` smallint(5) UNSIGNED NOT NULL,
  `articles` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `articles_private` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `articles_draft` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cat_order` smallint(5) UNSIGNED NOT NULL,
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `helpdeskkb_categories`
--

INSERT INTO `helpdeskkb_categories` (`id`, `name`, `parent`, `articles`, `articles_private`, `articles_draft`, `cat_order`, `type`) VALUES
(1, 'Knowledgebase', 0, 0, 0, 0, 10, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdesklogins`
--

CREATE TABLE `helpdesklogins` (
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `last_attempt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdesklog_overdue`
--

CREATE TABLE `helpdesklog_overdue` (
  `id` int(10) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `category` smallint(5) UNSIGNED NOT NULL,
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `owner` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `due_date` timestamp NOT NULL DEFAULT '2000-01-01 04:00:00',
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskmail`
--

CREATE TABLE `helpdeskmail` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` smallint(5) UNSIGNED NOT NULL,
  `to` smallint(5) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deletedby` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `helpdeskmail`
--

INSERT INTO `helpdeskmail` (`id`, `from`, `to`, `subject`, `message`, `dt`, `read`, `deletedby`) VALUES
(1, 9999, 1, 'HESK quick start guide', '</p><div style=\"text-align:justify; padding-left: 10px; padding-right: 10px;\">\r\n\r\n<p>&nbsp;<br /><b>Welcome to HESK! You\'ll find it is a great tool for improving your customer support.</b></p>\r\n\r\n<p><b>Here is a short guide to get you started.</b><br />&nbsp;</p>\r\n\r\n<hr />\r\nSTEP #1: set up your profile\r\n<hr />\r\n<ol>\r\n<li>go to <a href=\"profile.php\">Profile</a>,</li>\r\n<li>set your name and email address.</li>\r\n</ol>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #2: configure HESK\r\n<hr />\r\n<ol>\r\n<li>go to <a href=\"admin_settings_general.php\">Settings</a>,</li>\r\n<li>for a quick start, just modify these on the \"General\" tab:<br /><br />\r\nWebsite title<br />\r\nWebsite URL<br />\r\nWebmaster email<br />&nbsp;\r\n</li>\r\n<li>you can come back to the settings page later and explore all the options. To view details about a setting, click the [?]</li>\r\n</ol>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #3: add ticket categories\r\n<hr />\r\n<p>Go to <a href=\"manage_categories.php\">Categories</a> to add ticket categories.</p>\r\n<p>You cannot delete the default category, but you can rename it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\nSTEP #4: add staff accounts\r\n<hr />\r\n<p>Go to <a href=\"manage_users.php\">Team</a> to create new staff accounts.</p>\r\n<p>You can use two user types in HESK:</p>\r\n<ul>\r\n<li><b>Administrators</b>, who have full access to all HESK features</li>\r\n<li><b>Staff</b>, who have access to limited privileges and categories</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #5: useful tools\r\n<hr />\r\n<p>You can do a lot on the <a href=\"banned_emails.php\">Tools</a> page, for example:</p>\r\n<ul>\r\n<li>create custom ticket statuses,</li>\r\n<li>add custom input fields to the \"Submit a ticket\" form,</li>\r\n<li>modify email templates,</li>\r\n<li>and more.</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #6: create a knowledgebase\r\n<hr />\r\n<p>A clear and comprehensive knowledgebase can drastically reduce the number of support tickets you receive, thereby saving you significant time and effort in the long run.</p>\r\n<p>Go to <a href=\"manage_knowledgebase.php\">Knowledgebase</a> to create categories and write articles for your knowledgebase.</p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #7: don\'t repeat yourself\r\n<hr />\r\n<p>Sometimes several support tickets are addressing the same issues - allowing you to use pre-written (&quot;canned&quot;) responses.</p>\r\n<p>To compose canned responses go to <a href=\"manage_canned.php\">Canned</a> page.</p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #8: secure your help desk\r\n<hr />\r\n<p>Make sure your help desk is as secure as possible by going through <a href=\"https://www.hesk.com/knowledgebase/?article=82\">HESK security check list</a></p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #9: stay updated\r\n<hr />\r\n<p>HESK regularly receives improvements and bug fixes; make sure you know about them!</p>\r\n<ul>\r\n<li>for fast notifications, <a href=\"https://twitter.com/HESKdotCOM\">follow us on <b>Twitter</b></a></li>\r\n<li>for email notifications, subscribe to our low-volume zero-spam <a href=\"https://www.hesk.com/newsletter.php\">newsletter</a></li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #10: look professional\r\n<hr />\r\n<p>To look more professional and not advertise the tools you use, <a href=\"https://www.hesk.com/buy.php\">remove &quot;Powered by&quot; links</a> from your help desk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Again, welcome to HESK and enjoy using it!</p>\r\n\r\n<p>Klemen<br />\r\n<a href=\"https://www.hesk.com\">https://www.hesk.com</a></p>\r\n\r\n</div><p>', '2021-03-04 17:26:40', '0', 9999);

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdesknotes`
--

CREATE TABLE `helpdesknotes` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `who` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskonline`
--

CREATE TABLE `helpdeskonline` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tmp` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskpipe_loops`
--

CREATE TABLE `helpdeskpipe_loops` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `message_hash` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskreplies`
--

CREATE TABLE `helpdeskreplies` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `replyto` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `attachments` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `staffid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `rating` enum('1','5') COLLATE utf8_unicode_ci DEFAULT NULL,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskreply_drafts`
--

CREATE TABLE `helpdeskreply_drafts` (
  `owner` smallint(5) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `message` mediumtext CHARACTER SET utf8 NOT NULL,
  `message_html` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskreset_password`
--

CREATE TABLE `helpdeskreset_password` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `user` smallint(5) UNSIGNED NOT NULL,
  `hash` char(40) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskservice_messages`
--

CREATE TABLE `helpdeskservice_messages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` enum('0','1','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskstd_replies`
--

CREATE TABLE `helpdeskstd_replies` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdesktickets`
--

CREATE TABLE `helpdesktickets` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `trackid` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt` timestamp NOT NULL DEFAULT '2000-01-01 04:00:00',
  `lastchange` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `firstreply` timestamp NULL DEFAULT NULL,
  `closedat` timestamp NULL DEFAULT NULL,
  `articles` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `openedby` mediumint(8) DEFAULT 0,
  `firstreplyby` smallint(5) UNSIGNED DEFAULT NULL,
  `closedby` mediumint(8) DEFAULT NULL,
  `replies` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `staffreplies` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `owner` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `assignedby` mediumint(8) DEFAULT NULL,
  `time_worked` time NOT NULL DEFAULT '00:00:00',
  `lastreplier` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `replierid` smallint(5) UNSIGNED DEFAULT NULL,
  `archive` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `locked` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `merged` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `history` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom1` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom2` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom3` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom4` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom5` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom6` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom7` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom8` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom9` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom10` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom11` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom12` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom13` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom14` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom15` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom16` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom17` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom18` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom19` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom20` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom21` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom22` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom23` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom24` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom25` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom26` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom27` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom28` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom29` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom30` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom31` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom32` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom33` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom34` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom35` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom36` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom37` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom38` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom39` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom40` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom41` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom42` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom43` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom44` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom45` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom46` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom47` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom48` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom49` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom50` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `overdue_email_sent` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskticket_templates`
--

CREATE TABLE `helpdeskticket_templates` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tpl_order` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskusers`
--

CREATE TABLE `helpdeskusers` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `isadmin` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signature` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `afterreply` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `autostart` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `autoreload` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `notify_customer_new` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_customer_reply` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `show_suggested` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_new_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_new_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_reply_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_reply_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_assigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_pm` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_note` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_overdue_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_overdue_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `default_list` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoassign` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `heskprivileges` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ratingneg` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ratingpos` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rating` float NOT NULL DEFAULT 0,
  `replies` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `helpdeskusers`
--

INSERT INTO `helpdeskusers` (`id`, `user`, `pass`, `isadmin`, `name`, `email`, `signature`, `language`, `categories`, `afterreply`, `autostart`, `autoreload`, `notify_customer_new`, `notify_customer_reply`, `show_suggested`, `notify_new_unassigned`, `notify_new_my`, `notify_reply_unassigned`, `notify_reply_my`, `notify_assigned`, `notify_pm`, `notify_note`, `notify_overdue_unassigned`, `notify_overdue_my`, `default_list`, `autoassign`, `heskprivileges`, `ratingneg`, `ratingpos`, `rating`, `replies`) VALUES
(1, 'Vinicius', '4fc30b16548d02c287aaa75936a2b953efec231c', '1', 'Your name', 'you@example.com', '', NULL, '', '0', '1', 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '', 0, 0, 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `helpdeskattachments`
--
ALTER TABLE `helpdeskattachments`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Índices para tabela `helpdeskbanned_emails`
--
ALTER TABLE `helpdeskbanned_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Índices para tabela `helpdeskbanned_ips`
--
ALTER TABLE `helpdeskbanned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `helpdeskcategories`
--
ALTER TABLE `helpdeskcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Índices para tabela `helpdeskcustom_fields`
--
ALTER TABLE `helpdeskcustom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `useType` (`use`,`type`);

--
-- Índices para tabela `helpdeskcustom_statuses`
--
ALTER TABLE `helpdeskcustom_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `helpdeskkb_articles`
--
ALTER TABLE `helpdeskkb_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `sticky` (`sticky`),
  ADD KEY `type` (`type`);
ALTER TABLE `helpdeskkb_articles` ADD FULLTEXT KEY `subject` (`subject`,`content`,`keywords`);

--
-- Índices para tabela `helpdeskkb_attachments`
--
ALTER TABLE `helpdeskkb_attachments`
  ADD PRIMARY KEY (`att_id`);

--
-- Índices para tabela `helpdeskkb_categories`
--
ALTER TABLE `helpdeskkb_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `parent` (`parent`);

--
-- Índices para tabela `helpdesklogins`
--
ALTER TABLE `helpdesklogins`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Índices para tabela `helpdesklog_overdue`
--
ALTER TABLE `helpdesklog_overdue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket` (`ticket`),
  ADD KEY `category` (`category`),
  ADD KEY `priority` (`priority`),
  ADD KEY `status` (`status`),
  ADD KEY `owner` (`owner`);

--
-- Índices para tabela `helpdeskmail`
--
ALTER TABLE `helpdeskmail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`,`read`,`deletedby`);

--
-- Índices para tabela `helpdesknotes`
--
ALTER TABLE `helpdesknotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketid` (`ticket`);

--
-- Índices para tabela `helpdeskonline`
--
ALTER TABLE `helpdeskonline`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `dt` (`dt`);

--
-- Índices para tabela `helpdeskpipe_loops`
--
ALTER TABLE `helpdeskpipe_loops`
  ADD KEY `email` (`email`,`hits`);

--
-- Índices para tabela `helpdeskreplies`
--
ALTER TABLE `helpdeskreplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replyto` (`replyto`),
  ADD KEY `dt` (`dt`),
  ADD KEY `staffid` (`staffid`);

--
-- Índices para tabela `helpdeskreply_drafts`
--
ALTER TABLE `helpdeskreply_drafts`
  ADD KEY `owner` (`owner`),
  ADD KEY `ticket` (`ticket`);

--
-- Índices para tabela `helpdeskreset_password`
--
ALTER TABLE `helpdeskreset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Índices para tabela `helpdeskservice_messages`
--
ALTER TABLE `helpdeskservice_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Índices para tabela `helpdeskstd_replies`
--
ALTER TABLE `helpdeskstd_replies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `helpdesktickets`
--
ALTER TABLE `helpdesktickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trackid` (`trackid`),
  ADD KEY `archive` (`archive`),
  ADD KEY `categories` (`category`),
  ADD KEY `statuses` (`status`),
  ADD KEY `owner` (`owner`),
  ADD KEY `openedby` (`openedby`,`firstreplyby`,`closedby`),
  ADD KEY `dt` (`dt`);

--
-- Índices para tabela `helpdeskticket_templates`
--
ALTER TABLE `helpdeskticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `helpdeskusers`
--
ALTER TABLE `helpdeskusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autoassign` (`autoassign`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `helpdeskattachments`
--
ALTER TABLE `helpdeskattachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskbanned_emails`
--
ALTER TABLE `helpdeskbanned_emails`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskbanned_ips`
--
ALTER TABLE `helpdeskbanned_ips`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskcategories`
--
ALTER TABLE `helpdeskcategories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `helpdeskkb_articles`
--
ALTER TABLE `helpdeskkb_articles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskkb_attachments`
--
ALTER TABLE `helpdeskkb_attachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskkb_categories`
--
ALTER TABLE `helpdeskkb_categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `helpdesklog_overdue`
--
ALTER TABLE `helpdesklog_overdue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskmail`
--
ALTER TABLE `helpdeskmail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `helpdesknotes`
--
ALTER TABLE `helpdesknotes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskreplies`
--
ALTER TABLE `helpdeskreplies`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskreset_password`
--
ALTER TABLE `helpdeskreset_password`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskservice_messages`
--
ALTER TABLE `helpdeskservice_messages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskstd_replies`
--
ALTER TABLE `helpdeskstd_replies`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdesktickets`
--
ALTER TABLE `helpdesktickets`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskticket_templates`
--
ALTER TABLE `helpdeskticket_templates`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `helpdeskusers`
--
ALTER TABLE `helpdeskusers`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;