/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50133
Source Host           : localhost:3306
Source Database       : bestmenu

Target Server Type    : MYSQL
Target Server Version : 50133
File Encoding         : 65001

Date: 2014-01-22 20:08:16
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_message`
-- ----------------------------
DROP TABLE IF EXISTS `auth_message`;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_message
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO `auth_permission` VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add user', '3', 'add_user');
INSERT INTO `auth_permission` VALUES ('8', 'Can change user', '3', 'change_user');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete user', '3', 'delete_user');
INSERT INTO `auth_permission` VALUES ('10', 'Can add message', '4', 'add_message');
INSERT INTO `auth_permission` VALUES ('11', 'Can change message', '4', 'change_message');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete message', '4', 'delete_message');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add site', '7', 'add_site');
INSERT INTO `auth_permission` VALUES ('20', 'Can change site', '7', 'change_site');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete site', '7', 'delete_site');
INSERT INTO `auth_permission` VALUES ('22', 'Can add log entry', '8', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('23', 'Can change log entry', '8', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete log entry', '8', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('25', 'Can add vote', '9', 'add_vote');
INSERT INTO `auth_permission` VALUES ('26', 'Can change vote', '9', 'change_vote');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete vote', '9', 'delete_vote');
INSERT INTO `auth_permission` VALUES ('28', 'Can add score', '10', 'add_score');
INSERT INTO `auth_permission` VALUES ('29', 'Can change score', '10', 'change_score');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete score', '10', 'delete_score');
INSERT INTO `auth_permission` VALUES ('31', 'Can add similar user', '11', 'add_similaruser');
INSERT INTO `auth_permission` VALUES ('32', 'Can change similar user', '11', 'change_similaruser');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete similar user', '11', 'delete_similaruser');
INSERT INTO `auth_permission` VALUES ('34', 'Can add ignored object', '12', 'add_ignoredobject');
INSERT INTO `auth_permission` VALUES ('35', 'Can change ignored object', '12', 'change_ignoredobject');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete ignored object', '12', 'delete_ignoredobject');
INSERT INTO `auth_permission` VALUES ('37', 'Can add comida', '13', 'add_comida');
INSERT INTO `auth_permission` VALUES ('38', 'Can change comida', '13', 'change_comida');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete comida', '13', 'delete_comida');
INSERT INTO `auth_permission` VALUES ('40', 'Can add bebida', '14', 'add_bebida');
INSERT INTO `auth_permission` VALUES ('41', 'Can change bebida', '14', 'change_bebida');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete bebida', '14', 'delete_bebida');
INSERT INTO `auth_permission` VALUES ('43', 'Can add sopa', '15', 'add_sopa');
INSERT INTO `auth_permission` VALUES ('44', 'Can change sopa', '15', 'change_sopa');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete sopa', '15', 'delete_sopa');
INSERT INTO `auth_permission` VALUES ('46', 'Can add complemento', '16', 'add_complemento');
INSERT INTO `auth_permission` VALUES ('47', 'Can change complemento', '16', 'change_complemento');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete complemento', '16', 'delete_complemento');
INSERT INTO `auth_permission` VALUES ('49', 'Can add menu', '17', 'add_menu');
INSERT INTO `auth_permission` VALUES ('50', 'Can change menu', '17', 'change_menu');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete menu', '17', 'delete_menu');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'ww', '', '', 'oscarortega@outlook.com', 'sha1$6dfeb$b63c1cbdbc5d080cc9d1f0293ccdf986e3e9c4c6', '1', '1', '1', '2014-01-22 19:37:03', '2014-01-10 18:11:52');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2014-01-10 18:13:11', '1', '14', '1', 'Agua de Naranja', '1', '');
INSERT INTO `django_admin_log` VALUES ('2', '2014-01-10 18:13:12', '1', '14', '1', 'Agua de Naranja', '2', 'No ha cambiado ningún campo.');
INSERT INTO `django_admin_log` VALUES ('3', '2014-01-10 18:13:20', '1', '14', '2', 'Agua de jamaica', '1', '');
INSERT INTO `django_admin_log` VALUES ('4', '2014-01-10 18:13:43', '1', '13', '1', 'Empanizado', '1', '');
INSERT INTO `django_admin_log` VALUES ('5', '2014-01-10 18:14:24', '1', '13', '2', 'Enchiladas Suizas', '1', '');
INSERT INTO `django_admin_log` VALUES ('6', '2014-01-10 18:14:39', '1', '13', '3', 'Paella', '1', '');
INSERT INTO `django_admin_log` VALUES ('7', '2014-01-10 18:16:23', '1', '16', '1', 'Verduras Hervidas', '1', '');
INSERT INTO `django_admin_log` VALUES ('8', '2014-01-10 18:16:32', '1', '16', '2', 'Espagueti', '1', '');
INSERT INTO `django_admin_log` VALUES ('9', '2014-01-10 18:16:56', '1', '15', '1', 'Sopa de zanahoria', '1', '');
INSERT INTO `django_admin_log` VALUES ('10', '2014-01-10 18:17:05', '1', '15', '2', 'Sopa de pasta', '1', '');
INSERT INTO `django_admin_log` VALUES ('11', '2014-01-10 18:17:24', '1', '17', '1', 'Empanizado 2014-01-10 18:17:17', '1', '');
INSERT INTO `django_admin_log` VALUES ('12', '2014-01-10 18:17:39', '1', '17', '2', 'Enchiladas Suizas 2014-01-10 18:17:33', '1', '');
INSERT INTO `django_admin_log` VALUES ('13', '2014-01-10 18:17:57', '1', '17', '3', 'Paella 2014-01-13 18:17:51', '1', '');
INSERT INTO `django_admin_log` VALUES ('14', '2014-01-11 18:59:55', '1', '17', '3', 'Paella 2014-01-11', '2', 'Modificado/a fecha.');
INSERT INTO `django_admin_log` VALUES ('15', '2014-01-15 21:06:31', '1', '17', '3', 'Paella 2014-01-11', '2', 'Modificado/a dia.');
INSERT INTO `django_admin_log` VALUES ('16', '2014-01-15 21:06:36', '1', '17', '2', 'Enchiladas Suizas 2014-01-10', '2', 'Modificado/a dia.');
INSERT INTO `django_admin_log` VALUES ('17', '2014-01-15 21:06:44', '1', '17', '1', 'Empanizado 2014-01-10', '2', 'Modificado/a dia.');
INSERT INTO `django_admin_log` VALUES ('18', '2014-01-16 21:18:51', '1', '17', '4', 'Empanizado 2', '1', '');
INSERT INTO `django_admin_log` VALUES ('19', '2014-01-16 21:19:01', '1', '17', '5', 'Enchiladas Suizas 3', '1', '');
INSERT INTO `django_admin_log` VALUES ('20', '2014-01-16 21:19:12', '1', '17', '6', 'Paella 4', '1', '');
INSERT INTO `django_admin_log` VALUES ('21', '2014-01-16 21:19:22', '1', '17', '7', 'Empanizado 5', '1', '');
INSERT INTO `django_admin_log` VALUES ('22', '2014-01-18 17:50:19', '1', '17', '8', 'Empanizado 6', '1', '');
INSERT INTO `django_admin_log` VALUES ('23', '2014-01-18 17:50:33', '1', '17', '9', 'Enchiladas Suizas 7', '1', '');
INSERT INTO `django_admin_log` VALUES ('24', '2014-01-21 20:24:51', '1', '17', '5', 'Enchiladas Suizas 2', '2', 'Modificado/a dia.');
INSERT INTO `django_admin_log` VALUES ('25', '2014-01-21 20:25:50', '1', '17', '5', 'Enchiladas Suizas 3', '2', 'Modificado/a dia.');
INSERT INTO `django_admin_log` VALUES ('26', '2014-01-21 20:27:16', '1', '17', '5', 'Enchiladas Suizas 3', '2', 'No ha cambiado ningún campo.');
INSERT INTO `django_admin_log` VALUES ('27', '2014-01-21 20:46:34', '1', '17', '5', 'Enchiladas Suizas 2', '2', 'Modificado/a dia.');
INSERT INTO `django_admin_log` VALUES ('28', '2014-01-21 20:58:55', '1', '17', '5', 'Enchiladas Suizas 2', '2', 'No ha cambiado ningún campo.');
INSERT INTO `django_admin_log` VALUES ('29', '2014-01-22 19:37:16', '1', '17', '5', 'Enchiladas Suizas 3', '2', 'Modificado/a dia.');
INSERT INTO `django_admin_log` VALUES ('30', '2014-01-22 19:48:52', '1', '17', '5', 'Enchiladas Suizas 3', '2', 'Modificado/a sopa.');
INSERT INTO `django_admin_log` VALUES ('31', '2014-01-22 20:05:01', '1', '17', '5', 'Enchiladas Suizas 3', '2', 'No ha cambiado ningún campo.');
INSERT INTO `django_admin_log` VALUES ('32', '2014-01-22 20:05:09', '1', '17', '4', 'Empanizado 3', '2', 'Modificado/a dia.');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('2', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('4', 'message', 'auth', 'message');
INSERT INTO `django_content_type` VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'site', 'sites', 'site');
INSERT INTO `django_content_type` VALUES ('8', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('9', 'vote', 'djangoratings', 'vote');
INSERT INTO `django_content_type` VALUES ('10', 'score', 'djangoratings', 'score');
INSERT INTO `django_content_type` VALUES ('11', 'similar user', 'djangoratings', 'similaruser');
INSERT INTO `django_content_type` VALUES ('12', 'ignored object', 'djangoratings', 'ignoredobject');
INSERT INTO `django_content_type` VALUES ('13', 'comida', 'menu', 'comida');
INSERT INTO `django_content_type` VALUES ('14', 'bebida', 'menu', 'bebida');
INSERT INTO `django_content_type` VALUES ('15', 'sopa', 'menu', 'sopa');
INSERT INTO `django_content_type` VALUES ('16', 'complemento', 'menu', 'complemento');
INSERT INTO `django_content_type` VALUES ('17', 'menu', 'menu', 'menu');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('8cbe649c2b88c0f9c93a8a1e78e1d26a', 'ZWZjNmI5MjNiZTY0N2M4MDFmZGY3NDBjMDVhZmRkMDMyMzE1YWMwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2014-01-24 18:12:53');
INSERT INTO `django_session` VALUES ('289554215cc1190cb5af975c5cd9af97', 'ZWZjNmI5MjNiZTY0N2M4MDFmZGY3NDBjMDVhZmRkMDMyMzE1YWMwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2014-02-04 20:21:21');
INSERT INTO `django_session` VALUES ('61c466166ba537a9884e584d170d1ef5', 'ZWZjNmI5MjNiZTY0N2M4MDFmZGY3NDBjMDVhZmRkMDMyMzE1YWMwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2014-02-05 19:37:03');

-- ----------------------------
-- Table structure for `django_site`
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES ('1', 'example.com', 'example.com');

-- ----------------------------
-- Table structure for `djangoratings_ignoredobject`
-- ----------------------------
DROP TABLE IF EXISTS `djangoratings_ignoredobject`;
CREATE TABLE `djangoratings_ignoredobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`object_id`),
  KEY `djangoratings_ignoredobject_403f60f` (`user_id`),
  KEY `djangoratings_ignoredobject_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of djangoratings_ignoredobject
-- ----------------------------

-- ----------------------------
-- Table structure for `djangoratings_score`
-- ----------------------------
DROP TABLE IF EXISTS `djangoratings_score`;
CREATE TABLE `djangoratings_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `score` int(11) NOT NULL,
  `votes` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`object_id`,`key`),
  KEY `djangoratings_score_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of djangoratings_score
-- ----------------------------

-- ----------------------------
-- Table structure for `djangoratings_similaruser`
-- ----------------------------
DROP TABLE IF EXISTS `djangoratings_similaruser`;
CREATE TABLE `djangoratings_similaruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `agrees` int(10) unsigned NOT NULL,
  `disagrees` int(10) unsigned NOT NULL,
  `exclude` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_user_id` (`from_user_id`,`to_user_id`),
  KEY `djangoratings_similaruser_74b00be1` (`from_user_id`),
  KEY `djangoratings_similaruser_315477a4` (`to_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of djangoratings_similaruser
-- ----------------------------

-- ----------------------------
-- Table structure for `djangoratings_vote`
-- ----------------------------
DROP TABLE IF EXISTS `djangoratings_vote`;
CREATE TABLE `djangoratings_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` char(15) NOT NULL,
  `cookie` varchar(32) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_changed` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`object_id`,`key`,`user_id`,`ip_address`,`cookie`),
  KEY `djangoratings_vote_1bb8f392` (`content_type_id`),
  KEY `djangoratings_vote_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of djangoratings_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `menu_bebida`
-- ----------------------------
DROP TABLE IF EXISTS `menu_bebida`;
CREATE TABLE `menu_bebida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_bebida
-- ----------------------------
INSERT INTO `menu_bebida` VALUES ('1', 'Agua de Naranja', '');
INSERT INTO `menu_bebida` VALUES ('2', 'Agua de jamaica', '');

-- ----------------------------
-- Table structure for `menu_comida`
-- ----------------------------
DROP TABLE IF EXISTS `menu_comida`;
CREATE TABLE `menu_comida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(450) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_comida
-- ----------------------------
INSERT INTO `menu_comida` VALUES ('1', 'Empanizado', 'Empanizao de res', 'image/comidas/fileteempanizado.jpg');
INSERT INTO `menu_comida` VALUES ('2', 'Enchiladas Suizas', 'Enchiladas verdes suizas', 'image/comidas/enchiladas.jpg');
INSERT INTO `menu_comida` VALUES ('3', 'Paella', 'Paella de pollo ', 'image/comidas/paella1.jpg');

-- ----------------------------
-- Table structure for `menu_complemento`
-- ----------------------------
DROP TABLE IF EXISTS `menu_complemento`;
CREATE TABLE `menu_complemento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_complemento
-- ----------------------------
INSERT INTO `menu_complemento` VALUES ('1', 'Verduras Hervidas', '');
INSERT INTO `menu_complemento` VALUES ('2', 'Espagueti', '');

-- ----------------------------
-- Table structure for `menu_menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu_menu`;
CREATE TABLE `menu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comidas_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `calificacion_votes` int(10) unsigned NOT NULL,
  `calificacion_score` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_menu_3aff351f` (`comidas_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_menu
-- ----------------------------
INSERT INTO `menu_menu` VALUES ('1', '1', '2014-01-10 00:00:00', '0', '0', '1');
INSERT INTO `menu_menu` VALUES ('2', '2', '2014-01-10 00:00:00', '0', '0', '1');
INSERT INTO `menu_menu` VALUES ('3', '3', '2014-01-11 00:00:00', '0', '0', '1');
INSERT INTO `menu_menu` VALUES ('4', '1', '2014-01-16 00:00:00', '0', '0', '3');
INSERT INTO `menu_menu` VALUES ('5', '2', '2014-01-16 00:00:00', '0', '0', '3');
INSERT INTO `menu_menu` VALUES ('6', '3', '2014-01-16 00:00:00', '0', '0', '4');
INSERT INTO `menu_menu` VALUES ('7', '1', '2014-01-16 00:00:00', '0', '0', '5');
INSERT INTO `menu_menu` VALUES ('8', '1', '2014-01-18 00:00:00', '0', '0', '6');
INSERT INTO `menu_menu` VALUES ('9', '2', '2014-01-18 00:00:00', '0', '0', '7');

-- ----------------------------
-- Table structure for `menu_menu_bebida`
-- ----------------------------
DROP TABLE IF EXISTS `menu_menu_bebida`;
CREATE TABLE `menu_menu_bebida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `bebida_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id` (`menu_id`,`bebida_id`),
  KEY `menu_menu_bebida_143efa3` (`menu_id`),
  KEY `menu_menu_bebida_72d6fe85` (`bebida_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_menu_bebida
-- ----------------------------
INSERT INTO `menu_menu_bebida` VALUES ('7', '1', '2');
INSERT INTO `menu_menu_bebida` VALUES ('6', '2', '2');
INSERT INTO `menu_menu_bebida` VALUES ('5', '3', '1');
INSERT INTO `menu_menu_bebida` VALUES ('22', '4', '1');
INSERT INTO `menu_menu_bebida` VALUES ('21', '5', '1');
INSERT INTO `menu_menu_bebida` VALUES ('10', '6', '2');
INSERT INTO `menu_menu_bebida` VALUES ('11', '7', '2');
INSERT INTO `menu_menu_bebida` VALUES ('12', '8', '1');
INSERT INTO `menu_menu_bebida` VALUES ('13', '9', '1');

-- ----------------------------
-- Table structure for `menu_menu_complemento`
-- ----------------------------
DROP TABLE IF EXISTS `menu_menu_complemento`;
CREATE TABLE `menu_menu_complemento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `complemento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id` (`menu_id`,`complemento_id`),
  KEY `menu_menu_complemento_143efa3` (`menu_id`),
  KEY `menu_menu_complemento_7a4e9a58` (`complemento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_menu_complemento
-- ----------------------------
INSERT INTO `menu_menu_complemento` VALUES ('10', '1', '2');
INSERT INTO `menu_menu_complemento` VALUES ('9', '2', '1');
INSERT INTO `menu_menu_complemento` VALUES ('7', '3', '1');
INSERT INTO `menu_menu_complemento` VALUES ('8', '3', '2');
INSERT INTO `menu_menu_complemento` VALUES ('25', '4', '1');
INSERT INTO `menu_menu_complemento` VALUES ('24', '5', '1');
INSERT INTO `menu_menu_complemento` VALUES ('13', '6', '1');
INSERT INTO `menu_menu_complemento` VALUES ('14', '7', '2');
INSERT INTO `menu_menu_complemento` VALUES ('15', '8', '1');
INSERT INTO `menu_menu_complemento` VALUES ('16', '9', '1');

-- ----------------------------
-- Table structure for `menu_menu_sopa`
-- ----------------------------
DROP TABLE IF EXISTS `menu_menu_sopa`;
CREATE TABLE `menu_menu_sopa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `sopa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id` (`menu_id`,`sopa_id`),
  KEY `menu_menu_sopa_143efa3` (`menu_id`),
  KEY `menu_menu_sopa_21f8f485` (`sopa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_menu_sopa
-- ----------------------------
INSERT INTO `menu_menu_sopa` VALUES ('7', '1', '2');
INSERT INTO `menu_menu_sopa` VALUES ('6', '2', '1');
INSERT INTO `menu_menu_sopa` VALUES ('5', '3', '2');
INSERT INTO `menu_menu_sopa` VALUES ('24', '4', '1');
INSERT INTO `menu_menu_sopa` VALUES ('23', '5', '2');
INSERT INTO `menu_menu_sopa` VALUES ('10', '6', '1');
INSERT INTO `menu_menu_sopa` VALUES ('11', '7', '2');
INSERT INTO `menu_menu_sopa` VALUES ('12', '8', '2');
INSERT INTO `menu_menu_sopa` VALUES ('13', '9', '1');
INSERT INTO `menu_menu_sopa` VALUES ('22', '5', '1');

-- ----------------------------
-- Table structure for `menu_sopa`
-- ----------------------------
DROP TABLE IF EXISTS `menu_sopa`;
CREATE TABLE `menu_sopa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_sopa
-- ----------------------------
INSERT INTO `menu_sopa` VALUES ('1', 'Sopa de zanahoria', '');
INSERT INTO `menu_sopa` VALUES ('2', 'Sopa de pasta', '');
