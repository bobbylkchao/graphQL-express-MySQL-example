/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : graphQLDB

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 10/10/2021 19:27:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Post
-- ----------------------------
DROP TABLE IF EXISTS `Post`;
CREATE TABLE `Post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Post_authorId_fkey` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Post
-- ----------------------------
BEGIN;
INSERT INTO `Post` VALUES (1, '2021-10-10 07:36:27.967', '2021-10-10 07:46:33.216', 'Hello World', NULL, 1, 1);
INSERT INTO `Post` VALUES (2, '2021-10-08 03:14:31.000', '2021-10-10 03:14:35.000', 'ZZZZZZ', NULL, 1, 1);
INSERT INTO `Post` VALUES (3, '2021-10-01 03:46:59.000', '2021-10-10 03:47:01.000', 'DDDDDD', NULL, 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_email_key` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of User
-- ----------------------------
BEGIN;
INSERT INTO `User` VALUES (1, 'alice@prisma.io', 'Alice');
INSERT INTO `User` VALUES (2, 'a@a.com', 'a');
INSERT INTO `User` VALUES (3, 'b@b.com', 'b');
INSERT INTO `User` VALUES (4, 'mb@mb.com', 'bobby');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
