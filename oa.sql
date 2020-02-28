/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : oa

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 28/02/2020 21:29:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for claim_voucher
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher`;
CREATE TABLE `claim_voucher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cause` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_sn` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `next_deal_sn` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total_amount` double NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_2`(`next_deal_sn`) USING BTREE,
  INDEX `FK_Reference_3`(`create_sn`) USING BTREE,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`next_deal_sn`) REFERENCES `employee` (`sn`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`create_sn`) REFERENCES `employee` (`sn`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of claim_voucher
-- ----------------------------
INSERT INTO `claim_voucher` VALUES (1, '乌龟', '10003', '2020-02-25 17:10:57', '10003', 5025, '新创建');
INSERT INTO `claim_voucher` VALUES (2, '啊', '10003', '2020-02-25 17:12:28', '10003', 60, '新创建');
INSERT INTO `claim_voucher` VALUES (3, '我啊', '10003', '2020-02-25 17:26:46', '10003', 110, '新创建');
INSERT INTO `claim_voucher` VALUES (4, '我  我我我我', '10003', '2020-02-25 17:37:27', '10003', 1050, '新创建');
INSERT INTO `claim_voucher` VALUES (5, '我是啊', '10003', '2020-02-25 17:46:58', '10003', 20, '已提交');
INSERT INTO `claim_voucher` VALUES (6, '不知道', '10004', '2020-02-25 17:59:55', '10003', 800, '已提交');
INSERT INTO `claim_voucher` VALUES (7, '我啊啊啊啊啊啊啊', '10003', '2020-02-25 18:33:27', '10003', 5040, '已提交');
INSERT INTO `claim_voucher` VALUES (8, '我累了', '10003', '2020-02-25 18:39:22', '10003', 20, '已提交');
INSERT INTO `claim_voucher` VALUES (9, '涂狗啊', '10003', '2020-02-25 18:47:41', '10003', 30, '已提交');
INSERT INTO `claim_voucher` VALUES (10, '我', '10004', '2020-02-26 17:12:23', '10003', 60, '已提交');
INSERT INTO `claim_voucher` VALUES (11, '啊我的答复', '10003', '2020-02-27 03:23:57', '10003', 217, '已提交');
INSERT INTO `claim_voucher` VALUES (12, '121231', '10004', '2020-02-27 03:34:31', NULL, 50, '已终止');
INSERT INTO `claim_voucher` VALUES (13, '额', '10003', '2020-02-27 03:56:57', '10003', 40, '已打回');
INSERT INTO `claim_voucher` VALUES (14, '第一个测试', '10003', '2020-02-27 04:00:33', NULL, 3000, '已支付');
INSERT INTO `claim_voucher` VALUES (15, '额', '10003', '2020-02-27 04:13:20', NULL, 3, '已支付');

-- ----------------------------
-- Table structure for claim_voucher_item
-- ----------------------------
DROP TABLE IF EXISTS `claim_voucher_item`;
CREATE TABLE `claim_voucher_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) NULL DEFAULT NULL,
  `item` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `amount` double NULL DEFAULT NULL,
  `comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_4`(`claim_voucher_id`) USING BTREE,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`claim_voucher_id`) REFERENCES `claim_voucher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of claim_voucher_item
-- ----------------------------
INSERT INTO `claim_voucher_item` VALUES (1, NULL, '交通', 20, '');
INSERT INTO `claim_voucher_item` VALUES (2, NULL, '交通', 5005, '');
INSERT INTO `claim_voucher_item` VALUES (3, 3, '交通', 10, '');
INSERT INTO `claim_voucher_item` VALUES (4, 3, '交通', 50, '');
INSERT INTO `claim_voucher_item` VALUES (5, NULL, '交通', 100, NULL);
INSERT INTO `claim_voucher_item` VALUES (9, NULL, '交通', 10, '');
INSERT INTO `claim_voucher_item` VALUES (10, 3, '餐饮', 10, '');
INSERT INTO `claim_voucher_item` VALUES (11, NULL, '办公', 500, '');
INSERT INTO `claim_voucher_item` VALUES (12, NULL, '交通', 300, '');
INSERT INTO `claim_voucher_item` VALUES (13, NULL, '交通', 10, '');
INSERT INTO `claim_voucher_item` VALUES (14, NULL, '交通', 5000, '');
INSERT INTO `claim_voucher_item` VALUES (15, NULL, '餐饮', 30, '');
INSERT INTO `claim_voucher_item` VALUES (16, 8, '交通', 10, '');
INSERT INTO `claim_voucher_item` VALUES (17, 8, '住宿', 10, '');
INSERT INTO `claim_voucher_item` VALUES (18, 9, '交通', 10, '我');
INSERT INTO `claim_voucher_item` VALUES (19, 9, '住宿', 20, '');
INSERT INTO `claim_voucher_item` VALUES (20, 10, '交通', 20, '');
INSERT INTO `claim_voucher_item` VALUES (21, 10, '住宿', 40, '我');
INSERT INTO `claim_voucher_item` VALUES (22, 11, '交通', 13, '');
INSERT INTO `claim_voucher_item` VALUES (23, 11, '餐饮', 102, '啊啊');
INSERT INTO `claim_voucher_item` VALUES (24, 11, '交通', 102, '');
INSERT INTO `claim_voucher_item` VALUES (25, 12, '交通', 50, '255');
INSERT INTO `claim_voucher_item` VALUES (26, 13, '交通', 40, '');
INSERT INTO `claim_voucher_item` VALUES (27, 14, '交通', 1000, '哈哈哈');
INSERT INTO `claim_voucher_item` VALUES (28, 14, '住宿', 2000, '啦啦');
INSERT INTO `claim_voucher_item` VALUES (29, 15, '交通', 1, '');
INSERT INTO `claim_voucher_item` VALUES (30, 15, '交通', 2, '');

-- ----------------------------
-- Table structure for deal_record
-- ----------------------------
DROP TABLE IF EXISTS `deal_record`;
CREATE TABLE `deal_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_voucher_id` int(11) NULL DEFAULT NULL,
  `deal_sn` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deal_time` datetime(0) NULL DEFAULT NULL,
  `deal_way` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deal_result` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_5`(`claim_voucher_id`) USING BTREE,
  INDEX `FK_Reference_6`(`deal_sn`) USING BTREE,
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`claim_voucher_id`) REFERENCES `claim_voucher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`deal_sn`) REFERENCES `employee` (`sn`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deal_record
-- ----------------------------
INSERT INTO `deal_record` VALUES (1, 10, NULL, '2020-02-26 17:12:28', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (2, 9, NULL, '2020-02-26 17:34:20', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (3, 8, NULL, '2020-02-26 17:34:39', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (4, 7, NULL, '2020-02-26 17:34:41', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (5, 5, NULL, '2020-02-26 17:34:43', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (6, 6, NULL, '2020-02-26 17:43:06', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (7, 11, NULL, '2020-02-27 03:24:21', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (8, 12, NULL, '2020-02-27 03:34:42', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (9, 15, NULL, '2020-02-27 10:18:39', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (10, 14, NULL, '2020-02-27 10:18:42', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (11, 13, NULL, '2020-02-27 10:18:44', '提交', '已提交', '无');
INSERT INTO `deal_record` VALUES (12, 15, '10003', '2020-02-27 10:56:42', '通过', '已审核', '');
INSERT INTO `deal_record` VALUES (13, 14, '10003', '2020-02-27 10:56:50', '通过', '已审核', '');
INSERT INTO `deal_record` VALUES (14, 13, '10003', '2020-02-27 10:56:57', '打回', '已打回', '');
INSERT INTO `deal_record` VALUES (15, 12, '10003', '2020-02-27 10:57:04', '拒绝', '已终止', '');
INSERT INTO `deal_record` VALUES (16, 15, '10002', '2020-02-27 11:06:35', '支付', '已支付', '');
INSERT INTO `deal_record` VALUES (17, 14, '10002', '2020-02-27 11:06:42', '支付', '已支付', '');
INSERT INTO `deal_record` VALUES (18, 11, '10003', '2020-02-27 14:55:35', 'éè¿', NULL, '');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `sn` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('10001', '总经理办公室', '星星大厦E座1201');
INSERT INTO `department` VALUES ('10002', '财务部', '星星大厦E座1202');
INSERT INTO `department` VALUES ('10003', '事业部', '星星大厦E座1101');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `sn` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `department_sn` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `post` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sn`) USING BTREE,
  INDEX `FK_Reference_1`(`department_sn`) USING BTREE,
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`department_sn`) REFERENCES `department` (`sn`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('10001', '000000', '小湖', '10001', '总经理');
INSERT INTO `employee` VALUES ('10002', '000000', '小红', '10002', '财务');
INSERT INTO `employee` VALUES ('10003', '000000', '小明', '10003', '部门经理');
INSERT INTO `employee` VALUES ('10004', '000000', '小灰', '10003', '员工');

SET FOREIGN_KEY_CHECKS = 1;
