/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 13/05/2018 11:27:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adbanners
-- ----------------------------
DROP TABLE IF EXISTS `adbanners`;
CREATE TABLE `adbanners` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `cargo_id` int(11) NOT NULL,
  `imgsrc` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of adbanners
-- ----------------------------
BEGIN;
INSERT INTO `adbanners` VALUES (1, 1012, 'a728c185-effe-38cb-33e5-3a03bcc04d0c.jpg', '促销');
INSERT INTO `adbanners` VALUES (2, 1013, 'e78f610b-3458-3734-88a2-14a10d2c500f.jpg', '促销狗狗');
INSERT INTO `adbanners` VALUES (3, 1013, 'f4bdbf56-2cf5-f2f6-cd64-1946aece19fb.jpg', '狗狗');
COMMIT;

-- ----------------------------
-- Table structure for aos_dic
-- ----------------------------
DROP TABLE IF EXISTS `aos_dic`;
CREATE TABLE `aos_dic` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `name` varchar(255) NOT NULL COMMENT '字典名称',
  `dic_key` varchar(255) NOT NULL COMMENT '字典KEY',
  `code` varchar(255) NOT NULL COMMENT '对照码',
  `dic_desc` varchar(255) NOT NULL COMMENT '对照值',
  `is_enable` varchar(255) NOT NULL COMMENT '是否启用',
  `hotkey` varchar(255) DEFAULT NULL COMMENT ' 热键',
  `dic_group` varchar(255) NOT NULL COMMENT '所属分组',
  `sort_no` int(4) DEFAULT NULL COMMENT '排序号',
  `remark` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ukey1` (`code`,`dic_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='数据字典表';

-- ----------------------------
-- Records of aos_dic
-- ----------------------------
BEGIN;
INSERT INTO `aos_dic` VALUES (1, '性别', 'sex', '1', '男', '1', '', '1', 1, '');
INSERT INTO `aos_dic` VALUES (2, '性别', 'sex', '2', '女', '1', NULL, '1', 2, '');
INSERT INTO `aos_dic` VALUES (3, '性别', 'sex', '3', '未知', '1', NULL, '1', 3, '');
INSERT INTO `aos_dic` VALUES (4, '组件边框颜色', 'cmp_border_color', 'blue', '#99BCE8', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (5, '组件边框颜色', 'cmp_border_color', 'gray', '#BCB0B0', '1', NULL, '1', 2, NULL);
INSERT INTO `aos_dic` VALUES (6, '主页面south区域背景颜色', 'south_back_color', 'blue', '#DFE8F6', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (7, '主页面south区域背景颜色', 'south_back_color', 'gray', '#F0F0F0', '1', NULL, '1', 2, NULL);
INSERT INTO `aos_dic` VALUES (8, '文本主体色调', 'main_text_color', 'blue', '#6699CC', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (9, '文本主体色调', 'main_text_color', 'gray', '#888888', '1', NULL, '1', 2, NULL);
INSERT INTO `aos_dic` VALUES (10, '导航文字颜色', 'nav_text_color', 'blue', '#3399FF', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (11, '导航文字颜色', 'nav_text_color', 'gray', '#555555', '1', NULL, '1', 2, NULL);
INSERT INTO `aos_dic` VALUES (12, '用户类型', 'user_type', '1', '缺省', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (13, '用户状态', 'user_status', '1', '正常', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (14, '用户状态', 'user_status', '2', '锁定', '1', NULL, '1', 2, NULL);
INSERT INTO `aos_dic` VALUES (15, '用户状态', 'user_status', '3', '停用', '1', NULL, '1', 3, NULL);
INSERT INTO `aos_dic` VALUES (16, '是否开关', 'is', '1', '是', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (17, '是否开关', 'is', '0', '否', '1', NULL, '1', 2, NULL);
INSERT INTO `aos_dic` VALUES (18, '组织类型', 'org_type', '1', '缺省', '1', '', '1', 1, '');
INSERT INTO `aos_dic` VALUES (19, '角色授权类型', 'role_grant_type', '1', '业务办理权限', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (20, '角色授权类型', 'role_grant_type', '2', '管理授权权限', '1', NULL, '1', 1, '');
INSERT INTO `aos_dic` VALUES (21, '参数分组', 'params_group', '1', '系统缺省参数', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (22, '参数分组', 'params_group', '2', '产品业务参数', '1', NULL, '1', 2, NULL);
INSERT INTO `aos_dic` VALUES (23, '字典分组', 'dic_group', '1', '系统缺省字典', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (24, '字典分组', 'dic_group', '2', '产品业务字典', '1', NULL, '1', 1, '');
INSERT INTO `aos_dic` VALUES (25, '界面皮肤', 'skin', 'blue', '经典蓝', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (26, '界面皮肤', 'skin', 'gray', '魅力灰', '1', NULL, '1', 2, '');
INSERT INTO `aos_dic` VALUES (27, '角色类型', 'role_type', '1', '缺省', '1', NULL, '1', 1, '');
INSERT INTO `aos_dic` VALUES (28, '图标类型', 'icon_type', '1', '小图标', '1', NULL, '1', 1, NULL);
INSERT INTO `aos_dic` VALUES (29, '图标类型', 'icon_type', '2', '大图标', '1', NULL, '1', 2, '');
INSERT INTO `aos_dic` VALUES (30, '图标类型', 'icon_type', '3', '字体图标', '1', NULL, '1', 3, '');
INSERT INTO `aos_dic` VALUES (31, '卡类型', 'card_type', '1', '普卡', '1', NULL, '2', 1, '演示模块使用');
INSERT INTO `aos_dic` VALUES (32, '卡类型', 'card_type', '2', '金卡', '1', NULL, '2', 2, '演示模块使用');
INSERT INTO `aos_dic` VALUES (33, 'Redis数据类型', 'cmd_type', '1', 'String', '1', NULL, '1', 1, '');
INSERT INTO `aos_dic` VALUES (34, 'Redis数据类型', 'cmd_type', '2', 'HashMap', '1', NULL, '1', 2, '');
INSERT INTO `aos_dic` VALUES (35, 'Redis数据类型', 'cmd_type', '3', 'List', '1', NULL, '1', 3, '');
INSERT INTO `aos_dic` VALUES (36, 'Redis数据类型', 'cmd_type', '4', 'Set', '1', NULL, '1', 4, '');
COMMIT;

-- ----------------------------
-- Table structure for aos_icon
-- ----------------------------
DROP TABLE IF EXISTS `aos_icon`;
CREATE TABLE `aos_icon` (
  `name` varchar(255) NOT NULL COMMENT '名称',
  `type` varchar(255) NOT NULL COMMENT '类型',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='图标大全';

-- ----------------------------
-- Records of aos_icon
-- ----------------------------
BEGIN;
INSERT INTO `aos_icon` VALUES ('10.png', '2');
INSERT INTO `aos_icon` VALUES ('11.png', '2');
INSERT INTO `aos_icon` VALUES ('13.png', '2');
INSERT INTO `aos_icon` VALUES ('14.png', '2');
INSERT INTO `aos_icon` VALUES ('15.png', '2');
INSERT INTO `aos_icon` VALUES ('17.png', '2');
INSERT INTO `aos_icon` VALUES ('19.png', '2');
INSERT INTO `aos_icon` VALUES ('2.png', '2');
INSERT INTO `aos_icon` VALUES ('21.png', '2');
INSERT INTO `aos_icon` VALUES ('22.png', '2');
INSERT INTO `aos_icon` VALUES ('23.png', '2');
INSERT INTO `aos_icon` VALUES ('24.png', '2');
INSERT INTO `aos_icon` VALUES ('25.png', '2');
INSERT INTO `aos_icon` VALUES ('26.png', '2');
INSERT INTO `aos_icon` VALUES ('28.png', '2');
INSERT INTO `aos_icon` VALUES ('3.png', '2');
INSERT INTO `aos_icon` VALUES ('30.png', '2');
INSERT INTO `aos_icon` VALUES ('32.png', '2');
INSERT INTO `aos_icon` VALUES ('34.png', '2');
INSERT INTO `aos_icon` VALUES ('35.png', '2');
INSERT INTO `aos_icon` VALUES ('36.png', '2');
INSERT INTO `aos_icon` VALUES ('37.png', '2');
INSERT INTO `aos_icon` VALUES ('38.png', '2');
INSERT INTO `aos_icon` VALUES ('39.png', '2');
INSERT INTO `aos_icon` VALUES ('4.png', '2');
INSERT INTO `aos_icon` VALUES ('40.png', '2');
INSERT INTO `aos_icon` VALUES ('41.png', '2');
INSERT INTO `aos_icon` VALUES ('42.png', '2');
INSERT INTO `aos_icon` VALUES ('43.png', '2');
INSERT INTO `aos_icon` VALUES ('44.png', '2');
INSERT INTO `aos_icon` VALUES ('45.png', '2');
INSERT INTO `aos_icon` VALUES ('46.png', '2');
INSERT INTO `aos_icon` VALUES ('47.png', '2');
INSERT INTO `aos_icon` VALUES ('48.png', '2');
INSERT INTO `aos_icon` VALUES ('49.png', '2');
INSERT INTO `aos_icon` VALUES ('5.png', '2');
INSERT INTO `aos_icon` VALUES ('51.png', '2');
INSERT INTO `aos_icon` VALUES ('52.png', '2');
INSERT INTO `aos_icon` VALUES ('53.png', '2');
INSERT INTO `aos_icon` VALUES ('54.png', '2');
INSERT INTO `aos_icon` VALUES ('55.png', '2');
INSERT INTO `aos_icon` VALUES ('56.png', '2');
INSERT INTO `aos_icon` VALUES ('6.png', '2');
INSERT INTO `aos_icon` VALUES ('7.png', '2');
INSERT INTO `aos_icon` VALUES ('8.png', '2');
INSERT INTO `aos_icon` VALUES ('9.png', '2');
INSERT INTO `aos_icon` VALUES ('add.png', '1');
INSERT INTO `aos_icon` VALUES ('add2.png', '1');
INSERT INTO `aos_icon` VALUES ('against.png', '1');
INSERT INTO `aos_icon` VALUES ('agree.png', '1');
INSERT INTO `aos_icon` VALUES ('app_columns.png', '1');
INSERT INTO `aos_icon` VALUES ('app_list.png', '1');
INSERT INTO `aos_icon` VALUES ('bars.gif', '1');
INSERT INTO `aos_icon` VALUES ('basket.png', '1');
INSERT INTO `aos_icon` VALUES ('book.png', '1');
INSERT INTO `aos_icon` VALUES ('book_user.png', '1');
INSERT INTO `aos_icon` VALUES ('bug.png', '1');
INSERT INTO `aos_icon` VALUES ('bullet_black.png', '1');
INSERT INTO `aos_icon` VALUES ('bullet_blue.png', '1');
INSERT INTO `aos_icon` VALUES ('bullet_green.png', '1');
INSERT INTO `aos_icon` VALUES ('bullet_group.gif', '1');
INSERT INTO `aos_icon` VALUES ('bullet_group2.gif', '1');
INSERT INTO `aos_icon` VALUES ('bullet_group3.gif', '1');
INSERT INTO `aos_icon` VALUES ('bullet_group4.gif', '1');
INSERT INTO `aos_icon` VALUES ('bullet_purple.png', '1');
INSERT INTO `aos_icon` VALUES ('bullet_red.png', '1');
INSERT INTO `aos_icon` VALUES ('bullet_yellow.png', '1');
INSERT INTO `aos_icon` VALUES ('chart_curve.png', '1');
INSERT INTO `aos_icon` VALUES ('chart_flipped.png', '1');
INSERT INTO `aos_icon` VALUES ('chart_line.png', '1');
INSERT INTO `aos_icon` VALUES ('chart_pie.png', '1');
INSERT INTO `aos_icon` VALUES ('close.png', '1');
INSERT INTO `aos_icon` VALUES ('close2.png', '1');
INSERT INTO `aos_icon` VALUES ('config.png', '1');
INSERT INTO `aos_icon` VALUES ('config1.png', '1');
INSERT INTO `aos_icon` VALUES ('config3.png', '1');
INSERT INTO `aos_icon` VALUES ('connect.png', '1');
INSERT INTO `aos_icon` VALUES ('copy.png', '1');
INSERT INTO `aos_icon` VALUES ('cut.png', '1');
INSERT INTO `aos_icon` VALUES ('cv.png', '1');
INSERT INTO `aos_icon` VALUES ('c_key.png', '1');
INSERT INTO `aos_icon` VALUES ('database.png', '1');
INSERT INTO `aos_icon` VALUES ('database_add.png', '1');
INSERT INTO `aos_icon` VALUES ('del.png', '1');
INSERT INTO `aos_icon` VALUES ('del1.png', '1');
INSERT INTO `aos_icon` VALUES ('del2.png', '1');
INSERT INTO `aos_icon` VALUES ('del_folder.png', '1');
INSERT INTO `aos_icon` VALUES ('del_page.png', '1');
INSERT INTO `aos_icon` VALUES ('detail.png', '1');
INSERT INTO `aos_icon` VALUES ('disconnect.png', '1');
INSERT INTO `aos_icon` VALUES ('doc_ok.png', '1');
INSERT INTO `aos_icon` VALUES ('down.png', '1');
INSERT INTO `aos_icon` VALUES ('down_left.png', '1');
INSERT INTO `aos_icon` VALUES ('down_right.png', '1');
INSERT INTO `aos_icon` VALUES ('edit.png', '1');
INSERT INTO `aos_icon` VALUES ('edit2.png', '1');
INSERT INTO `aos_icon` VALUES ('email.png', '1');
INSERT INTO `aos_icon` VALUES ('email2.png', '1');
INSERT INTO `aos_icon` VALUES ('email3.png', '1');
INSERT INTO `aos_icon` VALUES ('email_go.png', '1');
INSERT INTO `aos_icon` VALUES ('email_open.png', '1');
INSERT INTO `aos_icon` VALUES ('fa-adjust', '3');
INSERT INTO `aos_icon` VALUES ('fa-adn', '3');
INSERT INTO `aos_icon` VALUES ('fa-align-center', '3');
INSERT INTO `aos_icon` VALUES ('fa-align-justify', '3');
INSERT INTO `aos_icon` VALUES ('fa-align-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-align-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-ambulance', '3');
INSERT INTO `aos_icon` VALUES ('fa-anchor', '3');
INSERT INTO `aos_icon` VALUES ('fa-android', '3');
INSERT INTO `aos_icon` VALUES ('fa-angellist', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-double-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-double-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-double-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-double-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-angle-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-apple', '3');
INSERT INTO `aos_icon` VALUES ('fa-archive', '3');
INSERT INTO `aos_icon` VALUES ('fa-area-chart', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-o-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-o-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-o-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-o-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-circle-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrow-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrows', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrows-alt', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrows-h', '3');
INSERT INTO `aos_icon` VALUES ('fa-arrows-v', '3');
INSERT INTO `aos_icon` VALUES ('fa-asterisk', '3');
INSERT INTO `aos_icon` VALUES ('fa-at', '3');
INSERT INTO `aos_icon` VALUES ('fa-backward', '3');
INSERT INTO `aos_icon` VALUES ('fa-ban', '3');
INSERT INTO `aos_icon` VALUES ('fa-bar-chart', '3');
INSERT INTO `aos_icon` VALUES ('fa-barcode', '3');
INSERT INTO `aos_icon` VALUES ('fa-bars', '3');
INSERT INTO `aos_icon` VALUES ('fa-beer', '3');
INSERT INTO `aos_icon` VALUES ('fa-behance', '3');
INSERT INTO `aos_icon` VALUES ('fa-behance-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-bell', '3');
INSERT INTO `aos_icon` VALUES ('fa-bell-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-bell-slash', '3');
INSERT INTO `aos_icon` VALUES ('fa-bell-slash-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-bicycle', '3');
INSERT INTO `aos_icon` VALUES ('fa-binoculars', '3');
INSERT INTO `aos_icon` VALUES ('fa-birthday-cake', '3');
INSERT INTO `aos_icon` VALUES ('fa-bitbucket', '3');
INSERT INTO `aos_icon` VALUES ('fa-bitbucket-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-bold', '3');
INSERT INTO `aos_icon` VALUES ('fa-bolt', '3');
INSERT INTO `aos_icon` VALUES ('fa-bomb', '3');
INSERT INTO `aos_icon` VALUES ('fa-book', '3');
INSERT INTO `aos_icon` VALUES ('fa-bookmark', '3');
INSERT INTO `aos_icon` VALUES ('fa-bookmark-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-briefcase', '3');
INSERT INTO `aos_icon` VALUES ('fa-btc', '3');
INSERT INTO `aos_icon` VALUES ('fa-bug', '3');
INSERT INTO `aos_icon` VALUES ('fa-building', '3');
INSERT INTO `aos_icon` VALUES ('fa-building-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-bullhorn', '3');
INSERT INTO `aos_icon` VALUES ('fa-bullseye', '3');
INSERT INTO `aos_icon` VALUES ('fa-bus', '3');
INSERT INTO `aos_icon` VALUES ('fa-calculator', '3');
INSERT INTO `aos_icon` VALUES ('fa-calendar', '3');
INSERT INTO `aos_icon` VALUES ('fa-calendar-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-camera', '3');
INSERT INTO `aos_icon` VALUES ('fa-camera-retro', '3');
INSERT INTO `aos_icon` VALUES ('fa-car', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-square-o-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-square-o-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-square-o-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-square-o-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-caret-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-cc', '3');
INSERT INTO `aos_icon` VALUES ('fa-cc-amex', '3');
INSERT INTO `aos_icon` VALUES ('fa-cc-discover', '3');
INSERT INTO `aos_icon` VALUES ('fa-cc-mastercard', '3');
INSERT INTO `aos_icon` VALUES ('fa-cc-paypal', '3');
INSERT INTO `aos_icon` VALUES ('fa-cc-stripe', '3');
INSERT INTO `aos_icon` VALUES ('fa-cc-visa', '3');
INSERT INTO `aos_icon` VALUES ('fa-certificate', '3');
INSERT INTO `aos_icon` VALUES ('fa-chain-broken', '3');
INSERT INTO `aos_icon` VALUES ('fa-check', '3');
INSERT INTO `aos_icon` VALUES ('fa-check-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-check-circle-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-check-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-check-square-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-circle-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-circle-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-circle-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-circle-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-chevron-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-child', '3');
INSERT INTO `aos_icon` VALUES ('fa-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-circle-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-circle-o-notch', '3');
INSERT INTO `aos_icon` VALUES ('fa-circle-thin', '3');
INSERT INTO `aos_icon` VALUES ('fa-clipboard', '3');
INSERT INTO `aos_icon` VALUES ('fa-clock-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-cloud', '3');
INSERT INTO `aos_icon` VALUES ('fa-cloud-download', '3');
INSERT INTO `aos_icon` VALUES ('fa-cloud-upload', '3');
INSERT INTO `aos_icon` VALUES ('fa-code', '3');
INSERT INTO `aos_icon` VALUES ('fa-code-fork', '3');
INSERT INTO `aos_icon` VALUES ('fa-codepen', '3');
INSERT INTO `aos_icon` VALUES ('fa-coffee', '3');
INSERT INTO `aos_icon` VALUES ('fa-cog', '3');
INSERT INTO `aos_icon` VALUES ('fa-cogs', '3');
INSERT INTO `aos_icon` VALUES ('fa-columns', '3');
INSERT INTO `aos_icon` VALUES ('fa-comment', '3');
INSERT INTO `aos_icon` VALUES ('fa-comment-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-comments', '3');
INSERT INTO `aos_icon` VALUES ('fa-comments-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-compass', '3');
INSERT INTO `aos_icon` VALUES ('fa-compress', '3');
INSERT INTO `aos_icon` VALUES ('fa-copyright', '3');
INSERT INTO `aos_icon` VALUES ('fa-credit-card', '3');
INSERT INTO `aos_icon` VALUES ('fa-crop', '3');
INSERT INTO `aos_icon` VALUES ('fa-crosshairs', '3');
INSERT INTO `aos_icon` VALUES ('fa-css3', '3');
INSERT INTO `aos_icon` VALUES ('fa-cube', '3');
INSERT INTO `aos_icon` VALUES ('fa-cubes', '3');
INSERT INTO `aos_icon` VALUES ('fa-cutlery', '3');
INSERT INTO `aos_icon` VALUES ('fa-database', '3');
INSERT INTO `aos_icon` VALUES ('fa-delicious', '3');
INSERT INTO `aos_icon` VALUES ('fa-desktop', '3');
INSERT INTO `aos_icon` VALUES ('fa-deviantart', '3');
INSERT INTO `aos_icon` VALUES ('fa-digg', '3');
INSERT INTO `aos_icon` VALUES ('fa-dot-circle-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-download', '3');
INSERT INTO `aos_icon` VALUES ('fa-dribbble', '3');
INSERT INTO `aos_icon` VALUES ('fa-dropbox', '3');
INSERT INTO `aos_icon` VALUES ('fa-drupal', '3');
INSERT INTO `aos_icon` VALUES ('fa-eject', '3');
INSERT INTO `aos_icon` VALUES ('fa-ellipsis-h', '3');
INSERT INTO `aos_icon` VALUES ('fa-ellipsis-v', '3');
INSERT INTO `aos_icon` VALUES ('fa-empire', '3');
INSERT INTO `aos_icon` VALUES ('fa-envelope', '3');
INSERT INTO `aos_icon` VALUES ('fa-envelope-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-envelope-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-eraser', '3');
INSERT INTO `aos_icon` VALUES ('fa-eur', '3');
INSERT INTO `aos_icon` VALUES ('fa-exchange', '3');
INSERT INTO `aos_icon` VALUES ('fa-exclamation', '3');
INSERT INTO `aos_icon` VALUES ('fa-exclamation-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-exclamation-triangle', '3');
INSERT INTO `aos_icon` VALUES ('fa-expand', '3');
INSERT INTO `aos_icon` VALUES ('fa-external-link', '3');
INSERT INTO `aos_icon` VALUES ('fa-external-link-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-eye', '3');
INSERT INTO `aos_icon` VALUES ('fa-eye-slash', '3');
INSERT INTO `aos_icon` VALUES ('fa-eyedropper', '3');
INSERT INTO `aos_icon` VALUES ('fa-facebook', '3');
INSERT INTO `aos_icon` VALUES ('fa-facebook-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-fast-backward', '3');
INSERT INTO `aos_icon` VALUES ('fa-fast-forward', '3');
INSERT INTO `aos_icon` VALUES ('fa-fax', '3');
INSERT INTO `aos_icon` VALUES ('fa-female', '3');
INSERT INTO `aos_icon` VALUES ('fa-fighter-jet', '3');
INSERT INTO `aos_icon` VALUES ('fa-file', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-archive-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-audio-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-code-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-excel-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-image-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-pdf-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-powerpoint-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-text', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-text-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-video-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-file-word-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-files-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-film', '3');
INSERT INTO `aos_icon` VALUES ('fa-filter', '3');
INSERT INTO `aos_icon` VALUES ('fa-fire', '3');
INSERT INTO `aos_icon` VALUES ('fa-fire-extinguisher', '3');
INSERT INTO `aos_icon` VALUES ('fa-flag', '3');
INSERT INTO `aos_icon` VALUES ('fa-flag-checkered', '3');
INSERT INTO `aos_icon` VALUES ('fa-flag-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-flask', '3');
INSERT INTO `aos_icon` VALUES ('fa-flickr', '3');
INSERT INTO `aos_icon` VALUES ('fa-floppy-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-folder', '3');
INSERT INTO `aos_icon` VALUES ('fa-folder-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-folder-open', '3');
INSERT INTO `aos_icon` VALUES ('fa-folder-open-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-font', '3');
INSERT INTO `aos_icon` VALUES ('fa-forward', '3');
INSERT INTO `aos_icon` VALUES ('fa-foursquare', '3');
INSERT INTO `aos_icon` VALUES ('fa-frown-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-futbol-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-gamepad', '3');
INSERT INTO `aos_icon` VALUES ('fa-gavel', '3');
INSERT INTO `aos_icon` VALUES ('fa-gbp', '3');
INSERT INTO `aos_icon` VALUES ('fa-gift', '3');
INSERT INTO `aos_icon` VALUES ('fa-git', '3');
INSERT INTO `aos_icon` VALUES ('fa-git-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-github', '3');
INSERT INTO `aos_icon` VALUES ('fa-github-alt', '3');
INSERT INTO `aos_icon` VALUES ('fa-github-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-gittip', '3');
INSERT INTO `aos_icon` VALUES ('fa-glass', '3');
INSERT INTO `aos_icon` VALUES ('fa-globe', '3');
INSERT INTO `aos_icon` VALUES ('fa-google', '3');
INSERT INTO `aos_icon` VALUES ('fa-google-plus', '3');
INSERT INTO `aos_icon` VALUES ('fa-google-plus-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-google-wallet', '3');
INSERT INTO `aos_icon` VALUES ('fa-graduation-cap', '3');
INSERT INTO `aos_icon` VALUES ('fa-h-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-hacker-news', '3');
INSERT INTO `aos_icon` VALUES ('fa-hand-o-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-hand-o-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-hand-o-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-hand-o-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-hdd-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-header', '3');
INSERT INTO `aos_icon` VALUES ('fa-headphones', '3');
INSERT INTO `aos_icon` VALUES ('fa-heart', '3');
INSERT INTO `aos_icon` VALUES ('fa-heart-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-history', '3');
INSERT INTO `aos_icon` VALUES ('fa-home', '3');
INSERT INTO `aos_icon` VALUES ('fa-hospital-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-html5', '3');
INSERT INTO `aos_icon` VALUES ('fa-ils', '3');
INSERT INTO `aos_icon` VALUES ('fa-inbox', '3');
INSERT INTO `aos_icon` VALUES ('fa-indent', '3');
INSERT INTO `aos_icon` VALUES ('fa-info', '3');
INSERT INTO `aos_icon` VALUES ('fa-info-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-inr', '3');
INSERT INTO `aos_icon` VALUES ('fa-instagram', '3');
INSERT INTO `aos_icon` VALUES ('fa-ioxhost', '3');
INSERT INTO `aos_icon` VALUES ('fa-italic', '3');
INSERT INTO `aos_icon` VALUES ('fa-joomla', '3');
INSERT INTO `aos_icon` VALUES ('fa-jpy', '3');
INSERT INTO `aos_icon` VALUES ('fa-jsfiddle', '3');
INSERT INTO `aos_icon` VALUES ('fa-key', '3');
INSERT INTO `aos_icon` VALUES ('fa-keyboard-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-krw', '3');
INSERT INTO `aos_icon` VALUES ('fa-language', '3');
INSERT INTO `aos_icon` VALUES ('fa-laptop', '3');
INSERT INTO `aos_icon` VALUES ('fa-lastfm', '3');
INSERT INTO `aos_icon` VALUES ('fa-lastfm-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-leaf', '3');
INSERT INTO `aos_icon` VALUES ('fa-lemon-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-level-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-level-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-life-ring', '3');
INSERT INTO `aos_icon` VALUES ('fa-lightbulb-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-line-chart', '3');
INSERT INTO `aos_icon` VALUES ('fa-link', '3');
INSERT INTO `aos_icon` VALUES ('fa-linkedin', '3');
INSERT INTO `aos_icon` VALUES ('fa-linkedin-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-linux', '3');
INSERT INTO `aos_icon` VALUES ('fa-list', '3');
INSERT INTO `aos_icon` VALUES ('fa-list-alt', '3');
INSERT INTO `aos_icon` VALUES ('fa-list-ol', '3');
INSERT INTO `aos_icon` VALUES ('fa-list-ul', '3');
INSERT INTO `aos_icon` VALUES ('fa-location-arrow', '3');
INSERT INTO `aos_icon` VALUES ('fa-lock', '3');
INSERT INTO `aos_icon` VALUES ('fa-long-arrow-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-long-arrow-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-long-arrow-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-long-arrow-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-magic', '3');
INSERT INTO `aos_icon` VALUES ('fa-magnet', '3');
INSERT INTO `aos_icon` VALUES ('fa-male', '3');
INSERT INTO `aos_icon` VALUES ('fa-map-marker', '3');
INSERT INTO `aos_icon` VALUES ('fa-maxcdn', '3');
INSERT INTO `aos_icon` VALUES ('fa-meanpath', '3');
INSERT INTO `aos_icon` VALUES ('fa-medkit', '3');
INSERT INTO `aos_icon` VALUES ('fa-meh-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-microphone', '3');
INSERT INTO `aos_icon` VALUES ('fa-microphone-slash', '3');
INSERT INTO `aos_icon` VALUES ('fa-minus', '3');
INSERT INTO `aos_icon` VALUES ('fa-minus-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-minus-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-minus-square-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-mobile', '3');
INSERT INTO `aos_icon` VALUES ('fa-money', '3');
INSERT INTO `aos_icon` VALUES ('fa-moon-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-music', '3');
INSERT INTO `aos_icon` VALUES ('fa-newspaper-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-openid', '3');
INSERT INTO `aos_icon` VALUES ('fa-outdent', '3');
INSERT INTO `aos_icon` VALUES ('fa-pagelines', '3');
INSERT INTO `aos_icon` VALUES ('fa-paint-brush', '3');
INSERT INTO `aos_icon` VALUES ('fa-paper-plane', '3');
INSERT INTO `aos_icon` VALUES ('fa-paper-plane-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-paperclip', '3');
INSERT INTO `aos_icon` VALUES ('fa-paragraph', '3');
INSERT INTO `aos_icon` VALUES ('fa-pause', '3');
INSERT INTO `aos_icon` VALUES ('fa-paw', '3');
INSERT INTO `aos_icon` VALUES ('fa-paypal', '3');
INSERT INTO `aos_icon` VALUES ('fa-pencil', '3');
INSERT INTO `aos_icon` VALUES ('fa-pencil-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-pencil-square-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-phone', '3');
INSERT INTO `aos_icon` VALUES ('fa-phone-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-picture-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-pie-chart', '3');
INSERT INTO `aos_icon` VALUES ('fa-pied-piper', '3');
INSERT INTO `aos_icon` VALUES ('fa-pied-piper-alt', '3');
INSERT INTO `aos_icon` VALUES ('fa-pinterest', '3');
INSERT INTO `aos_icon` VALUES ('fa-pinterest-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-plane', '3');
INSERT INTO `aos_icon` VALUES ('fa-play', '3');
INSERT INTO `aos_icon` VALUES ('fa-play-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-play-circle-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-plug', '3');
INSERT INTO `aos_icon` VALUES ('fa-plus', '3');
INSERT INTO `aos_icon` VALUES ('fa-plus-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-plus-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-plus-square-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-power-off', '3');
INSERT INTO `aos_icon` VALUES ('fa-print', '3');
INSERT INTO `aos_icon` VALUES ('fa-puzzle-piece', '3');
INSERT INTO `aos_icon` VALUES ('fa-qq', '3');
INSERT INTO `aos_icon` VALUES ('fa-qrcode', '3');
INSERT INTO `aos_icon` VALUES ('fa-question', '3');
INSERT INTO `aos_icon` VALUES ('fa-question-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-quote-left', '3');
INSERT INTO `aos_icon` VALUES ('fa-quote-right', '3');
INSERT INTO `aos_icon` VALUES ('fa-random', '3');
INSERT INTO `aos_icon` VALUES ('fa-rebel', '3');
INSERT INTO `aos_icon` VALUES ('fa-recycle', '3');
INSERT INTO `aos_icon` VALUES ('fa-reddit', '3');
INSERT INTO `aos_icon` VALUES ('fa-reddit-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-refresh', '3');
INSERT INTO `aos_icon` VALUES ('fa-renren', '3');
INSERT INTO `aos_icon` VALUES ('fa-repeat', '3');
INSERT INTO `aos_icon` VALUES ('fa-reply', '3');
INSERT INTO `aos_icon` VALUES ('fa-reply-all', '3');
INSERT INTO `aos_icon` VALUES ('fa-retweet', '3');
INSERT INTO `aos_icon` VALUES ('fa-road', '3');
INSERT INTO `aos_icon` VALUES ('fa-rocket', '3');
INSERT INTO `aos_icon` VALUES ('fa-rss', '3');
INSERT INTO `aos_icon` VALUES ('fa-rss-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-rub', '3');
INSERT INTO `aos_icon` VALUES ('fa-scissors', '3');
INSERT INTO `aos_icon` VALUES ('fa-search', '3');
INSERT INTO `aos_icon` VALUES ('fa-search-minus', '3');
INSERT INTO `aos_icon` VALUES ('fa-search-plus', '3');
INSERT INTO `aos_icon` VALUES ('fa-share', '3');
INSERT INTO `aos_icon` VALUES ('fa-share-alt', '3');
INSERT INTO `aos_icon` VALUES ('fa-share-alt-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-share-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-share-square-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-shield', '3');
INSERT INTO `aos_icon` VALUES ('fa-shopping-cart', '3');
INSERT INTO `aos_icon` VALUES ('fa-sign-in', '3');
INSERT INTO `aos_icon` VALUES ('fa-sign-out', '3');
INSERT INTO `aos_icon` VALUES ('fa-signal', '3');
INSERT INTO `aos_icon` VALUES ('fa-sitemap', '3');
INSERT INTO `aos_icon` VALUES ('fa-skype', '3');
INSERT INTO `aos_icon` VALUES ('fa-slack', '3');
INSERT INTO `aos_icon` VALUES ('fa-sliders', '3');
INSERT INTO `aos_icon` VALUES ('fa-slideshare', '3');
INSERT INTO `aos_icon` VALUES ('fa-smile-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-alpha-asc', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-alpha-desc', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-amount-asc', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-amount-desc', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-asc', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-desc', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-numeric-asc', '3');
INSERT INTO `aos_icon` VALUES ('fa-sort-numeric-desc', '3');
INSERT INTO `aos_icon` VALUES ('fa-soundcloud', '3');
INSERT INTO `aos_icon` VALUES ('fa-space-shuttle', '3');
INSERT INTO `aos_icon` VALUES ('fa-spinner', '3');
INSERT INTO `aos_icon` VALUES ('fa-spoon', '3');
INSERT INTO `aos_icon` VALUES ('fa-spotify', '3');
INSERT INTO `aos_icon` VALUES ('fa-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-square-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-stack-exchange', '3');
INSERT INTO `aos_icon` VALUES ('fa-stack-overflow', '3');
INSERT INTO `aos_icon` VALUES ('fa-star', '3');
INSERT INTO `aos_icon` VALUES ('fa-star-half', '3');
INSERT INTO `aos_icon` VALUES ('fa-star-half-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-star-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-steam', '3');
INSERT INTO `aos_icon` VALUES ('fa-steam-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-step-backward', '3');
INSERT INTO `aos_icon` VALUES ('fa-step-forward', '3');
INSERT INTO `aos_icon` VALUES ('fa-stethoscope', '3');
INSERT INTO `aos_icon` VALUES ('fa-stop', '3');
INSERT INTO `aos_icon` VALUES ('fa-strikethrough', '3');
INSERT INTO `aos_icon` VALUES ('fa-stumbleupon', '3');
INSERT INTO `aos_icon` VALUES ('fa-stumbleupon-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-subscript', '3');
INSERT INTO `aos_icon` VALUES ('fa-suitcase', '3');
INSERT INTO `aos_icon` VALUES ('fa-sun-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-superscript', '3');
INSERT INTO `aos_icon` VALUES ('fa-table', '3');
INSERT INTO `aos_icon` VALUES ('fa-tablet', '3');
INSERT INTO `aos_icon` VALUES ('fa-tachometer', '3');
INSERT INTO `aos_icon` VALUES ('fa-tag', '3');
INSERT INTO `aos_icon` VALUES ('fa-tags', '3');
INSERT INTO `aos_icon` VALUES ('fa-tasks', '3');
INSERT INTO `aos_icon` VALUES ('fa-taxi', '3');
INSERT INTO `aos_icon` VALUES ('fa-tencent-weibo', '3');
INSERT INTO `aos_icon` VALUES ('fa-terminal', '3');
INSERT INTO `aos_icon` VALUES ('fa-text-height', '3');
INSERT INTO `aos_icon` VALUES ('fa-text-width', '3');
INSERT INTO `aos_icon` VALUES ('fa-th', '3');
INSERT INTO `aos_icon` VALUES ('fa-th-large', '3');
INSERT INTO `aos_icon` VALUES ('fa-th-list', '3');
INSERT INTO `aos_icon` VALUES ('fa-thumb-tack', '3');
INSERT INTO `aos_icon` VALUES ('fa-thumbs-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-thumbs-o-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-thumbs-o-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-thumbs-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-ticket', '3');
INSERT INTO `aos_icon` VALUES ('fa-times', '3');
INSERT INTO `aos_icon` VALUES ('fa-times-circle', '3');
INSERT INTO `aos_icon` VALUES ('fa-times-circle-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-tint', '3');
INSERT INTO `aos_icon` VALUES ('fa-toggle-off', '3');
INSERT INTO `aos_icon` VALUES ('fa-toggle-on', '3');
INSERT INTO `aos_icon` VALUES ('fa-trash', '3');
INSERT INTO `aos_icon` VALUES ('fa-trash-o', '3');
INSERT INTO `aos_icon` VALUES ('fa-tree', '3');
INSERT INTO `aos_icon` VALUES ('fa-trello', '3');
INSERT INTO `aos_icon` VALUES ('fa-trophy', '3');
INSERT INTO `aos_icon` VALUES ('fa-truck', '3');
INSERT INTO `aos_icon` VALUES ('fa-try', '3');
INSERT INTO `aos_icon` VALUES ('fa-tty', '3');
INSERT INTO `aos_icon` VALUES ('fa-tumblr', '3');
INSERT INTO `aos_icon` VALUES ('fa-tumblr-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-twitch', '3');
INSERT INTO `aos_icon` VALUES ('fa-twitter', '3');
INSERT INTO `aos_icon` VALUES ('fa-twitter-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-umbrella', '3');
INSERT INTO `aos_icon` VALUES ('fa-underline', '3');
INSERT INTO `aos_icon` VALUES ('fa-undo', '3');
INSERT INTO `aos_icon` VALUES ('fa-university', '3');
INSERT INTO `aos_icon` VALUES ('fa-unlock', '3');
INSERT INTO `aos_icon` VALUES ('fa-unlock-alt', '3');
INSERT INTO `aos_icon` VALUES ('fa-upload', '3');
INSERT INTO `aos_icon` VALUES ('fa-usd', '3');
INSERT INTO `aos_icon` VALUES ('fa-user', '3');
INSERT INTO `aos_icon` VALUES ('fa-user-md', '3');
INSERT INTO `aos_icon` VALUES ('fa-users', '3');
INSERT INTO `aos_icon` VALUES ('fa-video-camera', '3');
INSERT INTO `aos_icon` VALUES ('fa-vimeo-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-vine', '3');
INSERT INTO `aos_icon` VALUES ('fa-vk', '3');
INSERT INTO `aos_icon` VALUES ('fa-volume-down', '3');
INSERT INTO `aos_icon` VALUES ('fa-volume-off', '3');
INSERT INTO `aos_icon` VALUES ('fa-volume-up', '3');
INSERT INTO `aos_icon` VALUES ('fa-weibo', '3');
INSERT INTO `aos_icon` VALUES ('fa-weixin', '3');
INSERT INTO `aos_icon` VALUES ('fa-wheelchair', '3');
INSERT INTO `aos_icon` VALUES ('fa-wifi', '3');
INSERT INTO `aos_icon` VALUES ('fa-windows', '3');
INSERT INTO `aos_icon` VALUES ('fa-wordpress', '3');
INSERT INTO `aos_icon` VALUES ('fa-wrench', '3');
INSERT INTO `aos_icon` VALUES ('fa-xing', '3');
INSERT INTO `aos_icon` VALUES ('fa-xing-square', '3');
INSERT INTO `aos_icon` VALUES ('fa-yahoo', '3');
INSERT INTO `aos_icon` VALUES ('fa-yelp', '3');
INSERT INTO `aos_icon` VALUES ('fa-youtube', '3');
INSERT INTO `aos_icon` VALUES ('fa-youtube-play', '3');
INSERT INTO `aos_icon` VALUES ('fa-youtube-square', '3');
INSERT INTO `aos_icon` VALUES ('filter.png', '1');
INSERT INTO `aos_icon` VALUES ('folder1.png', '1');
INSERT INTO `aos_icon` VALUES ('folder10.png', '1');
INSERT INTO `aos_icon` VALUES ('folder11.png', '1');
INSERT INTO `aos_icon` VALUES ('folder12.png', '1');
INSERT INTO `aos_icon` VALUES ('folder13.png', '1');
INSERT INTO `aos_icon` VALUES ('folder14.png', '1');
INSERT INTO `aos_icon` VALUES ('folder15.png', '1');
INSERT INTO `aos_icon` VALUES ('folder16.png', '1');
INSERT INTO `aos_icon` VALUES ('folder17.png', '1');
INSERT INTO `aos_icon` VALUES ('folder18.png', '1');
INSERT INTO `aos_icon` VALUES ('folder19.png', '1');
INSERT INTO `aos_icon` VALUES ('folder2.png', '1');
INSERT INTO `aos_icon` VALUES ('folder20.png', '1');
INSERT INTO `aos_icon` VALUES ('folder21.png', '1');
INSERT INTO `aos_icon` VALUES ('folder22.png', '1');
INSERT INTO `aos_icon` VALUES ('folder23.png', '1');
INSERT INTO `aos_icon` VALUES ('folder24.png', '1');
INSERT INTO `aos_icon` VALUES ('folder25.png', '1');
INSERT INTO `aos_icon` VALUES ('folder26.png', '1');
INSERT INTO `aos_icon` VALUES ('folder27.png', '1');
INSERT INTO `aos_icon` VALUES ('folder28.png', '1');
INSERT INTO `aos_icon` VALUES ('folder4.png', '1');
INSERT INTO `aos_icon` VALUES ('folder5.png', '1');
INSERT INTO `aos_icon` VALUES ('folder6.png', '1');
INSERT INTO `aos_icon` VALUES ('folder7.png', '1');
INSERT INTO `aos_icon` VALUES ('folder8.png', '1');
INSERT INTO `aos_icon` VALUES ('folder9.png', '1');
INSERT INTO `aos_icon` VALUES ('forward.png', '1');
INSERT INTO `aos_icon` VALUES ('freelance.png', '1');
INSERT INTO `aos_icon` VALUES ('go.gif', '1');
INSERT INTO `aos_icon` VALUES ('go.png', '1');
INSERT INTO `aos_icon` VALUES ('go1.gif', '1');
INSERT INTO `aos_icon` VALUES ('go1.png', '1');
INSERT INTO `aos_icon` VALUES ('help.png', '1');
INSERT INTO `aos_icon` VALUES ('home.gif', '1');
INSERT INTO `aos_icon` VALUES ('home.png', '1');
INSERT INTO `aos_icon` VALUES ('icon134.png', '1');
INSERT INTO `aos_icon` VALUES ('icon137.png', '1');
INSERT INTO `aos_icon` VALUES ('icon140.png', '1');
INSERT INTO `aos_icon` VALUES ('icon141.png', '1');
INSERT INTO `aos_icon` VALUES ('icon146.png', '1');
INSERT INTO `aos_icon` VALUES ('icon15.png', '1');
INSERT INTO `aos_icon` VALUES ('icon150.png', '1');
INSERT INTO `aos_icon` VALUES ('icon152.png', '1');
INSERT INTO `aos_icon` VALUES ('icon153.png', '1');
INSERT INTO `aos_icon` VALUES ('icon154.png', '1');
INSERT INTO `aos_icon` VALUES ('icon17.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon25.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon26.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon31.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon32.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon34.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon35.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon36.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon37.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon38.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon39.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon41.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon42.gif', '1');
INSERT INTO `aos_icon` VALUES ('icon5.png', '1');
INSERT INTO `aos_icon` VALUES ('icon56.png', '1');
INSERT INTO `aos_icon` VALUES ('icon59.png', '1');
INSERT INTO `aos_icon` VALUES ('icon63.png', '1');
INSERT INTO `aos_icon` VALUES ('icon65.png', '1');
INSERT INTO `aos_icon` VALUES ('icon66.png', '1');
INSERT INTO `aos_icon` VALUES ('icon67.png', '1');
INSERT INTO `aos_icon` VALUES ('icon68.png', '1');
INSERT INTO `aos_icon` VALUES ('icon7.png', '1');
INSERT INTO `aos_icon` VALUES ('icon70.png', '1');
INSERT INTO `aos_icon` VALUES ('icon71.png', '1');
INSERT INTO `aos_icon` VALUES ('icon72.png', '1');
INSERT INTO `aos_icon` VALUES ('icon75.png', '1');
INSERT INTO `aos_icon` VALUES ('icon76.png', '1');
INSERT INTO `aos_icon` VALUES ('icon77.png', '1');
INSERT INTO `aos_icon` VALUES ('icon78.png', '1');
INSERT INTO `aos_icon` VALUES ('icon79.png', '1');
INSERT INTO `aos_icon` VALUES ('icon8.png', '1');
INSERT INTO `aos_icon` VALUES ('icon80.png', '1');
INSERT INTO `aos_icon` VALUES ('icon82.png', '1');
INSERT INTO `aos_icon` VALUES ('icon85.png', '1');
INSERT INTO `aos_icon` VALUES ('icon86.png', '1');
INSERT INTO `aos_icon` VALUES ('icon88.png', '1');
INSERT INTO `aos_icon` VALUES ('icon9.png', '1');
INSERT INTO `aos_icon` VALUES ('icon96.png', '1');
INSERT INTO `aos_icon` VALUES ('icon_19.png', '1');
INSERT INTO `aos_icon` VALUES ('icq.png', '1');
INSERT INTO `aos_icon` VALUES ('id.png', '1');
INSERT INTO `aos_icon` VALUES ('ins.png', '1');
INSERT INTO `aos_icon` VALUES ('jar.png', '1');
INSERT INTO `aos_icon` VALUES ('key.png', '1');
INSERT INTO `aos_icon` VALUES ('layout.png', '1');
INSERT INTO `aos_icon` VALUES ('layout2.png', '1');
INSERT INTO `aos_icon` VALUES ('left.png', '1');
INSERT INTO `aos_icon` VALUES ('lightbulb.png', '1');
INSERT INTO `aos_icon` VALUES ('lock.png', '1');
INSERT INTO `aos_icon` VALUES ('lock3.png', '1');
INSERT INTO `aos_icon` VALUES ('modules_wizard.gif', '1');
INSERT INTO `aos_icon` VALUES ('monitor.png', '1');
INSERT INTO `aos_icon` VALUES ('node.png', '1');
INSERT INTO `aos_icon` VALUES ('ok.png', '1');
INSERT INTO `aos_icon` VALUES ('ok1.png', '1');
INSERT INTO `aos_icon` VALUES ('ok3.png', '1');
INSERT INTO `aos_icon` VALUES ('ok4.png', '1');
INSERT INTO `aos_icon` VALUES ('ok5.png', '1');
INSERT INTO `aos_icon` VALUES ('org.png', '1');
INSERT INTO `aos_icon` VALUES ('org2.png', '1');
INSERT INTO `aos_icon` VALUES ('outs.png', '1');
INSERT INTO `aos_icon` VALUES ('own.png', '1');
INSERT INTO `aos_icon` VALUES ('page.png', '1');
INSERT INTO `aos_icon` VALUES ('page2.png', '1');
INSERT INTO `aos_icon` VALUES ('page3.png', '1');
INSERT INTO `aos_icon` VALUES ('page_code.png', '1');
INSERT INTO `aos_icon` VALUES ('page_font.png', '1');
INSERT INTO `aos_icon` VALUES ('page_next.png', '1');
INSERT INTO `aos_icon` VALUES ('page_office.png', '1');
INSERT INTO `aos_icon` VALUES ('page_paint.png', '1');
INSERT INTO `aos_icon` VALUES ('page_picture.png', '1');
INSERT INTO `aos_icon` VALUES ('page_vector.png', '1');
INSERT INTO `aos_icon` VALUES ('paint2.png', '1');
INSERT INTO `aos_icon` VALUES ('paste.png', '1');
INSERT INTO `aos_icon` VALUES ('picture.png', '1');
INSERT INTO `aos_icon` VALUES ('pictures.png', '1');
INSERT INTO `aos_icon` VALUES ('picture_empty.png', '1');
INSERT INTO `aos_icon` VALUES ('plugin.png', '1');
INSERT INTO `aos_icon` VALUES ('plugin2.png', '1');
INSERT INTO `aos_icon` VALUES ('printer.png', '1');
INSERT INTO `aos_icon` VALUES ('query.png', '1');
INSERT INTO `aos_icon` VALUES ('redo.png', '1');
INSERT INTO `aos_icon` VALUES ('refresh.png', '1');
INSERT INTO `aos_icon` VALUES ('refresh2.png', '1');
INSERT INTO `aos_icon` VALUES ('right.png', '1');
INSERT INTO `aos_icon` VALUES ('save.png', '1');
INSERT INTO `aos_icon` VALUES ('save_all.png', '1');
INSERT INTO `aos_icon` VALUES ('search.png', '1');
INSERT INTO `aos_icon` VALUES ('security.png', '1');
INSERT INTO `aos_icon` VALUES ('send_receive.png', '1');
INSERT INTO `aos_icon` VALUES ('shape_align_bottom.png', '1');
INSERT INTO `aos_icon` VALUES ('shape_align_center.png', '1');
INSERT INTO `aos_icon` VALUES ('shape_align_middle.png', '1');
INSERT INTO `aos_icon` VALUES ('shape_group.png', '1');
INSERT INTO `aos_icon` VALUES ('shape_handles.png', '1');
INSERT INTO `aos_icon` VALUES ('shape_move_back.png', '1');
INSERT INTO `aos_icon` VALUES ('share.png', '1');
INSERT INTO `aos_icon` VALUES ('sitemap.png', '1');
INSERT INTO `aos_icon` VALUES ('sql.png', '1');
INSERT INTO `aos_icon` VALUES ('sql2.png', '1');
INSERT INTO `aos_icon` VALUES ('sql3.png', '1');
INSERT INTO `aos_icon` VALUES ('stop.gif', '1');
INSERT INTO `aos_icon` VALUES ('stop2.png', '1');
INSERT INTO `aos_icon` VALUES ('stop3.png', '1');
INSERT INTO `aos_icon` VALUES ('system.png', '1');
INSERT INTO `aos_icon` VALUES ('table.png', '1');
INSERT INTO `aos_icon` VALUES ('table2.png', '1');
INSERT INTO `aos_icon` VALUES ('tables.png', '1');
INSERT INTO `aos_icon` VALUES ('tables_relation.png', '1');
INSERT INTO `aos_icon` VALUES ('table_edit.png', '1');
INSERT INTO `aos_icon` VALUES ('tag.png', '1');
INSERT INTO `aos_icon` VALUES ('task.png', '1');
INSERT INTO `aos_icon` VALUES ('task1.png', '1');
INSERT INTO `aos_icon` VALUES ('task_finish.png', '1');
INSERT INTO `aos_icon` VALUES ('task_list.png', '1');
INSERT INTO `aos_icon` VALUES ('terminal.png', '1');
INSERT INTO `aos_icon` VALUES ('textfield.png', '1');
INSERT INTO `aos_icon` VALUES ('text_cap.png', '1');
INSERT INTO `aos_icon` VALUES ('text_col.png', '1');
INSERT INTO `aos_icon` VALUES ('text_list.png', '1');
INSERT INTO `aos_icon` VALUES ('text_upper.png', '1');
INSERT INTO `aos_icon` VALUES ('theme.png', '1');
INSERT INTO `aos_icon` VALUES ('time.png', '1');
INSERT INTO `aos_icon` VALUES ('timeline.png', '1');
INSERT INTO `aos_icon` VALUES ('undo.png', '1');
INSERT INTO `aos_icon` VALUES ('up.png', '1');
INSERT INTO `aos_icon` VALUES ('up2.png', '1');
INSERT INTO `aos_icon` VALUES ('up_left.png', '1');
INSERT INTO `aos_icon` VALUES ('up_right.png', '1');
INSERT INTO `aos_icon` VALUES ('user1.png', '1');
INSERT INTO `aos_icon` VALUES ('user2.png', '1');
INSERT INTO `aos_icon` VALUES ('user20.png', '1');
INSERT INTO `aos_icon` VALUES ('user3.png', '1');
INSERT INTO `aos_icon` VALUES ('user6.png', '1');
INSERT INTO `aos_icon` VALUES ('user8.png', '1');
INSERT INTO `aos_icon` VALUES ('vcard.png', '1');
INSERT INTO `aos_icon` VALUES ('vector.png', '1');
INSERT INTO `aos_icon` VALUES ('wand.png', '1');
INSERT INTO `aos_icon` VALUES ('webcam.png', '1');
INSERT INTO `aos_icon` VALUES ('zoom_in.png', '1');
INSERT INTO `aos_icon` VALUES ('zoom_out.png', '1');
COMMIT;

-- ----------------------------
-- Table structure for aos_module
-- ----------------------------
DROP TABLE IF EXISTS `aos_module`;
CREATE TABLE `aos_module` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '功能模块流水号',
  `cascade_id` varchar(255) NOT NULL COMMENT '节点语义ID',
  `parent_id` int(10) NOT NULL COMMENT '父节点流水号',
  `name` varchar(255) NOT NULL COMMENT '功能模块名称',
  `url` varchar(255) DEFAULT NULL COMMENT '主页面URL',
  `icon_name` varchar(255) DEFAULT NULL COMMENT '节点图标文件名称',
  `is_leaf` varchar(255) NOT NULL COMMENT '是否叶子节点',
  `is_auto_expand` varchar(255) NOT NULL COMMENT '是否自动展开',
  `is_enable` varchar(255) NOT NULL COMMENT '是否启用',
  `vector` varchar(255) DEFAULT NULL COMMENT '矢量图标',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='功能模块表';

-- ----------------------------
-- Records of aos_module
-- ----------------------------
BEGIN;
INSERT INTO `aos_module` VALUES (-1, '0.001.002.003', 8, '角色管理', 'aosRoleHttpService.init', 'own.png', '1', '0', '1', '', 30);
INSERT INTO `aos_module` VALUES (1, '0', 0, 'SHOP开发套件', '', 'home.png', '0', '1', '1', '', 1);
INSERT INTO `aos_module` VALUES (2, '0.001', 1, '系统管理', '', 'folder22.png', '0', '1', '1', 'fa-cogs', 10);
INSERT INTO `aos_module` VALUES (3, '0.002', 1, '范例', '', 'folder9.png', '0', '1', '0', 'fa-bug', 20);
INSERT INTO `aos_module` VALUES (4, '0.001.001', 2, '资源', '', 'folder1.png', '0', '1', '1', '', 10);
INSERT INTO `aos_module` VALUES (5, '0.001.001.001', 4, '键值参数', 'masterDataService.initParam', 'icon153.png', '1', '0', '1', '', 10);
INSERT INTO `aos_module` VALUES (6, '0.001.001.002', 4, '数据字典', 'masterDataService.initDictionary', 'icon152.png', '1', '0', '1', '', 20);
INSERT INTO `aos_module` VALUES (7, '0.001.001.003', 4, '功能模块', 'moduleService.init', 'icon154.png', '1', '0', '1', '', 30);
INSERT INTO `aos_module` VALUES (8, '0.001.002', 2, '权限', '', 'folder1.png', '0', '1', '1', '', 20);
INSERT INTO `aos_module` VALUES (9, '0.001.002.001', 8, '学院管理', 'aosOrgHttpService.init', 'org.png', '1', '0', '1', '', 10);
INSERT INTO `aos_module` VALUES (10, '0.001.002.002', 8, '用户管理', 'aosUserHttpService.init', 'user6.png', '1', '0', '1', '', 20);
INSERT INTO `aos_module` VALUES (11, '0.001.003', 2, '监控', '', 'folder1.png', '0', '1', '1', '', 30);
INSERT INTO `aos_module` VALUES (12, '0.001.003.001', 11, '在线用户', 'onlineUserService.init', 'text_list.png', '1', '0', '1', '', 10);
INSERT INTO `aos_module` VALUES (13, '0.001.004', 2, '工具', '', 'folder1.png', '0', '1', '0', '', 40);
INSERT INTO `aos_module` VALUES (14, '0.001.004.001', 13, '图标', 'iconService.init', 'pictures.png', '1', '0', '0', '', 90);
INSERT INTO `aos_module` VALUES (15, '0.001.004.002', 13, 'Redis缓存管理', 'cacheManageService.init', 'freelance.png', '1', '0', '0', '', 10);
INSERT INTO `aos_module` VALUES (16, '0.002.001', 3, '综合实例', '', '', '0', '1', '0', '', 90);
INSERT INTO `aos_module` VALUES (17, '0.002.001.001', 16, '简单查询', 'demoService.initMisc1', '', '1', '0', '0', '', 10);
INSERT INTO `aos_module` VALUES (18, '0.002.001.002', 16, '增删改查', 'demoService.initMisc2', '', '1', '0', '0', '', 20);
INSERT INTO `aos_module` VALUES (19, '0.002.001.003', 16, '常用布局一', 'demoService.initMisc3', '', '1', '0', '0', '', 30);
INSERT INTO `aos_module` VALUES (20, '0.002.001.004', 16, '常用布局二', 'demoService.initMisc4', '', '1', '0', '0', '', 40);
INSERT INTO `aos_module` VALUES (21, '0.002.001.005', 16, '常用布局三', 'demoService.initMisc5', '', '1', '0', '0', '', 50);
INSERT INTO `aos_module` VALUES (22, '0.002.001.006', 16, '常用布局四', 'demoService.initMisc6', '', '1', '0', '0', '', 60);
INSERT INTO `aos_module` VALUES (23, '0.002.002', 3, '基础组件', '', '', '0', '1', '0', '', 10);
INSERT INTO `aos_module` VALUES (24, '0.002.002.001', 23, '按钮|停靠栏|信息提示', 'demoService.initBasic1', '', '1', '0', '0', '', 10);
INSERT INTO `aos_module` VALUES (25, '0.002.002.002', 23, '容器组件及常用布局', 'demoService.initBasic2', '', '1', '0', '0', '', 20);
INSERT INTO `aos_module` VALUES (26, '0.002.002.003', 23, '树组件', 'demoService.initTree', '', '1', '0', '0', '', 50);
INSERT INTO `aos_module` VALUES (27, '0.002.002.004', 23, '表单组件', 'demoService.initForm', '', '1', '0', '0', '', 30);
INSERT INTO `aos_module` VALUES (28, '0.002.002.005', 23, '表格组件', 'demoService.initGrid', '', '1', '0', '0', '', 40);
INSERT INTO `aos_module` VALUES (29, '0.002.002.006', 23, '表格组件二', 'demoService.initGrid2', '', '1', '0', '0', '', 41);
INSERT INTO `aos_module` VALUES (30, '0.001.002.004', 8, '广告轮播图', 'bannerHttpService.init', 'basket.png', '1', '0', '1', '', 10);
COMMIT;

-- ----------------------------
-- Table structure for aos_org
-- ----------------------------
DROP TABLE IF EXISTS `aos_org`;
CREATE TABLE `aos_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of aos_org
-- ----------------------------
BEGIN;
INSERT INTO `aos_org` VALUES (1, '信息科学与技术学院', NULL);
INSERT INTO `aos_org` VALUES (2, '文学与传媒学院', NULL);
INSERT INTO `aos_org` VALUES (4, '历史学院', NULL);
INSERT INTO `aos_org` VALUES (5, '数学与统计学院', NULL);
INSERT INTO `aos_org` VALUES (6, '物理与电子工程学院', NULL);
INSERT INTO `aos_org` VALUES (7, '化学化工学院', NULL);
INSERT INTO `aos_org` VALUES (8, '外国语学院', NULL);
INSERT INTO `aos_org` VALUES (9, '商学院', NULL);
INSERT INTO `aos_org` VALUES (10, '音乐学院', NULL);
INSERT INTO `aos_org` VALUES (11, '机械与工程学院', NULL);
INSERT INTO `aos_org` VALUES (12, '教师教育学院', NULL);
INSERT INTO `aos_org` VALUES (13, '管理学院', NULL);
INSERT INTO `aos_org` VALUES (14, '经济学院', '');
COMMIT;

-- ----------------------------
-- Table structure for aos_params
-- ----------------------------
DROP TABLE IF EXISTS `aos_params`;
CREATE TABLE `aos_params` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `name` varchar(255) NOT NULL COMMENT '参数名称',
  `params_key` varchar(255) NOT NULL COMMENT '参数键',
  `value` varchar(255) DEFAULT NULL COMMENT '参数值',
  `params_group` varchar(255) DEFAULT NULL COMMENT '参数分组',
  `remark` varchar(4000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ukey1` (`params_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='参数表';

-- ----------------------------
-- Records of aos_params
-- ----------------------------
BEGIN;
INSERT INTO `aos_params` VALUES (1, '开发用户快捷登录开关', 'login_dev', '0', '1', '可选值：1 | 0。1：打开；0：关闭。');
INSERT INTO `aos_params` VALUES (2, '系统缺省皮肤', 'skin', 'blue', '1', '可选值：blue|gray|aos。优先级低于用户自己的皮肤配置。');
INSERT INTO `aos_params` VALUES (3, '登录页面的背景图片', 'login_back_img', '-1', '1', '登录页面的背景图片。可选的预设背景图片为：0.jpg、1.jpg、2.jpg。如果需要随机出现背景，则将其设置为-1。');
INSERT INTO `aos_params` VALUES (4, '是否显示验证码', 'is_show_vercode', '1', '1', '是否在登录页面显示验证码及后台验证码验证。可选值：0(否) | 1(是)。');
INSERT INTO `aos_params` VALUES (5, '验证码长度', 'vercode_length', '4', '1', NULL);
INSERT INTO `aos_params` VALUES (6, '验证码待选字符集', 'vercode_characters', 'abcdetx2345678', '1', NULL);
INSERT INTO `aos_params` VALUES (7, 'Tab高亮颜色', 'tab_focus_color', '#0099FF', '1', '缺省的当前Tab卡片高亮提示颜色');
INSERT INTO `aos_params` VALUES (8, '表格分页行数', 'page_size', '50', '1', '缺省的分页大小。JSP页面的属性设置会覆盖这个配置。');
INSERT INTO `aos_params` VALUES (9, '表格列单元格内容对齐方式', 'grid_column_algin', 'left', '1', '表格列对齐模式。有效值：left|center|right。');
INSERT INTO `aos_params` VALUES (10, '全局右键', 'prevent_rightclick', 'false', '1', '阻止浏览器缺省鼠标右键事件。可选值：true|false。缺省值：true。');
INSERT INTO `aos_params` VALUES (11, '下拉选择框的缺省提示信息', 'combobox_emptytext', '请选择...', '1', NULL);
INSERT INTO `aos_params` VALUES (12, '表单校验消息提示方式', 'msgtarget', 'qtip', '1', '可选值必须是下列值之一 (1)、qtip 当用户鼠标悬停在该域之上时显示包含了消息的迅速提示。(2)、title 显示消息以浏览器默认的title属性弹出。 (3)、under 在域下方添加一块包含了错误消息的div。(4)、side 添加一个错误图标在域的右边，鼠标悬停上面时弹出显示消息。');
INSERT INTO `aos_params` VALUES (13, '水平导航条按钮风格', 'nav_button_style', 'tight', '1', '顶部水平导航条的按钮样式风格。tight：组合按钮；standalone：独立按钮。');
INSERT INTO `aos_params` VALUES (14, '是否显示水平导航条', 'is_show_top_nav', '1', '1', '是否显示水平导航条。可选值：1 | 0。');
INSERT INTO `aos_params` VALUES (15, '页面刷新动画文件', 'page_load_gif', 'wheel.gif', '1', '页面刷新动画文件。可选的预设动画文件：run.gif、wheel.gif。动画path：/static/image/gif/pageload。');
INSERT INTO `aos_params` VALUES (16, '运行模式', 'run_mode', '0', '1', '0：开发模式；1：生产模式；2：在线体验模式');
INSERT INTO `aos_params` VALUES (17, '功能模块页面加载等待提示信息', 'page_load_msg', '正在拼命带你飞, 请稍候...', '1', '');
INSERT INTO `aos_params` VALUES (18, '欢迎页标题', 'welcome_page_title', '欢迎', '1', '');
INSERT INTO `aos_params` VALUES (19, '版权信息', 'copyright', '2018-2019 SHOP校园二手商城', '1', '');
INSERT INTO `aos_params` VALUES (20, '用户会话Redis超时时间', 'user_login_timeout', '18000', '1', '以秒(s)为单位。18000=5小时。');
INSERT INTO `aos_params` VALUES (21, '首页浏览器标题', 'app_title', 'SHOP校园二手商城', '1', '');
INSERT INTO `aos_params` VALUES (22, '加解密算法密钥', 'code_key', 'HY&XC&MW', '1', '用户密码加解密算法密钥：密钥不能小于8位');
INSERT INTO `aos_params` VALUES (23, 'QQ群推广链接', 'qq_group_link', 'http://jq.qq.com/?_wv=1027&k=40fPema', '1', '当系统处于在线演示模式时，登录系统后会弹出自动加QQ群提示。');
INSERT INTO `aos_params` VALUES (24, '表格查询无数据时的显示信息', 'grid_empty_text', '没有查询到符合条件的数据 : ( ', '1', '');
INSERT INTO `aos_params` VALUES (25, '登录请求等待信息', 'login_wait_msg', '正在拼命带你飞, 请稍候...', '1', '');
INSERT INTO `aos_params` VALUES (26, '开发用户快捷登录账户', 'login_dev_account', 'root', '1', '可设置为任意一个系统存在的账户。');
COMMIT;

-- ----------------------------
-- Table structure for aos_role
-- ----------------------------
DROP TABLE IF EXISTS `aos_role`;
CREATE TABLE `aos_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(16) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of aos_role
-- ----------------------------
BEGIN;
INSERT INTO `aos_role` VALUES (1, '超级角色', '平台管理');
INSERT INTO `aos_role` VALUES (2, '普通角色', '客户角色');
COMMIT;

-- ----------------------------
-- Table structure for aos_user
-- ----------------------------
DROP TABLE IF EXISTS `aos_user`;
CREATE TABLE `aos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `account` varchar(64) NOT NULL COMMENT '用户登录帐号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `name` varchar(32) NOT NULL COMMENT '用户姓名',
  `sex` varchar(4) NOT NULL COMMENT '性别',
  `status` varchar(4) NOT NULL COMMENT '用户状态',
  `college_id` int(11) NOT NULL COMMENT '所属部门流水号',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮件',
  `telephone` varchar(12) DEFAULT NULL COMMENT '联系电话',
  `is_del` varchar(4) NOT NULL COMMENT '是否已删除',
  `createdtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户基本信息表';

-- ----------------------------
-- Records of aos_user
-- ----------------------------
BEGIN;
INSERT INTO `aos_user` VALUES (-1, 'root', '213b51f7b9332b8aa974215a11e85ae8', '超级管理员', '2', '1', 1, '1665345498@qq.com', '13643380869', '0', '2016-08-12 17:38:19');
COMMIT;

-- ----------------------------
-- Table structure for aos_user_role
-- ----------------------------
DROP TABLE IF EXISTS `aos_user_role`;
CREATE TABLE `aos_user_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `user_id` int(10) NOT NULL COMMENT '用户流水号',
  `role_id` int(10) NOT NULL COMMENT '角色流水号',
  `createdtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `aos_sys_user_role_ukey` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户-角色关联表';

-- ----------------------------
-- Records of aos_user_role
-- ----------------------------
BEGIN;
INSERT INTO `aos_user_role` VALUES (1, -1, 1, '2018-04-25 12:24:33');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(32) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, '手机');
INSERT INTO `category` VALUES (2, '电脑');
INSERT INTO `category` VALUES (3, '配件');
INSERT INTO `category` VALUES (4, '电器');
INSERT INTO `category` VALUES (5, '书籍');
INSERT INTO `category` VALUES (6, '娱乐');
INSERT INTO `category` VALUES (7, '运动');
INSERT INTO `category` VALUES (8, '代步');
INSERT INTO `category` VALUES (9, '其他');
COMMIT;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `createdtime` datetime DEFAULT NULL COMMENT '收藏日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `sid` int(11) NOT NULL COMMENT '需求流水号',
  `word` varchar(4000) NOT NULL COMMENT '留言',
  `uid` int(32) NOT NULL COMMENT '用户流水号',
  `createdtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='留言表';

-- ----------------------------
-- Table structure for demo_account
-- ----------------------------
DROP TABLE IF EXISTS `demo_account`;
CREATE TABLE `demo_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `card_id` varchar(255) NOT NULL COMMENT '卡号',
  `card_type` varchar(6) NOT NULL COMMENT '卡类型',
  `balance` decimal(10,2) DEFAULT NULL COMMENT '可用余额',
  `credit_line` decimal(10,2) DEFAULT NULL COMMENT '信用额度',
  `org_id` varchar(64) DEFAULT NULL COMMENT '所属银行机构ID',
  `id_no` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `age` int(255) DEFAULT NULL COMMENT '年龄',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_user_id` varchar(64) NOT NULL COMMENT '创建人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='银行信用卡账户表';

-- ----------------------------
-- Records of demo_account
-- ----------------------------
BEGIN;
INSERT INTO `demo_account` VALUES (6640, '郤芹', '10004008', '1', 49670.47, 80000.00, '000', '2925196111177374', '3', '2016-04-24', 98, '上海霞飞路27号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6641, '毛秦烟', '10004009', '2', 12499.93, 80000.00, '000', '2925198111134596', '1', '2016-04-24', 37, '上海霞飞路640号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6642, '熊移', '10004010', '2', 50077.32, 80000.00, '000', '2925195912163086', '2', '2016-04-24', 60, '上海霞飞路15号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6643, '张腿', '10004011', '2', 28854.48, 80000.00, '000', '2925196611112784', '3', '2016-04-24', 18, '上海霞飞路986号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6644, '毛祥', '10004012', '1', 49407.70, 80000.00, '000', '2925195711286290', '2', '2016-04-24', 68, '上海霞飞路937号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6645, '黄航涛', '10004013', '1', 19418.72, 80000.00, '000', '2925195212268890', '2', '2016-04-24', 25, '上海霞飞路408号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6646, '周碉', '10004014', '2', 58464.67, 80000.00, '000', '2925193611239845', '1', '2016-04-24', 92, '上海霞飞路926号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6647, '郤僚镭', '10004015', '2', 51873.59, 80000.00, '000', '2925194212153394', '2', '2016-04-24', 59, '上海霞飞路54号', '2016-04-24 21:50:50', '1');
INSERT INTO `demo_account` VALUES (6648, '郤很宇', '10004016', '2', 52692.54, 80000.00, '000', '2925193710241751', '2', '2016-04-24', 84, '上海霞飞路676号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6649, '段妨', '10004017', '2', 61325.34, 80000.00, '000', '2925200511114199', '2', '2016-04-24', 59, '上海霞飞路31号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6650, '刘舷杠', '10004018', '2', 53578.49, 80000.00, '000', '2925198211115151', '3', '2016-04-24', 87, '上海霞飞路930号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6651, '张铁', '10004019', '1', 25743.54, 80000.00, '000', '2925201411278792', '1', '2016-04-24', 47, '上海霞飞路58号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6652, '熊邻吕', '10004020', '1', 15899.50, 80000.00, '000', '2925195511232654', '2', '2016-04-24', 25, '上海霞飞路75号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6653, '熊米', '10004021', '1', 63871.30, 80000.00, '000', '2925194211289125', '2', '2016-04-24', 48, '上海霞飞路682号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6654, '段堵澜', '10004022', '2', 36218.55, 80000.00, '000', '2925196012107590', '1', '2016-04-24', 66, '上海霞飞路555号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6655, '刘焰说', '10004023', '1', 55271.68, 80000.00, '000', '2925196310105481', '1', '2016-04-24', 34, '上海霞飞路397号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6656, '毛辨央', '10004024', '2', 10514.39, 80000.00, '000', '2925197211107129', '2', '2016-04-24', 56, '上海霞飞路102号', '2016-04-24 21:50:51', '1');
INSERT INTO `demo_account` VALUES (6657, '赵染吁', '10004025', '2', 28650.64, 80000.00, '000', '2925198412281876', '1', '2016-04-24', 35, '上海霞飞路263号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6658, '张吨镭', '10004026', '1', 33356.62, 80000.00, '000', '2925192110288400', '2', '2016-04-24', 92, '上海霞飞路951号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6659, '周咎', '10004027', '2', 67105.65, 80000.00, '000', '2925192512253754', '2', '2016-04-24', 40, '上海霞飞路858号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6660, '熊忍', '10004028', '2', 37519.17, 80000.00, '000', '2925193510207026', '2', '2016-04-24', 48, '上海霞飞路549号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6661, '郤嫁', '10004029', '2', 51449.99, 80000.00, '000', '2925194110115019', '2', '2016-04-24', 55, '上海霞飞路656号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6662, '黄厘', '10004030', '1', 77427.80, 80000.00, '000', '2925192411295712', '3', '2016-04-24', 77, '上海霞飞路439号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6663, '熊派晌', '10004031', '1', 25261.39, 80000.00, '000', '2925192812297659', '1', '2016-04-24', 44, '上海霞飞路169号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6664, '段沦', '10004032', '1', 14346.55, 80000.00, '000', '2925199711205804', '1', '2016-04-24', 94, '上海霞飞路307号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6665, '段衫', '10004033', '1', 59805.36, 80000.00, '000', '2925196610162522', '2', '2016-04-24', 93, '上海霞飞路443号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6666, '毛俭实', '10004034', '1', 43696.35, 80000.00, '000', '2925198811174956', '2', '2016-04-24', 86, '上海霞飞路390号', '2016-04-24 21:50:52', '1');
INSERT INTO `demo_account` VALUES (6667, '赵秤企', '10004035', '2', 69474.60, 80000.00, '000', '2925192811183980', '1', '2016-04-24', 62, '上海霞飞路755号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6668, '张宴糖', '10004036', '2', 45404.81, 80000.00, '000', '2925200412209317', '1', '2016-04-24', 93, '上海霞飞路723号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6669, '周奎务', '10004037', '2', 46898.16, 80000.00, '000', '2925196211218551', '2', '2016-04-24', 98, '上海霞飞路583号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6670, '周麻棺', '10004038', '2', 48689.75, 80000.00, '000', '2925194710117895', '3', '2016-04-24', 29, '上海霞飞路932号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6671, '李权', '10004039', '2', 21372.25, 80000.00, '000', '2925192611231729', '3', '2016-04-24', 86, '上海霞飞路211号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6672, '熊爸', '10004040', '1', 51168.69, 80000.00, '000', '2925197911202985', '1', '2016-04-24', 33, '上海霞飞路540号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6673, '李选', '10004041', '2', 24751.10, 80000.00, '000', '2925200812184547', '2', '2016-04-24', 92, '上海霞飞路540号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6674, '毛鹊', '10004042', '2', 40699.37, 80000.00, '000', '2925199710243822', '2', '2016-04-24', 94, '上海霞飞路999号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6675, '赵膜', '10004043', '2', 71460.49, 80000.00, '000', '2925200812199675', '2', '2016-04-24', 23, '上海霞飞路963号', '2016-04-24 21:50:53', '1');
INSERT INTO `demo_account` VALUES (6676, '赵匈痕', '10004044', '1', 50846.20, 80000.00, '000', '2925196910119868', '1', '2016-04-24', 76, '上海霞飞路918号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6677, '郤鸡', '10004045', '1', 29761.72, 80000.00, '000', '2925201010141060', '3', '2016-04-24', 87, '上海霞飞路373号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6678, '熊犊', '10004046', '2', 25364.12, 80000.00, '000', '2925200410203377', '2', '2016-04-24', 81, '上海霞飞路199号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6679, '郤畜', '10004047', '2', 19939.62, 80000.00, '000', '2925198810181381', '2', '2016-04-24', 78, '上海霞飞路659号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6680, '刘虚让', '10004048', '2', 25616.17, 80000.00, '000', '2925194511119133', '3', '2016-04-24', 26, '上海霞飞路37号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6681, '段烫', '10004049', '1', 69541.80, 80000.00, '000', '2925198110113870', '2', '2016-04-24', 20, '上海霞飞路280号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6682, '李田擂', '10004050', '2', 75306.88, 80000.00, '000', '2925199110122537', '2', '2016-04-24', 48, '上海霞飞路21号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6683, '李攫', '10004051', '2', 68330.52, 80000.00, '000', '2925193111297255', '1', '2016-04-24', 61, '上海霞飞路744号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6684, '刘仟辜', '10004052', '2', 65430.28, 80000.00, '000', '2925199710167414', '1', '2016-04-24', 83, '上海霞飞路776号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6685, '张新', '10004053', '1', 48089.78, 80000.00, '000', '2925194112115860', '3', '2016-04-24', 67, '上海霞飞路102号', '2016-04-24 21:50:54', '1');
INSERT INTO `demo_account` VALUES (6686, '郤驼横', '10004054', '2', 12852.97, 80000.00, '000', '2925194311137227', '1', '2016-04-24', 21, '上海霞飞路877号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6687, '黄欠宴', '10004055', '1', 16932.70, 80000.00, '000', '2925198511275139', '1', '2016-04-24', 45, '上海霞飞路765号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6688, '张姐鳖', '10004056', '1', 22389.86, 80000.00, '000', '2925194012206564', '1', '2016-04-24', 67, '上海霞飞路992号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6689, '李芬记', '10004057', '2', 76274.25, 80000.00, '000', '2925196210179172', '2', '2016-04-24', 75, '上海霞飞路282号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6690, '刘饺剃', '10004058', '1', 60817.20, 80000.00, '000', '2925194410156086', '2', '2016-04-24', 32, '上海霞飞路474号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6691, '段陀', '10004059', '1', 13092.30, 80000.00, '000', '2925195912289899', '2', '2016-04-24', 33, '上海霞飞路861号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6692, '郤慢', '10004060', '2', 39688.14, 80000.00, '000', '2925196011167306', '1', '2016-04-24', 21, '上海霞飞路860号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6693, '赵莆', '10004061', '2', 20646.48, 80000.00, '000', '2925192512231123', '2', '2016-04-24', 29, '上海霞飞路780号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6694, '段绑艺', '10004062', '2', 56360.70, 80000.00, '000', '2925200712223879', '1', '2016-04-24', 47, '上海霞飞路9号', '2016-04-24 21:50:55', '1');
INSERT INTO `demo_account` VALUES (6695, '李地村', '10004063', '2', 75295.10, 80000.00, '000', '2925192112266546', '2', '2016-04-24', 72, '上海霞飞路978号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6696, '李唁', '10004064', '2', 69137.25, 80000.00, '000', '2925200610268280', '2', '2016-04-24', 19, '上海霞飞路807号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6697, '刘床寄', '10004065', '1', 29559.86, 80000.00, '000', '2925199812175394', '2', '2016-04-24', 40, '上海霞飞路452号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6698, '段汕蕾', '10004066', '1', 76914.61, 80000.00, '000', '2925195611183048', '1', '2016-04-24', 51, '上海霞飞路709号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6699, '毛涕', '10004067', '1', 58080.76, 80000.00, '000', '2925196812231371', '1', '2016-04-24', 25, '上海霞飞路280号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6700, '刘真臆', '10004068', '2', 42240.71, 80000.00, '000', '2925194910294976', '2', '2016-04-24', 33, '上海霞飞路523号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6701, '李孟哗', '10004069', '2', 75623.70, 80000.00, '000', '2925197212155995', '1', '2016-04-24', 68, '上海霞飞路370号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6702, '段天', '10004070', '1', 73177.28, 80000.00, '000', '2925195012269911', '1', '2016-04-24', 21, '上海霞飞路200号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6703, '黄议仙', '10004071', '1', 20773.66, 80000.00, '000', '2925197210206598', '1', '2016-04-24', 44, '上海霞飞路269号', '2016-04-24 21:50:56', '1');
INSERT INTO `demo_account` VALUES (6704, '黄蒂企', '10004072', '2', 65862.71, 80000.00, '000', '2925199311192070', '2', '2016-04-24', 82, '上海霞飞路560号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6705, '段才羞', '10004073', '2', 31471.69, 80000.00, '000', '2925197611279486', '3', '2016-04-24', 61, '上海霞飞路621号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6706, '张剑铸', '10004074', '2', 26183.53, 80000.00, '000', '2925200610127006', '2', '2016-04-24', 68, '上海霞飞路199号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6707, '郤痔丁', '10004075', '1', 75039.45, 80000.00, '000', '2925192411248070', '2', '2016-04-24', 47, '上海霞飞路120号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6708, '李尽', '10004076', '2', 13445.73, 80000.00, '000', '2925196010207653', '3', '2016-04-24', 26, '上海霞飞路7号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6709, '赵枫', '10004077', '1', 19846.27, 80000.00, '000', '2925196211146979', '3', '2016-04-24', 72, '上海霞飞路43号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6710, '郤场梳', '10004078', '2', 73440.41, 80000.00, '000', '2925198711224076', '2', '2016-04-24', 45, '上海霞飞路50号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6711, '李聂逐', '10004079', '1', 44256.20, 80000.00, '000', '2925197210251433', '1', '2016-04-24', 49, '上海霞飞路707号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6712, '熊紧', '10004080', '2', 28814.11, 80000.00, '000', '2925196710164850', '2', '2016-04-24', 45, '上海霞飞路747号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6713, '黄愧阁', '10004081', '1', 39012.83, 80000.00, '000', '2925199711202405', '2', '2016-04-24', 61, '上海霞飞路432号', '2016-04-24 21:50:57', '1');
INSERT INTO `demo_account` VALUES (6714, '熊燕', '10004082', '2', 49134.87, 80000.00, '000', '2925200312251203', '2', '2016-04-24', 65, '上海霞飞路584号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6715, '张骨拜', '10004083', '2', 7708.56, 80000.00, '000', '2925200312202355', '2', '2016-04-24', 85, '上海霞飞路857号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6716, '李卿谷', '10004084', '1', 55542.89, 80000.00, '000', '2925197711124337', '1', '2016-04-24', 40, '上海霞飞路805号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6717, '段汞', '10004085', '1', 10482.90, 80000.00, '000', '2925198711293550', '1', '2016-04-24', 81, '上海霞飞路699号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6718, '黄尚骆', '10004086', '1', 29411.16, 80000.00, '000', '2925195612263580', '2', '2016-04-24', 80, '上海霞飞路818号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6719, '熊看', '10004087', '1', 64602.15, 80000.00, '000', '2925197410268263', '1', '2016-04-24', 73, '上海霞飞路290号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6720, '周琴', '10004088', '2', 56887.61, 80000.00, '000', '2925197712122255', '2', '2016-04-24', 34, '上海霞飞路265号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6721, '熊怔', '10004089', '1', 64068.30, 80000.00, '000', '2925192411217364', '1', '2016-04-24', 70, '上海霞飞路484号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6722, '黄护', '10004090', '1', 69723.71, 80000.00, '000', '2925196411122441', '2', '2016-04-24', 37, '上海霞飞路974号', '2016-04-24 21:50:58', '1');
INSERT INTO `demo_account` VALUES (6723, '段俩', '10004091', '1', 20901.33, 80000.00, '000', '2925197211116094', '3', '2016-04-24', 93, '上海霞飞路779号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6724, '熊噎', '10004092', '1', 75302.34, 80000.00, '000', '2925198610261012', '2', '2016-04-24', 70, '上海霞飞路274号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6725, '张搐姚', '10004093', '2', 61251.72, 80000.00, '000', '2925194911102036', '2', '2016-04-24', 19, '上海霞飞路731号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6726, '熊抨褐', '10004094', '1', 59247.39, 80000.00, '000', '2925193512177615', '3', '2016-04-24', 79, '上海霞飞路348号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6727, '熊冗绍', '10004095', '2', 71979.50, 80000.00, '000', '2925197611263569', '3', '2016-04-24', 38, '上海霞飞路18号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6728, '赵哲', '10004096', '1', 20514.73, 80000.00, '000', '2925193311227484', '1', '2016-04-24', 54, '上海霞飞路639号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6729, '周给凸', '10004097', '2', 21869.60, 80000.00, '000', '2925198611118335', '2', '2016-04-24', 86, '上海霞飞路718号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6730, '段吁蛮', '10004098', '1', 25374.11, 80000.00, '000', '2925192711121245', '2', '2016-04-24', 95, '上海霞飞路489号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6731, '段抉唬', '10004099', '2', 76097.10, 80000.00, '000', '2925192511267485', '3', '2016-04-24', 81, '上海霞飞路683号', '2016-04-24 21:50:59', '1');
INSERT INTO `demo_account` VALUES (6732, '黄示', '10004100', '1', 37172.31, 80000.00, '000', '2925192211204113', '3', '2016-04-24', 65, '上海霞飞路485号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6733, '段伐', '10004101', '1', 11132.50, 80000.00, '000', '2925194810152737', '2', '2016-04-24', 95, '上海霞飞路42号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6734, '郤蔷惕', '10004102', '2', 37270.68, 80000.00, '000', '2925193112266137', '2', '2016-04-24', 52, '上海霞飞路234号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6735, '李号', '10004103', '1', 45697.41, 80000.00, '000', '2925195411187529', '2', '2016-04-24', 30, '上海霞飞路222号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6736, '张衅对', '10004104', '1', 9067.69, 80000.00, '000', '2925199712275390', '2', '2016-04-24', 44, '上海霞飞路515号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6737, '毛戊找', '10004105', '2', 41948.51, 80000.00, '000', '2925199411155793', '2', '2016-04-24', 41, '上海霞飞路60号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6738, '段话噶', '10004106', '2', 41501.29, 80000.00, '000', '2925198310113262', '2', '2016-04-24', 88, '上海霞飞路53号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6739, '黄署虽', '10004107', '1', 43519.81, 80000.00, '000', '2925199712126111', '2', '2016-04-24', 66, '上海霞飞路829号', '2016-04-24 21:51:00', '1');
INSERT INTO `demo_account` VALUES (6740, '赵酉', '10004108', '2', 12921.14, 80000.00, '000', '2925201211226247', '1', '2016-04-24', 32, '上海霞飞路338号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6741, '赵比', '10004109', '2', 29576.38, 80000.00, '000', '2925193111177301', '2', '2016-04-24', 79, '上海霞飞路300号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6742, '段叫', '10004110', '1', 36739.10, 80000.00, '000', '2925196910288897', '2', '2016-04-24', 73, '上海霞飞路244号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6743, '熊尚', '10004111', '1', 38538.81, 80000.00, '000', '2925192610238710', '2', '2016-04-24', 49, '上海霞飞路144号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6744, '毛网寸', '10004112', '2', 56749.96, 80000.00, '000', '2925193910236826', '3', '2016-04-24', 29, '上海霞飞路387号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6745, '郤桓携', '10004113', '1', 57599.76, 80000.00, '000', '2925199810192717', '1', '2016-04-24', 27, '上海霞飞路306号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6746, '黄似掷', '10004114', '1', 32527.10, 80000.00, '000', '2925195411269918', '2', '2016-04-24', 77, '上海霞飞路446号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6747, '郤沽俱', '10004115', '1', 54719.81, 80000.00, '000', '2925201212196254', '1', '2016-04-24', 38, '上海霞飞路145号', '2016-04-24 21:51:01', '1');
INSERT INTO `demo_account` VALUES (6748, '黄璃', '10004116', '1', 27788.38, 80000.00, '000', '2925200910181160', '3', '2016-04-24', 80, '上海霞飞路915号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6749, '毛馒', '10004117', '2', 30213.50, 80000.00, '000', '2925193610271353', '2', '2016-04-24', 80, '上海霞飞路464号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6750, '赵悸', '10004118', '1', 51123.80, 80000.00, '000', '2925192312244725', '1', '2016-04-24', 63, '上海霞飞路993号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6751, '刘员颁', '10004119', '1', 57596.36, 80000.00, '000', '2925193410128001', '1', '2016-04-24', 32, '上海霞飞路758号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6752, '熊描', '10004120', '1', 34995.10, 80000.00, '000', '2925195011176234', '3', '2016-04-24', 54, '上海霞飞路580号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6753, '黄勾', '10004121', '2', 79839.18, 80000.00, '000', '2925192311201838', '1', '2016-04-24', 57, '上海霞飞路267号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6754, '张虎', '10004122', '2', 61408.18, 80000.00, '000', '2925194611151326', '1', '2016-04-24', 81, '上海霞飞路597号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6755, '熊夷躁', '10004123', '1', 59665.87, 80000.00, '000', '2925199911193457', '3', '2016-04-24', 32, '上海霞飞路672号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6756, '周因胆', '10004124', '1', 73125.34, 80000.00, '000', '2925196611149952', '1', '2016-04-24', 73, '上海霞飞路96号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6757, '张帐诧', '10004125', '1', 65058.84, 80000.00, '000', '2925197812292356', '2', '2016-04-24', 22, '上海霞飞路545号', '2016-04-24 21:51:02', '1');
INSERT INTO `demo_account` VALUES (6758, '郤旅捞', '10004126', '1', 29870.19, 80000.00, '000', '2925194411234053', '3', '2016-04-24', 85, '上海霞飞路861号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6759, '黄膜', '10004127', '1', 37608.35, 80000.00, '000', '2925196612301802', '3', '2016-04-24', 54, '上海霞飞路853号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6760, '张向铭', '10004128', '1', 7366.77, 80000.00, '000', '2925195412284491', '1', '2016-04-24', 50, '上海霞飞路487号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6761, '赵媳效', '10004129', '2', 45862.59, 80000.00, '000', '2925199412215141', '2', '2016-04-24', 90, '上海霞飞路154号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6762, '黄厂', '10004130', '2', 51653.76, 80000.00, '000', '2925198011212434', '3', '2016-04-24', 98, '上海霞飞路130号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6763, '郤抗裔', '10004131', '1', 68322.52, 80000.00, '000', '2925198511219336', '2', '2016-04-24', 56, '上海霞飞路276号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6764, '毛竖蔫', '10004132', '1', 63551.69, 80000.00, '000', '2925198912131551', '3', '2016-04-24', 42, '上海霞飞路408号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6765, '刘塘狸', '10004133', '2', 71226.29, 80000.00, '000', '2925196011271751', '2', '2016-04-24', 52, '上海霞飞路616号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6766, '毛橡', '10004134', '2', 6681.49, 80000.00, '000', '2925195511122700', '3', '2016-04-24', 80, '上海霞飞路165号', '2016-04-24 21:51:03', '1');
INSERT INTO `demo_account` VALUES (6767, '刘闷', '10004135', '1', 54786.14, 80000.00, '000', '2925199111133458', '2', '2016-04-24', 62, '上海霞飞路357号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6768, '周厚叙', '10004136', '1', 10943.15, 80000.00, '000', '2925199411287001', '3', '2016-04-24', 49, '上海霞飞路52号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6769, '段僻', '10004137', '1', 56003.60, 80000.00, '000', '2925194310286610', '2', '2016-04-24', 74, '上海霞飞路221号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6770, '毛橙庶', '10004138', '1', 35847.91, 80000.00, '000', '2925192711247440', '2', '2016-04-24', 58, '上海霞飞路158号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6771, '赵及', '10004139', '2', 40734.52, 80000.00, '000', '2925198810216641', '3', '2016-04-24', 38, '上海霞飞路592号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6772, '李轿盛', '10004140', '1', 34588.45, 80000.00, '000', '2925201511114421', '2', '2016-04-24', 42, '上海霞飞路140号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6773, '毛哇仙', '10004141', '2', 6137.30, 80000.00, '000', '2925198811198319', '2', '2016-04-24', 60, '上海霞飞路84号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6774, '赵硒洪', '10004142', '1', 24279.30, 80000.00, '000', '2925193311291903', '3', '2016-04-24', 43, '上海霞飞路575号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6775, '周邻阔', '10004143', '2', 41156.35, 80000.00, '000', '2925201510233950', '2', '2016-04-24', 41, '上海霞飞路911号', '2016-04-24 21:51:04', '1');
INSERT INTO `demo_account` VALUES (6776, '赵喝', '10004144', '1', 78231.43, 80000.00, '000', '2925196912216035', '2', '2016-04-24', 99, '上海霞飞路497号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6777, '赵闭破', '10004145', '1', 37194.79, 80000.00, '000', '2925195611115232', '1', '2016-04-24', 96, '上海霞飞路654号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6778, '段借漾', '10004146', '2', 52671.32, 80000.00, '000', '2925194812165439', '2', '2016-04-24', 46, '上海霞飞路332号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6779, '毛白搏', '10004147', '1', 17615.71, 80000.00, '000', '2925195211265564', '2', '2016-04-24', 42, '上海霞飞路230号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6780, '周咕魁', '10004148', '1', 62817.18, 80000.00, '000', '2925199211224540', '2', '2016-04-24', 34, '上海霞飞路700号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6781, '郤砂焊', '10004149', '2', 75223.13, 80000.00, '000', '2925195011303811', '3', '2016-04-24', 45, '上海霞飞路196号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6782, '李华', '10004150', '1', 77685.40, 80000.00, '000', '2925193011253594', '1', '2016-04-24', 48, '上海霞飞路797号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6783, '刘如', '10004151', '1', 35387.30, 80000.00, '000', '2925197511286826', '2', '2016-04-24', 28, '上海霞飞路707号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6784, '张著必', '10004152', '1', 55547.63, 80000.00, '000', '2925197511281329', '2', '2016-04-24', 28, '上海霞飞路318号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6785, '段昆埔', '10004153', '2', 16924.43, 80000.00, '000', '2925192612192241', '3', '2016-04-24', 60, '上海霞飞路709号', '2016-04-24 21:51:05', '1');
INSERT INTO `demo_account` VALUES (6786, '熊够辱', '10004154', '1', 62424.87, 80000.00, '000', '2925199810258333', '1', '2016-04-24', 56, '上海霞飞路137号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6787, '刘试尼', '10004155', '2', 47424.10, 80000.00, '000', '2925198011153307', '1', '2016-04-24', 93, '上海霞飞路225号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6788, '周铃', '10004156', '2', 56518.43, 80000.00, '000', '2925199010207610', '2', '2016-04-24', 26, '上海霞飞路224号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6789, '段珐纷', '10004157', '2', 16145.39, 80000.00, '000', '2925197311128819', '1', '2016-04-24', 86, '上海霞飞路815号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6790, '黄间', '10004158', '2', 75981.10, 80000.00, '000', '2925193010247932', '3', '2016-04-24', 49, '上海霞飞路482号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6791, '周甫', '10004159', '2', 8129.59, 80000.00, '000', '2925194510152392', '1', '2016-04-24', 77, '上海霞飞路553号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6792, '郤栅沙', '10004160', '1', 31922.74, 80000.00, '000', '2925199511174921', '3', '2016-04-24', 48, '上海霞飞路503号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6793, '毛炎衍', '10004161', '1', 45697.46, 80000.00, '000', '2925197611289616', '2', '2016-04-24', 35, '上海霞飞路103号', '2016-04-24 21:51:06', '1');
INSERT INTO `demo_account` VALUES (6794, '黄冯同', '10004162', '1', 29046.53, 80000.00, '000', '2925193811198986', '2', '2016-04-24', 83, '上海霞飞路434号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6795, '毛钩', '10004163', '2', 57958.71, 80000.00, '000', '2925193210128887', '2', '2016-04-24', 19, '上海霞飞路741号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6796, '李维脯', '10004164', '2', 8822.41, 80000.00, '000', '2925195311214532', '1', '2016-04-24', 80, '上海霞飞路429号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6797, '周耗逃', '10004165', '1', 29492.45, 80000.00, '000', '2925195211136902', '2', '2016-04-24', 92, '上海霞飞路423号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6798, '刘胺猪', '10004166', '1', 44592.17, 80000.00, '000', '2925200811134086', '1', '2016-04-24', 34, '上海霞飞路401号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6799, '段韩', '10004167', '2', 75843.10, 80000.00, '000', '2925197512147144', '2', '2016-04-24', 68, '上海霞飞路206号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6800, '刘尿', '10004168', '1', 46496.95, 80000.00, '000', '2925199710183250', '1', '2016-04-24', 72, '上海霞飞路30号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6801, '张誊奸', '10004169', '1', 63993.99, 80000.00, '000', '2925194912196841', '1', '2016-04-24', 59, '上海霞飞路651号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6802, '刘癣腐', '10004170', '2', 20634.47, 80000.00, '000', '2925194012214625', '1', '2016-04-24', 85, '上海霞飞路261号', '2016-04-24 21:51:07', '1');
INSERT INTO `demo_account` VALUES (6803, '郤航诧', '10004171', '1', 42430.50, 80000.00, '000', '2925199412157204', '2', '2016-04-24', 60, '上海霞飞路26号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6804, '周盔霜', '10004172', '2', 47352.95, 80000.00, '000', '2925195311102116', '1', '2016-04-24', 82, '上海霞飞路731号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6805, '黄吊耿', '10004173', '1', 25996.13, 80000.00, '000', '2925196011265961', '2', '2016-04-24', 62, '上海霞飞路394号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6806, '段昼', '10004174', '1', 50049.23, 80000.00, '000', '2925194910218258', '1', '2016-04-24', 28, '上海霞飞路866号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6807, '熊沁', '10004175', '1', 67139.90, 80000.00, '000', '2925196611226462', '2', '2016-04-24', 37, '上海霞飞路949号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6808, '段努', '10004176', '2', 36413.29, 80000.00, '000', '2925196412252492', '2', '2016-04-24', 34, '上海霞飞路588号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6809, '郤缝', '10004177', '2', 9724.71, 80000.00, '000', '2925197211277889', '2', '2016-04-24', 39, '上海霞飞路164号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6810, '周尤', '10004178', '1', 32473.43, 80000.00, '000', '2925197710204501', '1', '2016-04-24', 40, '上海霞飞路872号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6811, '黄歧府', '10004179', '1', 42052.94, 80000.00, '000', '2925194312266348', '2', '2016-04-24', 96, '上海霞飞路605号', '2016-04-24 21:51:08', '1');
INSERT INTO `demo_account` VALUES (6812, '李尹', '10004180', '2', 58373.72, 80000.00, '000', '2925199011152053', '1', '2016-04-24', 37, '上海霞飞路594号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6813, '黄镍陛', '10004181', '1', 76242.30, 80000.00, '000', '2925192511272859', '2', '2016-04-24', 36, '上海霞飞路504号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6814, '毛赁势', '10004182', '1', 69266.38, 80000.00, '000', '2925193511294973', '3', '2016-04-24', 40, '上海霞飞路403号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6815, '张较', '10004183', '1', 69607.65, 80000.00, '000', '2925193910247536', '2', '2016-04-24', 33, '上海霞飞路418号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6816, '周览', '10004184', '1', 25220.39, 80000.00, '000', '2925194012194159', '2', '2016-04-24', 66, '上海霞飞路571号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6817, '张墨', '10004185', '1', 18196.12, 80000.00, '000', '2925200410214482', '2', '2016-04-24', 84, '上海霞飞路576号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6818, '郤孽', '10004186', '2', 50548.38, 80000.00, '000', '2925199811203790', '2', '2016-04-24', 22, '上海霞飞路44号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6819, '毛富', '10004187', '2', 73126.60, 80000.00, '000', '2925195311236161', '2', '2016-04-24', 46, '上海霞飞路741号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6820, '熊权鳖', '10004188', '1', 69437.62, 80000.00, '000', '2925200611259134', '2', '2016-04-24', 47, '上海霞飞路146号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6821, '周痘船', '10004189', '2', 64871.39, 80000.00, '000', '2925198610114298', '2', '2016-04-24', 73, '上海霞飞路697号', '2016-04-24 21:51:09', '1');
INSERT INTO `demo_account` VALUES (6822, '毛践', '10004190', '1', 25306.58, 80000.00, '000', '2925192310227598', '3', '2016-04-24', 30, '上海霞飞路670号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6823, '熊腰', '10004191', '1', 33153.36, 80000.00, '000', '2925195410154563', '2', '2016-04-24', 74, '上海霞飞路678号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6824, '刘祷馈', '10004192', '2', 33762.61, 80000.00, '000', '2925201311219936', '1', '2016-04-24', 36, '上海霞飞路304号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6825, '李剖泻', '10004193', '1', 48567.96, 80000.00, '000', '2925196510261584', '2', '2016-04-24', 34, '上海霞飞路344号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6826, '熊黎员', '10004194', '1', 59570.40, 80000.00, '000', '2925193711184752', '1', '2016-04-24', 56, '上海霞飞路609号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6827, '郤乓', '10004195', '2', 72620.11, 80000.00, '000', '2925200212195049', '2', '2016-04-24', 41, '上海霞飞路134号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6828, '黄奠', '10004196', '1', 58530.51, 80000.00, '000', '2925192511305716', '3', '2016-04-24', 67, '上海霞飞路31号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6829, '郤驼', '10004197', '2', 29297.20, 80000.00, '000', '2925193611254942', '3', '2016-04-24', 78, '上海霞飞路102号', '2016-04-24 21:51:10', '1');
INSERT INTO `demo_account` VALUES (6830, '郤梯赫', '10004198', '2', 63659.70, 80000.00, '000', '2925199612154135', '2', '2016-04-24', 60, '上海霞飞路629号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6831, '黄沧', '10004199', '2', 57830.19, 80000.00, '000', '2925195511219175', '1', '2016-04-24', 44, '上海霞飞路551号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6832, '赵泪', '10004200', '1', 9577.31, 80000.00, '000', '2925193511241781', '2', '2016-04-24', 94, '上海霞飞路528号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6833, '周窗魔', '10004201', '2', 46805.40, 80000.00, '000', '2925199911171153', '2', '2016-04-24', 89, '上海霞飞路83号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6834, '刘摄', '10004202', '2', 69498.78, 80000.00, '000', '2925193411244132', '2', '2016-04-24', 77, '上海霞飞路263号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6835, '赵屑', '10004203', '1', 10257.35, 80000.00, '000', '2925196712129045', '1', '2016-04-24', 47, '上海霞飞路872号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6836, '李鲜碌', '10004204', '2', 77719.16, 80000.00, '000', '2925199912119439', '2', '2016-04-24', 92, '上海霞飞路520号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6837, '黄喝', '10004205', '1', 72907.53, 80000.00, '000', '2925200311123795', '3', '2016-04-24', 64, '上海霞飞路292号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6838, '周癣', '10004206', '2', 33008.50, 80000.00, '000', '2925198411264239', '2', '2016-04-24', 50, '上海霞飞路965号', '2016-04-24 21:51:11', '1');
INSERT INTO `demo_account` VALUES (6839, '毛掸', '10004207', '1', 34176.65, 80000.00, '000', '2925192311272133', '2', '2016-04-24', 21, '上海霞飞路194号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6840, '熊沼纬', '10004208', '1', 70797.45, 80000.00, '000', '2925200510165257', '2', '2016-04-24', 91, '上海霞飞路135号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6841, '段弥贝', '10004209', '1', 53147.11, 80000.00, '000', '2925198712216140', '2', '2016-04-24', 43, '上海霞飞路456号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6842, '郤挂沧', '10004210', '2', 12560.45, 80000.00, '000', '2925201110309819', '3', '2016-04-24', 63, '上海霞飞路600号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6843, '毛惋', '10004211', '1', 19099.43, 80000.00, '000', '2925193311297119', '2', '2016-04-24', 75, '上海霞飞路636号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6844, '张押', '10004212', '1', 25297.40, 80000.00, '000', '2925194712157194', '3', '2016-04-24', 37, '上海霞飞路872号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6845, '段肃隶', '10004213', '1', 74778.13, 80000.00, '000', '2925196311114816', '2', '2016-04-24', 22, '上海霞飞路805号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6846, '周耿', '10004214', '2', 20505.78, 80000.00, '000', '2925196012177507', '2', '2016-04-24', 58, '上海霞飞路761号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6847, '赵茎乞', '10004215', '1', 42046.25, 80000.00, '000', '2925196210264256', '3', '2016-04-24', 50, '上海霞飞路921号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6848, '李轴体', '10004216', '1', 28539.38, 80000.00, '000', '2925197911252139', '3', '2016-04-24', 82, '上海霞飞路153号', '2016-04-24 21:51:12', '1');
INSERT INTO `demo_account` VALUES (6849, '黄烹', '10004217', '1', 32060.12, 80000.00, '000', '2925194510298736', '2', '2016-04-24', 36, '上海霞飞路316号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6850, '郤肌振', '10004218', '1', 28772.56, 80000.00, '000', '2925196712195750', '2', '2016-04-24', 38, '上海霞飞路421号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6851, '黄输', '10004219', '1', 26626.37, 80000.00, '000', '2925195312252740', '1', '2016-04-24', 91, '上海霞飞路149号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6852, '毛堤贪', '10004220', '2', 28433.64, 80000.00, '000', '2925200810278343', '2', '2016-04-24', 42, '上海霞飞路941号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6853, '黄偶擎', '10004221', '1', 9881.28, 80000.00, '000', '2925196910181803', '2', '2016-04-24', 60, '上海霞飞路906号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6854, '周烛', '10004222', '2', 17538.81, 80000.00, '000', '2925199211171005', '1', '2016-04-24', 78, '上海霞飞路416号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6855, '毛隋犹', '10004223', '1', 27945.12, 80000.00, '000', '2925192912225614', '3', '2016-04-24', 22, '上海霞飞路290号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6856, '李税若', '10004224', '1', 37807.94, 80000.00, '000', '2925200111277243', '1', '2016-04-24', 29, '上海霞飞路972号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6857, '刘贡', '10004225', '2', 16698.73, 80000.00, '000', '2925197611287874', '2', '2016-04-24', 81, '上海霞飞路92号', '2016-04-24 21:51:13', '1');
INSERT INTO `demo_account` VALUES (6858, '刘妮匿', '10004226', '1', 29963.39, 80000.00, '000', '2925195011229064', '3', '2016-04-24', 87, '上海霞飞路265号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6859, '赵使辩', '10004227', '2', 70327.87, 80000.00, '000', '2925193311172686', '2', '2016-04-24', 27, '上海霞飞路879号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6860, '黄践舰', '10004228', '1', 30311.50, 80000.00, '000', '2925194212191184', '3', '2016-04-24', 71, '上海霞飞路31号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6861, '李皑愁', '10004229', '1', 65793.94, 80000.00, '000', '2925199011101510', '2', '2016-04-24', 68, '上海霞飞路599号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6862, '郤漳', '10004230', '1', 48005.45, 80000.00, '000', '2925193711124046', '3', '2016-04-24', 28, '上海霞飞路814号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6863, '黄帆', '10004231', '1', 18864.93, 80000.00, '000', '2925194311264962', '1', '2016-04-24', 59, '上海霞飞路421号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6864, '郤殴拘', '10004232', '2', 8883.78, 80000.00, '000', '2925193612233529', '3', '2016-04-24', 22, '上海霞飞路838号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6865, '刘酥', '10004233', '2', 49861.00, 80000.00, '000', '2925194911171975', '1', '2016-04-24', 31, '上海霞飞路431号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6866, '段乓', '10004234', '1', 22294.50, 80000.00, '000', '2925192212233509', '1', '2016-04-24', 64, '上海霞飞路219号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6867, '刘农膀', '10004235', '1', 39778.89, 80000.00, '000', '2925200710158107', '1', '2016-04-24', 53, '上海霞飞路995号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6868, '黄任', '10004236', '1', 61787.76, 80000.00, '000', '2925194411141671', '2', '2016-04-24', 92, '上海霞飞路6号', '2016-04-24 21:51:14', '1');
INSERT INTO `demo_account` VALUES (6869, '郤痢隆', '10004237', '2', 37904.30, 80000.00, '000', '2925193711174024', '2', '2016-04-24', 61, '上海霞飞路896号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6870, '毛溅', '10004238', '2', 19085.57, 80000.00, '000', '2925199811167225', '3', '2016-04-24', 84, '上海霞飞路752号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6871, '周梆睫', '10004239', '2', 58612.80, 80000.00, '000', '2925197111296424', '2', '2016-04-24', 23, '上海霞飞路577号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6872, '黄爱仅', '10004240', '1', 73227.89, 80000.00, '000', '2925197111225435', '1', '2016-04-24', 21, '上海霞飞路578号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6873, '刘招', '10004241', '1', 69456.37, 80000.00, '000', '2925197110161948', '2', '2016-04-24', 52, '上海霞飞路89号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6874, '张椿', '10004242', '2', 77280.70, 80000.00, '000', '2925200412201095', '2', '2016-04-24', 63, '上海霞飞路953号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6875, '刘焰', '10004243', '1', 29230.37, 80000.00, '000', '2925199611307840', '2', '2016-04-24', 56, '上海霞飞路562号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6876, '周土', '10004244', '1', 13526.59, 80000.00, '000', '2925196910195378', '2', '2016-04-24', 38, '上海霞飞路652号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6877, '段顽胁', '10004245', '2', 75125.50, 80000.00, '000', '2925199910183391', '1', '2016-04-24', 51, '上海霞飞路329号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6878, '周梧丘', '10004246', '2', 34512.59, 80000.00, '000', '2925199312153698', '1', '2016-04-24', 52, '上海霞飞路601号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6879, '毛掩', '10004247', '2', 14651.70, 80000.00, '000', '2925200711269433', '2', '2016-04-24', 28, '上海霞飞路992号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6880, '郤龄滨', '10004248', '2', 31874.46, 80000.00, '000', '2925200112217478', '3', '2016-04-24', 35, '上海霞飞路585号', '2016-04-24 21:51:15', '1');
INSERT INTO `demo_account` VALUES (6881, '毛集', '10004249', '1', 34454.88, 80000.00, '000', '2925193010281440', '2', '2016-04-24', 55, '上海霞飞路64号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6882, '段咆疽', '10004250', '1', 25314.55, 80000.00, '000', '2925198110207002', '1', '2016-04-24', 87, '上海霞飞路24号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6883, '周郑', '10004251', '1', 42691.28, 80000.00, '000', '2925192710239962', '2', '2016-04-24', 38, '上海霞飞路998号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6884, '熊贼泡', '10004252', '1', 18653.96, 80000.00, '000', '2925193912244724', '1', '2016-04-24', 41, '上海霞飞路281号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6885, '周辆', '10004253', '2', 38102.96, 80000.00, '000', '2925196211208482', '1', '2016-04-24', 19, '上海霞飞路715号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6886, '李伦', '10004254', '1', 60342.73, 80000.00, '000', '2925196411274708', '2', '2016-04-24', 71, '上海霞飞路236号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6887, '周辖', '10004255', '1', 69431.21, 80000.00, '000', '2925198610249919', '3', '2016-04-24', 70, '上海霞飞路945号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6888, '李缩咒', '10004256', '2', 6327.92, 80000.00, '000', '2925198511177093', '1', '2016-04-24', 68, '上海霞飞路57号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6889, '段劳', '10004257', '1', 69348.69, 80000.00, '000', '2925200811183334', '2', '2016-04-24', 50, '上海霞飞路996号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6890, '熊墨', '10004258', '2', 55683.57, 80000.00, '000', '2925197812144737', '1', '2016-04-24', 60, '上海霞飞路415号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6891, '周闰', '10004259', '2', 13509.97, 80000.00, '000', '2925201010143610', '2', '2016-04-24', 46, '上海霞飞路778号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6892, '黄血', '10004260', '1', 39901.37, 80000.00, '000', '2925196911258432', '3', '2016-04-24', 98, '上海霞飞路593号', '2016-04-24 21:51:16', '1');
INSERT INTO `demo_account` VALUES (6893, '李盘爆', '10004261', '2', 59917.27, 80000.00, '000', '2925197312283131', '1', '2016-04-24', 75, '上海霞飞路174号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6894, '刘膝', '10004262', '1', 53225.52, 80000.00, '000', '2925196011133371', '2', '2016-04-24', 28, '上海霞飞路201号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6895, '熊俯存', '10004263', '1', 46223.48, 80000.00, '000', '2925201412143740', '3', '2016-04-24', 88, '上海霞飞路90号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6896, '段庭度', '10004264', '2', 71956.29, 80000.00, '000', '2925194811262725', '2', '2016-04-24', 96, '上海霞飞路470号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6897, '熊槛', '10004265', '2', 35117.73, 80000.00, '000', '2925199211263500', '1', '2016-04-24', 25, '上海霞飞路798号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6898, '李淘', '10004266', '1', 77097.20, 80000.00, '000', '2925192311216531', '3', '2016-04-24', 37, '上海霞飞路337号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6899, '黄愚狠', '10004267', '2', 64461.66, 80000.00, '000', '2925197311194036', '3', '2016-04-24', 33, '上海霞飞路380号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6900, '李弛助', '10004268', '1', 67252.73, 80000.00, '000', '2925195611299255', '1', '2016-04-24', 96, '上海霞飞路780号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6901, '刘羚', '10004269', '1', 15306.36, 80000.00, '000', '2925200111127492', '1', '2016-04-24', 62, '上海霞飞路385号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6902, '黄聋', '10004270', '2', 33182.57, 80000.00, '000', '2925194311293703', '2', '2016-04-24', 54, '上海霞飞路133号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6903, '毛夯摈', '10004271', '1', 11451.76, 80000.00, '000', '2925194710271372', '2', '2016-04-24', 45, '上海霞飞路33号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6904, '段均讫', '10004272', '2', 57896.72, 80000.00, '000', '2925201312183172', '2', '2016-04-24', 55, '上海霞飞路323号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6905, '张箔照', '10004273', '1', 6677.73, 80000.00, '000', '2925192912173790', '2', '2016-04-24', 95, '上海霞飞路551号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6906, '张讳', '10004274', '1', 58702.47, 80000.00, '000', '2925198212117004', '3', '2016-04-24', 91, '上海霞飞路270号', '2016-04-24 21:51:17', '1');
INSERT INTO `demo_account` VALUES (6907, '毛钓滚', '10004275', '1', 46329.20, 80000.00, '000', '2925194211259923', '3', '2016-04-24', 78, '上海霞飞路492号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6908, '刘鸵', '10004276', '2', 38090.64, 80000.00, '000', '2925195110127937', '1', '2016-04-24', 24, '上海霞飞路888号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6909, '张牙', '10004277', '1', 44361.12, 80000.00, '000', '2925198512256677', '1', '2016-04-24', 81, '上海霞飞路112号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6910, '李丁', '10004278', '2', 26869.58, 80000.00, '000', '2925199611306901', '2', '2016-04-24', 63, '上海霞飞路430号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6911, '赵炬强', '10004279', '2', 7529.20, 80000.00, '000', '2925195111168843', '3', '2016-04-24', 29, '上海霞飞路155号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6912, '李钟札', '10004280', '2', 31440.34, 80000.00, '000', '2925197111253179', '2', '2016-04-24', 99, '上海霞飞路113号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6913, '李冲夷', '10004281', '2', 28849.45, 80000.00, '000', '2925195310239290', '3', '2016-04-24', 97, '上海霞飞路637号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6914, '毛渗', '10004282', '1', 19609.79, 80000.00, '000', '2925197610212065', '2', '2016-04-24', 66, '上海霞飞路262号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6915, '刘船', '10004283', '2', 56992.16, 80000.00, '000', '2925200810197947', '2', '2016-04-24', 45, '上海霞飞路462号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6916, '周伍', '10004284', '1', 71842.76, 80000.00, '000', '2925198011123434', '1', '2016-04-24', 26, '上海霞飞路426号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6917, '黄伴统', '10004285', '1', 58742.76, 80000.00, '000', '2925200411237624', '3', '2016-04-24', 58, '上海霞飞路959号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6918, '黄造径', '10004286', '1', 29354.55, 80000.00, '000', '2925198711268874', '3', '2016-04-24', 40, '上海霞飞路177号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6919, '毛淌', '10004287', '1', 26195.83, 80000.00, '000', '2925194611251928', '2', '2016-04-24', 49, '上海霞飞路697号', '2016-04-24 21:51:18', '1');
INSERT INTO `demo_account` VALUES (6920, '郤氯', '10004288', '2', 60936.30, 80000.00, '000', '2925192911136281', '1', '2016-04-24', 59, '上海霞飞路571号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6921, '黄喇躯', '10004289', '1', 38811.12, 80000.00, '000', '2925194911199820', '2', '2016-04-24', 24, '上海霞飞路139号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6922, '刘陕尾', '10004290', '1', 36910.40, 80000.00, '000', '2925195611271066', '1', '2016-04-24', 90, '上海霞飞路475号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6923, '郤艾筋', '10004291', '1', 17004.10, 80000.00, '000', '2925192710136584', '3', '2016-04-24', 82, '上海霞飞路1号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6924, '赵咆蚊', '10004292', '2', 57128.56, 80000.00, '000', '2925199112123381', '2', '2016-04-24', 84, '上海霞飞路219号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6925, '刘咙', '10004293', '1', 6386.96, 80000.00, '000', '2925200310118220', '1', '2016-04-24', 66, '上海霞飞路392号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6926, '刘神', '10004294', '1', 58387.36, 80000.00, '000', '2925192410199021', '2', '2016-04-24', 35, '上海霞飞路310号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6927, '郤熔', '10004295', '1', 74342.62, 80000.00, '000', '2925192411201572', '1', '2016-04-24', 95, '上海霞飞路81号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6928, '赵离', '10004296', '2', 71186.90, 80000.00, '000', '2925193011124895', '3', '2016-04-24', 73, '上海霞飞路149号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6929, '熊钱', '10004297', '1', 29060.17, 80000.00, '000', '2925199711238682', '2', '2016-04-24', 71, '上海霞飞路470号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6930, '毛豆漠', '10004298', '1', 50204.55, 80000.00, '000', '2925195712275211', '2', '2016-04-24', 31, '上海霞飞路977号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6931, '黄葡编', '10004299', '1', 77682.12, 80000.00, '000', '2925196812289173', '2', '2016-04-24', 80, '上海霞飞路135号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6932, '周召砷', '10004300', '1', 71405.23, 80000.00, '000', '2925201211139811', '3', '2016-04-24', 36, '上海霞飞路523号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6933, '周仑姻', '10004301', '2', 6715.21, 80000.00, '000', '2925200712144678', '2', '2016-04-24', 90, '上海霞飞路997号', '2016-04-24 21:51:19', '1');
INSERT INTO `demo_account` VALUES (6934, '赵香没', '10004302', '2', 79168.46, 80000.00, '000', '2925195111123266', '2', '2016-04-24', 82, '上海霞飞路43号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6935, '周伎', '10004303', '2', 36355.50, 80000.00, '000', '2925200910267587', '3', '2016-04-24', 55, '上海霞飞路485号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6936, '刘惺诈', '10004304', '1', 13341.13, 80000.00, '000', '2925198111227660', '2', '2016-04-24', 80, '上海霞飞路743号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6937, '刘仙不', '10004305', '2', 6869.25, 80000.00, '000', '2925198810188654', '1', '2016-04-24', 44, '上海霞飞路269号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6938, '刘氰', '10004306', '1', 54615.41, 80000.00, '000', '2925195311296211', '3', '2016-04-24', 55, '上海霞飞路794号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6939, '刘擅', '10004307', '1', 11687.61, 80000.00, '000', '2925198710187233', '1', '2016-04-24', 53, '上海霞飞路408号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6940, '赵泼沟', '10004308', '2', 79117.86, 80000.00, '000', '2925194711217123', '2', '2016-04-24', 32, '上海霞飞路380号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6941, '周猿', '10004309', '1', 60345.33, 80000.00, '000', '2925198712151161', '1', '2016-04-24', 65, '上海霞飞路1号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6942, '刘杖皖', '10004310', '2', 21626.91, 80000.00, '000', '2925198810116332', '2', '2016-04-24', 64, '上海霞飞路534号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6943, '周嚣蜀', '10004311', '1', 72944.84, 80000.00, '000', '2925197111306585', '3', '2016-04-24', 63, '上海霞飞路680号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6944, '毛婚隶', '10004312', '2', 53298.59, 80000.00, '000', '2925200712166038', '2', '2016-04-24', 83, '上海霞飞路692号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6945, '黄诸雇', '10004313', '2', 46251.40, 80000.00, '000', '2925192111199249', '1', '2016-04-24', 22, '上海霞飞路540号', '2016-04-24 21:51:20', '1');
INSERT INTO `demo_account` VALUES (6946, '毛辽戳', '10004314', '1', 16314.10, 80000.00, '000', '2925193910235188', '2', '2016-04-24', 43, '上海霞飞路200号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6947, '黄倔', '10004315', '1', 28110.34, 80000.00, '000', '2925195411133016', '3', '2016-04-24', 40, '上海霞飞路332号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6948, '刘娄', '10004316', '1', 18337.94, 80000.00, '000', '2925197511256297', '3', '2016-04-24', 99, '上海霞飞路227号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6949, '周蔬幂', '10004317', '2', 73296.45, 80000.00, '000', '2925193711113651', '3', '2016-04-24', 96, '上海霞飞路31号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6950, '黄譬涩', '10004318', '2', 38182.66, 80000.00, '000', '2925196712264275', '1', '2016-04-24', 93, '上海霞飞路812号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6951, '段死', '10004319', '1', 76477.12, 80000.00, '000', '2925199610269163', '3', '2016-04-24', 46, '上海霞飞路98号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6952, '郤耀毯', '10004320', '2', 38594.43, 80000.00, '000', '2925192912286145', '1', '2016-04-24', 98, '上海霞飞路997号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6953, '周苯', '10004321', '1', 62412.56, 80000.00, '000', '2925195312296206', '2', '2016-04-24', 51, '上海霞飞路39号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6954, '周路', '10004322', '1', 28543.91, 80000.00, '000', '2925194212136827', '1', '2016-04-24', 23, '上海霞飞路266号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6955, '张拳', '10004323', '2', 52056.69, 80000.00, '000', '2925192512127322', '3', '2016-04-24', 37, '上海霞飞路90号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6956, '毛鹤账', '10004324', '2', 53917.30, 80000.00, '000', '2925192311241364', '2', '2016-04-24', 68, '上海霞飞路752号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6957, '黄迟嗜', '10004325', '2', 47702.30, 80000.00, '000', '2925197611247080', '2', '2016-04-24', 41, '上海霞飞路132号', '2016-04-24 21:51:21', '1');
INSERT INTO `demo_account` VALUES (6958, '周秸蓬', '10004326', '1', 40026.98, 80000.00, '000', '2925199212238265', '2', '2016-04-24', 79, '上海霞飞路941号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6959, '熊滴崇', '10004327', '2', 32814.77, 80000.00, '000', '2925196211128344', '2', '2016-04-24', 33, '上海霞飞路161号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6960, '张丈匆', '10004328', '2', 19806.77, 80000.00, '000', '2925194711138855', '2', '2016-04-24', 42, '上海霞飞路813号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6961, '周辣', '10004329', '2', 48711.30, 80000.00, '000', '2925198211152240', '1', '2016-04-24', 31, '上海霞飞路915号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6962, '熊疥洁', '10004330', '1', 42134.90, 80000.00, '000', '2925195612236788', '2', '2016-04-24', 39, '上海霞飞路656号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6963, '熊理', '10004331', '2', 58726.26, 80000.00, '000', '2925194911133567', '3', '2016-04-24', 24, '上海霞飞路489号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6964, '李绚辑', '10004332', '2', 35133.65, 80000.00, '000', '2925199310149122', '2', '2016-04-24', 85, '上海霞飞路8号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6965, '段尚', '10004333', '1', 69015.19, 80000.00, '000', '2925199411292701', '1', '2016-04-24', 18, '上海霞飞路31号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6966, '熊摇锑', '10004334', '2', 65887.31, 80000.00, '000', '2925196112172615', '3', '2016-04-24', 73, '上海霞飞路445号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6967, '赵椰', '10004335', '2', 31645.46, 80000.00, '000', '2925197511203258', '3', '2016-04-24', 73, '上海霞飞路861号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6968, '张尖', '10004336', '1', 50445.39, 80000.00, '000', '2925199810221137', '3', '2016-04-24', 53, '上海霞飞路178号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6969, '段笋', '10004337', '2', 36124.75, 80000.00, '000', '2925192711152046', '1', '2016-04-24', 20, '上海霞飞路603号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6970, '张糠', '10004338', '2', 58529.17, 80000.00, '000', '2925199911248358', '3', '2016-04-24', 50, '上海霞飞路672号', '2016-04-24 21:51:22', '1');
INSERT INTO `demo_account` VALUES (6971, '熊抄', '10004339', '2', 56003.58, 80000.00, '000', '2925199310164082', '1', '2016-04-24', 99, '上海霞飞路164号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6972, '毛捻', '10004340', '2', 7831.56, 80000.00, '000', '2925199010153108', '2', '2016-04-24', 79, '上海霞飞路766号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6973, '黄骂', '10004341', '1', 15720.41, 80000.00, '000', '2925199510125710', '2', '2016-04-24', 31, '上海霞飞路653号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6974, '赵姚观', '10004342', '1', 77305.19, 80000.00, '000', '2925196311113059', '1', '2016-04-24', 40, '上海霞飞路977号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6975, '张美于', '10004343', '1', 73318.38, 80000.00, '000', '2925197410257082', '2', '2016-04-24', 87, '上海霞飞路586号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6976, '刘蛤', '10004344', '1', 79356.60, 80000.00, '000', '2925200011133645', '2', '2016-04-24', 93, '上海霞飞路997号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6977, '段琼', '10004345', '2', 71197.87, 80000.00, '000', '2925194111229541', '2', '2016-04-24', 81, '上海霞飞路958号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6978, '段键', '10004346', '2', 45308.19, 80000.00, '000', '2925200511225353', '2', '2016-04-24', 84, '上海霞飞路552号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6979, '郤抒个', '10004347', '2', 11535.20, 80000.00, '000', '2925199712259685', '2', '2016-04-24', 58, '上海霞飞路24号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6980, '刘跃硷', '10004348', '1', 79074.15, 80000.00, '000', '2925200710172809', '2', '2016-04-24', 73, '上海霞飞路127号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6981, '刘争', '10004349', '2', 27540.27, 80000.00, '000', '2925197811274124', '1', '2016-04-24', 22, '上海霞飞路881号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6982, '周辕', '10004350', '1', 68401.57, 80000.00, '000', '2925194212179287', '1', '2016-04-24', 80, '上海霞飞路245号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6983, '赵喧宿', '10004351', '2', 42176.20, 80000.00, '000', '2925193711273226', '2', '2016-04-24', 73, '上海霞飞路195号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6984, '张绿邪', '10004352', '1', 9607.30, 80000.00, '000', '2925192211163569', '2', '2016-04-24', 64, '上海霞飞路281号', '2016-04-24 21:51:23', '1');
INSERT INTO `demo_account` VALUES (6985, '赵短', '10004353', '2', 64508.93, 80000.00, '000', '2925197110209372', '1', '2016-04-24', 59, '上海霞飞路647号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6986, '周沼', '10004354', '1', 18203.38, 80000.00, '000', '2925192412163280', '1', '2016-04-24', 100, '上海霞飞路11号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6987, '黄妹', '10004355', '2', 20320.97, 80000.00, '000', '2925193711227488', '2', '2016-04-24', 60, '上海霞飞路960号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6988, '赵图萝', '10004356', '1', 78291.16, 80000.00, '000', '2925198510163138', '3', '2016-04-24', 23, '上海霞飞路376号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6989, '郤斑丸', '10004357', '2', 30149.61, 80000.00, '000', '2925195211278900', '3', '2016-04-24', 36, '上海霞飞路578号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6990, '毛拳睡', '10004358', '2', 46150.30, 80000.00, '000', '2925195912124724', '2', '2016-04-24', 80, '上海霞飞路173号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6991, '熊膳舀', '10004359', '2', 68392.95, 80000.00, '000', '2925200611292770', '1', '2016-04-24', 90, '上海霞飞路348号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6992, '张录', '10004360', '1', 71896.31, 80000.00, '000', '2925197610126720', '3', '2016-04-24', 19, '上海霞飞路621号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6993, '郤曙', '10004361', '1', 27626.20, 80000.00, '000', '2925192310224654', '2', '2016-04-24', 35, '上海霞飞路790号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6994, '张浑甩', '10004362', '2', 67623.38, 80000.00, '000', '2925194810206736', '3', '2016-04-24', 18, '上海霞飞路40号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6995, '郤墨', '10004363', '1', 46787.57, 80000.00, '000', '2925192411176959', '3', '2016-04-24', 79, '上海霞飞路795号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6996, '张熬宦', '10004364', '2', 50918.61, 80000.00, '000', '2925196612265142', '2', '2016-04-24', 82, '上海霞飞路97号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6997, '赵观淋', '10004365', '1', 18374.88, 80000.00, '000', '2925195411117315', '2', '2016-04-24', 64, '上海霞飞路843号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6998, '周碾', '10004366', '1', 29151.85, 80000.00, '000', '2925199511263554', '2', '2016-04-24', 50, '上海霞飞路332号', '2016-04-24 21:51:24', '1');
INSERT INTO `demo_account` VALUES (6999, '刘疑下', '10004367', '1', 20301.16, 80000.00, '000', '2925198111275147', '1', '2016-04-24', 87, '上海霞飞路82号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7000, '张待', '10004368', '1', 32437.89, 80000.00, '000', '2925198410101879', '3', '2016-04-24', 80, '上海霞飞路928号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7001, '郤桶', '10004369', '2', 32567.92, 80000.00, '000', '2925193711142977', '3', '2016-04-24', 65, '上海霞飞路848号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7002, '毛尽痪', '10004370', '1', 33676.55, 80000.00, '000', '2925199512119068', '1', '2016-04-24', 29, '上海霞飞路955号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7003, '李膊', '10004371', '1', 55386.30, 80000.00, '000', '2925194211306234', '1', '2016-04-24', 45, '上海霞飞路486号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7004, '段洋', '10004372', '1', 30550.98, 80000.00, '000', '2925198912103980', '2', '2016-04-24', 74, '上海霞飞路525号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7005, '段摊州', '10004373', '2', 61912.73, 80000.00, '000', '2925192312238585', '2', '2016-04-24', 83, '上海霞飞路534号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7006, '刘聋芬', '10004374', '1', 64900.40, 80000.00, '000', '2925197311231010', '2', '2016-04-24', 70, '上海霞飞路603号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7007, '刘眺努', '10004375', '2', 51233.29, 80000.00, '000', '2925197312176085', '2', '2016-04-24', 89, '上海霞飞路637号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7008, '黄柄', '10004376', '2', 47366.63, 80000.00, '000', '2925199311178384', '3', '2016-04-24', 34, '上海霞飞路417号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7009, '熊羽', '10004377', '2', 41759.61, 80000.00, '000', '2925193312204654', '3', '2016-04-24', 20, '上海霞飞路764号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7010, '毛已凹', '10004378', '2', 13689.63, 80000.00, '000', '2925198111182275', '2', '2016-04-24', 94, '上海霞飞路688号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7011, '黄痰洱', '10004379', '1', 11664.11, 80000.00, '000', '2925199111145678', '2', '2016-04-24', 69, '上海霞飞路577号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7012, '郤拭', '10004380', '1', 51583.72, 80000.00, '000', '2925201112206133', '3', '2016-04-24', 44, '上海霞飞路159号', '2016-04-24 21:51:25', '1');
INSERT INTO `demo_account` VALUES (7013, '张幽串', '10004381', '1', 33534.85, 80000.00, '000', '2925196111101743', '3', '2016-04-24', 30, '上海霞飞路26号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7014, '赵疟', '10004382', '2', 43561.00, 80000.00, '000', '2925199211266897', '1', '2016-04-24', 92, '上海霞飞路107号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7015, '刘腋蓑', '10004383', '1', 54852.40, 80000.00, '000', '2925193510237790', '3', '2016-04-24', 73, '上海霞飞路535号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7016, '李话', '10004384', '2', 55628.46, 80000.00, '000', '2925197310248976', '2', '2016-04-24', 24, '上海霞飞路832号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7017, '张零', '10004385', '1', 52494.43, 80000.00, '000', '2925193612222217', '2', '2016-04-24', 22, '上海霞飞路352号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7018, '段堪', '10004386', '2', 74231.65, 80000.00, '000', '2925192211177164', '2', '2016-04-24', 49, '上海霞飞路335号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7019, '张茄蒜', '10004387', '1', 49857.89, 80000.00, '000', '2925196711295696', '3', '2016-04-24', 50, '上海霞飞路899号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7020, '黄吓粕', '10004388', '1', 32365.84, 80000.00, '000', '2925194311143876', '3', '2016-04-24', 21, '上海霞飞路616号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7021, '刘偶', '10004389', '2', 21795.90, 80000.00, '000', '2925196110105758', '2', '2016-04-24', 39, '上海霞飞路228号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7022, '黄萧奔', '10004390', '2', 48237.14, 80000.00, '000', '2925192411239377', '2', '2016-04-24', 90, '上海霞飞路363号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7023, '周奄', '10004391', '1', 26985.86, 80000.00, '000', '2925199110234384', '2', '2016-04-24', 33, '上海霞飞路905号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7024, '郤听届', '10004392', '2', 78382.10, 80000.00, '000', '2925200712221895', '2', '2016-04-24', 27, '上海霞飞路943号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7025, '郤肿邑', '10004393', '1', 37891.98, 80000.00, '000', '2925194910139166', '2', '2016-04-24', 78, '上海霞飞路933号', '2016-04-24 21:51:26', '1');
INSERT INTO `demo_account` VALUES (7026, '郤淋监', '10004394', '2', 55632.10, 80000.00, '000', '2925196810196758', '2', '2016-04-24', 48, '上海霞飞路950号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7027, '熊寐', '10004395', '2', 66967.50, 80000.00, '000', '2925194910116797', '1', '2016-04-24', 33, '上海霞飞路526号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7028, '黄娄', '10004396', '1', 46838.94, 80000.00, '000', '2925199911135993', '1', '2016-04-24', 31, '上海霞飞路744号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7029, '毛雍', '10004397', '2', 22244.78, 80000.00, '000', '2925201411224915', '2', '2016-04-24', 47, '上海霞飞路851号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7030, '黄保', '10004398', '1', 57742.50, 80000.00, '000', '2925197412263997', '2', '2016-04-24', 66, '上海霞飞路722号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7031, '段开撒', '10004399', '2', 75957.55, 80000.00, '000', '2925201311145590', '2', '2016-04-24', 52, '上海霞飞路67号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7032, '熊蓉贝', '10004400', '2', 18892.13, 80000.00, '000', '2925193910251212', '2', '2016-04-24', 92, '上海霞飞路267号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7033, '赵旷正', '10004401', '1', 54357.27, 80000.00, '000', '2925195411219976', '2', '2016-04-24', 64, '上海霞飞路234号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7034, '李搅晶', '10004402', '1', 61007.90, 80000.00, '000', '2925198411117947', '3', '2016-04-24', 51, '上海霞飞路595号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7035, '熊瞅萨', '10004403', '1', 75351.24, 80000.00, '000', '2925193312152904', '1', '2016-04-24', 87, '上海霞飞路972号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7036, '张襄', '10004404', '1', 22688.40, 80000.00, '000', '2925192612247748', '2', '2016-04-24', 67, '上海霞飞路978号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7037, '赵偿摔', '10004405', '1', 17132.39, 80000.00, '000', '2925199111213433', '3', '2016-04-24', 75, '上海霞飞路919号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7038, '段砰', '10004406', '2', 37873.94, 80000.00, '000', '2925194611266966', '3', '2016-04-24', 78, '上海霞飞路32号', '2016-04-24 21:51:27', '1');
INSERT INTO `demo_account` VALUES (7039, '熊倪', '10004407', '1', 7427.17, 80000.00, '000', '2925199311288668', '1', '2016-04-24', 86, '上海霞飞路344号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7040, '段棵', '10004408', '2', 72926.79, 80000.00, '000', '2925199310113434', '2', '2016-04-24', 25, '上海霞飞路56号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7041, '刘战哭', '10004409', '1', 71540.90, 80000.00, '000', '2925192211192335', '2', '2016-04-24', 59, '上海霞飞路516号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7042, '李检即', '10004410', '2', 75776.91, 80000.00, '000', '2925200912286396', '3', '2016-04-24', 63, '上海霞飞路632号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7043, '刘瞎坊', '10004411', '1', 55803.42, 80000.00, '000', '2925198112183913', '2', '2016-04-24', 61, '上海霞飞路650号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7044, '毛挥', '10004412', '2', 49990.73, 80000.00, '000', '2925197112248100', '2', '2016-04-24', 64, '上海霞飞路948号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7045, '张氛遏', '10004413', '2', 73620.32, 80000.00, '000', '2925199911211346', '2', '2016-04-24', 41, '上海霞飞路533号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7046, '张刹刽', '10004414', '2', 51179.77, 80000.00, '000', '2925195212177694', '2', '2016-04-24', 44, '上海霞飞路555号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7047, '郤介', '10004415', '2', 37720.00, 80000.00, '000', '2925195912248606', '2', '2016-04-24', 78, '上海霞飞路159号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7048, '毛轰', '10004416', '2', 47652.70, 80000.00, '000', '2925199511171342', '1', '2016-04-24', 76, '上海霞飞路532号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7049, '毛饲', '10004417', '2', 42792.59, 80000.00, '000', '2925195210195647', '3', '2016-04-24', 40, '上海霞飞路973号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7050, '赵表趣', '10004418', '1', 49688.95, 80000.00, '000', '2925198112127701', '1', '2016-04-24', 72, '上海霞飞路270号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7051, '周潘弛', '10004419', '1', 51138.17, 80000.00, '000', '2925200011136509', '2', '2016-04-24', 73, '上海霞飞路566号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7052, '黄印', '10004420', '1', 42352.42, 80000.00, '000', '2925196711232172', '2', '2016-04-24', 68, '上海霞飞路338号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7053, '段毯', '10004421', '1', 16492.20, 80000.00, '000', '2925200510208618', '3', '2016-04-24', 75, '上海霞飞路886号', '2016-04-24 21:51:28', '1');
INSERT INTO `demo_account` VALUES (7054, '刘必帛', '10004422', '1', 15236.25, 80000.00, '000', '2925200112284563', '3', '2016-04-24', 52, '上海霞飞路145号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7055, '段莹', '10004423', '1', 45661.79, 80000.00, '000', '2925201011161552', '2', '2016-04-24', 26, '上海霞飞路344号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7056, '熊墙', '10004424', '1', 31034.51, 80000.00, '000', '2925194411309079', '3', '2016-04-24', 93, '上海霞飞路369号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7057, '黄炊', '10004425', '1', 68129.87, 80000.00, '000', '2925195710288784', '2', '2016-04-24', 93, '上海霞飞路369号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7058, '刘脊炼', '10004426', '1', 71338.31, 80000.00, '000', '2925196011115790', '3', '2016-04-24', 87, '上海霞飞路362号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7059, '周酬', '10004427', '2', 56275.19, 80000.00, '000', '2925194011153225', '2', '2016-04-24', 57, '上海霞飞路278号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7060, '李氦', '10004428', '2', 8568.73, 80000.00, '000', '2925196610282968', '2', '2016-04-24', 93, '上海霞飞路994号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7061, '段显', '10004429', '1', 7359.34, 80000.00, '000', '2925196311117529', '3', '2016-04-24', 49, '上海霞飞路532号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7062, '毛免恩', '10004430', '2', 71416.31, 80000.00, '000', '2925200211146962', '1', '2016-04-24', 44, '上海霞飞路666号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7063, '黄拷', '10004431', '2', 26911.91, 80000.00, '000', '2925199511138499', '3', '2016-04-24', 57, '上海霞飞路730号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7064, '张贯', '10004432', '1', 43729.68, 80000.00, '000', '2925194411118502', '2', '2016-04-24', 84, '上海霞飞路428号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7065, '刘消', '10004433', '2', 57685.90, 80000.00, '000', '2925194611131085', '3', '2016-04-24', 68, '上海霞飞路922号', '2016-04-24 21:51:29', '1');
INSERT INTO `demo_account` VALUES (7066, '熊鼎扮', '10004434', '2', 43193.12, 80000.00, '000', '2925199110288582', '2', '2016-04-24', 30, '上海霞飞路449号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7067, '李覆', '10004435', '1', 74824.11, 80000.00, '000', '2925199912122755', '2', '2016-04-24', 55, '上海霞飞路95号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7068, '郤勋', '10004436', '2', 46757.99, 80000.00, '000', '2925194510172341', '2', '2016-04-24', 84, '上海霞飞路286号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7069, '熊鄙玫', '10004437', '1', 32371.17, 80000.00, '000', '2925196010177286', '3', '2016-04-24', 99, '上海霞飞路895号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7070, '周魂维', '10004438', '1', 10159.66, 80000.00, '000', '2925197012183569', '1', '2016-04-24', 87, '上海霞飞路662号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7071, '李害', '10004439', '1', 48798.76, 80000.00, '000', '2925197910192232', '3', '2016-04-24', 43, '上海霞飞路967号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7072, '熊宫', '10004440', '1', 79481.40, 80000.00, '000', '2925196712175767', '2', '2016-04-24', 66, '上海霞飞路734号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7073, '李阔鸯', '10004441', '2', 79678.59, 80000.00, '000', '2925193811285597', '3', '2016-04-24', 73, '上海霞飞路454号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7074, '黄请', '10004442', '1', 41109.91, 80000.00, '000', '2925200011112895', '1', '2016-04-24', 61, '上海霞飞路59号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7075, '段讶笼', '10004443', '1', 46166.52, 80000.00, '000', '2925201311167510', '1', '2016-04-24', 44, '上海霞飞路526号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7076, '毛忌', '10004444', '1', 61015.10, 80000.00, '000', '2925201112206213', '2', '2016-04-24', 57, '上海霞飞路709号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7077, '周点付', '10004445', '1', 74425.21, 80000.00, '000', '2925201011141906', '2', '2016-04-24', 29, '上海霞飞路37号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7078, '郤遥胡', '10004446', '1', 46746.93, 80000.00, '000', '2925197912124875', '2', '2016-04-24', 90, '上海霞飞路278号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7079, '李城萨', '10004447', '2', 75654.44, 80000.00, '000', '2925196411217498', '2', '2016-04-24', 48, '上海霞飞路606号', '2016-04-24 21:51:30', '1');
INSERT INTO `demo_account` VALUES (7080, '张井晕', '10004448', '1', 16024.88, 80000.00, '000', '2925193111149176', '2', '2016-04-24', 98, '上海霞飞路721号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7081, '赵疆滇', '10004449', '2', 60862.25, 80000.00, '000', '2925201411116586', '1', '2016-04-24', 96, '上海霞飞路769号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7082, '刘捶', '10004450', '1', 26358.57, 80000.00, '000', '2925198611302593', '1', '2016-04-24', 24, '上海霞飞路249号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7083, '周拨', '10004451', '2', 13041.27, 80000.00, '000', '2925199610292442', '3', '2016-04-24', 26, '上海霞飞路993号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7084, '黄罩非', '10004452', '2', 14560.72, 80000.00, '000', '2925196411189038', '2', '2016-04-24', 25, '上海霞飞路747号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7085, '熊酸', '10004453', '2', 7874.15, 80000.00, '000', '2925196411132336', '2', '2016-04-24', 38, '上海霞飞路669号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7086, '周夹赵', '10004454', '2', 61567.26, 80000.00, '000', '2925194010286972', '1', '2016-04-24', 44, '上海霞飞路433号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7087, '张袖狙', '10004455', '2', 34646.67, 80000.00, '000', '2925193010255458', '1', '2016-04-24', 60, '上海霞飞路420号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7088, '李违少', '10004456', '2', 62471.82, 80000.00, '000', '2925198710109268', '2', '2016-04-24', 91, '上海霞飞路702号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7089, '黄克殷', '10004457', '2', 23492.13, 80000.00, '000', '2925199311185276', '1', '2016-04-24', 42, '上海霞飞路305号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7090, '李绵您', '10004458', '2', 20144.42, 80000.00, '000', '2925196411168997', '2', '2016-04-24', 55, '上海霞飞路402号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7091, '周央稠', '10004459', '1', 11629.99, 80000.00, '000', '2925195511219088', '1', '2016-04-24', 59, '上海霞飞路769号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7092, '毛酶', '10004460', '1', 53376.25, 80000.00, '000', '2925193111126526', '3', '2016-04-24', 19, '上海霞飞路983号', '2016-04-24 21:51:31', '1');
INSERT INTO `demo_account` VALUES (7093, '郤蜂', '10004461', '1', 29737.95, 80000.00, '000', '2925192010177828', '3', '2016-04-24', 84, '上海霞飞路422号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7094, '赵跃', '10004462', '1', 42897.10, 80000.00, '000', '2925198410122576', '1', '2016-04-24', 22, '上海霞飞路239号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7095, '刘塞都', '10004463', '1', 48114.94, 80000.00, '000', '2925198712242365', '3', '2016-04-24', 77, '上海霞飞路986号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7096, '周布', '10004464', '2', 41214.25, 80000.00, '000', '2925197311196162', '2', '2016-04-24', 41, '上海霞飞路613号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7097, '熊颅', '10004465', '1', 44777.51, 80000.00, '000', '2925200411285854', '2', '2016-04-24', 50, '上海霞飞路14号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7098, '郤帐除', '10004466', '2', 74628.61, 80000.00, '000', '2925192511139542', '2', '2016-04-24', 69, '上海霞飞路277号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7099, '张剃', '10004467', '2', 54135.88, 80000.00, '000', '2925200610246900', '1', '2016-04-24', 61, '上海霞飞路193号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7100, '李怜仍', '10004468', '1', 56362.97, 80000.00, '000', '2925197412161605', '2', '2016-04-24', 44, '上海霞飞路450号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7101, '赵绒俄', '10004469', '1', 73406.53, 80000.00, '000', '2925199111106567', '1', '2016-04-24', 78, '上海霞飞路356号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7102, '周蛮大', '10004470', '1', 30164.76, 80000.00, '000', '2925200511213313', '2', '2016-04-24', 45, '上海霞飞路671号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7103, '赵栽接', '10004471', '2', 18400.95, 80000.00, '000', '2925198411121501', '2', '2016-04-24', 38, '上海霞飞路513号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7104, '赵烹', '10004472', '2', 20321.16, 80000.00, '000', '2925194110193150', '1', '2016-04-24', 42, '上海霞飞路991号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7105, '李产', '10004473', '2', 12844.13, 80000.00, '000', '2925192610143716', '2', '2016-04-24', 87, '上海霞飞路503号', '2016-04-24 21:51:32', '1');
INSERT INTO `demo_account` VALUES (7106, '黄寸', '10004474', '2', 40449.76, 80000.00, '000', '2925200812265678', '2', '2016-04-24', 82, '上海霞飞路299号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7107, '刘难', '10004475', '1', 55874.79, 80000.00, '000', '2925194412259791', '1', '2016-04-24', 47, '上海霞飞路109号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7108, '周亚逐', '10004476', '2', 17978.50, 80000.00, '000', '2925201311163640', '1', '2016-04-24', 67, '上海霞飞路248号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7109, '李却', '10004477', '2', 54857.52, 80000.00, '000', '2925200311245536', '2', '2016-04-24', 27, '上海霞飞路727号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7110, '熊慎蝗', '10004478', '1', 75721.64, 80000.00, '000', '2925198711111246', '3', '2016-04-24', 48, '上海霞飞路492号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7111, '熊绚', '10004479', '1', 45186.23, 80000.00, '000', '2925199210194367', '1', '2016-04-24', 33, '上海霞飞路914号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7112, '李厘姆', '10004480', '1', 76432.27, 80000.00, '000', '2925194910132541', '3', '2016-04-24', 76, '上海霞飞路210号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7113, '张征', '10004481', '1', 67196.56, 80000.00, '000', '2925200511122968', '2', '2016-04-24', 53, '上海霞飞路429号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7114, '毛搓府', '10004482', '1', 18744.82, 80000.00, '000', '2925194311167024', '2', '2016-04-24', 69, '上海霞飞路108号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7115, '李谷慰', '10004483', '1', 76852.43, 80000.00, '000', '2925198712259957', '1', '2016-04-24', 53, '上海霞飞路582号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7116, '李线', '10004484', '2', 79393.60, 80000.00, '000', '2925195611292906', '3', '2016-04-24', 97, '上海霞飞路393号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7117, '赵贾林', '10004485', '2', 63358.42, 80000.00, '000', '2925197212218648', '2', '2016-04-24', 23, '上海霞飞路999号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7118, '周韦', '10004486', '1', 77120.75, 80000.00, '000', '2925198212214655', '3', '2016-04-24', 32, '上海霞飞路419号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7119, '熊永亥', '10004487', '1', 47325.70, 80000.00, '000', '2925196611145118', '3', '2016-04-24', 33, '上海霞飞路139号', '2016-04-24 21:51:33', '1');
INSERT INTO `demo_account` VALUES (7120, '毛玲哺', '10004488', '2', 76154.31, 80000.00, '000', '2925196410123750', '2', '2016-04-24', 63, '上海霞飞路961号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7121, '郤毡', '10004489', '1', 21668.70, 80000.00, '000', '2925196910239171', '2', '2016-04-24', 72, '上海霞飞路136号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7122, '刘盔蛀', '10004490', '2', 17670.26, 80000.00, '000', '2925193410259780', '2', '2016-04-24', 78, '上海霞飞路353号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7123, '黄寸瀑', '10004491', '2', 63855.96, 80000.00, '000', '2925200712274934', '3', '2016-04-24', 87, '上海霞飞路840号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7124, '张场', '10004492', '2', 60127.20, 80000.00, '000', '2925195511161298', '2', '2016-04-24', 44, '上海霞飞路936号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7125, '赵椅苑', '10004493', '2', 52678.95, 80000.00, '000', '2925195110256118', '2', '2016-04-24', 98, '上海霞飞路117号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7126, '段冒厕', '10004494', '2', 71880.96, 80000.00, '000', '2925200810114070', '2', '2016-04-24', 68, '上海霞飞路546号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7127, '赵渡', '10004495', '2', 69179.71, 80000.00, '000', '2925198910155248', '2', '2016-04-24', 54, '上海霞飞路745号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7128, '刘眯', '10004496', '2', 67959.58, 80000.00, '000', '2925198512273646', '1', '2016-04-24', 97, '上海霞飞路989号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7129, '周即扒', '10004497', '1', 63890.48, 80000.00, '000', '2925196811146350', '2', '2016-04-24', 72, '上海霞飞路539号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7130, '郤丙福', '10004498', '2', 71426.35, 80000.00, '000', '2925196210214378', '3', '2016-04-24', 45, '上海霞飞路742号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7131, '张番降', '10004499', '1', 55027.80, 80000.00, '000', '2925193812218906', '2', '2016-04-24', 95, '上海霞飞路482号', '2016-04-24 21:51:34', '1');
INSERT INTO `demo_account` VALUES (7132, '黄据', '10004500', '1', 44204.49, 80000.00, '000', '2925201411109304', '2', '2016-04-24', 90, '上海霞飞路314号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7133, '段苹', '10004501', '2', 68796.64, 80000.00, '000', '2925198110202085', '3', '2016-04-24', 92, '上海霞飞路7号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7134, '赵态', '10004502', '1', 32761.90, 80000.00, '000', '2925197810203551', '3', '2016-04-24', 79, '上海霞飞路17号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7135, '熊显挟', '10004503', '2', 13448.74, 80000.00, '000', '2925197810123527', '2', '2016-04-24', 95, '上海霞飞路733号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7136, '熊蝇辫', '10004504', '2', 26581.81, 80000.00, '000', '2925200110258141', '2', '2016-04-24', 53, '上海霞飞路78号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7137, '黄顿', '10004505', '2', 67242.47, 80000.00, '000', '2925193012278228', '3', '2016-04-24', 25, '上海霞飞路274号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7138, '段益', '10004506', '1', 7777.89, 80000.00, '000', '2925195310303384', '2', '2016-04-24', 38, '上海霞飞路334号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7139, '毛罢炔', '10004507', '2', 32958.62, 80000.00, '000', '2925201511213278', '2', '2016-04-24', 37, '上海霞飞路924号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7140, '熊胚', '10004508', '1', 22791.11, 80000.00, '000', '2925200412189221', '1', '2016-04-24', 96, '上海霞飞路959号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7141, '李甚', '10004509', '2', 52109.67, 80000.00, '000', '2925198211258486', '2', '2016-04-24', 38, '上海霞飞路355号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7142, '段蹦', '10004510', '2', 51535.25, 80000.00, '000', '2925192911309213', '1', '2016-04-24', 55, '上海霞飞路941号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7143, '郤晌', '10004511', '1', 58507.72, 80000.00, '000', '2925197811206189', '1', '2016-04-24', 94, '上海霞飞路616号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7144, '刘循', '10004512', '2', 59910.18, 80000.00, '000', '2925196712261036', '3', '2016-04-24', 26, '上海霞飞路274号', '2016-04-24 21:51:35', '1');
INSERT INTO `demo_account` VALUES (7145, '刘徒埔', '10004513', '2', 31317.20, 80000.00, '000', '2925198211153738', '2', '2016-04-24', 64, '上海霞飞路79号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7146, '熊恿', '10004514', '2', 48069.70, 80000.00, '000', '2925198110118660', '2', '2016-04-24', 25, '上海霞飞路86号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7147, '刘吕迟', '10004515', '2', 18267.62, 80000.00, '000', '2925198511256473', '1', '2016-04-24', 52, '上海霞飞路110号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7148, '毛设莆', '10004516', '2', 73350.19, 80000.00, '000', '2925199012191625', '1', '2016-04-24', 96, '上海霞飞路162号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7149, '赵拍挫', '10004517', '1', 28145.97, 80000.00, '000', '2925194711285185', '2', '2016-04-24', 75, '上海霞飞路613号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7150, '李桶', '10004518', '2', 23256.20, 80000.00, '000', '2925200410132016', '1', '2016-04-24', 36, '上海霞飞路572号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7151, '段浆', '10004519', '1', 58241.17, 80000.00, '000', '2925201111233369', '3', '2016-04-24', 76, '上海霞飞路751号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7152, '黄诊', '10004520', '2', 42391.65, 80000.00, '000', '2925200010135106', '2', '2016-04-24', 57, '上海霞飞路382号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7153, '张梢精', '10004521', '2', 22878.11, 80000.00, '000', '2925194512163766', '3', '2016-04-24', 30, '上海霞飞路437号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7154, '熊栓盂', '10004522', '2', 19757.52, 80000.00, '000', '2925201511197768', '2', '2016-04-24', 78, '上海霞飞路648号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7155, '张枉夫', '10004523', '1', 33688.13, 80000.00, '000', '2925196711222006', '3', '2016-04-24', 87, '上海霞飞路453号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7156, '段肾咖', '10004524', '1', 39284.75, 80000.00, '000', '2925200310189082', '3', '2016-04-24', 76, '上海霞飞路171号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7157, '赵隧', '10004525', '2', 20767.62, 80000.00, '000', '2925197412111342', '2', '2016-04-24', 51, '上海霞飞路271号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7158, '周矫', '10004526', '1', 15032.23, 80000.00, '000', '2925196411292783', '3', '2016-04-24', 38, '上海霞飞路721号', '2016-04-24 21:51:36', '1');
INSERT INTO `demo_account` VALUES (7159, '黄嘿焉', '10004527', '1', 70375.65, 80000.00, '000', '2925194211171786', '2', '2016-04-24', 65, '上海霞飞路914号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7160, '黄驰陆', '10004528', '1', 6921.58, 80000.00, '000', '2925192611171455', '1', '2016-04-24', 43, '上海霞飞路691号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7161, '周换没', '10004529', '1', 61315.76, 80000.00, '000', '2925199211209151', '3', '2016-04-24', 33, '上海霞飞路467号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7162, '毛顾钮', '10004530', '2', 67421.82, 80000.00, '000', '2925197211128618', '3', '2016-04-24', 23, '上海霞飞路411号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7163, '熊后', '10004531', '1', 12647.35, 80000.00, '000', '2925199812143787', '2', '2016-04-24', 24, '上海霞飞路50号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7164, '周蛋孺', '10004532', '1', 42081.68, 80000.00, '000', '2925194110121125', '2', '2016-04-24', 93, '上海霞飞路561号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7165, '李嫁惯', '10004533', '2', 57883.37, 80000.00, '000', '2925193812289036', '2', '2016-04-24', 51, '上海霞飞路360号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7166, '赵秘', '10004534', '2', 61299.14, 80000.00, '000', '2925197711214491', '1', '2016-04-24', 81, '上海霞飞路431号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7167, '黄魏癣', '10004535', '2', 15313.26, 80000.00, '000', '2925194511285684', '3', '2016-04-24', 23, '上海霞飞路129号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7168, '郤命', '10004536', '1', 37241.50, 80000.00, '000', '2925200112204097', '1', '2016-04-24', 77, '上海霞飞路961号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7169, '熊疫', '10004537', '2', 22609.21, 80000.00, '000', '2925200312167934', '2', '2016-04-24', 43, '上海霞飞路63号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7170, '毛搁', '10004538', '2', 50295.50, 80000.00, '000', '2925199410224384', '3', '2016-04-24', 86, '上海霞飞路801号', '2016-04-24 21:51:37', '1');
INSERT INTO `demo_account` VALUES (7171, '毛挟粉', '10004539', '2', 22356.39, 80000.00, '000', '2925198810196688', '3', '2016-04-24', 81, '上海霞飞路121号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7172, '李冯', '10004540', '2', 49962.16, 80000.00, '000', '2925195912121466', '2', '2016-04-24', 97, '上海霞飞路834号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7173, '郤又乓', '10004541', '2', 47658.54, 80000.00, '000', '2925194611261145', '1', '2016-04-24', 41, '上海霞飞路230号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7174, '周橡臆', '10004542', '1', 51590.25, 80000.00, '000', '2925199012235797', '2', '2016-04-24', 74, '上海霞飞路897号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7175, '熊萍', '10004543', '1', 19466.20, 80000.00, '000', '2925194110249013', '2', '2016-04-24', 56, '上海霞飞路743号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7176, '李望音', '10004544', '2', 30838.16, 80000.00, '000', '2925193511221808', '1', '2016-04-24', 70, '上海霞飞路653号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7177, '张蜂氰', '10004545', '1', 79785.40, 80000.00, '000', '2925198312251859', '2', '2016-04-24', 85, '上海霞飞路277号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7178, '李粮吧', '10004546', '1', 68279.67, 80000.00, '000', '2925197511293650', '3', '2016-04-24', 99, '上海霞飞路827号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7179, '熊恃糕', '10004547', '2', 61389.58, 80000.00, '000', '2925197611272351', '3', '2016-04-24', 83, '上海霞飞路722号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7180, '熊翔', '10004548', '1', 57027.36, 80000.00, '000', '2925194210268463', '1', '2016-04-24', 97, '上海霞飞路283号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7181, '毛胺', '10004549', '2', 43220.15, 80000.00, '000', '2925196611106463', '2', '2016-04-24', 31, '上海霞飞路554号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7182, '赵筛', '10004550', '2', 6806.97, 80000.00, '000', '2925199511251818', '3', '2016-04-24', 45, '上海霞飞路641号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7183, '张迟', '10004551', '2', 37094.80, 80000.00, '000', '2925192411237873', '2', '2016-04-24', 65, '上海霞飞路757号', '2016-04-24 21:51:38', '1');
INSERT INTO `demo_account` VALUES (7184, '刘潮', '10004552', '1', 72338.90, 80000.00, '000', '2925194412241213', '3', '2016-04-24', 49, '上海霞飞路416号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7185, '张茫斩', '10004553', '1', 51875.71, 80000.00, '000', '2925194110198115', '1', '2016-04-24', 32, '上海霞飞路972号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7186, '段邦', '10004554', '1', 44467.70, 80000.00, '000', '2925197511288821', '3', '2016-04-24', 22, '上海霞飞路875号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7187, '周磕', '10004555', '2', 23769.99, 80000.00, '000', '2925194410236251', '1', '2016-04-24', 65, '上海霞飞路692号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7188, '毛俱榨', '10004556', '1', 58902.44, 80000.00, '000', '2925194311257845', '3', '2016-04-24', 98, '上海霞飞路96号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7189, '段舵', '10004557', '2', 7870.17, 80000.00, '000', '2925195112169081', '2', '2016-04-24', 83, '上海霞飞路600号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7190, '周稳', '10004558', '1', 77989.51, 80000.00, '000', '2925192510114159', '1', '2016-04-24', 66, '上海霞飞路924号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7191, '郤迅恐', '10004559', '2', 8630.59, 80000.00, '000', '2925201510116194', '2', '2016-04-24', 70, '上海霞飞路397号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7192, '郤普辊', '10004560', '1', 11404.23, 80000.00, '000', '2925201412219129', '1', '2016-04-24', 70, '上海霞飞路817号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7193, '毛周', '10004561', '2', 29378.92, 80000.00, '000', '2925197711259348', '1', '2016-04-24', 84, '上海霞飞路700号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7194, '周盖', '10004562', '2', 66168.60, 80000.00, '000', '2925199712115778', '2', '2016-04-24', 89, '上海霞飞路753号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7195, '黄诈', '10004563', '1', 51553.24, 80000.00, '000', '2925193712216007', '2', '2016-04-24', 81, '上海霞飞路853号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7196, '李黄', '10004564', '2', 46886.66, 80000.00, '000', '2925198811175670', '2', '2016-04-24', 65, '上海霞飞路715号', '2016-04-24 21:51:39', '1');
INSERT INTO `demo_account` VALUES (7197, '赵缕馁', '10004565', '1', 42793.25, 80000.00, '000', '2925198611223007', '2', '2016-04-24', 24, '上海霞飞路740号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7198, '李疯富', '10004566', '1', 45593.91, 80000.00, '000', '2925196210149199', '1', '2016-04-24', 38, '上海霞飞路427号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7199, '刘腻乎', '10004567', '2', 37525.75, 80000.00, '000', '2925197611275673', '1', '2016-04-24', 70, '上海霞飞路946号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7200, '毛妨铱', '10004568', '1', 21130.56, 80000.00, '000', '2925195110128163', '2', '2016-04-24', 63, '上海霞飞路328号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7201, '李哨', '10004569', '2', 56215.46, 80000.00, '000', '2925201511114898', '1', '2016-04-24', 34, '上海霞飞路846号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7202, '黄猾', '10004570', '2', 78426.22, 80000.00, '000', '2925196211199779', '1', '2016-04-24', 62, '上海霞飞路989号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7203, '李塘竭', '10004571', '2', 17915.49, 80000.00, '000', '2925201111151946', '2', '2016-04-24', 22, '上海霞飞路469号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7204, '张翱桔', '10004572', '1', 20596.90, 80000.00, '000', '2925199411229548', '3', '2016-04-24', 66, '上海霞飞路449号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7205, '李锈鞠', '10004573', '2', 41261.45, 80000.00, '000', '2925198511174037', '2', '2016-04-24', 71, '上海霞飞路222号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7206, '赵阁', '10004574', '2', 21257.30, 80000.00, '000', '2925201110234619', '2', '2016-04-24', 62, '上海霞飞路163号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7207, '赵洪', '10004575', '1', 67571.78, 80000.00, '000', '2925198611276967', '2', '2016-04-24', 79, '上海霞飞路823号', '2016-04-24 21:51:40', '1');
INSERT INTO `demo_account` VALUES (7208, '赵臃畔', '10004576', '1', 64943.37, 80000.00, '000', '2925193410276548', '2', '2016-04-24', 31, '上海霞飞路556号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7209, '周力柠', '10004577', '2', 52189.83, 80000.00, '000', '2925193711251300', '3', '2016-04-24', 32, '上海霞飞路20号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7210, '周轿', '10004578', '2', 40038.70, 80000.00, '000', '2925201312215619', '1', '2016-04-24', 72, '上海霞飞路379号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7211, '李镁用', '10004579', '1', 64727.79, 80000.00, '000', '2925192611214908', '3', '2016-04-24', 41, '上海霞飞路940号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7212, '赵烙', '10004580', '2', 19114.30, 80000.00, '000', '2925199612203111', '1', '2016-04-24', 29, '上海霞飞路327号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7213, '段校肃', '10004581', '2', 27349.44, 80000.00, '000', '2925198511199885', '2', '2016-04-24', 90, '上海霞飞路174号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7214, '黄坡业', '10004582', '2', 58073.37, 80000.00, '000', '2925195910115178', '2', '2016-04-24', 21, '上海霞飞路653号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7215, '段男', '10004583', '2', 22743.41, 80000.00, '000', '2925200710154120', '2', '2016-04-24', 27, '上海霞飞路901号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7216, '赵圃仟', '10004584', '2', 47994.47, 80000.00, '000', '2925194210259240', '2', '2016-04-24', 18, '上海霞飞路730号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7217, '赵允', '10004585', '2', 49947.42, 80000.00, '000', '2925193911245040', '1', '2016-04-24', 54, '上海霞飞路688号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7218, '张保', '10004586', '1', 24085.80, 80000.00, '000', '2925197111137033', '2', '2016-04-24', 81, '上海霞飞路775号', '2016-04-24 21:51:41', '1');
INSERT INTO `demo_account` VALUES (7219, '赵荚', '10004587', '1', 48650.59, 80000.00, '000', '2925200311189315', '2', '2016-04-24', 89, '上海霞飞路762号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7220, '周篙', '10004588', '2', 22634.24, 80000.00, '000', '2925192611143725', '2', '2016-04-24', 93, '上海霞飞路208号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7221, '周樱', '10004589', '1', 69139.76, 80000.00, '000', '2925198010307557', '3', '2016-04-24', 20, '上海霞飞路878号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7222, '刘腺寥', '10004590', '1', 75359.18, 80000.00, '000', '2925195511109749', '2', '2016-04-24', 73, '上海霞飞路348号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7223, '李踏', '10004591', '2', 39531.72, 80000.00, '000', '2925193812258258', '2', '2016-04-24', 84, '上海霞飞路95号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7224, '段念沁', '10004592', '2', 61055.59, 80000.00, '000', '2925197710139259', '3', '2016-04-24', 22, '上海霞飞路431号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7225, '周文盲', '10004593', '2', 6436.38, 80000.00, '000', '2925195011298546', '1', '2016-04-24', 51, '上海霞飞路75号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7226, '段颐屑', '10004594', '1', 40943.62, 80000.00, '000', '2925196211271351', '1', '2016-04-24', 23, '上海霞飞路142号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7227, '毛每仕', '10004595', '2', 41711.49, 80000.00, '000', '2925200512244482', '2', '2016-04-24', 48, '上海霞飞路724号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7228, '赵舶', '10004596', '2', 20608.50, 80000.00, '000', '2925198311265461', '1', '2016-04-24', 77, '上海霞飞路141号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7229, '郤狼愈', '10004597', '1', 62434.52, 80000.00, '000', '2925198211119968', '2', '2016-04-24', 74, '上海霞飞路282号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7230, '黄板', '10004598', '2', 23932.13, 80000.00, '000', '2925195911295597', '1', '2016-04-24', 28, '上海霞飞路296号', '2016-04-24 21:51:42', '1');
INSERT INTO `demo_account` VALUES (7231, '熊铡', '10004599', '2', 51772.63, 80000.00, '000', '2925198810211522', '3', '2016-04-24', 24, '上海霞飞路182号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7232, '张笺封', '10004600', '2', 50920.20, 80000.00, '000', '2925201311108283', '2', '2016-04-24', 87, '上海霞飞路576号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7233, '毛弄占', '10004601', '1', 76864.91, 80000.00, '000', '2925193712235443', '3', '2016-04-24', 38, '上海霞飞路292号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7234, '赵提', '10004602', '2', 27812.70, 80000.00, '000', '2925193111204404', '1', '2016-04-24', 44, '上海霞飞路841号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7235, '赵瓤胖', '10004603', '1', 36389.35, 80000.00, '000', '2925194511246170', '3', '2016-04-24', 48, '上海霞飞路360号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7236, '熊斯台', '10004604', '2', 24394.75, 80000.00, '000', '2925198710125316', '1', '2016-04-24', 32, '上海霞飞路972号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7237, '黄娜', '10004605', '1', 50960.15, 80000.00, '000', '2925199411244825', '3', '2016-04-24', 51, '上海霞飞路760号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7238, '段铀', '10004606', '1', 69880.23, 80000.00, '000', '2925197111171908', '2', '2016-04-24', 47, '上海霞飞路64号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7239, '熊矽', '10004607', '2', 59985.51, 80000.00, '000', '2925192111211251', '1', '2016-04-24', 89, '上海霞飞路879号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7240, '周焰', '10004608', '2', 27296.57, 80000.00, '000', '2925198110223491', '2', '2016-04-24', 88, '上海霞飞路654号', '2016-04-24 21:51:43', '1');
INSERT INTO `demo_account` VALUES (7241, '张婉', '10004609', '1', 19155.75, 80000.00, '000', '2925194510118048', '2', '2016-04-24', 31, '上海霞飞路734号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7242, '段川驳', '10004610', '1', 78734.72, 80000.00, '000', '2925193110119679', '3', '2016-04-24', 32, '上海霞飞路190号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7243, '熊钥拧', '10004611', '1', 39203.52, 80000.00, '000', '2925196812149407', '2', '2016-04-24', 66, '上海霞飞路655号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7244, '黄荣', '10004612', '1', 24399.21, 80000.00, '000', '2925197912264673', '3', '2016-04-24', 82, '上海霞飞路203号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7245, '赵费眺', '10004613', '1', 47082.57, 80000.00, '000', '2925192911164743', '2', '2016-04-24', 75, '上海霞飞路137号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7246, '周刊', '10004614', '1', 56830.60, 80000.00, '000', '2925201212152573', '2', '2016-04-24', 60, '上海霞飞路911号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7247, '刘诽祸', '10004615', '2', 49206.90, 80000.00, '000', '2925195411139423', '1', '2016-04-24', 61, '上海霞飞路177号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7248, '张拒貌', '10004616', '1', 66203.90, 80000.00, '000', '2925195812293652', '3', '2016-04-24', 36, '上海霞飞路207号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7249, '李狭脆', '10004617', '2', 22914.83, 80000.00, '000', '2925197312164120', '3', '2016-04-24', 98, '上海霞飞路715号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7250, '熊惹狱', '10004618', '1', 27113.70, 80000.00, '000', '2925196911252727', '2', '2016-04-24', 61, '上海霞飞路244号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7251, '周潜瘤', '10004619', '2', 34790.43, 80000.00, '000', '2925197011246547', '2', '2016-04-24', 39, '上海霞飞路994号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7252, '段砧文', '10004620', '1', 39728.57, 80000.00, '000', '2925200511304025', '2', '2016-04-24', 38, '上海霞飞路98号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7253, '段平事', '10004621', '2', 19007.51, 80000.00, '000', '2925201411129624', '2', '2016-04-24', 30, '上海霞飞路940号', '2016-04-24 21:51:44', '1');
INSERT INTO `demo_account` VALUES (7254, '赵礁', '10004622', '1', 22720.26, 80000.00, '000', '2925192212278211', '1', '2016-04-24', 94, '上海霞飞路209号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7255, '赵眺糜', '10004623', '1', 73321.64, 80000.00, '000', '2925195412129345', '1', '2016-04-24', 85, '上海霞飞路906号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7256, '黄锑', '10004624', '1', 35870.85, 80000.00, '000', '2925200511152474', '1', '2016-04-24', 63, '上海霞飞路563号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7257, '段螺', '10004625', '1', 76880.33, 80000.00, '000', '2925196812225860', '2', '2016-04-24', 95, '上海霞飞路361号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7258, '周蹭', '10004626', '1', 8742.62, 80000.00, '000', '2925196511164812', '1', '2016-04-24', 38, '上海霞飞路853号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7259, '刘耪', '10004627', '1', 42493.33, 80000.00, '000', '2925200310287576', '1', '2016-04-24', 76, '上海霞飞路365号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7260, '黄显肖', '10004628', '1', 38332.27, 80000.00, '000', '2925201311238941', '1', '2016-04-24', 92, '上海霞飞路46号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7261, '郤脖', '10004629', '2', 44499.13, 80000.00, '000', '2925199212277282', '2', '2016-04-24', 93, '上海霞飞路925号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7262, '毛讼', '10004630', '1', 69074.60, 80000.00, '000', '2925195912222462', '1', '2016-04-24', 62, '上海霞飞路106号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7263, '周鉴', '10004631', '2', 61901.42, 80000.00, '000', '2925200110219579', '3', '2016-04-24', 29, '上海霞飞路574号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7264, '毛她巢', '10004632', '1', 7128.46, 80000.00, '000', '2925193110268192', '2', '2016-04-24', 27, '上海霞飞路822号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7265, '黄狠含', '10004633', '1', 20892.84, 80000.00, '000', '2925193911242160', '1', '2016-04-24', 80, '上海霞飞路746号', '2016-04-24 21:51:45', '1');
INSERT INTO `demo_account` VALUES (7266, '黄阔佯', '10004634', '1', 7320.80, 80000.00, '000', '2925192912221822', '2', '2016-04-24', 35, '上海霞飞路953号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7267, '赵醛清', '10004635', '2', 43443.34, 80000.00, '000', '2925194012188684', '2', '2016-04-24', 41, '上海霞飞路810号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7268, '赵恬', '10004636', '1', 23651.86, 80000.00, '000', '2925195511222284', '2', '2016-04-24', 63, '上海霞飞路165号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7269, '刘及', '10004637', '1', 39082.84, 80000.00, '000', '2925195812133311', '1', '2016-04-24', 45, '上海霞飞路834号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7270, '刘比饱', '10004638', '2', 26773.20, 80000.00, '000', '2925198211143501', '2', '2016-04-24', 51, '上海霞飞路461号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7271, '段予', '10004639', '2', 15533.26, 80000.00, '000', '2925192411169139', '3', '2016-04-24', 19, '上海霞飞路436号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7272, '郤懂', '10004640', '1', 16314.10, 80000.00, '000', '2925194011243413', '3', '2016-04-24', 37, '上海霞飞路87号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7273, '张爸浅', '10004641', '1', 60339.88, 80000.00, '000', '2925199611193101', '2', '2016-04-24', 90, '上海霞飞路285号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7274, '赵掺', '10004642', '2', 10472.12, 80000.00, '000', '2925196911191422', '1', '2016-04-24', 50, '上海霞飞路114号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7275, '段骄泪', '10004643', '2', 74143.75, 80000.00, '000', '2925192710268066', '1', '2016-04-24', 53, '上海霞飞路131号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7276, '刘讲', '10004644', '1', 65762.73, 80000.00, '000', '2925192811228675', '3', '2016-04-24', 56, '上海霞飞路164号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7277, '郤嫁讽', '10004645', '2', 20754.44, 80000.00, '000', '2925198112198215', '2', '2016-04-24', 90, '上海霞飞路415号', '2016-04-24 21:51:46', '1');
INSERT INTO `demo_account` VALUES (7278, '毛滩', '10004646', '1', 28320.79, 80000.00, '000', '2925199911169831', '1', '2016-04-24', 65, '上海霞飞路2号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7279, '郤掸驼', '10004647', '1', 71658.53, 80000.00, '000', '2925199710249921', '2', '2016-04-24', 91, '上海霞飞路824号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7280, '郤倦翰', '10004648', '1', 68658.85, 80000.00, '000', '2925196712206206', '3', '2016-04-24', 96, '上海霞飞路946号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7281, '张职', '10004649', '2', 41128.62, 80000.00, '000', '2925194211285701', '2', '2016-04-24', 28, '上海霞飞路371号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7282, '李志深', '10004650', '1', 36277.43, 80000.00, '000', '2925194210232459', '1', '2016-04-24', 54, '上海霞飞路328号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7283, '熊粮', '10004651', '1', 42556.57, 80000.00, '000', '2925200711265990', '3', '2016-04-24', 21, '上海霞飞路836号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7284, '黄降叙', '10004652', '2', 55027.60, 80000.00, '000', '2925195012258220', '2', '2016-04-24', 72, '上海霞飞路447号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7285, '郤捍', '10004653', '2', 23191.45, 80000.00, '000', '2925195212288779', '1', '2016-04-24', 49, '上海霞飞路679号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7286, '毛橱', '10004654', '1', 62621.43, 80000.00, '000', '2925196911302311', '3', '2016-04-24', 33, '上海霞飞路753号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7287, '黄蹲捧', '10004655', '1', 70904.31, 80000.00, '000', '2925196211134392', '1', '2016-04-24', 23, '上海霞飞路727号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7288, '郤匹与', '10004656', '2', 12188.28, 80000.00, '000', '2925198911167450', '3', '2016-04-24', 92, '上海霞飞路212号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7289, '赵醋诽', '10004657', '1', 75135.81, 80000.00, '000', '2925193012176919', '2', '2016-04-24', 51, '上海霞飞路266号', '2016-04-24 21:51:47', '1');
INSERT INTO `demo_account` VALUES (7290, '刘晒店', '10004658', '2', 30283.70, 80000.00, '000', '2925198812172619', '2', '2016-04-24', 42, '上海霞飞路69号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7291, '赵察嗓', '10004659', '1', 6681.28, 80000.00, '000', '2925194711237106', '2', '2016-04-24', 27, '上海霞飞路349号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7292, '黄早', '10004660', '2', 66237.98, 80000.00, '000', '2925194710165469', '3', '2016-04-24', 51, '上海霞飞路476号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7293, '段观女', '10004661', '1', 27463.68, 80000.00, '000', '2925200810254695', '2', '2016-04-24', 49, '上海霞飞路424号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7294, '熊绅', '10004662', '1', 66249.39, 80000.00, '000', '2925192412282429', '3', '2016-04-24', 79, '上海霞飞路706号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7295, '赵耿', '10004663', '2', 29916.75, 80000.00, '000', '2925195911221525', '3', '2016-04-24', 94, '上海霞飞路613号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7296, '李惑蓬', '10004664', '2', 22120.23, 80000.00, '000', '2925198111119420', '3', '2016-04-24', 55, '上海霞飞路898号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7297, '段扯', '10004665', '1', 74170.70, 80000.00, '000', '2925200812249898', '2', '2016-04-24', 85, '上海霞飞路243号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7298, '刘庭', '10004666', '2', 77032.22, 80000.00, '000', '2925194410248330', '2', '2016-04-24', 35, '上海霞飞路575号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7299, '周嫉辣', '10004667', '1', 27646.88, 80000.00, '000', '2925195411127009', '3', '2016-04-24', 66, '上海霞飞路454号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7300, '张汾', '10004668', '1', 75259.90, 80000.00, '000', '2925196112131635', '2', '2016-04-24', 20, '上海霞飞路378号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7301, '赵庶', '10004669', '1', 60234.17, 80000.00, '000', '2925195212252433', '3', '2016-04-24', 89, '上海霞飞路992号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7302, '李饺灭', '10004670', '1', 33219.80, 80000.00, '000', '2925200711166840', '2', '2016-04-24', 84, '上海霞飞路737号', '2016-04-24 21:51:48', '1');
INSERT INTO `demo_account` VALUES (7303, '李挥翘', '10004671', '1', 40696.81, 80000.00, '000', '2925197010209987', '2', '2016-04-24', 59, '上海霞飞路510号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7304, '段惶', '10004672', '2', 67760.91, 80000.00, '000', '2925199211273638', '3', '2016-04-24', 28, '上海霞飞路457号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7305, '黄壹万', '10004673', '2', 42434.32, 80000.00, '000', '2925197012165468', '2', '2016-04-24', 98, '上海霞飞路969号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7306, '段刊', '10004674', '2', 38080.79, 80000.00, '000', '2925192211201919', '1', '2016-04-24', 95, '上海霞飞路406号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7307, '张级', '10004675', '2', 41284.24, 80000.00, '000', '2925198711138049', '1', '2016-04-24', 57, '上海霞飞路3号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7308, '李靖顷', '10004676', '1', 64184.30, 80000.00, '000', '2925200011195064', '2', '2016-04-24', 93, '上海霞飞路800号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7309, '熊碱', '10004677', '2', 14480.16, 80000.00, '000', '2925201210172369', '1', '2016-04-24', 31, '上海霞飞路291号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7310, '李博', '10004678', '1', 69259.95, 80000.00, '000', '2925197311225144', '2', '2016-04-24', 74, '上海霞飞路783号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7311, '郤蝉认', '10004679', '2', 40434.90, 80000.00, '000', '2925195412245578', '1', '2016-04-24', 29, '上海霞飞路330号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7312, '周耶', '10004680', '1', 63895.21, 80000.00, '000', '2925195411124955', '2', '2016-04-24', 37, '上海霞飞路261号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7313, '段厢宇', '10004681', '2', 17476.52, 80000.00, '000', '2925199010259891', '3', '2016-04-24', 57, '上海霞飞路154号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7314, '熊妖', '10004682', '1', 22521.90, 80000.00, '000', '2925196211181017', '2', '2016-04-24', 33, '上海霞飞路228号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7315, '郤侥讥', '10004683', '1', 44223.53, 80000.00, '000', '2925194312191394', '2', '2016-04-24', 38, '上海霞飞路862号', '2016-04-24 21:51:49', '1');
INSERT INTO `demo_account` VALUES (7316, '李优', '10004684', '1', 70972.56, 80000.00, '000', '2925200011237955', '1', '2016-04-24', 82, '上海霞飞路25号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7317, '郤堕危', '10004685', '2', 6691.57, 80000.00, '000', '2925192611126153', '1', '2016-04-24', 29, '上海霞飞路49号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7318, '毛摔', '10004686', '1', 20582.60, 80000.00, '000', '2925194912128917', '2', '2016-04-24', 70, '上海霞飞路256号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7319, '毛及', '10004687', '2', 43839.60, 80000.00, '000', '2925199311158912', '3', '2016-04-24', 62, '上海霞飞路449号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7320, '赵弥芭', '10004688', '2', 40695.26, 80000.00, '000', '2925199711106905', '3', '2016-04-24', 81, '上海霞飞路338号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7321, '黄都', '10004689', '2', 29656.67, 80000.00, '000', '2925195311125866', '2', '2016-04-24', 85, '上海霞飞路430号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7322, '周懒', '10004690', '2', 62003.20, 80000.00, '000', '2925199412163211', '2', '2016-04-24', 45, '上海霞飞路869号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7323, '张扭赞', '10004691', '2', 76466.80, 80000.00, '000', '2925197311245337', '3', '2016-04-24', 49, '上海霞飞路126号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7324, '周厉缺', '10004692', '2', 35599.66, 80000.00, '000', '2925201212151325', '3', '2016-04-24', 34, '上海霞飞路319号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7325, '黄坚', '10004693', '1', 12583.52, 80000.00, '000', '2925194410238343', '1', '2016-04-24', 70, '上海霞飞路340号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7326, '李逾鸿', '10004694', '1', 9155.26, 80000.00, '000', '2925197411261989', '3', '2016-04-24', 32, '上海霞飞路720号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7327, '段次', '10004695', '1', 23980.42, 80000.00, '000', '2925200311193357', '2', '2016-04-24', 96, '上海霞飞路534号', '2016-04-24 21:51:50', '1');
INSERT INTO `demo_account` VALUES (7328, '张撂知', '10004696', '1', 36104.26, 80000.00, '000', '2925192910172292', '1', '2016-04-24', 64, '上海霞飞路351号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7329, '张柔', '10004697', '2', 6100.99, 80000.00, '000', '2925194511162773', '2', '2016-04-24', 46, '上海霞飞路499号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7330, '赵万灶', '10004698', '2', 26255.27, 80000.00, '000', '2925201310234956', '3', '2016-04-24', 50, '上海霞飞路609号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7331, '赵忌', '10004699', '1', 74478.41, 80000.00, '000', '2925194911176867', '3', '2016-04-24', 42, '上海霞飞路552号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7332, '郤霓丛', '10004700', '1', 34705.20, 80000.00, '000', '2925192612251222', '1', '2016-04-24', 46, '上海霞飞路552号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7333, '赵道', '10004701', '2', 39309.21, 80000.00, '000', '2925195211238267', '1', '2016-04-24', 28, '上海霞飞路343号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7334, '熊骑', '10004702', '2', 24473.90, 80000.00, '000', '2925195210259973', '2', '2016-04-24', 68, '上海霞飞路809号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7335, '毛态好', '10004703', '2', 33615.83, 80000.00, '000', '2925193211148219', '2', '2016-04-24', 79, '上海霞飞路618号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7336, '李秉', '10004704', '1', 6742.55, 80000.00, '000', '2925197211226030', '1', '2016-04-24', 76, '上海霞飞路836号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7337, '周净', '10004705', '2', 63162.42, 80000.00, '000', '2925201110269173', '2', '2016-04-24', 70, '上海霞飞路521号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7338, '郤罕渔', '10004706', '2', 75107.33, 80000.00, '000', '2925199212234726', '2', '2016-04-24', 35, '上海霞飞路727号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7339, '郤三街', '10004707', '2', 38768.50, 80000.00, '000', '2925192611234472', '2', '2016-04-24', 54, '上海霞飞路278号', '2016-04-24 21:51:51', '1');
INSERT INTO `demo_account` VALUES (7340, '张袭缕', '10004708', '1', 16736.71, 80000.00, '000', '2925199111245201', '1', '2016-04-24', 26, '上海霞飞路48号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7341, '刘元捧', '10004709', '1', 20162.10, 80000.00, '000', '2925195611126157', '1', '2016-04-24', 71, '上海霞飞路355号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7342, '黄顾', '10004710', '1', 51831.40, 80000.00, '000', '2925200411181054', '1', '2016-04-24', 96, '上海霞飞路397号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7343, '赵益蹈', '10004711', '1', 49024.74, 80000.00, '000', '2925198510241184', '3', '2016-04-24', 22, '上海霞飞路428号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7344, '刘鸵务', '10004712', '2', 53297.94, 80000.00, '000', '2925200912108243', '3', '2016-04-24', 29, '上海霞飞路683号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7345, '黄盔订', '10004713', '2', 77379.35, 80000.00, '000', '2925193712217560', '2', '2016-04-24', 99, '上海霞飞路749号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7346, '毛渡隶', '10004714', '2', 19011.54, 80000.00, '000', '2925200910118416', '1', '2016-04-24', 95, '上海霞飞路300号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7347, '黄蹋', '10004715', '2', 71974.35, 80000.00, '000', '2925194211298202', '2', '2016-04-24', 72, '上海霞飞路767号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7348, '赵纷督', '10004716', '2', 73597.15, 80000.00, '000', '2925192011145041', '1', '2016-04-24', 37, '上海霞飞路694号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7349, '段棚', '10004717', '1', 23790.81, 80000.00, '000', '2925192211281518', '2', '2016-04-24', 100, '上海霞飞路62号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7350, '郤堂', '10004718', '2', 71093.14, 80000.00, '000', '2925199010185007', '2', '2016-04-24', 94, '上海霞飞路22号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7351, '张苑堂', '10004719', '1', 54346.62, 80000.00, '000', '2925192412134996', '2', '2016-04-24', 86, '上海霞飞路962号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7352, '周陶', '10004720', '2', 72423.25, 80000.00, '000', '2925198912181604', '1', '2016-04-24', 66, '上海霞飞路869号', '2016-04-24 21:51:52', '1');
INSERT INTO `demo_account` VALUES (7353, '赵量烫', '10004721', '2', 14936.58, 80000.00, '000', '2925199911133355', '3', '2016-04-24', 42, '上海霞飞路427号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7354, '周淌堰', '10004722', '1', 30060.29, 80000.00, '000', '2925192610211007', '3', '2016-04-24', 80, '上海霞飞路243号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7355, '赵盛妨', '10004723', '2', 65445.75, 80000.00, '000', '2925195612295985', '1', '2016-04-24', 85, '上海霞飞路12号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7356, '段瞥绑', '10004724', '2', 64791.26, 80000.00, '000', '2925193311161706', '2', '2016-04-24', 96, '上海霞飞路304号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7357, '张哀', '10004725', '2', 37903.64, 80000.00, '000', '2925192211242750', '2', '2016-04-24', 30, '上海霞飞路45号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7358, '段厨', '10004726', '1', 73963.16, 80000.00, '000', '2925200711199488', '3', '2016-04-24', 48, '上海霞飞路554号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7359, '熊仁', '10004727', '2', 70415.34, 80000.00, '000', '2925200810115403', '2', '2016-04-24', 24, '上海霞飞路320号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7360, '黄炕鞋', '10004728', '1', 19137.13, 80000.00, '000', '2925197511181924', '2', '2016-04-24', 76, '上海霞飞路444号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7361, '段阜于', '10004729', '2', 57620.57, 80000.00, '000', '2925194210144160', '2', '2016-04-24', 21, '上海霞飞路918号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7362, '毛锻柴', '10004730', '2', 39515.67, 80000.00, '000', '2925194111181460', '2', '2016-04-24', 83, '上海霞飞路611号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7363, '郤倘', '10004731', '1', 70328.32, 80000.00, '000', '2925198212254181', '2', '2016-04-24', 73, '上海霞飞路982号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7364, '周蚜蜕', '10004732', '2', 74072.97, 80000.00, '000', '2925200510154566', '1', '2016-04-24', 77, '上海霞飞路220号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7365, '黄贯', '10004733', '2', 67480.51, 80000.00, '000', '2925192811253028', '3', '2016-04-24', 93, '上海霞飞路552号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7366, '段瞬魂', '10004734', '2', 25762.77, 80000.00, '000', '2925195412202557', '2', '2016-04-24', 81, '上海霞飞路118号', '2016-04-24 21:51:53', '1');
INSERT INTO `demo_account` VALUES (7367, '张沂', '10004735', '2', 54086.85, 80000.00, '000', '2925195612206337', '2', '2016-04-24', 42, '上海霞飞路773号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7368, '黄悟', '10004736', '2', 39716.18, 80000.00, '000', '2925193911148001', '1', '2016-04-24', 58, '上海霞飞路759号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7369, '黄事比', '10004737', '2', 7280.89, 80000.00, '000', '2925196612101253', '2', '2016-04-24', 68, '上海霞飞路107号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7370, '周敲桅', '10004738', '2', 41822.30, 80000.00, '000', '2925193410142878', '2', '2016-04-24', 47, '上海霞飞路141号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7371, '周酣', '10004739', '1', 21149.79, 80000.00, '000', '2925197711207401', '1', '2016-04-24', 97, '上海霞飞路338号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7372, '刘碑', '10004740', '2', 70590.86, 80000.00, '000', '2925200610165871', '3', '2016-04-24', 33, '上海霞飞路178号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7373, '张就买', '10004741', '2', 29481.47, 80000.00, '000', '2925200611193424', '3', '2016-04-24', 93, '上海霞飞路510号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7374, '李沦拂', '10004742', '2', 67693.88, 80000.00, '000', '2925198411188460', '2', '2016-04-24', 29, '上海霞飞路261号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7375, '张漳粉', '10004743', '2', 38078.80, 80000.00, '000', '2925193512246351', '3', '2016-04-24', 43, '上海霞飞路99号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7376, '郤偏', '10004744', '2', 31092.21, 80000.00, '000', '2925194710138711', '2', '2016-04-24', 89, '上海霞飞路957号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7377, '李拼举', '10004745', '2', 40789.96, 80000.00, '000', '2925194012247339', '3', '2016-04-24', 90, '上海霞飞路29号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7378, '刘巾四', '10004746', '1', 47134.53, 80000.00, '000', '2925197311124911', '2', '2016-04-24', 52, '上海霞飞路50号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7379, '周吧', '10004747', '1', 69902.59, 80000.00, '000', '2925193110289565', '1', '2016-04-24', 82, '上海霞飞路367号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7380, '赵纫清', '10004748', '2', 32533.12, 80000.00, '000', '2925194812172459', '1', '2016-04-24', 65, '上海霞飞路407号', '2016-04-24 21:51:54', '1');
INSERT INTO `demo_account` VALUES (7381, '毛腾', '10004749', '2', 36055.50, 80000.00, '000', '2925196811262279', '2', '2016-04-24', 77, '上海霞飞路789号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7382, '黄己拧', '10004750', '2', 71615.35, 80000.00, '000', '2925192911178665', '3', '2016-04-24', 22, '上海霞飞路381号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7383, '熊汁瘫', '10004751', '1', 67303.10, 80000.00, '000', '2925195610274308', '1', '2016-04-24', 33, '上海霞飞路154号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7384, '熊靡粟', '10004752', '2', 32748.82, 80000.00, '000', '2925200410251351', '3', '2016-04-24', 73, '上海霞飞路700号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7385, '毛建珊', '10004753', '2', 77497.20, 80000.00, '000', '2925196411306552', '2', '2016-04-24', 98, '上海霞飞路766号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7386, '赵挥', '10004754', '1', 52335.77, 80000.00, '000', '2925199212273409', '3', '2016-04-24', 40, '上海霞飞路79号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7387, '段箍础', '10004755', '2', 50624.56, 80000.00, '000', '2925198711225215', '2', '2016-04-24', 37, '上海霞飞路199号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7388, '李樊', '10004756', '1', 15279.74, 80000.00, '000', '2925197910181729', '1', '2016-04-24', 26, '上海霞飞路998号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7389, '赵票', '10004757', '1', 30246.75, 80000.00, '000', '2925199210114825', '3', '2016-04-24', 42, '上海霞飞路718号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7390, '毛防鲸', '10004758', '2', 27316.40, 80000.00, '000', '2925198611299132', '2', '2016-04-24', 20, '上海霞飞路389号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7391, '周膳渡', '10004759', '2', 79698.54, 80000.00, '000', '2925195212187317', '3', '2016-04-24', 58, '上海霞飞路700号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7392, '周街', '10004760', '2', 45119.29, 80000.00, '000', '2925200111303227', '3', '2016-04-24', 78, '上海霞飞路156号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7393, '熊舶', '10004761', '1', 53198.35, 80000.00, '000', '2925200712305697', '2', '2016-04-24', 50, '上海霞飞路586号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7394, '黄朔叉', '10004762', '2', 30559.15, 80000.00, '000', '2925196412259330', '2', '2016-04-24', 61, '上海霞飞路790号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7395, '李抽', '10004763', '2', 72490.40, 80000.00, '000', '2925192211273072', '3', '2016-04-24', 38, '上海霞飞路251号', '2016-04-24 21:51:55', '1');
INSERT INTO `demo_account` VALUES (7396, '周螟啊', '10004764', '2', 16040.98, 80000.00, '000', '2925192211192860', '2', '2016-04-24', 83, '上海霞飞路505号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7397, '赵牡宇', '10004765', '2', 32207.20, 80000.00, '000', '2925194312288066', '2', '2016-04-24', 75, '上海霞飞路847号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7398, '郤因淘', '10004766', '2', 78282.60, 80000.00, '000', '2925200111181852', '2', '2016-04-24', 26, '上海霞飞路633号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7399, '熊胁忻', '10004767', '1', 27567.29, 80000.00, '000', '2925198510154918', '3', '2016-04-24', 83, '上海霞飞路486号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7400, '郤除', '10004768', '2', 14481.52, 80000.00, '000', '2925198611262504', '1', '2016-04-24', 43, '上海霞飞路229号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7401, '周劈', '10004769', '1', 64580.76, 80000.00, '000', '2925194811246754', '1', '2016-04-24', 34, '上海霞飞路328号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7402, '周铡剃', '10004770', '1', 13213.37, 80000.00, '000', '2925200711116891', '3', '2016-04-24', 46, '上海霞飞路113号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7403, '郤赛趁', '10004771', '2', 21387.14, 80000.00, '000', '2925197111215852', '1', '2016-04-24', 76, '上海霞飞路933号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7404, '刘血', '10004772', '1', 79009.50, 80000.00, '000', '2925198012287274', '3', '2016-04-24', 62, '上海霞飞路805号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7405, '李遥', '10004773', '2', 33905.22, 80000.00, '000', '2925194711285899', '2', '2016-04-24', 94, '上海霞飞路966号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7406, '段级民', '10004774', '2', 57970.26, 80000.00, '000', '2925192112109622', '1', '2016-04-24', 70, '上海霞飞路73号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7407, '周盐烽', '10004775', '1', 17406.33, 80000.00, '000', '2925199310178520', '1', '2016-04-24', 53, '上海霞飞路572号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7408, '郤礼油', '10004776', '1', 58353.47, 80000.00, '000', '2925197411291294', '2', '2016-04-24', 74, '上海霞飞路47号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7409, '毛牧', '10004777', '2', 14192.31, 80000.00, '000', '2925192811288626', '2', '2016-04-24', 73, '上海霞飞路45号', '2016-04-24 21:51:56', '1');
INSERT INTO `demo_account` VALUES (7410, '刘馁斡', '10004778', '1', 42497.88, 80000.00, '000', '2925193911203979', '2', '2016-04-24', 85, '上海霞飞路140号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7411, '段绊', '10004779', '1', 42006.30, 80000.00, '000', '2925198011211331', '1', '2016-04-24', 89, '上海霞飞路600号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7412, '周毒', '10004780', '2', 49006.10, 80000.00, '000', '2925193711214358', '2', '2016-04-24', 44, '上海霞飞路209号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7413, '张食艳', '10004781', '1', 60334.80, 80000.00, '000', '2925194410245482', '1', '2016-04-24', 37, '上海霞飞路365号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7414, '郤苔藐', '10004782', '1', 6580.30, 80000.00, '000', '2925197411277080', '1', '2016-04-24', 52, '上海霞飞路694号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7415, '赵祥', '10004783', '2', 24243.96, 80000.00, '000', '2925194510263087', '2', '2016-04-24', 52, '上海霞飞路905号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7416, '毛乡哨', '10004784', '2', 43395.66, 80000.00, '000', '2925197410266999', '2', '2016-04-24', 31, '上海霞飞路691号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7417, '赵矫', '10004785', '2', 13898.29, 80000.00, '000', '2925196410182139', '1', '2016-04-24', 24, '上海霞飞路893号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7418, '熊措当', '10004786', '2', 68427.24, 80000.00, '000', '2925200211143800', '3', '2016-04-24', 82, '上海霞飞路170号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7419, '段呈', '10004787', '1', 76419.30, 80000.00, '000', '2925199211309644', '2', '2016-04-24', 90, '上海霞飞路749号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7420, '毛吉', '10004788', '1', 9626.40, 80000.00, '000', '2925201411214432', '2', '2016-04-24', 76, '上海霞飞路814号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7421, '熊鼻朝', '10004789', '1', 27220.25, 80000.00, '000', '2925193311129868', '2', '2016-04-24', 53, '上海霞飞路352号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7422, '李彦咬', '10004790', '1', 40324.23, 80000.00, '000', '2925193510235981', '2', '2016-04-24', 19, '上海霞飞路186号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7423, '周念', '10004791', '2', 68469.21, 80000.00, '000', '2925192511209074', '2', '2016-04-24', 83, '上海霞飞路151号', '2016-04-24 21:51:57', '1');
INSERT INTO `demo_account` VALUES (7424, '刘哀', '10004792', '2', 69797.20, 80000.00, '000', '2925194212297908', '3', '2016-04-24', 24, '上海霞飞路182号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7425, '段视', '10004793', '2', 66837.41, 80000.00, '000', '2925196312193288', '2', '2016-04-24', 77, '上海霞飞路275号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7426, '毛峪', '10004794', '1', 12355.71, 80000.00, '000', '2925199112225790', '1', '2016-04-24', 74, '上海霞飞路10号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7427, '张减', '10004795', '2', 13169.10, 80000.00, '000', '2925192212136862', '1', '2016-04-24', 78, '上海霞飞路480号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7428, '段梯', '10004796', '2', 73881.83, 80000.00, '000', '2925192612131961', '2', '2016-04-24', 76, '上海霞飞路122号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7429, '熊哪跑', '10004797', '1', 61229.16, 80000.00, '000', '2925195712282873', '2', '2016-04-24', 68, '上海霞飞路17号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7430, '赵鉴尚', '10004798', '2', 17199.52, 80000.00, '000', '2925193011117727', '1', '2016-04-24', 45, '上海霞飞路855号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7431, '李奉', '10004799', '1', 41172.45, 80000.00, '000', '2925195512112615', '2', '2016-04-24', 20, '上海霞飞路764号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7432, '周个学', '10004800', '2', 12182.93, 80000.00, '000', '2925195510175036', '2', '2016-04-24', 45, '上海霞飞路712号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7433, '郤尸锦', '10004801', '1', 63884.35, 80000.00, '000', '2925195710177739', '1', '2016-04-24', 38, '上海霞飞路221号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7434, '周唁细', '10004802', '2', 70992.21, 80000.00, '000', '2925192712308766', '2', '2016-04-24', 88, '上海霞飞路513号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7435, '李脑焰', '10004803', '1', 76851.32, 80000.00, '000', '2925200011183792', '3', '2016-04-24', 46, '上海霞飞路190号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7436, '黄逃霓', '10004804', '1', 45355.31, 80000.00, '000', '2925196610264031', '2', '2016-04-24', 79, '上海霞飞路887号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7437, '张娃渝', '10004805', '1', 24684.12, 80000.00, '000', '2925200710208198', '3', '2016-04-24', 28, '上海霞飞路244号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7438, '李悲', '10004806', '2', 35261.84, 80000.00, '000', '2925193011143153', '1', '2016-04-24', 58, '上海霞飞路805号', '2016-04-24 21:51:58', '1');
INSERT INTO `demo_account` VALUES (7439, '郤减陪', '10004807', '1', 65974.37, 80000.00, '000', '2925193210308956', '2', '2016-04-24', 83, '上海霞飞路322号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7440, '黄锦毖', '10004808', '2', 41002.59, 80000.00, '000', '2925192610161216', '3', '2016-04-24', 95, '上海霞飞路129号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7441, '刘弹跃', '10004809', '2', 20608.40, 80000.00, '000', '2925197911201578', '2', '2016-04-24', 34, '上海霞飞路36号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7442, '李漏沉', '10004810', '1', 76929.38, 80000.00, '000', '2925199512267335', '1', '2016-04-24', 93, '上海霞飞路383号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7443, '黄钡', '10004811', '1', 52194.30, 80000.00, '000', '2925192410191044', '3', '2016-04-24', 92, '上海霞飞路528号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7444, '毛拜锨', '10004812', '1', 59840.56, 80000.00, '000', '2925193412237059', '2', '2016-04-24', 95, '上海霞飞路232号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7445, '毛喜斗', '10004813', '2', 20763.68, 80000.00, '000', '2925196311306812', '3', '2016-04-24', 72, '上海霞飞路979号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7446, '黄晒胯', '10004814', '1', 61391.16, 80000.00, '000', '2925194611121550', '2', '2016-04-24', 85, '上海霞飞路349号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7447, '李兵钱', '10004815', '2', 65361.10, 80000.00, '000', '2925197310239148', '1', '2016-04-24', 99, '上海霞飞路101号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7448, '熊恼', '10004816', '2', 52431.52, 80000.00, '000', '2925200811201443', '2', '2016-04-24', 99, '上海霞飞路666号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7449, '黄临', '10004817', '1', 36727.50, 80000.00, '000', '2925195711191307', '1', '2016-04-24', 86, '上海霞飞路187号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7450, '黄芭', '10004818', '2', 61657.20, 80000.00, '000', '2925193611278544', '3', '2016-04-24', 62, '上海霞飞路213号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7451, '毛堰', '10004819', '1', 6652.93, 80000.00, '000', '2925192212249338', '3', '2016-04-24', 62, '上海霞飞路600号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7452, '张号荤', '10004820', '2', 61491.30, 80000.00, '000', '2925197312142769', '2', '2016-04-24', 67, '上海霞飞路2号', '2016-04-24 21:51:59', '1');
INSERT INTO `demo_account` VALUES (7453, '毛堕', '10004821', '1', 29216.22, 80000.00, '000', '2925192811189566', '3', '2016-04-24', 81, '上海霞飞路746号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7454, '赵搂速', '10004822', '1', 22570.49, 80000.00, '000', '2925194411297950', '2', '2016-04-24', 43, '上海霞飞路683号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7455, '段瘦肿', '10004823', '2', 11521.63, 80000.00, '000', '2925193311221978', '1', '2016-04-24', 94, '上海霞飞路896号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7456, '毛诉', '10004824', '1', 78763.46, 80000.00, '000', '2925198511126468', '2', '2016-04-24', 79, '上海霞飞路933号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7457, '熊榆', '10004825', '2', 52073.44, 80000.00, '000', '2925192810156096', '2', '2016-04-24', 28, '上海霞飞路440号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7458, '毛岂', '10004826', '1', 23091.66, 80000.00, '000', '2925198111285793', '2', '2016-04-24', 51, '上海霞飞路784号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7459, '赵井春', '10004827', '2', 69478.65, 80000.00, '000', '2925194811139075', '2', '2016-04-24', 29, '上海霞飞路418号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7460, '段那', '10004828', '1', 37468.97, 80000.00, '000', '2925192711104399', '2', '2016-04-24', 21, '上海霞飞路375号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7461, '张坯', '10004829', '2', 78573.78, 80000.00, '000', '2925192812186072', '1', '2016-04-24', 59, '上海霞飞路405号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7462, '郤睫', '10004830', '1', 63653.14, 80000.00, '000', '2925199512122657', '1', '2016-04-24', 26, '上海霞飞路812号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7463, '赵摘', '10004831', '2', 47673.50, 80000.00, '000', '2925197911215155', '1', '2016-04-24', 87, '上海霞飞路111号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7464, '赵欠丁', '10004832', '1', 51312.35, 80000.00, '000', '2925200810208640', '2', '2016-04-24', 24, '上海霞飞路143号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7465, '段脆', '10004833', '2', 65050.32, 80000.00, '000', '2925198011186282', '2', '2016-04-24', 31, '上海霞飞路257号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7466, '段读馈', '10004834', '1', 7590.53, 80000.00, '000', '2925200710198982', '2', '2016-04-24', 48, '上海霞飞路614号', '2016-04-24 21:52:00', '1');
INSERT INTO `demo_account` VALUES (7467, '周艰', '10004835', '2', 7316.85, 80000.00, '000', '2925194410182137', '1', '2016-04-24', 57, '上海霞飞路601号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7468, '周隅标', '10004836', '2', 49084.15, 80000.00, '000', '2925194610113181', '1', '2016-04-24', 67, '上海霞飞路719号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7469, '黄茂', '10004837', '2', 66849.24, 80000.00, '000', '2925201111295828', '2', '2016-04-24', 43, '上海霞飞路173号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7470, '周涡', '10004838', '1', 9633.22, 80000.00, '000', '2925195511224021', '2', '2016-04-24', 49, '上海霞飞路713号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7471, '黄拱刊', '10004839', '1', 35906.67, 80000.00, '000', '2925196712174750', '1', '2016-04-24', 72, '上海霞飞路72号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7472, '周溉', '10004840', '1', 25803.73, 80000.00, '000', '2925193210268000', '2', '2016-04-24', 23, '上海霞飞路596号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7473, '刘妒', '10004841', '1', 73588.31, 80000.00, '000', '2925193911193115', '3', '2016-04-24', 67, '上海霞飞路426号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7474, '黄摇', '10004842', '1', 62477.58, 80000.00, '000', '2925194711114922', '2', '2016-04-24', 95, '上海霞飞路748号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7475, '段宴碳', '10004843', '1', 76284.83, 80000.00, '000', '2925193110242954', '1', '2016-04-24', 68, '上海霞飞路333号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7476, '毛铸', '10004844', '2', 59451.74, 80000.00, '000', '2925197811298049', '2', '2016-04-24', 90, '上海霞飞路703号', '2016-04-24 21:52:01', '1');
INSERT INTO `demo_account` VALUES (7477, '郤弹影', '10004845', '1', 44755.54, 80000.00, '000', '2925199212179589', '2', '2016-04-24', 41, '上海霞飞路884号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7478, '毛硫庇', '10004846', '1', 30420.41, 80000.00, '000', '2925194311267475', '2', '2016-04-24', 55, '上海霞飞路761号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7479, '李颇么', '10004847', '1', 11509.72, 80000.00, '000', '2925197212225883', '1', '2016-04-24', 96, '上海霞飞路615号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7480, '段养', '10004848', '1', 56270.28, 80000.00, '000', '2925200912113620', '2', '2016-04-24', 99, '上海霞飞路417号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7481, '刘畦蒲', '10004849', '1', 34608.60, 80000.00, '000', '2925193212193762', '2', '2016-04-24', 62, '上海霞飞路958号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7482, '赵骋', '10004850', '1', 59066.95, 80000.00, '000', '2925194212159988', '3', '2016-04-24', 20, '上海霞飞路807号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7483, '黄洗', '10004851', '2', 42553.31, 80000.00, '000', '2925194112204816', '1', '2016-04-24', 56, '上海霞飞路557号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7484, '郤瞬岳', '10004852', '2', 75628.60, 80000.00, '000', '2925195210256612', '2', '2016-04-24', 42, '上海霞飞路653号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7485, '熊回', '10004853', '1', 73410.43, 80000.00, '000', '2925198511229992', '1', '2016-04-24', 61, '上海霞飞路510号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7486, '刘阵坷', '10004854', '2', 66108.98, 80000.00, '000', '2925197611207814', '1', '2016-04-24', 21, '上海霞飞路400号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7487, '段烁', '10004855', '1', 63810.24, 80000.00, '000', '2925199412274655', '2', '2016-04-24', 34, '上海霞飞路907号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7488, '段渤疏', '10004856', '2', 13457.59, 80000.00, '000', '2925199112195198', '1', '2016-04-24', 46, '上海霞飞路536号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7489, '毛堆柯', '10004857', '1', 63976.65, 80000.00, '000', '2925193111149549', '2', '2016-04-24', 61, '上海霞飞路224号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7490, '毛倒', '10004858', '2', 52176.58, 80000.00, '000', '2925194612198024', '2', '2016-04-24', 87, '上海霞飞路286号', '2016-04-24 21:52:02', '1');
INSERT INTO `demo_account` VALUES (7491, '刘动', '10004859', '1', 71436.41, 80000.00, '000', '2925196812162435', '3', '2016-04-24', 73, '上海霞飞路433号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7492, '郤婪', '10004860', '1', 13264.63, 80000.00, '000', '2925197911239370', '2', '2016-04-24', 86, '上海霞飞路159号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7493, '赵卑', '10004861', '2', 26545.19, 80000.00, '000', '2925199610303432', '2', '2016-04-24', 88, '上海霞飞路919号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7494, '郤幸礼', '10004862', '2', 10750.00, 80000.00, '000', '2925192410295722', '2', '2016-04-24', 92, '上海霞飞路59号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7495, '刘译', '10004863', '1', 13502.50, 80000.00, '000', '2925196911117340', '1', '2016-04-24', 40, '上海霞飞路527号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7496, '熊家', '10004864', '1', 13708.32, 80000.00, '000', '2925195710271903', '3', '2016-04-24', 48, '上海霞飞路919号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7497, '周丹巨', '10004865', '1', 62967.63, 80000.00, '000', '2925198410276468', '3', '2016-04-24', 91, '上海霞飞路342号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7498, '毛浪', '10004866', '1', 66157.80, 80000.00, '000', '2925192612247501', '2', '2016-04-24', 30, '上海霞飞路94号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7499, '周迸', '10004867', '2', 6969.30, 80000.00, '000', '2925194510217753', '1', '2016-04-24', 80, '上海霞飞路39号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7500, '熊豁楔', '10004868', '1', 23748.55, 80000.00, '000', '2925192112166183', '2', '2016-04-24', 25, '上海霞飞路937号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7501, '郤萌', '10004869', '2', 77216.81, 80000.00, '000', '2925194011234182', '1', '2016-04-24', 82, '上海霞飞路892号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7502, '赵富寸', '10004870', '1', 62624.86, 80000.00, '000', '2925195411187553', '2', '2016-04-24', 73, '上海霞飞路328号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7503, '刘么滨', '10004871', '1', 70485.37, 80000.00, '000', '2925199312286815', '2', '2016-04-24', 31, '上海霞飞路790号', '2016-04-24 21:52:03', '1');
INSERT INTO `demo_account` VALUES (7504, '段菲场', '10004872', '1', 52366.45, 80000.00, '000', '2925194311205463', '2', '2016-04-24', 65, '上海霞飞路60号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7505, '郤爱', '10004873', '1', 29220.18, 80000.00, '000', '2925199511122922', '2', '2016-04-24', 44, '上海霞飞路823号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7506, '刘谩', '10004874', '2', 47412.82, 80000.00, '000', '2925198810231917', '3', '2016-04-24', 75, '上海霞飞路356号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7507, '张储', '10004875', '2', 75999.30, 80000.00, '000', '2925193411275008', '3', '2016-04-24', 57, '上海霞飞路321号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7508, '李倘豆', '10004876', '2', 25854.75, 80000.00, '000', '2925192211125985', '2', '2016-04-24', 61, '上海霞飞路938号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7509, '黄聪', '10004877', '1', 19011.32, 80000.00, '000', '2925194610306772', '1', '2016-04-24', 64, '上海霞飞路390号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7510, '张挖欣', '10004878', '1', 57011.10, 80000.00, '000', '2925196010279367', '2', '2016-04-24', 94, '上海霞飞路378号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7511, '黄悦象', '10004879', '2', 30197.47, 80000.00, '000', '2925200312296254', '2', '2016-04-24', 100, '上海霞飞路324号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7512, '刘馋慈', '10004880', '1', 25674.88, 80000.00, '000', '2925196511115514', '1', '2016-04-24', 80, '上海霞飞路702号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7513, '张梭诞', '10004881', '2', 16198.34, 80000.00, '000', '2925200312126721', '2', '2016-04-24', 64, '上海霞飞路457号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7514, '熊盖募', '10004882', '1', 57416.44, 80000.00, '000', '2925196112114458', '2', '2016-04-24', 99, '上海霞飞路457号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7515, '郤冲', '10004883', '1', 56762.44, 80000.00, '000', '2925195611197041', '3', '2016-04-24', 50, '上海霞飞路299号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7516, '段悬', '10004884', '2', 69888.59, 80000.00, '000', '2925193012276758', '1', '2016-04-24', 19, '上海霞飞路699号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7517, '张冶', '10004885', '1', 11758.37, 80000.00, '000', '2925194211214609', '1', '2016-04-24', 81, '上海霞飞路64号', '2016-04-24 21:52:04', '1');
INSERT INTO `demo_account` VALUES (7518, '段坊', '10004886', '1', 75462.29, 80000.00, '000', '2925196111271203', '3', '2016-04-24', 60, '上海霞飞路630号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7519, '张歹', '10004887', '1', 42446.60, 80000.00, '000', '2925195311249059', '1', '2016-04-24', 42, '上海霞飞路902号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7520, '熊皇', '10004888', '1', 67161.26, 80000.00, '000', '2925197612298186', '1', '2016-04-24', 22, '上海霞飞路832号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7521, '黄驭', '10004889', '2', 37148.86, 80000.00, '000', '2925200810114337', '2', '2016-04-24', 69, '上海霞飞路449号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7522, '郤岁', '10004890', '1', 40239.34, 80000.00, '000', '2925194811133900', '3', '2016-04-24', 30, '上海霞飞路335号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7523, '周情秆', '10004891', '1', 19972.73, 80000.00, '000', '2925195011115862', '3', '2016-04-24', 84, '上海霞飞路515号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7524, '刘诵靴', '10004892', '1', 54332.74, 80000.00, '000', '2925199212233743', '2', '2016-04-24', 65, '上海霞飞路961号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7525, '毛霍', '10004893', '1', 13737.12, 80000.00, '000', '2925192011121853', '2', '2016-04-24', 89, '上海霞飞路24号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7526, '熊狱', '10004894', '1', 37571.38, 80000.00, '000', '2925195710279609', '1', '2016-04-24', 32, '上海霞飞路678号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7527, '黄更扳', '10004895', '2', 66747.39, 80000.00, '000', '2925192410252049', '2', '2016-04-24', 50, '上海霞飞路513号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7528, '李逞靠', '10004896', '2', 14551.98, 80000.00, '000', '2925193712254951', '2', '2016-04-24', 49, '上海霞飞路908号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7529, '张妒', '10004897', '2', 61559.58, 80000.00, '000', '2925192312235399', '3', '2016-04-24', 96, '上海霞飞路815号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7530, '张挫', '10004898', '1', 52567.63, 80000.00, '000', '2925195712233765', '2', '2016-04-24', 34, '上海霞飞路31号', '2016-04-24 21:52:05', '1');
INSERT INTO `demo_account` VALUES (7531, '张市', '10004899', '2', 52402.88, 80000.00, '000', '2925193411236458', '1', '2016-04-24', 84, '上海霞飞路739号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7532, '李精', '10004900', '1', 52996.96, 80000.00, '000', '2925201010108914', '1', '2016-04-24', 52, '上海霞飞路522号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7533, '熊亮', '10004901', '2', 46386.30, 80000.00, '000', '2925193910239539', '3', '2016-04-24', 35, '上海霞飞路852号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7534, '赵乍袄', '10004902', '2', 51245.21, 80000.00, '000', '2925199710217434', '1', '2016-04-24', 45, '上海霞飞路458号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7535, '段凋牡', '10004903', '2', 12153.21, 80000.00, '000', '2925196811233893', '2', '2016-04-24', 39, '上海霞飞路693号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7536, '段吃特', '10004904', '2', 79150.62, 80000.00, '000', '2925192110116713', '2', '2016-04-24', 24, '上海霞飞路344号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7537, '赵允愧', '10004905', '2', 30122.21, 80000.00, '000', '2925201011178444', '2', '2016-04-24', 24, '上海霞飞路20号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7538, '张垃狭', '10004906', '1', 68223.27, 80000.00, '000', '2925193411249726', '2', '2016-04-24', 58, '上海霞飞路481号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7539, '段郭', '10004907', '1', 72972.49, 80000.00, '000', '2925200711298855', '3', '2016-04-24', 75, '上海霞飞路917号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7540, '郤存', '10004908', '2', 68658.20, 80000.00, '000', '2925199311169693', '3', '2016-04-24', 37, '上海霞飞路344号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7541, '毛怀淹', '10004909', '2', 33513.59, 80000.00, '000', '2925197011187956', '2', '2016-04-24', 30, '上海霞飞路866号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7542, '段丹蹭', '10004910', '2', 41480.19, 80000.00, '000', '2925198611245841', '2', '2016-04-24', 35, '上海霞飞路670号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7543, '熊乾北', '10004911', '1', 43592.35, 80000.00, '000', '2925197410217804', '3', '2016-04-24', 52, '上海霞飞路101号', '2016-04-24 21:52:06', '1');
INSERT INTO `demo_account` VALUES (7544, '李漓梦', '10004912', '2', 53746.42, 80000.00, '000', '2925194212198151', '2', '2016-04-24', 82, '上海霞飞路243号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7545, '李伸', '10004913', '2', 36186.29, 80000.00, '000', '2925193610154916', '1', '2016-04-24', 44, '上海霞飞路864号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7546, '刘小苗', '10004914', '2', 23191.42, 80000.00, '000', '2925201010161264', '2', '2016-04-24', 56, '上海霞飞路567号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7547, '毛并设', '10004915', '2', 37326.86, 80000.00, '000', '2925199212261434', '2', '2016-04-24', 66, '上海霞飞路378号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7548, '毛旋屠', '10004916', '2', 27216.81, 80000.00, '000', '2925195310181916', '2', '2016-04-24', 75, '上海霞飞路915号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7549, '刘螟', '10004917', '1', 29001.20, 80000.00, '000', '2925194412161265', '1', '2016-04-24', 63, '上海霞飞路635号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7550, '毛列灸', '10004918', '2', 63627.39, 80000.00, '000', '2925199010284601', '2', '2016-04-24', 30, '上海霞飞路448号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7551, '张块', '10004919', '2', 18701.41, 80000.00, '000', '2925194911217468', '3', '2016-04-24', 38, '上海霞飞路346号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7552, '段溃', '10004920', '1', 19006.13, 80000.00, '000', '2925201211238314', '3', '2016-04-24', 70, '上海霞飞路380号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7553, '熊喝啮', '10004921', '2', 7724.43, 80000.00, '000', '2925201310223412', '3', '2016-04-24', 95, '上海霞飞路626号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7554, '毛源', '10004922', '2', 27132.90, 80000.00, '000', '2925200710284568', '3', '2016-04-24', 60, '上海霞飞路408号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7555, '段倡', '10004923', '1', 12923.70, 80000.00, '000', '2925195811241483', '2', '2016-04-24', 37, '上海霞飞路280号', '2016-04-24 21:52:07', '1');
INSERT INTO `demo_account` VALUES (7556, '赵释妥', '10004924', '2', 12329.95, 80000.00, '000', '2925201311207051', '1', '2016-04-24', 36, '上海霞飞路860号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7557, '周破辩', '10004925', '1', 19022.75, 80000.00, '000', '2925192711122375', '3', '2016-04-24', 49, '上海霞飞路744号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7558, '毛豆', '10004926', '2', 43165.73, 80000.00, '000', '2925199610117615', '1', '2016-04-24', 35, '上海霞飞路284号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7559, '熊欧计', '10004927', '1', 53155.98, 80000.00, '000', '2925192512257233', '1', '2016-04-24', 55, '上海霞飞路64号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7560, '毛给矢', '10004928', '1', 32372.70, 80000.00, '000', '2925192511186461', '1', '2016-04-24', 69, '上海霞飞路439号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7561, '段需磋', '10004929', '1', 73781.76, 80000.00, '000', '2925201411202185', '2', '2016-04-24', 51, '上海霞飞路452号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7562, '段篷汗', '10004930', '1', 75413.30, 80000.00, '000', '2925192811105699', '2', '2016-04-24', 43, '上海霞飞路907号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7563, '周述汞', '10004931', '2', 50617.22, 80000.00, '000', '2925200711128019', '1', '2016-04-24', 35, '上海霞飞路318号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7564, '熊怠垂', '10004932', '2', 74571.34, 80000.00, '000', '2925197412141672', '2', '2016-04-24', 19, '上海霞飞路789号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7565, '黄郝', '10004933', '2', 38740.33, 80000.00, '000', '2925193711232069', '2', '2016-04-24', 76, '上海霞飞路810号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7566, '李胎择', '10004934', '2', 51976.56, 80000.00, '000', '2925198010204701', '1', '2016-04-24', 98, '上海霞飞路193号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7567, '毛曲', '10004935', '1', 68508.57, 80000.00, '000', '2925200111147549', '2', '2016-04-24', 84, '上海霞飞路245号', '2016-04-24 21:52:08', '1');
INSERT INTO `demo_account` VALUES (7568, '毛镍抚', '10004936', '2', 57456.47, 80000.00, '000', '2925193111249154', '2', '2016-04-24', 36, '上海霞飞路490号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7569, '李橱', '10004937', '2', 61445.69, 80000.00, '000', '2925199510258891', '2', '2016-04-24', 93, '上海霞飞路992号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7570, '李菠', '10004938', '2', 75622.82, 80000.00, '000', '2925198411229987', '2', '2016-04-24', 30, '上海霞飞路551号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7571, '黄炎笺', '10004939', '2', 74744.97, 80000.00, '000', '2925199010201845', '1', '2016-04-24', 35, '上海霞飞路673号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7572, '熊币宣', '10004940', '1', 59068.16, 80000.00, '000', '2925194310132168', '3', '2016-04-24', 44, '上海霞飞路418号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7573, '李盂', '10004941', '2', 11527.87, 80000.00, '000', '2925196911223376', '1', '2016-04-24', 88, '上海霞飞路743号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7574, '张腰积', '10004942', '2', 11111.33, 80000.00, '000', '2925200111109618', '2', '2016-04-24', 74, '上海霞飞路140号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7575, '毛钙', '10004943', '2', 24522.73, 80000.00, '000', '2925192810191648', '2', '2016-04-24', 26, '上海霞飞路813号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7576, '郤阜', '10004944', '1', 59940.40, 80000.00, '000', '2925199311173604', '1', '2016-04-24', 46, '上海霞飞路728号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7577, '张瘴', '10004945', '2', 47297.83, 80000.00, '000', '2925200210128589', '2', '2016-04-24', 38, '上海霞飞路298号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7578, '赵翰露', '10004946', '1', 40592.33, 80000.00, '000', '2925198811144693', '2', '2016-04-24', 79, '上海霞飞路448号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7579, '黄覆', '10004947', '1', 13701.38, 80000.00, '000', '2925200412281858', '1', '2016-04-24', 79, '上海霞飞路217号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7580, '熊狈监', '10004948', '1', 43654.70, 80000.00, '000', '2925194711197716', '2', '2016-04-24', 99, '上海霞飞路915号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7581, '刘哲', '10004949', '2', 50664.78, 80000.00, '000', '2925196012294197', '2', '2016-04-24', 84, '上海霞飞路263号', '2016-04-24 21:52:09', '1');
INSERT INTO `demo_account` VALUES (7582, '赵茵村', '10004950', '2', 78067.68, 80000.00, '000', '2925193111211352', '3', '2016-04-24', 61, '上海霞飞路707号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7583, '张诚', '10004951', '1', 22002.48, 80000.00, '000', '2925194610271485', '3', '2016-04-24', 55, '上海霞飞路449号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7584, '郤藤曰', '10004952', '2', 47967.74, 80000.00, '000', '2925194512255258', '1', '2016-04-24', 55, '上海霞飞路454号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7585, '郤彤', '10004953', '1', 39373.30, 80000.00, '000', '2925199611255989', '3', '2016-04-24', 82, '上海霞飞路950号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7586, '张斟湛', '10004954', '2', 77925.27, 80000.00, '000', '2925200511204907', '2', '2016-04-24', 32, '上海霞飞路634号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7587, '黄唱鹿', '10004955', '2', 23034.87, 80000.00, '000', '2925196212226618', '3', '2016-04-24', 92, '上海霞飞路960号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7588, '段孰滩', '10004956', '2', 55509.64, 80000.00, '000', '2925194912228499', '3', '2016-04-24', 33, '上海霞飞路522号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7589, '熊瞄居', '10004957', '1', 39558.70, 80000.00, '000', '2925195512159175', '3', '2016-04-24', 94, '上海霞飞路666号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7590, '赵趟都', '10004958', '2', 16553.63, 80000.00, '000', '2925198110212638', '1', '2016-04-24', 36, '上海霞飞路17号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7591, '黄踩', '10004959', '2', 54133.98, 80000.00, '000', '2925194711282924', '2', '2016-04-24', 82, '上海霞飞路670号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7592, '刘挣', '10004960', '1', 57044.92, 80000.00, '000', '2925193312248649', '2', '2016-04-24', 94, '上海霞飞路309号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7593, '张批坪', '10004961', '2', 47624.11, 80000.00, '000', '2925198910256951', '2', '2016-04-24', 86, '上海霞飞路461号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7594, '黄懒卷', '10004962', '1', 28008.11, 80000.00, '000', '2925198111162709', '2', '2016-04-24', 21, '上海霞飞路611号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7595, '黄诣胚', '10004963', '2', 61024.57, 80000.00, '000', '2925195512121153', '1', '2016-04-24', 64, '上海霞飞路757号', '2016-04-24 21:52:10', '1');
INSERT INTO `demo_account` VALUES (7596, '赵莹竿', '10004964', '2', 28312.70, 80000.00, '000', '2925197612235170', '2', '2016-04-24', 57, '上海霞飞路401号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7597, '黄峭', '10004965', '2', 44445.73, 80000.00, '000', '2925192411307826', '2', '2016-04-24', 87, '上海霞飞路835号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7598, '张挫空', '10004966', '2', 64766.14, 80000.00, '000', '2925200512187750', '2', '2016-04-24', 91, '上海霞飞路898号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7599, '刘富', '10004967', '2', 72309.47, 80000.00, '000', '2925198111257173', '1', '2016-04-24', 60, '上海霞飞路157号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7600, '毛夺', '10004968', '1', 79433.59, 80000.00, '000', '2925195410153483', '3', '2016-04-24', 84, '上海霞飞路755号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7601, '段吐', '10004969', '1', 24876.96, 80000.00, '000', '2925192010132235', '3', '2016-04-24', 32, '上海霞飞路903号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7602, '黄宴玲', '10004970', '2', 8539.21, 80000.00, '000', '2925196311188572', '1', '2016-04-24', 99, '上海霞飞路146号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7603, '熊瓶锯', '10004971', '2', 74764.84, 80000.00, '000', '2925196212182023', '2', '2016-04-24', 77, '上海霞飞路259号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7604, '李雾社', '10004972', '2', 73885.70, 80000.00, '000', '2925199711233573', '1', '2016-04-24', 21, '上海霞飞路748号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7605, '张整', '10004973', '2', 79601.66, 80000.00, '000', '2925198612278903', '2', '2016-04-24', 74, '上海霞飞路510号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7606, '李暑衍', '10004974', '1', 46161.82, 80000.00, '000', '2925197610292528', '3', '2016-04-24', 30, '上海霞飞路317号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7607, '赵蒜课', '10004975', '2', 70470.38, 80000.00, '000', '2925194011128475', '1', '2016-04-24', 65, '上海霞飞路328号', '2016-04-24 21:52:11', '1');
INSERT INTO `demo_account` VALUES (7608, '郤畦沧', '10004976', '2', 12051.10, 80000.00, '000', '2925197011161984', '3', '2016-04-24', 66, '上海霞飞路813号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7609, '毛褂', '10004977', '2', 48284.18, 80000.00, '000', '2925193310137498', '3', '2016-04-24', 89, '上海霞飞路808号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7610, '段暴', '10004978', '2', 15546.20, 80000.00, '000', '2925196811145020', '2', '2016-04-24', 51, '上海霞飞路313号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7611, '李强', '10004979', '1', 56750.40, 80000.00, '000', '2925197211205633', '2', '2016-04-24', 25, '上海霞飞路113号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7612, '郤链', '10004980', '1', 32338.13, 80000.00, '000', '2925200510142711', '3', '2016-04-24', 37, '上海霞飞路154号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7613, '赵瞅', '10004981', '1', 39053.65, 80000.00, '000', '2925198312255031', '1', '2016-04-24', 55, '上海霞飞路795号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7614, '李酿', '10004982', '2', 52719.97, 80000.00, '000', '2925200011274653', '3', '2016-04-24', 47, '上海霞飞路37号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7615, '毛腰燕', '10004983', '1', 39937.75, 80000.00, '000', '2925192112172037', '1', '2016-04-24', 75, '上海霞飞路173号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7616, '张啪', '10004984', '2', 66865.48, 80000.00, '000', '2925196211165486', '2', '2016-04-24', 52, '上海霞飞路45号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7617, '黄络踏', '10004985', '1', 75297.96, 80000.00, '000', '2925201312176547', '1', '2016-04-24', 40, '上海霞飞路300号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7618, '郤毁核', '10004986', '1', 60911.61, 80000.00, '000', '2925197012281529', '2', '2016-04-24', 45, '上海霞飞路797号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7619, '熊别', '10004987', '2', 45959.59, 80000.00, '000', '2925193410121793', '2', '2016-04-24', 99, '上海霞飞路415号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7620, '张俭', '10004988', '2', 76719.92, 80000.00, '000', '2925194110172960', '2', '2016-04-24', 47, '上海霞飞路208号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7621, '熊苹儒', '10004989', '1', 16785.60, 80000.00, '000', '2925193610272573', '2', '2016-04-24', 77, '上海霞飞路931号', '2016-04-24 21:52:12', '1');
INSERT INTO `demo_account` VALUES (7622, '刘瘟', '10004990', '2', 36727.84, 80000.00, '000', '2925198611167184', '3', '2016-04-24', 43, '上海霞飞路544号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7623, '李躺', '10004991', '2', 16743.95, 80000.00, '000', '2925195510103222', '1', '2016-04-24', 87, '上海霞飞路324号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7624, '赵戳', '10004992', '1', 15787.48, 80000.00, '000', '2925200512219277', '2', '2016-04-24', 57, '上海霞飞路780号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7625, '张漆', '10004993', '1', 14111.85, 80000.00, '000', '2925193811244835', '3', '2016-04-24', 52, '上海霞飞路486号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7626, '黄收', '10004994', '2', 32388.77, 80000.00, '000', '2925199812241682', '2', '2016-04-24', 78, '上海霞飞路432号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7627, '李冗蜜', '10004995', '1', 73440.26, 80000.00, '000', '2925192411217527', '2', '2016-04-24', 56, '上海霞飞路415号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7628, '周毡', '10004996', '1', 78155.30, 80000.00, '000', '2925201210267543', '3', '2016-04-24', 71, '上海霞飞路356号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7629, '李迹', '10004997', '2', 53448.52, 80000.00, '000', '2925196211248755', '2', '2016-04-24', 66, '上海霞飞路305号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7630, '赵蛰醇', '10004998', '2', 13039.10, 80000.00, '000', '2925200010285335', '1', '2016-04-24', 100, '上海霞飞路220号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7631, '毛典', '10004999', '1', 73470.54, 80000.00, '000', '2925195011125983', '1', '2016-04-24', 96, '上海霞飞路385号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7632, '毛畸干', '10005000', '2', 8075.89, 80000.00, '000', '2925198111299691', '2', '2016-04-24', 73, '上海霞飞路612号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7633, '李滨绽', '10005001', '2', 34633.43, 80000.00, '000', '2925200110134208', '2', '2016-04-24', 60, '上海霞飞路99号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7634, '段衫兼', '10005002', '2', 16127.90, 80000.00, '000', '2925198310228581', '2', '2016-04-24', 93, '上海霞飞路1000号', '2016-04-24 21:52:13', '1');
INSERT INTO `demo_account` VALUES (7635, '赵况撑', '10005003', '1', 52390.67, 80000.00, '000', '2925195411124141', '3', '2016-04-24', 70, '上海霞飞路467号', '2016-04-24 21:52:14', '1');
INSERT INTO `demo_account` VALUES (7636, '熊榆彬', '10005004', '1', 25505.81, 80000.00, '000', '2925199811158241', '2', '2016-04-24', 68, '上海霞飞路16号', '2016-04-24 21:52:14', '1');
INSERT INTO `demo_account` VALUES (7637, '张糯', '10005005', '1', 49568.35, 80000.00, '000', '2925201110303048', '3', '2016-04-24', 84, '上海霞飞路716号', '2016-04-24 21:52:14', '1');
INSERT INTO `demo_account` VALUES (7638, '刘鹰傣', '10005006', '2', 23818.87, 80000.00, '000', '2925193611308671', '1', '2016-04-24', 43, '上海霞飞路515号', '2016-04-24 21:58:05', '1');
INSERT INTO `demo_account` VALUES (7639, '毛萎', '10005007', '1', 74167.81, 80000.00, '000', '2925196610128997', '1', '2016-04-24', 27, '上海霞飞路276号', '2016-04-24 21:58:48', '1');
INSERT INTO `demo_account` VALUES (7640, '段桂', '10005008', '2', 20906.45, 80000.00, '000', '2925193412284598', '2', '2016-04-24', 28, '上海霞飞路962号', '2016-04-24 21:59:52', '1');
INSERT INTO `demo_account` VALUES (7641, '郤雁', '10005009', '1', 23868.76, 80000.00, '000', '2925195210235716', '2', '2016-04-24', 59, '上海霞飞路137号', '2016-04-24 22:01:29', '1');
INSERT INTO `demo_account` VALUES (7642, '黄述促', '10005010', '2', 58446.62, 80000.00, '000', '2925194310154057', '2', '2016-04-24', 52, '上海霞飞路740号', '2016-04-24 22:02:24', '1');
INSERT INTO `demo_account` VALUES (7643, '周根', '10005011', '1', 59843.31, 80000.00, '000', '2925197112187201', '1', '2016-04-24', 78, '上海霞飞路780号', '2016-04-24 22:03:03', '1');
INSERT INTO `demo_account` VALUES (7644, '熊戈嗽', '10005012', '2', 57582.36, 80000.00, '000', '2925192112295287', '2', '2016-04-24', 80, '上海霞飞路398号', '2016-04-24 22:03:18', '1');
INSERT INTO `demo_account` VALUES (10000, '黄玉', '10004006', '1', 49000.00, 50000.00, '000', '2925196912171318', '1', '2016-11-18', 18, '上海霞飞路18号', '2016-11-18 14:50:12', '1');
INSERT INTO `demo_account` VALUES (10006, '莫雯', '10004006', '1', 40000.00, 50000.00, '000', '2925196912171318', '1', '2016-11-18', 16, '上海霞飞路18号', '2016-11-18 15:26:45', '1');
COMMIT;

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `pid` int(11) NOT NULL COMMENT '产品流水号',
  `word` varchar(4000) NOT NULL COMMENT '评价',
  `uid` int(32) NOT NULL COMMENT '用户流水号',
  `createdtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='留言表';


-- ----------------------------
-- Table structure for pricetype
-- ----------------------------
DROP TABLE IF EXISTS `pricetype`;
CREATE TABLE `pricetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pricename` varchar(32) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `price_index` (`pricename`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pricetype
-- ----------------------------
BEGIN;
INSERT INTO `pricetype` VALUES (1, '50以下', '元');
INSERT INTO `pricetype` VALUES (2, '50-100', '元');
INSERT INTO `pricetype` VALUES (3, '100-200', '元');
INSERT INTO `pricetype` VALUES (4, '200-300', '元');
INSERT INTO `pricetype` VALUES (5, '300-500', '元');
INSERT INTO `pricetype` VALUES (6, '500以上', '元');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `pname` varchar(255) NOT NULL COMMENT '产品名称',
  `imgsrc` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `oldprice` float DEFAULT NULL COMMENT '市场价格',
  `newprice` float NOT NULL COMMENT '当前价格',
  `status` varchar(8) NOT NULL COMMENT '是否上架',
  `stocknum` int(32) NOT NULL COMMENT '库存',
  `type` int(11) DEFAULT NULL COMMENT '类别',
  `description` varchar(4000) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `createdtime` datetime DEFAULT NULL COMMENT '发布时间',
  `updatedtime` datetime DEFAULT NULL COMMENT '上架时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for seekbuy
-- ----------------------------
DROP TABLE IF EXISTS `seekbuy`;
CREATE TABLE `seekbuy` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `status` varchar(4) DEFAULT '0',
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


SET FOREIGN_KEY_CHECKS = 1;
