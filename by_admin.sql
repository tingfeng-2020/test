/*
 Navicat Premium Data Transfer

 Source Server         : ali
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 112.74.200.151:3306
 Source Schema         : by_admin

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 18/07/2020 09:08:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adverts
-- ----------------------------
DROP TABLE IF EXISTS `adverts`;
CREATE TABLE `adverts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告标题',
  `thumb` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片链接',
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '跳转链接',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `position_id` int(11) NOT NULL COMMENT '位置ID',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '广告描述',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '资讯ID',
  `tag_id` int(11) NOT NULL COMMENT '标签ID',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `keywords` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键词',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `click` int(11) NOT NULL DEFAULT 0 COMMENT '点击量',
  `thumb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '缩略图',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_ac_pay
-- ----------------------------
DROP TABLE IF EXISTS `by_data_ac_pay`;
CREATE TABLE `by_data_ac_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00' COMMENT '时间',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `ac_pay` int(11) NOT NULL DEFAULT 0 COMMENT '每日充值奖励',
  `ac_pay_count` int(11) NOT NULL DEFAULT 0 COMMENT '累计充值奖励',
  `ac_day_count` int(11) NOT NULL DEFAULT 0 COMMENT '累计充值天数产出',
  `pay_count` int(11) NOT NULL DEFAULT 0 COMMENT '充值金币总数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_bi_report
-- ----------------------------
DROP TABLE IF EXISTS `by_data_bi_report`;
CREATE TABLE `by_data_bi_report`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '报表名称',
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '报表链接',
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'BI报表记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_bomb_detailed
-- ----------------------------
DROP TABLE IF EXISTS `by_data_bomb_detailed`;
CREATE TABLE `by_data_bomb_detailed`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `qt_bomb_num` int(11) NOT NULL DEFAULT 0 COMMENT '青铜弹头数量',
  `by_bomb_num` int(11) NOT NULL DEFAULT 0 COMMENT '白银弹头数量',
  `hj_bomb_num` int(11) NOT NULL DEFAULT 0 COMMENT '黄金弹头数量',
  `zs_bomb_num` int(10) NOT NULL DEFAULT 0 COMMENT '钻石弹头数量',
  `qt_bomb_value` int(11) NOT NULL DEFAULT 0 COMMENT '青铜弹头价值',
  `by_bomb_value` int(11) NOT NULL DEFAULT 0 COMMENT '白银弹头价值',
  `hj_bomb_value` int(11) NOT NULL DEFAULT 0 COMMENT '黄金弹头价值',
  `zs_bomb_value` int(10) NOT NULL DEFAULT 0 COMMENT '钻石弹头价值',
  `qt_bomb_drop_num` int(11) NOT NULL DEFAULT 0 COMMENT '产出青铜弹头数量',
  `by_bomb_drop_num` int(11) NOT NULL DEFAULT 0 COMMENT '产出白银弹头数量',
  `hj_bomb_drop_num` int(11) NOT NULL DEFAULT 0 COMMENT '产出黄金弹头数量',
  `zs_bomb_drop_num` int(10) NOT NULL DEFAULT 0 COMMENT '产出钻石弹头数量',
  `qt_bomb_drop_value` int(11) NOT NULL DEFAULT 0 COMMENT '产出青铜弹头价值',
  `by_bomb_drop_value` int(11) NOT NULL DEFAULT 0 COMMENT '产出白银弹头价值',
  `hj_bomb_drop_value` int(11) NOT NULL DEFAULT 0 COMMENT '产出黄金弹头价值',
  `zs_bomb_drop_value` int(10) NOT NULL DEFAULT 0 COMMENT '产出钻石弹头价值',
  `qt_bomb_use_num` int(11) NOT NULL DEFAULT 0 COMMENT '消耗青铜弹头数量',
  `by_bomb_use_num` int(11) NOT NULL DEFAULT 0 COMMENT '消耗白银弹头数量',
  `hj_bomb_use_num` int(11) NOT NULL DEFAULT 0 COMMENT '消耗黄金弹头数量',
  `zs_bomb_use_num` int(10) NOT NULL DEFAULT 0 COMMENT '消耗钻石弹头数量',
  `qt_bomb_use_value` int(11) NOT NULL DEFAULT 0 COMMENT '消耗青铜弹头价值',
  `by_bomb_use_value` int(11) NOT NULL DEFAULT 0 COMMENT '消耗白银弹头价值',
  `hj_bomb_use_value` int(11) NOT NULL DEFAULT 0 COMMENT '消耗黄金弹头价值',
  `zs_bomb_use_value` int(10) NOT NULL DEFAULT 0 COMMENT '消耗钻石弹头价值',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8604 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '弹头明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_bomb_detailed_all
-- ----------------------------
DROP TABLE IF EXISTS `by_data_bomb_detailed_all`;
CREATE TABLE `by_data_bomb_detailed_all`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `all_value` int(11) NOT NULL DEFAULT 0 COMMENT '库存弹头总价值',
  `all_num` int(11) NOT NULL DEFAULT 0 COMMENT '库存弹头总数量',
  `into_value` int(11) NOT NULL DEFAULT 0 COMMENT '产出弹头价值',
  `into_num` int(10) NOT NULL DEFAULT 0 COMMENT '产出弹头数量',
  `out_value` int(11) NOT NULL DEFAULT 0 COMMENT '消耗弹头价值',
  `out_num` int(11) NOT NULL DEFAULT 0 COMMENT '消耗弹头数量',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8604 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '弹头明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_exchange
-- ----------------------------
DROP TABLE IF EXISTS `by_data_exchange`;
CREATE TABLE `by_data_exchange`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `ec_num_total` int(11) NOT NULL DEFAULT 0 COMMENT '兑换总额（元）',
  `ec_num_total_hf` int(11) NOT NULL DEFAULT 0 COMMENT '话费卡兑换',
  `ec_num_total_jd` int(11) NOT NULL DEFAULT 0 COMMENT '京东卡兑换',
  `ec_num_total_sw` int(10) NOT NULL DEFAULT 0 COMMENT '实物兑换',
  `ec_num_total_jb` int(11) NOT NULL DEFAULT 0 COMMENT '兑换金币价值（元）',
  `ec_num_total_dj` int(11) NOT NULL DEFAULT 0 COMMENT '兑换道具（元）',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8604 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '奖券兑换明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_exchange_detailed
-- ----------------------------
DROP TABLE IF EXISTS `by_data_exchange_detailed`;
CREATE TABLE `by_data_exchange_detailed`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `ec_num_total_hf_de` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '话费卡兑换',
  `ec_num_total_jd_de` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '京东卡兑换',
  `ec_num_total_sw_de` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实物兑换',
  `ec_num_total_jb_de` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '兑换金币价值（元）',
  `ec_num_total_dj_de` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '兑换道具（元）',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8604 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '奖券兑换明细详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_fund
-- ----------------------------
DROP TABLE IF EXISTS `by_data_fund`;
CREATE TABLE `by_data_fund`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `coins_all_total` int(11) NOT NULL DEFAULT 0 COMMENT '金币总产出',
  `chu_pay_num` int(11) NOT NULL DEFAULT 0 COMMENT '初级基金购买人数',
  `gao_pay_num` int(11) NOT NULL DEFAULT 0 COMMENT '高级基金购买人数',
  `chu_pay_num_give` int(10) NOT NULL DEFAULT 0 COMMENT '初级基金奖励领取人数',
  `chu_pay_num_give_detailed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '初级基金奖励领取人数详情',
  `gao_pay_num_give` int(11) NOT NULL DEFAULT 0 COMMENT '高级基金奖励领取人数',
  `gao_pay_num_give_detailed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '高级基金奖励领取人数详情',
  `chu_coins_tatal` int(11) NOT NULL DEFAULT 0 COMMENT '初级基金金币总产出',
  `chu_coins_tatal_detailed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '初级基金金币总产出详情',
  `gao_coins_tatal` int(11) NOT NULL DEFAULT 0 COMMENT '高级基金金币总产出',
  `gao_coins_tatal_detailed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '高级基金金币总产出详情',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8634 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '成长基金' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_report
-- ----------------------------
DROP TABLE IF EXISTS `by_data_report`;
CREATE TABLE `by_data_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ALL' COMMENT '渠道',
  `revenue` int(11) NOT NULL DEFAULT 0 COMMENT '营收',
  `recharge` int(11) NOT NULL DEFAULT 0 COMMENT '充值',
  `exchange` int(11) NOT NULL DEFAULT 0 COMMENT '兑换',
  `coins` int(11) NOT NULL DEFAULT 0 COMMENT '金币',
  `reg` int(11) NOT NULL DEFAULT 0 COMMENT '注册',
  `dau` int(11) NOT NULL DEFAULT 0 COMMENT 'dau',
  `tax` int(11) NOT NULL DEFAULT 0 COMMENT '税收',
  `give` int(11) NOT NULL DEFAULT 0 COMMENT '赠送',
  `date_at` date NOT NULL DEFAULT '0000-00-00' COMMENT '日期',
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_date_channel`(`date_at`, `channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8785 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_report_detail
-- ----------------------------
DROP TABLE IF EXISTS `by_data_report_detail`;
CREATE TABLE `by_data_report_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ALL' COMMENT '渠道',
  `revenue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '营收',
  `recharge` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '充值',
  `exchange` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '兑换',
  `coins` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '金币',
  `reg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '注册',
  `dau` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'dau',
  `tax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '税收',
  `give` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '赠送',
  `date_at` date NOT NULL DEFAULT '0000-00-00' COMMENT '日期',
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_date_channel`(`date_at`, `channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8785 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据报表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for by_data_tomorrow_gift
-- ----------------------------
DROP TABLE IF EXISTS `by_data_tomorrow_gift`;
CREATE TABLE `by_data_tomorrow_gift`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT 'æ—¥æœŸ',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'æ¸ é“åç§°',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT 'è®¡ç®—ç±»åž‹ï¼šé¢†å–äººæ•°;æ€»é‡‘å¸;æ€»å¥–åˆ¸',
  `day1_count` bigint(20) NOT NULL COMMENT 'ç¬¬ä¸€å¤©è®¡ç®—ç»“æžœ',
  `day2_count` bigint(20) NOT NULL COMMENT 'ç¬¬äºŒå¤©è®¡ç®—ç»“æžœ',
  `day3_count` bigint(20) NOT NULL COMMENT 'ç¬¬ä¸‰å¤©è®¡ç®—ç»“æžœ',
  `day4_count` bigint(20) NOT NULL COMMENT 'ç¬¬å››å¤©è®¡ç®—ç»“æžœ',
  `day5_count` bigint(20) NOT NULL COMMENT 'ç¬¬äº”å¤©è®¡ç®—ç»“æžœ',
  `day6_count` bigint(20) NOT NULL COMMENT 'ç¬¬å…­å¤©è®¡ç®—ç»“æžœ',
  `day7_count` bigint(20) NOT NULL COMMENT 'ç¬¬ä¸ƒå¤©è®¡ç®—ç»“æžœ',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT 'ä¿å­˜æ—¶é—´',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'æ˜Žæ—¥ç¤¼åŒ…è®¡ç®—é¡¹' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_user_activity_lottery
-- ----------------------------
DROP TABLE IF EXISTS `by_data_user_activity_lottery`;
CREATE TABLE `by_data_user_activity_lottery`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `lottery_totle` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '总抽奖次数',
  `lottery_totle_num` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '总抽奖人数',
  `coins` bigint(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币产出',
  `diamond` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钻石产出',
  `redpack` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '奖券产出',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1762 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '抽奖活动统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_user_changecoins_today_all
-- ----------------------------
DROP TABLE IF EXISTS `by_data_user_changecoins_today_all`;
CREATE TABLE `by_data_user_changecoins_today_all`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `all_coins_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '系统总金币',
  `wave_coins_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '金币波动',
  `all_tax_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '税收总额',
  `all_recharge_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '充值总额',
  `all_send_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '赠送总额',
  `all_register_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '注册赠送',
  `all_activity_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '活动赠送',
  `all_task_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务赠送',
  `all_vip_value` bigint(20) NOT NULL DEFAULT 0 COMMENT 'VIP赠送',
  `all_admin_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '管理员操作',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8650 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '当日金币汇总' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_user_changecoins_today_detailed
-- ----------------------------
DROP TABLE IF EXISTS `by_data_user_changecoins_today_detailed`;
CREATE TABLE `by_data_user_changecoins_today_detailed`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `all_coins_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '系统总金币',
  `wave_coins_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '金币波动',
  `all_tax_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '税收总额',
  `all_recharge_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '充值总额',
  `all_send_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '赠送总额',
  `all_register_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '注册赠送',
  `all_activity_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '活动赠送',
  `all_task_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务赠送',
  `all_vip_value` bigint(20) NOT NULL DEFAULT 0 COMMENT 'VIP赠送',
  `all_admin_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '管理员操作',
  `all_coins_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统总金币明细',
  `all_tax_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '税收总额明细',
  `all_recharge_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '充值总额明细',
  `all_register_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '注册赠送明细',
  `all_activity_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '活动赠送明细',
  `all_task_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务赠送明细',
  `all_vip_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'VIP赠送明细',
  `all_admin_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员操作明细',
  `created_at` int(11) NOT NULL COMMENT '保存时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8650 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '当日金币明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_user_changepackets_output_all
-- ----------------------------
DROP TABLE IF EXISTS `by_data_user_changepackets_output_all`;
CREATE TABLE `by_data_user_changepackets_output_all`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `all_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '奖券总产出',
  `game_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '游戏房间产出',
  `sign_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '签到产出',
  `task_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务产出',
  `activity_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '运营活动产出',
  `other_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '其他产出',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11071 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '奖券产出汇总' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_user_changepackets_output_detailed
-- ----------------------------
DROP TABLE IF EXISTS `by_data_user_changepackets_output_detailed`;
CREATE TABLE `by_data_user_changepackets_output_detailed`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `all_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '奖券总产出',
  `game_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '游戏房间产出',
  `sign_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '签到产出',
  `task_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务产出',
  `activity_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '运营活动产出',
  `other_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '其他产出',
  `game_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '游戏房间产出详情',
  `sign_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '签到产出详情',
  `task_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务产出详情',
  `activity_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '运营活动产出详情',
  `other_detail_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '其他产出详情',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11071 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '奖券产出明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_user_viponly
-- ----------------------------
DROP TABLE IF EXISTS `by_data_user_viponly`;
CREATE TABLE `by_data_user_viponly`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `all_coins_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '金币总产出',
  `vip1_active` int(20) NOT NULL DEFAULT 0 COMMENT 'vip1活跃人数',
  `vip1_buy` int(20) NOT NULL DEFAULT 0 COMMENT 'vip1礼包购买人数',
  `vip1_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'vip1礼包购买详情',
  `vip2_active` int(20) NOT NULL DEFAULT 0 COMMENT 'vip2活跃人数',
  `vip2_buy` int(20) NOT NULL DEFAULT 0 COMMENT 'vip2礼包购买人数',
  `vip2_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'vip2礼包购买详情',
  `vip3_active` int(30) NOT NULL DEFAULT 0 COMMENT 'vip3活跃人数',
  `vip3_buy` int(30) NOT NULL DEFAULT 0 COMMENT 'vip3礼包购买人数',
  `vip3_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'vip3礼包购买详情',
  `vip4_active` int(40) NOT NULL DEFAULT 0 COMMENT 'vip4活跃人数',
  `vip4_buy` int(40) NOT NULL DEFAULT 0 COMMENT 'vip4礼包购买人数',
  `vip4_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'vip4礼包购买详情',
  `vip5_active` int(50) NOT NULL DEFAULT 0 COMMENT 'vip5活跃人数',
  `vip5_buy` int(50) NOT NULL DEFAULT 0 COMMENT 'vip5礼包购买人数',
  `vip5_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'vip5礼包购买详情',
  `vip6_active` int(60) NOT NULL DEFAULT 0 COMMENT 'vip6活跃人数',
  `vip6_buy` int(60) NOT NULL DEFAULT 0 COMMENT 'vip6礼包购买人数',
  `vip6_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'vip6礼包购买详情',
  `all_admin_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '管理员操作',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4730 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'vip专享汇总明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_user_viponly_new
-- ----------------------------
DROP TABLE IF EXISTS `by_data_user_viponly_new`;
CREATE TABLE `by_data_user_viponly_new`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道名称',
  `all_coins_value` bigint(20) NOT NULL DEFAULT 0 COMMENT '金币总产出',
  `vip_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'vip礼包购买详情',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'vip专享汇总明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for by_data_winlose
-- ----------------------------
DROP TABLE IF EXISTS `by_data_winlose`;
CREATE TABLE `by_data_winlose`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '玩家id',
  `all_winlose` int(11) NOT NULL DEFAULT 0 COMMENT '总输赢',
  `all_low_winlose` int(11) NOT NULL DEFAULT 0 COMMENT '碧波海湾601',
  `all_middle_winlose` int(11) NOT NULL DEFAULT 0 COMMENT '沉船深渊602',
  `all_high_winlose` int(11) NOT NULL DEFAULT 0 COMMENT '深海秘境603',
  `all_high_winlose_604` int(11) NOT NULL DEFAULT 0 COMMENT '远古遗迹604',
  `all_high_winlose_605` int(11) NULL DEFAULT 0 COMMENT '海王巢穴605',
  `bankrupt_num` int(11) NOT NULL DEFAULT 0 COMMENT '破产次数',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '保存时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_date_uid`(`date`, `uid`) USING BTREE,
  INDEX `idx_date`(`date`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1736 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '玩家输赢流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '上级ID',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_app_channel
-- ----------------------------
DROP TABLE IF EXISTS `data_app_channel`;
CREATE TABLE `data_app_channel`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `app_id` int(10) NOT NULL DEFAULT 0 COMMENT '应用ID',
  `channel_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '渠道集合,多渠道以逗号隔开',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用渠道关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_channel_name
-- ----------------------------
DROP TABLE IF EXISTS `data_channel_name`;
CREATE TABLE `data_channel_name`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '渠道对应的Key值',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '渠道名称',
  `is_ldy` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 否 2 是(是否有落地页)',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '渠道表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_into_out
-- ----------------------------
DROP TABLE IF EXISTS `data_into_out`;
CREATE TABLE `data_into_out`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL DEFAULT 0 COMMENT '日期',
  `coins_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '货币类型：1：金币 2：钻石 3：红包卷 4：师徒积分',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '数据类型：1：产出 2：消耗 3：购买/参与/完成人数',
  `show_1` int(11) NOT NULL DEFAULT 0 COMMENT '商城',
  `show_2` int(11) NOT NULL DEFAULT 0 COMMENT '每日任务',
  `show_3` int(11) NOT NULL DEFAULT 0 COMMENT '新手任务',
  `show_4` int(11) NOT NULL DEFAULT 0 COMMENT '匹配场',
  `show_5` int(11) NOT NULL DEFAULT 0 COMMENT '比赛场',
  `show_6` int(11) NOT NULL DEFAULT 0 COMMENT '赛季奖励',
  `show_7` int(11) NOT NULL DEFAULT 0 COMMENT '大段位奖励',
  `show_8` int(11) NOT NULL DEFAULT 0 COMMENT '段位每日奖励',
  `show_9` int(11) NOT NULL DEFAULT 0 COMMENT '师徒邀请奖励',
  `show_10` int(11) NOT NULL DEFAULT 0 COMMENT '翻翻乐',
  `show_11` int(11) NOT NULL DEFAULT 0 COMMENT '牌场红包',
  `show_12` int(11) NOT NULL DEFAULT 0 COMMENT '新人福利',
  `show_13` int(11) NOT NULL DEFAULT 0 COMMENT '破产奖励',
  `show_14` int(11) NOT NULL DEFAULT 0 COMMENT '新人奖励',
  `show_15` int(11) NOT NULL DEFAULT 0 COMMENT '其他产出',
  `show_16` int(11) NOT NULL DEFAULT 0 COMMENT '新玩家七日福利',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产出与消耗' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_ltv
-- ----------------------------
DROP TABLE IF EXISTS `data_ltv`;
CREATE TABLE `data_ltv`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当日日期',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '注册渠道',
  `add_count` int(10) NULL DEFAULT 0 COMMENT '新增用户数',
  `uid_all` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新增用户集合',
  `new_pay_count` int(10) NOT NULL DEFAULT 0 COMMENT '新增付费人数',
  `all_pay_count` int(10) NOT NULL DEFAULT 0 COMMENT '付费人数',
  `all_pay_money` int(10) NOT NULL DEFAULT 0 COMMENT '付费总额',
  `all_login_count` int(10) NOT NULL DEFAULT 0 COMMENT '登陆人数',
  `all_exchange_money` int(10) NOT NULL DEFAULT 0 COMMENT '兑换总额',
  `ltv_1` int(10) NULL DEFAULT 0 COMMENT '第1天',
  `ltv_2` int(10) NULL DEFAULT 0 COMMENT '第2天',
  `ltv_3` int(10) NULL DEFAULT 0 COMMENT '第3天',
  `ltv_4` int(10) NULL DEFAULT 0 COMMENT '第4天',
  `ltv_5` int(10) NULL DEFAULT 0 COMMENT '第5天',
  `ltv_6` int(10) NULL DEFAULT 0 COMMENT '第6天',
  `ltv_7` int(10) NULL DEFAULT 0 COMMENT '第7天',
  `ltv_15` int(10) NULL DEFAULT 0 COMMENT '第15天',
  `ltv_30` int(10) NULL DEFAULT 0 COMMENT '第30天',
  `ltv_60` int(10) NULL DEFAULT 0 COMMENT '第45天',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'LTV' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_new_player_awrad
-- ----------------------------
DROP TABLE IF EXISTS `data_new_player_awrad`;
CREATE TABLE `data_new_player_awrad`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `day_1` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第一天',
  `day_2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第二天',
  `day_3` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第三天',
  `day_4` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第四天',
  `day_5` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第五天',
  `day_6` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第六天',
  `day_7` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第七天',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新人福利（新人七天任务）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_package
-- ----------------------------
DROP TABLE IF EXISTS `data_package`;
CREATE TABLE `data_package`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `prop_id` int(11) NOT NULL DEFAULT 0 COMMENT '道具ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '道具名称',
  `type` int(5) UNSIGNED NOT NULL DEFAULT 1 COMMENT '道具类型',
  `sub_type` int(5) NOT NULL DEFAULT 0 COMMENT '道具子类型',
  `use_position` tinyint(1) NOT NULL DEFAULT 1 COMMENT '使用位置 1 大厅 2 斗地主 3 渔场',
  `synthetise_count` int(10) NOT NULL DEFAULT 0 COMMENT '合成需要的数量',
  `synthetise_id` int(10) NOT NULL DEFAULT 0 COMMENT '合成物品的道具ID',
  `is_synthetise` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可以合成',
  `max_limit` int(10) NOT NULL DEFAULT 1 COMMENT '道具数量限制',
  `time` int(10) NOT NULL DEFAULT 0 COMMENT '道具有效期0永久其余代表天',
  `in_bag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '能否放入背包:0否，1是',
  `show_give` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示赠送:0否，1是',
  `show_use` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示使用:0否，1是',
  `show_recycle` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示回收:0不显示，1显示',
  `use_repeat` tinyint(1) NOT NULL DEFAULT 0 COMMENT '能否重复使用:0不能，1能',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0' COMMENT '道具说明',
  `use_level` int(5) NOT NULL DEFAULT 0 COMMENT '使用vip等级',
  `give_level` int(5) NOT NULL DEFAULT 0 COMMENT '赠送vip等级',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '道具图片',
  `recycle_coins` decimal(10, 0) NOT NULL DEFAULT 0 COMMENT '回收价值',
  `value` decimal(10, 0) NOT NULL DEFAULT 1 COMMENT '金额(弃用，为了不影响相关功能，暂保留)',
  `special_pop` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '特殊属性',
  `operat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作用户',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pid`(`prop_id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '道具表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_package_old
-- ----------------------------
DROP TABLE IF EXISTS `data_package_old`;
CREATE TABLE `data_package_old`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `prop_id` int(11) NOT NULL DEFAULT 0 COMMENT '道具ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '道具名称',
  `type` int(5) UNSIGNED NOT NULL DEFAULT 1 COMMENT '道具类型',
  `sub_type` int(5) NOT NULL DEFAULT 0 COMMENT '道具子类型',
  `use_position` tinyint(1) NOT NULL DEFAULT 1 COMMENT '使用位置 1 大厅 2 斗地主 3 渔场',
  `max_limit` int(10) NOT NULL DEFAULT 1 COMMENT '道具数量限制',
  `time` int(10) NOT NULL DEFAULT 0 COMMENT '道具有效期0永久其余代表天',
  `in_bag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '能否放入背包:0否，1是',
  `show_give` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示赠送:0否，1是',
  `show_use` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示使用:0否，1是',
  `show_recycle` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示回收:0不显示，1显示',
  `use_repeat` tinyint(1) NOT NULL DEFAULT 0 COMMENT '能否重复使用:0不能，1能',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0' COMMENT '道具说明',
  `use_level` int(5) NOT NULL DEFAULT 0 COMMENT '使用vip等级',
  `give_level` int(5) NOT NULL DEFAULT 0 COMMENT '赠送vip等级',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '道具图片',
  `recycle_coins` decimal(10, 0) NOT NULL DEFAULT 0 COMMENT '回收价值',
  `value` decimal(10, 0) NOT NULL DEFAULT 1 COMMENT '金额(弃用，为了不影响相关功能，暂保留)',
  `special_pop` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '特殊属性',
  `operat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作用户',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pid`(`prop_id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '道具表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_real_time
-- ----------------------------
DROP TABLE IF EXISTS `data_real_time`;
CREATE TABLE `data_real_time`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当日日期',
  `add_day` int(10) NULL DEFAULT 0 COMMENT '今日新增',
  `add_yes` int(10) NULL DEFAULT 0 COMMENT '昨日新增',
  `add_week` int(10) NULL DEFAULT 0 COMMENT '上周新增',
  `active_day` int(10) NULL DEFAULT 0 COMMENT '今日活跃',
  `active_yes` int(10) NULL DEFAULT 0 COMMENT '昨日活跃',
  `active_week` int(10) NULL DEFAULT 0 COMMENT '上周活跃',
  `pay_totle_day` int(10) NULL DEFAULT 0 COMMENT '今日充值额度',
  `pay_totle_yes` int(10) NULL DEFAULT 0 COMMENT '昨日充值额度',
  `pay_totle_week` int(10) NULL DEFAULT 0 COMMENT '上周充值额度',
  `pay_count_day` int(10) NULL DEFAULT 0 COMMENT '今日充值人数',
  `pay_count_yes` int(10) NULL DEFAULT 0 COMMENT '昨日充值人数',
  `pay_count_week` int(10) NULL DEFAULT 0 COMMENT '上周充值人数',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 248 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实时数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_seven_sign_awrad
-- ----------------------------
DROP TABLE IF EXISTS `data_seven_sign_awrad`;
CREATE TABLE `data_seven_sign_awrad`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `day_1` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第一天签到人数',
  `day_2` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第二天签到人数',
  `day_3` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第三天签到人数',
  `day_4` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第四天签到人数',
  `day_5` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第五天签到人数',
  `day_6` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第六天签到人数',
  `day_7` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第七天签到人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新人福利（新人七天任务）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_table_bonuses
-- ----------------------------
DROP TABLE IF EXISTS `data_table_bonuses`;
CREATE TABLE `data_table_bonuses`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `data_list` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据列表',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_date`(`date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '牌场红包相关' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_teacher_bonu_details
-- ----------------------------
DROP TABLE IF EXISTS `data_teacher_bonu_details`;
CREATE TABLE `data_teacher_bonu_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '师傅id',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型 1徒弟 2下级师傅',
  `incomes_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '收益类型 1金币2红包劵3师徒积分',
  `sub_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '产生流水者师傅/徒弟游戏id',
  `incomes` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收益值',
  `create_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收益时间',
  `bonus_desc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收益备注',
  `product_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自定义类型: grade 段位升级收益 vip vip升级收益 register 注册收益',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id`) USING BTREE,
  INDEX `inx_sub_id`(`sub_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '师傅收益详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_coins
-- ----------------------------
DROP TABLE IF EXISTS `data_user_coins`;
CREATE TABLE `data_user_coins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL DEFAULT 0 COMMENT '日期',
  `coins_sys_out` bigint(20) NOT NULL DEFAULT 0 COMMENT '产出',
  `coins_sys_in` bigint(20) NOT NULL DEFAULT 0 COMMENT '消耗',
  `coins_left` bigint(20) NOT NULL DEFAULT 0 COMMENT '差值',
  `coins_type` int(11) NOT NULL DEFAULT 0 COMMENT '货币类型',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date_idx`(`date`, `coins_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '每日金流统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_coins_date
-- ----------------------------
DROP TABLE IF EXISTS `data_user_coins_date`;
CREATE TABLE `data_user_coins_date`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0,
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date_at` date NOT NULL DEFAULT '0000-00-00',
  `type` mediumint(9) NOT NULL DEFAULT 0,
  `value` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户每天的top数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_grade
-- ----------------------------
DROP TABLE IF EXISTS `data_user_grade`;
CREATE TABLE `data_user_grade`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `grade_2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '青铜',
  `grade_3` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '白银',
  `grade_4` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '黄金',
  `grade_5` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '铂金',
  `grade_6` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '钻石',
  `grade_7` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '王者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '段位每日奖励表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_head
-- ----------------------------
DROP TABLE IF EXISTS `data_user_head`;
CREATE TABLE `data_user_head`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `head_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '头像地址',
  `o_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注信息',
  `o_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 0审核中 1已拒绝 2已通过',
  `op_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '操作人',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for data_user_pay
-- ----------------------------
DROP TABLE IF EXISTS `data_user_pay`;
CREATE TABLE `data_user_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `vip_level` tinyint(2) NOT NULL DEFAULT 0 COMMENT 'vip等级',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `num` int(11) NOT NULL DEFAULT 0 COMMENT '人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值分布' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_pay_active
-- ----------------------------
DROP TABLE IF EXISTS `data_user_pay_active`;
CREATE TABLE `data_user_pay_active`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `num` int(11) NOT NULL DEFAULT 0 COMMENT '活跃人数',
  `notPay` int(11) NOT NULL DEFAULT 0 COMMENT '未付费人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_play_record
-- ----------------------------
DROP TABLE IF EXISTS `data_user_play_record`;
CREATE TABLE `data_user_play_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '时间',
  `game_type` smallint(3) NOT NULL DEFAULT 3 COMMENT '游戏类型  3为匹配场',
  `table_type` smallint(7) NOT NULL DEFAULT 0 COMMENT '比赛场为赛事id   匹配场为场次id',
  `user_num` int(11) NOT NULL DEFAULT 0 COMMENT '比赛人数',
  `play_num` int(11) NOT NULL DEFAULT 0 COMMENT '玩牌局数',
  `consume` int(11) NOT NULL DEFAULT 0 COMMENT '报名消耗',
  `lost` int(11) NOT NULL DEFAULT 0 COMMENT '输局数',
  `win` int(11) NOT NULL DEFAULT 0 COMMENT '赢局数',
  `award` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '赛事发放的奖励 匹配则为金币流水',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '牌局统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_reserved
-- ----------------------------
DROP TABLE IF EXISTS `data_user_reserved`;
CREATE TABLE `data_user_reserved`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当日日期',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '注册渠道',
  `add_count` int(10) NOT NULL DEFAULT 0 COMMENT '当日新增人数',
  `uid_all` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '当日人数详情',
  `reserved_1` int(10) NOT NULL DEFAULT 0 COMMENT '次日存留',
  `reserved_3` int(10) NOT NULL DEFAULT 0 COMMENT '三日存留',
  `reserved_4` int(10) NOT NULL DEFAULT 0 COMMENT '四日存留',
  `reserved_5` int(10) NOT NULL DEFAULT 0 COMMENT '五日存留',
  `reserved_6` int(10) NOT NULL DEFAULT 0 COMMENT '六日存留',
  `reserved_7` int(10) NOT NULL DEFAULT 0 COMMENT '七日存留',
  `reserved_15` int(10) NOT NULL DEFAULT 0 COMMENT '十五日存留',
  `reserved_30` int(10) NOT NULL DEFAULT 0 COMMENT '三十日存留',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户留存报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user_vip_active
-- ----------------------------
DROP TABLE IF EXISTS `data_user_vip_active`;
CREATE TABLE `data_user_vip_active`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `vip_level` tinyint(2) NOT NULL DEFAULT 0 COMMENT 'vip等级',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `num` int(11) NOT NULL DEFAULT 0 COMMENT '活跃人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_version
-- ----------------------------
DROP TABLE IF EXISTS `data_version`;
CREATE TABLE `data_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本号，如1.1.1',
  `update_type` tinyint(4) NULL DEFAULT NULL COMMENT '更新类型，0为apk更新，1为热更',
  `game_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏编号，对应客户端文件夹',
  `is_public` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否公开 0、内部ip更新。1、所有人更新。',
  `ver_int` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数字化版本号',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `is_force` tinyint(4) NULL DEFAULT NULL COMMENT '是否强更',
  `allow_channel` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '允许更新渠道',
  `deny_channel` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不允许更新渠道',
  `allow_version` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '允许更新版本',
  `deny_version` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不允许更新版本',
  `modified_time` datetime(0) NULL DEFAULT NULL COMMENT '后台修改时间',
  `game_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '游戏信息',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '更新说明（apk更新才有）',
  `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新包大小',
  `release_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源更新时间',
  `apk_update_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源包地址',
  `platform` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '1安卓，2ios，3window',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1启用，2禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 385 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_vip
-- ----------------------------
DROP TABLE IF EXISTS `data_vip`;
CREATE TABLE `data_vip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(10) NOT NULL DEFAULT 0 COMMENT '日期',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `new_num` int(11) NOT NULL DEFAULT 0 COMMENT 'vip新增人数',
  `login_num` int(11) NOT NULL DEFAULT 0 COMMENT 'vip登陆人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for date_data
-- ----------------------------
DROP TABLE IF EXISTS `date_data`;
CREATE TABLE `date_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `at_date_time` date NOT NULL,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平台',
  `userType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1正式玩家，2游客玩家',
  `player_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1新用户，2老用户',
  `dnu` int(11) NOT NULL DEFAULT 0 COMMENT '新增人数',
  `dau` int(11) NOT NULL DEFAULT 0 COMMENT '登陆人数',
  `pu` int(11) NOT NULL DEFAULT 0 COMMENT '游戏人数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `at_date_time`(`at_date_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5337 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '玩家每天数据统计的' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for date_ltv_data
-- ----------------------------
DROP TABLE IF EXISTS `date_ltv_data`;
CREATE TABLE `date_ltv_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `at_date_time` date NOT NULL COMMENT '玩家注册时间',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '渠道',
  `platform` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平台',
  `userType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否正式玩家1正式，2游客',
  `player_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否老玩家1新玩家2老玩家',
  `vip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'vip级别',
  `total_range` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '订单金额等级',
  `at_date` date NOT NULL COMMENT '付款时间',
  `days` int(11) NOT NULL DEFAULT 0 COMMENT '时间差值',
  `ltv_sum` int(11) NOT NULL DEFAULT 0 COMMENT '付费总额',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `at_date_time`(`at_date_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 299 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '付款中间信息' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for date_pay_data
-- ----------------------------
DROP TABLE IF EXISTS `date_pay_data`;
CREATE TABLE `date_pay_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `at_date_time` date NOT NULL COMMENT '玩家注册时间',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '渠道',
  `platform` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平台',
  `userType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否正式玩家1正式，2游客',
  `player_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否老玩家1新玩家2老玩家',
  `vip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'vip级别',
  `total_range` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单金额等级',
  `apu` int(11) NOT NULL DEFAULT 0 COMMENT '付费人数',
  `pt` int(11) NOT NULL DEFAULT 0 COMMENT '付费总额',
  `pa` int(11) NOT NULL DEFAULT 0 COMMENT '付费笔数',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2902 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '付款中间信息' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for date_retention_data
-- ----------------------------
DROP TABLE IF EXISTS `date_retention_data`;
CREATE TABLE `date_retention_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `at_date_time` date NOT NULL COMMENT '玩家注册时间',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0 COMMENT '天数差',
  `at_date` date NOT NULL COMMENT '登陆时间',
  `retention` int(11) NOT NULL DEFAULT 0 COMMENT '登陆人数',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `at_date_time`(`at_date_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1773 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留存中间信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ddz_pass_cfg
-- ----------------------------
DROP TABLE IF EXISTS `ddz_pass_cfg`;
CREATE TABLE `ddz_pass_cfg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL DEFAULT 0,
  `play_way` int(11) NOT NULL DEFAULT 0 COMMENT '游戏玩法',
  `hard_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\'\'' COMMENT '关卡名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\'\'' COMMENT '关卡图标',
  `sign_cost_item_id` int(11) NOT NULL DEFAULT 0 COMMENT '关卡报名费',
  `sign_cost_item_count` int(11) NOT NULL DEFAULT 0 COMMENT '关卡报名费',
  `divite_rate_system_rate` int(11) NOT NULL DEFAULT 0 COMMENT '报名费流向',
  `divite_rate_award_rate` int(11) NOT NULL DEFAULT 0 COMMENT '报名费流向',
  `divite_rate_fee_rate` int(11) NOT NULL DEFAULT 0 COMMENT '报名费流向',
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '斗地主闯关设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `adcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '行政编码',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `center` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '经纬度',
  `level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '级别',
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dzz_pass_room_cfg
-- ----------------------------
DROP TABLE IF EXISTS `dzz_pass_room_cfg`;
CREATE TABLE `dzz_pass_room_cfg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddz_pass_cfg_id` int(11) NOT NULL DEFAULT 0 COMMENT '哪一个关卡',
  `number` int(11) NOT NULL DEFAULT 0 COMMENT '第几关',
  `hard_score` int(11) NOT NULL DEFAULT 0 COMMENT '关卡积分奖励',
  `total_award` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关卡道具奖励',
  `play_award` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关卡局数奖励',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '斗地主闯关的关数配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` tinyint(1) NOT NULL COMMENT '类别(1:推荐,2:金币,3:钻石,4:道具,10:一元首充礼包,11:至尊专享礼包)',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `pay_type` int(1) NOT NULL DEFAULT 1 COMMENT '支付类型（100:人民币,101:钻石,102:金币,103:红包,104:兑换券,105:师徒积分',
  `value` int(10) NOT NULL DEFAULT 0 COMMENT '支付需要消耗的值',
  `get_award` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '获得道具',
  `give_award` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '赠送道具',
  `pochan_table_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '破产礼包针对的场次ID，601-605',
  `is_recommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐  1是 - 0否',
  `is_discount` tinyint(1) NOT NULL DEFAULT 0 COMMENT '特惠商品  1是 - 0否',
  `vip` int(10) NOT NULL DEFAULT 0 COMMENT 'vip限制，小于此设置不能购买',
  `mark_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品角标1显示0不显示',
  `mark_content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品角标内容',
  `limited` int(10) NOT NULL DEFAULT 0 COMMENT '限购类型0不限购，1234对应，每天每周每月永久',
  `limited_num` int(10) NOT NULL DEFAULT 0 COMMENT '限购次数',
  `goods_num` int(10) NOT NULL DEFAULT 0 COMMENT '库存数量',
  `start_time` int(10) NOT NULL DEFAULT 0 COMMENT '售卖时间',
  `end_time` int(10) NOT NULL DEFAULT 0 COMMENT '售卖时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态- 是否上线 1显示 0不显示',
  `sort` int(3) NOT NULL DEFAULT 10 COMMENT '排序',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '苹果商店ID',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品介绍',
  `create_time` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '修改时间',
  `op_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作用户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for icons
-- ----------------------------
DROP TABLE IF EXISTS `icons`;
CREATE TABLE `icons`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unicode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'unicode 字符',
  `class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类名',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log_operate
-- ----------------------------
DROP TABLE IF EXISTS `log_operate`;
CREATE TABLE `log_operate`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT 0 COMMENT '用户id',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求方法',
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求路径',
  `params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求参数',
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'ip',
  `created_at` int(11) NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107553 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `remember_token` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '记住我',
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '消息内容',
  `read` int(11) NOT NULL DEFAULT 1 COMMENT '1-未读，2-已读',
  `send_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '消息发送者UUID，1表示系统发送',
  `accept_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息接收者UUID',
  `flag` int(11) NOT NULL COMMENT '消息对应关系：12-系统推送给后台，13-系统推送给前台,22-后台推送给后台，23-后台推送给前台，32-前台推送给后台，33-前台推送给前台，',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '路由名称',
  `icon_id` int(11) NULL DEFAULT NULL COMMENT '图标ID',
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 576 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for positions
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置名称',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_activity_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_activity_list`;
CREATE TABLE `sys_activity_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `act_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动名称',
  `act_type` int(11) NOT NULL DEFAULT 0 COMMENT '活动类型',
  `position` int(10) NOT NULL DEFAULT 1 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '活动状态 0待上线 1生效中',
  `act_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动配置',
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '活动开始时间',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT '活动结束时间',
  `auth` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作者',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值活动配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_black_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_black_list`;
CREATE TABLE `sys_black_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '黑名单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '黑名单ip' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_broadcast
-- ----------------------------
DROP TABLE IF EXISTS `sys_broadcast`;
CREATE TABLE `sys_broadcast`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `mid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广播ID',
  `type` smallint(4) UNSIGNED NOT NULL DEFAULT 2 COMMENT '类型 1 周福利广播 2其它',
  `broad_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '场次id',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '信息',
  `exit_time` smallint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广播保留时间',
  `time_range_min` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '生成的时间范围  {600,1200}',
  `time_range_max` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '生成的时间范围  {600,1200}',
  `data_list` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '触发金额 或名次',
  `interval` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间间隔',
  `is_need_fake` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否需要生成假数据 0否 1是',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统广播配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_card
-- ----------------------------
DROP TABLE IF EXISTS `sys_card`;
CREATE TABLE `sys_card`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rule` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'rule_planA:A发牌方式,rule_planB:B发牌方式,rule_planC:C发牌方式',
  `cards_id` int(11) NOT NULL DEFAULT 1 COMMENT '牌库id',
  `is_open` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1开启，0关闭',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '牌库名字',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '牌库描述',
  `player_handle_count` int(11) NOT NULL DEFAULT 0 COMMENT '所有玩家的最大手数',
  `min_boom_count` int(11) NOT NULL DEFAULT 0 COMMENT '最小炸弹数',
  `max_boom_count` int(11) NOT NULL DEFAULT 0 COMMENT '最大炸弹数',
  `playerA_card_count` int(11) NOT NULL DEFAULT 0 COMMENT '第一副牌张数',
  `playerB_card_count` int(11) NOT NULL DEFAULT 0 COMMENT '第二副牌张数',
  `playerC_card_count` int(11) NOT NULL DEFAULT 0 COMMENT '第三副牌张数',
  `type_rate` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '牌型概率配置',
  `send_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1待发送，2已发送',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cards_id`(`cards_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '牌库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_channel
-- ----------------------------
DROP TABLE IF EXISTS `sys_channel`;
CREATE TABLE `sys_channel`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `channel_id` int(10) NOT NULL DEFAULT 0 COMMENT '渠道ID',
  `is_open` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1开启，0关闭',
  `hit_rate` float(5, 2) NOT NULL DEFAULT 0.00 COMMENT '渠道命中概率系数(百分比)',
  `personal_stock_rate` float(5, 2) NOT NULL DEFAULT 0.00 COMMENT '个人库存净分比例(百分比)',
  `red_packet_value` int(10) NOT NULL DEFAULT 0 COMMENT '奖券价值',
  `switch` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '功能开关',
  `created_at` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) NULL DEFAULT NULL COMMENT '修改时间',
  `op_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作用户',
  `agent_recharge` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '充值控制: key=>value:日期:参数 (recharge:字典) ',
  `agent_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '代理账户密码',
  `agent_account` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道用户',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `channel_id`(`channel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '渠道配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_channel_hall
-- ----------------------------
DROP TABLE IF EXISTS `sys_channel_hall`;
CREATE TABLE `sys_channel_hall`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) NOT NULL DEFAULT 0 COMMENT '主功能',
  `sub_type` int(10) NOT NULL DEFAULT 0 COMMENT '子功能',
  `third_type` int(10) NOT NULL DEFAULT 0 COMMENT '第三子功能',
  `channel` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '大厅渠道黑名单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_chat_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `sys_chat_blacklist`;
CREATE TABLE `sys_chat_blacklist`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '玩家昵称',
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '玩家ID',
  `state` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态  1启用 2禁用',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天系统黑名单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_competition
-- ----------------------------
DROP TABLE IF EXISTS `sys_competition`;
CREATE TABLE `sys_competition`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '赛事名称',
  `position` mediumint(6) UNSIGNED NOT NULL DEFAULT 0 COMMENT '位置',
  `is_open` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 1启用 0禁用',
  `game_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1夺金赛 2大奖赛',
  `is_identity` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否身份制 0否 1是',
  `is_allow_jipaiqi` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可使用记牌器 0否 1是',
  `icon_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'URL地址',
  `table_type` mediumint(8) UNSIGNED NOT NULL DEFAULT 700 COMMENT '比赛桌子类型 700斗地主',
  `begin_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '开始类型 1人满赛 2定时赛',
  `num_game_cnf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '人满赛配置 enter_num介入人数  enter_time 介入时间',
  `time_game_cnf` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '定时赛配置',
  `game_time` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '游戏时长(分钟)',
  `player_num_max` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '赛事人数限制',
  `through_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1打立出局制 2定局积分制',
  `init_base_score` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '初始积分',
  `score_add_interval` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '--10分钟加xx积分 跟下面的字段一起用',
  `score_add_value` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'xx分钟加10积分',
  `round_conf` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮数配置 --up_num晋级人数 --携带分数比率 --该轮打多少局',
  `item_cost` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报名消耗物品 --item_id 物品id,item_num 物品数量 icon 图片url',
  `award_list` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖励列表 rank_min 排行下限 rank_max排行上限 item_id物品id item_num 物品数量 desc描述',
  `score_list` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '积分列表',
  `extend` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '扩展字段位,用json写进此字段',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '比赛配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_competition_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_competition_rule`;
CREATE TABLE `sys_competition_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '模板类型 1打立出局 2定居积分',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则内容',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '赛事规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `sys_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单条配置键名',
  `sys_val` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单条配置值（JSON格式）',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uk_sys_key`(`sys_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务端配置表（单条）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_control
-- ----------------------------
DROP TABLE IF EXISTS `sys_control`;
CREATE TABLE `sys_control`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所属渠道',
  `rate` int(11) NOT NULL DEFAULT 0 COMMENT '命中率ps:90%,这里存的是90',
  `coins` int(11) NOT NULL DEFAULT 0 COMMENT '生效金币数',
  `minutes` int(11) NOT NULL DEFAULT 0 COMMENT '控制时间(分)',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '点控系统参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_drop_bomb
-- ----------------------------
DROP TABLE IF EXISTS `sys_drop_bomb`;
CREATE TABLE `sys_drop_bomb`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prop_id` int(11) NOT NULL DEFAULT 0 COMMENT '道具ID',
  `is_open` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1开启，0关闭',
  `table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '掉落场次',
  `power_limit` int(11) NOT NULL DEFAULT 0 COMMENT '最低触发掉落倍数',
  `max_fish_score` int(11) NOT NULL DEFAULT 0 COMMENT '可击杀鱼群最高倍数',
  `extra_value_min` int(11) NOT NULL DEFAULT 0 COMMENT '附带价值区间最小值(百分比)',
  `extra_value_max` int(11) NOT NULL DEFAULT 0 COMMENT '附带价值区间最大值(百分比)',
  `fish_score_limit` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '掉落概率配置',
  `stock_coefficient` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '库存控制系数',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `prop_id`(`prop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '弹头掉率配置列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_exchangegoods
-- ----------------------------
DROP TABLE IF EXISTS `sys_exchangegoods`;
CREATE TABLE `sys_exchangegoods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `cate_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品类别',
  `cate_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品类别的code',
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `sale_cost` int(11) NOT NULL DEFAULT 0 COMMENT '商品价格',
  `auto_send` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否自动发货',
  `need_info` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否需要信息',
  `position` int(11) NOT NULL DEFAULT 0 COMMENT '位置排序',
  `level_vip` int(11) NOT NULL DEFAULT 0 COMMENT '显示VIP等级',
  `cost` int(11) NOT NULL DEFAULT 0 COMMENT '成本',
  `recharge_cate_id` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟卡类别ID',
  `recharge_cate_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '虚拟卡类别code',
  `recharge_cate_val_id` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟卡金额ID',
  `recharge_cate_val` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟卡金额值',
  `is_online` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否上架',
  `is_stock_control` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否库存控制',
  `sales` int(11) NOT NULL DEFAULT 0 COMMENT '销量',
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT '道具ID',
  `package_number` int(11) NOT NULL DEFAULT 0 COMMENT '道具数量',
  `extension` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展数据',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兑换商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_exchangegoods_categories
-- ----------------------------
DROP TABLE IF EXISTS `sys_exchangegoods_categories`;
CREATE TABLE `sys_exchangegoods_categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NULL DEFAULT NULL COMMENT '商品类别编号',
  `cate` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品列表名称',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兑换商品类别' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_exchangegoods_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_exchangegoods_order`;
CREATE TABLE `sys_exchangegoods_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '玩家ID',
  `cate_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品类型ID',
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `player_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '玩家昵称',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货地址',
  `sale_cost` int(11) NOT NULL DEFAULT 0 COMMENT '出售价格',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '处理状态,0初始状态，1待发货，9拒绝，10已发货',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `ip` int(11) NOT NULL DEFAULT 0 COMMENT 'ip',
  `platform` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '平台',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `handle_time` int(11) NOT NULL DEFAULT 0 COMMENT '处理时间',
  `refuse_reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '拒绝理由',
  `logistics_company` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物流公司',
  `logistics_number` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物流单号',
  `vcard_id` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟卡ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_cate_id`(`cate_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1831 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '兑换订单记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_exchangegoods_order_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_exchangegoods_order_log`;
CREATE TABLE `sys_exchangegoods_order_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '订单玩家ID',
  `order_id` int(11) NOT NULL DEFAULT 0 COMMENT '订单ID',
  `change_type` int(11) NOT NULL DEFAULT 0 COMMENT '操作类型',
  `old` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单表数据旧值',
  `new` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单表数据新值',
  `diff` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '新旧数据差异',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作内容描述说明',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5983 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单处理日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_exchangegoods_virtual_card_categories
-- ----------------------------
DROP TABLE IF EXISTS `sys_exchangegoods_virtual_card_categories`;
CREATE TABLE `sys_exchangegoods_virtual_card_categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT 0 COMMENT '类别ID',
  `code` int(11) NOT NULL DEFAULT 0 COMMENT '编号',
  `cate` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '虚拟卡类别名称',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兑换商品的虚拟卡类别' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_exchangegoods_virtual_card_passwd
-- ----------------------------
DROP TABLE IF EXISTS `sys_exchangegoods_virtual_card_passwd`;
CREATE TABLE `sys_exchangegoods_virtual_card_passwd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recharge_cate_id` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟卡类型ID',
  `recharge_cate_val_id` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟卡金额ID',
  `card_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '卡号',
  `card_passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '编号',
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '兑换状态',
  `player_id` int(11) NOT NULL DEFAULT 0 COMMENT '兑换的玩家ID',
  `player_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '兑换的玩家名称',
  `send_time` int(11) NOT NULL DEFAULT 0 COMMENT '兑换时间',
  `order_id` int(11) NOT NULL DEFAULT 0 COMMENT '兑换关联的订单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1211 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '虚拟卡的卡号和密码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_exchangegoods_virtual_card_value
-- ----------------------------
DROP TABLE IF EXISTS `sys_exchangegoods_virtual_card_value`;
CREATE TABLE `sys_exchangegoods_virtual_card_value`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟卡类别ID',
  `code` int(11) NOT NULL DEFAULT 0 COMMENT '金额编号',
  `value` int(11) NOT NULL DEFAULT 0 COMMENT '金额的值',
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兑换商品虚拟卡的金额' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_extra_guns
-- ----------------------------
DROP TABLE IF EXISTS `sys_extra_guns`;
CREATE TABLE `sys_extra_guns`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `extra_guns_id` int(11) NOT NULL DEFAULT 0 COMMENT '副炮等级',
  `is_open` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1开启，0关闭',
  `rate` int(11) NOT NULL DEFAULT 0 COMMENT '触发概率(万分比)',
  `fish` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '可击杀鱼id',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `extra_guns_id`(`extra_guns_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '副炮配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_game_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_game_notice`;
CREATE TABLE `sys_game_notice`  (
  `AnnouncementId` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Tag` tinyint(1) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ImageUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `StartTime` datetime(0) NOT NULL,
  `EndTime` datetime(0) NOT NULL,
  `Action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ActionType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '点击触发类型，0为没有效果，1为网页链接，2为app跳转',
  `Sort` int(11) NULL DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '有效状态，0为展示，1为隐藏',
  `Type` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '公告类型: 1 普通公告 2停服公告',
  `CreateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`AnnouncementId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_hall_game
-- ----------------------------
DROP TABLE IF EXISTS `sys_hall_game`;
CREATE TABLE `sys_hall_game`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `game` tinyint(1) NOT NULL DEFAULT 0 COMMENT '游戏id',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '大厅游戏黑名单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '信息',
  `interval` smallint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间间隔',
  `is_circul` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否循环 1是 0否',
  `play_start_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '播放开始时间',
  `play_end_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '播放结束时间',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_pay_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_pay_code`;
CREATE TABLE `sys_pay_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '测试支付所用code',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 未使用 1已使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试支付所用code' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_pay_config`;
CREATE TABLE `sys_pay_config`  (
  `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pay_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '第三方支付名称',
  `pay_way` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付方式（支付方下的产品类型）',
  `pay_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '支付类型   0 微信 1 支付宝',
  `package_way` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道包',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：0不生效 1生效',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `is_recommend` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐 0否 1是',
  `sort` mediumint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k_channel`(`package_way`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1每日任务2新手任务',
  `task_id` int(11) NOT NULL COMMENT '任务id',
  `is_open` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1开启，0关闭',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务标题',
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务描述',
  `task_type` int(11) NOT NULL COMMENT '任务类型',
  `game_type` int(11) NOT NULL COMMENT '游戏类型',
  `task_level` int(11) NOT NULL COMMENT '任务级别',
  `process` int(11) NOT NULL COMMENT '任务进度',
  `jump_position` int(11) NOT NULL DEFAULT 0 COMMENT '跳转位置',
  `activeness_value` int(11) NOT NULL DEFAULT 0 COMMENT '活跃值',
  `share_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '分享任务的图片',
  `share_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '分享任务的链接',
  `share_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '分享任务的内容',
  `award_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务奖励',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_teacher_adverts
-- ----------------------------
DROP TABLE IF EXISTS `sys_teacher_adverts`;
CREATE TABLE `sys_teacher_adverts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `sort` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '编号',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '师徒轮播图列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_vip
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip`;
CREATE TABLE `sys_vip`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `level` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'VIP等级',
  `charge_coins` mediumint(9) UNSIGNED NOT NULL DEFAULT 0 COMMENT '充值金额(单位是分)',
  `login_word` tinyint(2) NOT NULL DEFAULT 1 COMMENT '是否开启登陆提示',
  `enter_word` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否开启进场提示',
  `store_award` float NOT NULL DEFAULT 0 COMMENT '充值个人库存赠送百分比',
  `award_coins` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商城购买金币额外赠送',
  `award_jewel` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商城购买钻石额外赠送',
  `bankrupt_coins` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '破产奖励金额',
  `bankrupt_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '破产奖励次数',
  `sign_rate` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '破产奖励倍数',
  `icon_border_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像框url',
  `privilege` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '特权',
  `copy_power_level` int(10) NOT NULL DEFAULT 0 COMMENT '副炮等级',
  `auto_fire` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否自动开火',
  `daily_pieces` int(10) NOT NULL DEFAULT 0 COMMENT '每日碎片数量',
  `super_call` int(10) NOT NULL DEFAULT 0 COMMENT '每日超级召唤',
  `packet_exchange_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包兑换次数',
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 0下线 1上线',
  `item` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '赠送道具',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'VIP配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_vip_avatar
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip_avatar`;
CREATE TABLE `sys_vip_avatar`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `avator_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '头像框id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像框名称',
  `time_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '头像框期限类型 1永久 2实时',
  `use_time` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用小时',
  `condition` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '解锁条件',
  `icon_border_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像框url',
  `sort` mediumint(8) NOT NULL DEFAULT 0 COMMENT '排序',
  `is_top` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '置顶 0否 1是',
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 上下线 0下线 1上线',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'VIP头像框配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_vip_robot
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip_robot`;
CREATE TABLE `sys_vip_robot`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `min_coins` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '携带金币 小',
  `max_coins` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '携带金币 大',
  `vip_rate` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'vip 权重',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'VIP机器人配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '信息',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'test' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tracking_players
-- ----------------------------
DROP TABLE IF EXISTS `tracking_players`;
CREATE TABLE `tracking_players`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `start_tracking_time` int(11) NOT NULL DEFAULT 0 COMMENT '开始追踪时间',
  `end_tracking_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '追踪结束时间',
  `tracking_time` int(11) UNSIGNED NOT NULL DEFAULT 24 COMMENT '追踪时长 最高24小时',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT 2 COMMENT '状态: 1 追踪 2 停止追踪',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户追踪列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `global_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '全局ID 注册类型+唯一标示组成',
  `user_type` tinyint(2) UNSIGNED NOT NULL DEFAULT 2 COMMENT '用户类型  2游客 1正式用户',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '性别 0女 1男 2保密',
  `reg_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '授权类型 wx phone visitor 等等',
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '唯一标识（手机号、邮箱、用户名、open_id）',
  `official_identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '公众号的唯一标识(openid)',
  `credential` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '凭证（密码、access_token）',
  `ex_params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扩展参数',
  `inviter_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邀请码',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态 1激活 2未激活 3锁定|被封',
  `register_ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '注册IP',
  `register_way` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '注册来源 安卓:android 苹果:ios 模拟器:win 网页：web',
  `bind_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '绑定手机号',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2811 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `updated_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '玩家的收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_black_list
-- ----------------------------
DROP TABLE IF EXISTS `user_black_list`;
CREATE TABLE `user_black_list`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '玩家uid',
  `nick_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '玩家昵称',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态：1禁用 0正常',
  `remark` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `created_at` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '白名单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_c2
-- ----------------------------
DROP TABLE IF EXISTS `user_c2`;
CREATE TABLE `user_c2`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `global_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '全局ID 注册类型+唯一标示组成',
  `user_type` tinyint(2) UNSIGNED NOT NULL DEFAULT 2 COMMENT '用户类型  2游客 1正式用户',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '性别 0女 1男 2保密',
  `reg_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '授权类型 wx phone visitor 等等',
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '唯一标识（手机号、邮箱、用户名、open_id）',
  `official_identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '公众号的唯一标识(openid)',
  `credential` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '凭证（密码、access_token）',
  `ex_params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扩展参数',
  `inviter_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邀请码',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态 1激活 2未激活 3锁定|被封',
  `register_ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '注册IP',
  `register_way` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '注册来源 安卓:android 苹果:ios 模拟器:win 网页：web',
  `register_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册时间',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_channel_switch
-- ----------------------------
DROP TABLE IF EXISTS `user_channel_switch`;
CREATE TABLE `user_channel_switch`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '玩家Uid',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `old_channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '原所属渠道',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所属渠道',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '玩家渠道切换表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_customer
-- ----------------------------
DROP TABLE IF EXISTS `user_customer`;
CREATE TABLE `user_customer`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `msg` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户发送过来的信息',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '回复状态,0为未回复,1为已回复',
  `reply` int(11) NOT NULL DEFAULT 0 COMMENT '客服id',
  `created_at` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_data_all
-- ----------------------------
DROP TABLE IF EXISTS `user_data_all`;
CREATE TABLE `user_data_all`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_at` date NOT NULL,
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'all',
  `dau` int(11) NOT NULL DEFAULT 0 COMMENT 'dau',
  `dnu` int(11) NOT NULL DEFAULT 0 COMMENT '新增',
  `dnu_2` int(11) NOT NULL DEFAULT 0 COMMENT '正式账号',
  `dnu_1` int(11) NOT NULL DEFAULT 0 COMMENT '游客账号',
  `dnu_android` int(11) NOT NULL DEFAULT 0 COMMENT '安卓注册',
  `dnu_ios` int(11) NOT NULL DEFAULT 0 COMMENT 'ios注册',
  `play` int(11) NOT NULL DEFAULT 0 COMMENT '游戏人数',
  `dnu_pay` int(11) NOT NULL DEFAULT 0 COMMENT '新增付费人数',
  `vip` int(11) NOT NULL DEFAULT 0 COMMENT 'vip用户',
  `new_vip` int(11) NOT NULL DEFAULT 0 COMMENT '新增vip',
  `bankrupt` int(11) NOT NULL DEFAULT 0 COMMENT '破产人数',
  `bankrupt_rate` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '破产率',
  `lose` int(11) NOT NULL DEFAULT 0 COMMENT '流失人数',
  `lose_1` int(11) NOT NULL DEFAULT 0 COMMENT '流失普通用户人数',
  `old_pay` int(11) NOT NULL DEFAULT 0 COMMENT '老用户付费人数',
  `lose_2` int(11) NOT NULL DEFAULT 0 COMMENT '流失付费用户人数',
  `old_pay_rate` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '老用户付费率',
  `new_pay_rate` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '新用户付费率',
  `arpu` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'arpu',
  `arppu` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'arppu',
  `keep1` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '次日留存',
  `keep3` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '3日留存',
  `keep7` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '7日留存',
  `lose_rate` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '流失率',
  `ltv15` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'ltv15',
  `pay_count` int(11) NOT NULL DEFAULT 0 COMMENT '付款人数',
  `pay_total` int(11) NOT NULL DEFAULT 0 COMMENT '付款金额',
  `pay_total_old` int(11) NOT NULL DEFAULT 0 COMMENT '老玩家充值总额',
  `pay_total_new` int(11) NOT NULL DEFAULT 0 COMMENT '新玩家充值总额',
  `pay` int(11) NOT NULL DEFAULT 0 COMMENT '充值笔数',
  `pay_rate` decimal(10, 4) NOT NULL DEFAULT 0.0000 COMMENT '付费率',
  `pay_old` int(11) NOT NULL DEFAULT 0 COMMENT '老玩家充值笔数',
  `pay_new` int(11) NOT NULL DEFAULT 0 COMMENT '新玩家充值笔数',
  `dau_old` int(11) NOT NULL DEFAULT 0 COMMENT '老用户DAU',
  `dau_new` int(11) NOT NULL DEFAULT 0 COMMENT '新用户DAU',
  `dau_1` int(11) NOT NULL DEFAULT 0 COMMENT '正式账号DAU',
  `dau_2` int(11) NOT NULL DEFAULT 0 COMMENT '游客账号DAU',
  `dau_android` int(11) NOT NULL DEFAULT 0 COMMENT 'android平台的dau',
  `dau_ios` int(11) NOT NULL DEFAULT 0 COMMENT 'ios平台的dau',
  `pay_range` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '付费分级别人数',
  `pay_range_new` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新增付费级别人数',
  `vip_range` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'vip分级别人数',
  `vip_new_range` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新增vip分级别人数',
  `bankrupt_1` int(11) NOT NULL DEFAULT 0 COMMENT '新用户破产人数',
  `bankrupt_2` int(11) NOT NULL DEFAULT 0 COMMENT '付费用户破产人数',
  `bankrupt_3` int(11) NOT NULL DEFAULT 0 COMMENT '破产后领取补助人数',
  `bankrupt_4` int(11) NOT NULL DEFAULT 0 COMMENT '破产后充值人数',
  `bankrupt_5` int(11) NOT NULL DEFAULT 0 COMMENT '破产后退出人数',
  `updated_at` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_date_channel`(`date_at`, `channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9365 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '玩家的统计数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_email
-- ----------------------------
DROP TABLE IF EXISTS `user_email`;
CREATE TABLE `user_email`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮件标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮件内容',
  `mail_type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '邮件类型 1：全服,2：指定玩家',
  `range` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当mail_type为2时,uid的集合，以“,”隔开,如:\"7777,8888\"',
  `attach_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖励列表,只能发放道具存储结构为：[{\"id\":1001,\"count\":100},{\"id\":1002,\"count\":200}]',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '发送状态， 1 已发送 2 发送失败',
  `created_at` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for user_exchange_log
-- ----------------------------
DROP TABLE IF EXISTS `user_exchange_log`;
CREATE TABLE `user_exchange_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '玩家ID',
  `goods_id` int(11) NOT NULL COMMENT '兑换商品ID',
  `type` int(10) NOT NULL DEFAULT 0 COMMENT '类别(1:推荐,2:金币,3:钻石,4:道具,10:一元首充礼包,11:至尊专享礼包)',
  `get_award` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '获得道具',
  `give_award` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '赠送道具',
  `pay_type` int(11) NOT NULL COMMENT '兑换类型 100:人民币,101:钻石,102:金币,103:红包,104:兑换券,105:师徒积分',
  `value` int(11) UNSIGNED NOT NULL COMMENT '兑换需要消耗的值',
  `create_time` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2486 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户兑换流水表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_git_code
-- ----------------------------
DROP TABLE IF EXISTS `user_git_code`;
CREATE TABLE `user_git_code`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `git_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '礼包码',
  `git_nums` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '礼包数量',
  `key_nums` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'key数量',
  `user_nums` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '剩余数量(目前共享key使用)',
  `git_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '礼包类型: 1单人单key（生成多个key，一个key一个uid） 2共用单key（只有一个key，但是数量可以使用多次，一个key多个uid）',
  `git_status` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '礼包状态: 1生成 2使用 3使用完毕',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态: 1开启 2关闭',
  `git_item_list` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖励列表',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '礼包添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '礼包更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_git_code`(`git_code`) USING BTREE COMMENT '兑换码唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 1139 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '礼包码批次表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_git_code_detail
-- ----------------------------
DROP TABLE IF EXISTS `user_git_code_detail`;
CREATE TABLE `user_git_code_detail`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `git_code_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '礼包ID',
  `git_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '礼包码(单人单key)',
  `git_code_status` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态: 1未使用 2已经使用',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_git_code`(`git_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 155161 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '礼包码详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_git_code_log
-- ----------------------------
DROP TABLE IF EXISTS `user_git_code_log`;
CREATE TABLE `user_git_code_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `git_code_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '礼包码批次表',
  `git_code_detail_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '礼包码详情表id',
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用人ID',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '使用人IP',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '礼包码使用记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户UID',
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '玩家UID',
  `goods_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `amount` decimal(15, 2) UNSIGNED NOT NULL COMMENT '购买金额',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '道具数量',
  `goods_type` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品类型',
  `goods_id` int(10) UNSIGNED NOT NULL COMMENT '购买产品ID',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 1下单成功 2支付成功 3未支付 4支付失败 5已退款',
  `platform` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '平台',
  `channel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '渠道包名称',
  `pay_channel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '支付渠道 （微信、支付宝 等等）',
  `paid_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '实际到账时间',
  `order_sn` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `trans_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方(微信、apple、支付宝)订单号',
  `remind` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主动查询次数（计划任务）',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '客户端IP地址',
  `is_first` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否首冲 0否 1是',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `is_both` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否双倍 0为否 1为是',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_product`(`goods_id`) USING BTREE,
  INDEX `cdx_order`(`uid`, `goods_id`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5071 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_player
-- ----------------------------
DROP TABLE IF EXISTS `user_player`;
CREATE TABLE `user_player`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` int(11) NOT NULL DEFAULT 0 COMMENT '应用id',
  `platform` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用平台',
  `channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `guid` int(11) NOT NULL COMMENT '账号id',
  `uid` int(11) NOT NULL COMMENT '游戏角色id',
  `nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色昵称',
  `phone` int(11) NOT NULL DEFAULT 0 COMMENT '手机号',
  `sex` tinyint(2) NOT NULL DEFAULT 1 COMMENT '性别',
  `level` tinyint(3) NOT NULL DEFAULT 0 COMMENT '等级',
  `vip_level` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'vip等级',
  `client_version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '客户端版本',
  `device_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '设备id',
  `device_brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '设备品牌',
  `imei` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机设备号(原始未经过加密)',
  `ip` bigint(20) NOT NULL DEFAULT 0 COMMENT '注册ip',
  `last_login_ip` bigint(20) NOT NULL DEFAULT 0 COMMENT '最后登录ip',
  `coins` bigint(20) NOT NULL DEFAULT 0 COMMENT '当前金币',
  `gems` bigint(20) NOT NULL DEFAULT 0 COMMENT '当前钻石',
  `red_packet` bigint(20) NOT NULL DEFAULT 0 COMMENT '当前奖券',
  `pay_money` int(11) NOT NULL DEFAULT 0 COMMENT '充值金额',
  `exchangeMoney` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '兑换金额',
  `line_time_total` int(11) NOT NULL DEFAULT 0 COMMENT '在线时长',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新世界',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_uid`(`uid`) USING BTREE,
  UNIQUE INDEX `idx_guid`(`guid`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2769 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_player_account
-- ----------------------------
DROP TABLE IF EXISTS `user_player_account`;
CREATE TABLE `user_player_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '渠道',
  `uid` int(11) NOT NULL COMMENT '游戏角色id',
  `coins` bigint(20) NOT NULL DEFAULT 0 COMMENT '金币',
  `gems` bigint(20) NOT NULL DEFAULT 0 COMMENT '钻石',
  `red_packet` bigint(20) NOT NULL DEFAULT 0 COMMENT '红包卷',
  `mentor_score` bigint(20) NOT NULL DEFAULT 0 COMMENT '师徒积分',
  `pay_money` decimal(15, 2) NOT NULL DEFAULT 0.00 COMMENT '充值金额',
  `students_num` int(10) NOT NULL DEFAULT 0 COMMENT '徒弟人数',
  `total_amount` int(10) NOT NULL DEFAULT 0 COMMENT '兑换红包金额',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '更新世界',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uid`(`uid`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_property_c2
-- ----------------------------
DROP TABLE IF EXISTS `user_property_c2`;
CREATE TABLE `user_property_c2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `global_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户唯一id',
  `guid` int(11) NOT NULL DEFAULT 0 COMMENT '用户uid',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户uid',
  `coins` int(11) NOT NULL DEFAULT 0 COMMENT '当前金币',
  `gems` int(11) NOT NULL DEFAULT 0 COMMENT '当转钻石',
  `exchange_tickets` int(11) NOT NULL DEFAULT 0 COMMENT '兑换券',
  `red_exchange_tickets` int(11) NOT NULL DEFAULT 0 COMMENT '红包兑换卷',
  `pay_money` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '玩家充值金额',
  `item_list` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '玩家背包物品',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否已经补偿 0 未补偿 1 已经补偿',
  PRIMARY KEY (`id`, `global_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_red_bonuses
-- ----------------------------
DROP TABLE IF EXISTS `user_red_bonuses`;
CREATE TABLE `user_red_bonuses`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bonuses_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包唯一id',
  `from_uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发红包者uid',
  `to_uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '开红包者uid',
  `coins` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包金额',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '—0发红包，1开红包',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发包时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '开包时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `from_uid`(`from_uid`) USING BTREE,
  INDEX `to_uid`(`to_uid`) USING BTREE,
  INDEX `bonuses_id`(`bonuses_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '红包记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_sign_record
-- ----------------------------
DROP TABLE IF EXISTS `user_sign_record`;
CREATE TABLE `user_sign_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '游戏角色id',
  `days` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前累计签到天数',
  `item_list` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖励道具列表(json)',
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '数据类型：1 七天签到  2 十五天签到',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3172 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '玩家签到记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_teacher
-- ----------------------------
DROP TABLE IF EXISTS `user_teacher`;
CREATE TABLE `user_teacher`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '游戏id',
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id',
  `coins` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '累计金币',
  `redpack_envelop` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '累计红包劵',
  `points` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '累计积分',
  `level` tinyint(1) NOT NULL DEFAULT 1 COMMENT '等级',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1可用2禁用',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `qrcode_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '二维码图片地址',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '师傅表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_teacher_students
-- ----------------------------
DROP TABLE IF EXISTS `user_teacher_students`;
CREATE TABLE `user_teacher_students`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '玩家id',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '玩家昵称',
  `teacher_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '师傅id',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_u_t_id`(`uid`, `teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '徒弟表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_wechat_redpack_list
-- ----------------------------
DROP TABLE IF EXISTS `user_wechat_redpack_list`;
CREATE TABLE `user_wechat_redpack_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '游戏角色id',
  `exchange_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商城id',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品表id',
  `nonce_str` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '随机字符串，不长于32位(暂时保留)',
  `mch_billno` varchar(28) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '红包订单号/兑换码 (每个订单号必须唯一。取值范围：0~9，a~z，A~Z）)',
  `re_openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '接受红包的用户openid',
  `total_amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '红包金额',
  `total_num` mediumint(9) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包数量',
  `wishing` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '红包祝福语',
  `client_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '调用接口的机器Ip地址',
  `act_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动名称',
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注信息',
  `return_msg` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '错误原因',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包发放状态(0未使用红包1发放成功2发放失败)',
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包创建时间',
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mch_billno_idx`(`mch_billno`) USING BTREE COMMENT '订单openid',
  INDEX `uid_idx`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户微信红包发放列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_phone_unique`(`phone`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_do_coins
-- ----------------------------
DROP TABLE IF EXISTS `users_do_coins`;
CREATE TABLE `users_do_coins`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1金币2钻石3奖券',
  `users_id` int(11) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员昵称',
  `value` int(11) NOT NULL DEFAULT 0 COMMENT '增减的数量',
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '玩家ID',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 312 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员操作金币日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vip_goods
-- ----------------------------
DROP TABLE IF EXISTS `vip_goods`;
CREATE TABLE `vip_goods`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int(10) NOT NULL DEFAULT 0 COMMENT 'vip类别(vip1-vip12)',
  `vip_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '礼包名称',
  `is_open` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开启  1是 - 0否',
  `price` int(10) NOT NULL DEFAULT 0 COMMENT '价值',
  `prize` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '获得道具',
  `created_at` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `updated_at` int(11) NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'vip礼包表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
