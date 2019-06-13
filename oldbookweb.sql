/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : oldbookweb

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 05/06/2019 10:24:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_
-- ----------------------------
DROP TABLE IF EXISTS `address_`;
CREATE TABLE `address_`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `floor` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_
-- ----------------------------
DROP TABLE IF EXISTS `book_`;
CREATE TABLE `book_`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(25, 2) NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `pub_house` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_
-- ----------------------------
INSERT INTO `book_` VALUES (8, '水浒传', 555555.00, 'novel', 2, '/upload/964c3e99b528478aae2235588be8ddc6.png', '', NULL, NULL);
INSERT INTO `book_` VALUES (10, '水浒传', 555555.00, 'novel', 2, '/upload/2cb34282049845b39ee0eb6aef8fb6b1.jpg', NULL, 14, '人民文学');
INSERT INTO `book_` VALUES (11, '水浒传', 5500.00, 'other', 22, '/upload/c8d7730ef9444204bd005be2a2193ec9.png', '<p>sss<img src=\"/oldbookweb_1/ueditor/jsp/upload/image/20190507/1557196467708054993.jpg\" title=\"1557196467708054993.jpg\" alt=\"QQ图片20190411173016.jpg\" width=\"94\" height=\"98\"/></p>', 14, '人民文学');
INSERT INTO `book_` VALUES (14, '红楼梦', 20.00, 'novel', 2, '/upload/0b9da0e29015447c987afaebd98dc644.jpg', '', 14, '人民文学');
INSERT INTO `book_` VALUES (16, '庄子的享受', 20.00, 'philosophy', 2, '/upload/182cc70145d24e6ab4ca7b11516fcc71.jpg', '', 14, '人民文学');
INSERT INTO `book_` VALUES (17, '史记', 20.00, 'literature', 2, '/upload/1594c09e0bb143c594883a08609ccd2e.jpg', '', 14, '人民文学');
INSERT INTO `book_` VALUES (18, '三国演义', 20.00, 'novel', 1, '/upload/d647c8b01a9942278e4e1024c84d0b83.jpg', '', 19, '人民文学');
INSERT INTO `book_` VALUES (21, '三国演义', 20.00, 'novel', 2, '/upload/f24d8cd590fd4edcbd3ab57a49f3a693.jpg', '', 19, '人民文学出版社');
INSERT INTO `book_` VALUES (22, '骆驼祥子', 20.00, 'novel', 2, '/upload/07f436209aeb400eaa2867b366b614d7.jpg', '<p>我是<img src=\"http://localhost:8080/oldbookweb_1/ueditor/jsp/upload/image/201906041559633444487002033.jpg\" title=\"201906041559633444487002033.jpg\" alt=\"庄子.jpg\"/></p>', 19, '人民文学出版社');
INSERT INTO `book_` VALUES (23, '三国演义', 20.00, 'novel', 2, '/upload/2eb0cb97b3874a5596ef0d18a458ca82.jpg', '', 19, '人民文学出版社');
INSERT INTO `book_` VALUES (27, '三国演义', 20.00, 'novel', 2, '/upload/7a6b9aad5cf84849a21a8398530ae2ed.jpg', '', 19, '人民文学出版社');
INSERT INTO `book_` VALUES (29, '三国演义', 20.00, 'novel', 2, '/upload/5c98a11e69fd41b5a3822585a2a76f4d.jpg', '', 19, '人民文学出版社');

-- ----------------------------
-- Table structure for category_
-- ----------------------------
DROP TABLE IF EXISTS `category_`;
CREATE TABLE `category_`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_
-- ----------------------------
INSERT INTO `category_` VALUES (1, 'www');
INSERT INTO `category_` VALUES (2, 'tttt');

-- ----------------------------
-- Table structure for departments_
-- ----------------------------
DROP TABLE IF EXISTS `departments_`;
CREATE TABLE `departments_`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL,
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_
-- ----------------------------
DROP TABLE IF EXISTS `order_`;
CREATE TABLE `order_`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `total` double(255, 0) NOT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orderitem_
-- ----------------------------
DROP TABLE IF EXISTS `orderitem_`;
CREATE TABLE `orderitem_`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_
-- ----------------------------
DROP TABLE IF EXISTS `user_`;
CREATE TABLE `user_`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_
-- ----------------------------
INSERT INTO `user_` VALUES (1, '修改', '123', '411164331@qq.com', NULL, NULL, NULL, NULL);
INSERT INTO `user_` VALUES (2, 'admin02', '123', '111', NULL, NULL, 'admin', NULL);
INSERT INTO `user_` VALUES (3, 'admin03', '123', '222', NULL, NULL, NULL, NULL);
INSERT INTO `user_` VALUES (4, '新增', '123', '41#A', NULL, NULL, NULL, NULL);
INSERT INTO `user_` VALUES (14, 'admin004', 'dc483e80a7a0bd9ef71d8cf973673924', '411164334@qq.com', NULL, NULL, 'user', '2019-04-28 15:15:46');
INSERT INTO `user_` VALUES (17, 'admin008', 'dc483e80a7a0bd9ef71d8cf973673924', '411164335@qq.com', NULL, NULL, 'user', '2019-05-30 19:12:40');
INSERT INTO `user_` VALUES (18, 'admin009', 'dc483e80a7a0bd9ef71d8cf973673924', '411164339@qq.com', NULL, NULL, 'user', '2019-05-30 19:14:54');
INSERT INTO `user_` VALUES (19, 'admin006', 'dc483e80a7a0bd9ef71d8cf973673924', '411164336@qq.com', NULL, NULL, 'user', '2019-05-30 19:16:40');
INSERT INTO `user_` VALUES (20, 'admin003', 'dc483e80a7a0bd9ef71d8cf973673924', '411164333@qq.com', NULL, NULL, 'user', '2019-05-30 19:18:42');
INSERT INTO `user_` VALUES (21, 'admin001', 'dc483e80a7a0bd9ef71d8cf973673924', '411164331@qq.com', NULL, NULL, 'user', '2019-05-30 19:19:59');
INSERT INTO `user_` VALUES (22, 'admin0010', 'dc483e80a7a0bd9ef71d8cf973673924', '4111643391@qq.com', NULL, NULL, 'user', '2019-05-30 19:21:50');

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES (1, '测试', 'sfasgfaf', 24);

SET FOREIGN_KEY_CHECKS = 1;
