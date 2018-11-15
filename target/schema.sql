CREATE DATABASE  IF NOT EXISTS `myblog`;
USE `myblog`;
--
-- Table structure for table `admin`
--
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminname` varchar(45) DEFAULT NULL,
  `adminpasswd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `blog`
--
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `blogid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_at` varchar(45) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blogid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Table structure for table `category`
--
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(45) DEFAULT NULL,
  `c_descrip` varchar(45) DEFAULT NULL,
  `c_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `image`
--
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `imageid` int(11) NOT NULL,
  `imagename` varchar(45) DEFAULT NULL,
  `imagepath` varchar(45) DEFAULT NULL,
  `banner` int(11) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `datetime` varchar(45) DEFAULT NULL,
  `love` int(11) DEFAULT NULL,
  `iht` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `ip_log`
--
DROP TABLE IF EXISTS `ip_log`;
CREATE TABLE `ip_log` (
  `id` int(11) NOT NULL,
  `sid` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `ip_time` timestamp(6) NULL DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `uri` varchar(45) DEFAULT NULL,
  `response_time` int(11) DEFAULT NULL,
  `visit_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `links`
--
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `lid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogid` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Table structure for table `subscribe`
--
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `tag`
--
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Table structure for table `weibo`
--
DROP TABLE IF EXISTS `weibo`;
CREATE TABLE `weibo` (
  `id` int(11) NOT NULL,
  `uid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
