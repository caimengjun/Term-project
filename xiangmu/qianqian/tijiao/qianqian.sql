/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : qianqian

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 15/06/2018 20:38:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for genxin
-- ----------------------------
DROP TABLE IF EXISTS `genxin`;
CREATE TABLE `genxin`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `neirong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` date DEFAULT NULL,
  `faqiren` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of genxin
-- ----------------------------
INSERT INTO `genxin` VALUES (1, '画册正在紧张准备中，修图排版都已快接近尾声，主创组也在加班加点商讨各处细节。', '2018-06-10', '逆光摄影工作室', NULL);
INSERT INTO `genxin` VALUES (2, '马上完成了感谢各位的支持', '2018-06-16', '逆光摄影工作室', NULL);

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tupian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('lubotu1', 'images/轮播1.jpg');
INSERT INTO `lunbotu` VALUES ('lubotu2', 'images/轮播2.jpg');
INSERT INTO `lunbotu` VALUES ('lubotu3', 'images/轮播3.jpg');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `shenfenzheng` int(255) DEFAULT NULL,
  `kefulianxiren` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `kefulianxidianhua` int(255) DEFAULT NULL,
  `leixing` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `diqu1` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `biaoti` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `mudi` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `diqu2` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `choukuanjine` int(30) DEFAULT NULL,
  `choukuanzhouqi` int(30) DEFAULT NULL,
  `guanjianzi` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `xiangmugushi` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `beizhu` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for single
-- ----------------------------
DROP TABLE IF EXISTS `single`;
CREATE TABLE `single`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jine` int(10) DEFAULT NULL,
  `time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of single
-- ----------------------------
INSERT INTO `single` VALUES (1, 'lisi', 109, '2018-06-09 19:13:51');
INSERT INTO `single` VALUES (2, 'lisi', 16, '2018-06-09 19:19:11');
INSERT INTO `single` VALUES (3, 'lisi', 16, '2018-06-09 19:19:28');
INSERT INTO `single` VALUES (4, 'lisi', 16, '2018-06-09 19:19:35');
INSERT INTO `single` VALUES (5, 'lisi', 16, '2018-06-09 19:19:42');
INSERT INTO `single` VALUES (6, 'lisi', 16, '2018-06-09 19:19:50');
INSERT INTO `single` VALUES (7, 'lisi', 31, '2018-06-09 19:42:09');
INSERT INTO `single` VALUES (8, 'lisi', 16, '2018-06-09 20:13:39');
INSERT INTO `single` VALUES (9, 'lisi', 16, '2018-06-09 20:24:44');
INSERT INTO `single` VALUES (10, 'lisi', 16, '2018-06-09 20:32:16');
INSERT INTO `single` VALUES (11, 'lisi', 100, '2018-06-12 13:22:25');
INSERT INTO `single` VALUES (12, 'lisi', 109, '2018-06-12 14:27:17');
INSERT INTO `single` VALUES (13, 'lisi', 816, '2018-06-12 17:46:14');
INSERT INTO `single` VALUES (14, 'lisi', 816, '2018-06-12 17:48:43');
INSERT INTO `single` VALUES (15, 'lisi', 109, '2018-06-12 17:52:28');
INSERT INTO `single` VALUES (16, 'lisi', 109, '2018-06-12 17:52:35');
INSERT INTO `single` VALUES (17, 'lisi', 109, '2018-06-12 18:04:37');
INSERT INTO `single` VALUES (18, 'lisi', 109, '2018-06-12 18:06:25');
INSERT INTO `single` VALUES (19, 'lisi', 0, '2018-06-12 18:06:50');

-- ----------------------------
-- Table structure for xiangmu
-- ----------------------------
DROP TABLE IF EXISTS `xiangmu`;
CREATE TABLE `xiangmu`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `miaoshu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `guanjianzi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tupian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mubiaojine` double(255, 0) DEFAULT NULL,
  `yichoujine` double(255, 0) DEFAULT NULL,
  `zhichizheshumu` int(255) DEFAULT NULL,
  `time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `Initiator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `leixing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `choukuanzhouqi` int(255) DEFAULT NULL,
  `xiangmugushi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiangmu
-- ----------------------------
INSERT INTO `xiangmu` VALUES ('xiangmu1', '2018拥抱纳咪支教团队——为四川阿坝藏区孩子众筹', '拥抱纳咪支教活动进行了7年，今年暑假我们要继续前往阿坝松潘县上纳咪村，助力孩子们的健康成长。本次筹得的款项将全部用于上纳咪村的教育事业发展。', '四川  阿坝  支教', 'images/xiangmu1.jpg', 10000, 14860, 386, '2018-06-12 16:00:00', NULL, NULL, NULL, NULL);
INSERT INTO `xiangmu` VALUES ('xiangmu2', '保温杯里泡枸杞？不如干了这杯“丝路小葡杞！”', '酿酒师李春光再出新作，20%中宁枸杞+80%宁夏赤霞珠=“丝路小葡杞”', '浙江  杭州  李春光  枸杞酒', 'images/xiangmu2.jpg', 20000, 15745, 278, '2018-06-11 15:34:43', NULL, NULL, NULL, NULL);
INSERT INTO `xiangmu` VALUES ('xiangmu3', '诗集《漫溯时光》小梵/著 融合生活与瑜伽 30载见闻与思考', '让更多热爱生活热爱文字热爱健康的朋友共同参与。', '福建  诗集  瑜伽', 'images/xiangmu3.jpg', 8000, 8560, 185, '2018-06-10 15:34:55', NULL, NULL, NULL, NULL);
INSERT INTO `xiangmu` VALUES ('xiangmu4', '中国传媒大学戏剧影视导演（中外）影视作品《不曾见过》众筹项目', '《不曾见过》主创团队由六位中国传媒大学戏剧影视导演（中外合作办学）专业学生组成', '北京 北京 影视作品 剧情短片', 'images/xiangmu4.jpg', 60000, 56352, 322, '2018-06-12 17:45:35', '', NULL, NULL, NULL);
INSERT INTO `xiangmu` VALUES ('xiangmu5', '关于自由与禁忌的生命寓言——中国传媒大学电影学毕业作品《第八种颜色》', '一群怀揣电影梦想的年轻人的诚意之作，一个关怀现实社会的独特故事，这是我们第一次面向公众募集创作资金，感谢您，我的电影筑梦人！', '湖北 武汉 影视 传媒大学 艺术', 'images/xiangmu5.jpg', 25000, 19458, 225, '2018-06-08 16:01:55', NULL, NULL, NULL, NULL);
INSERT INTO `xiangmu` VALUES ('xiangmu6', '深圳大学传播学院毕业影视作品《足球》众筹项目', '关于父亲，关于生活，关于这个我们借来的世界。', '广东 深圳 互联网 微电影 毕业设计', 'images/xiangmu6.jpg', 20000, 18984, 206, '2018-06-07 16:02:00', NULL, NULL, NULL, NULL);
INSERT INTO `xiangmu` VALUES ('xiangmu7', '电子科技大学学生独立原创风光画册', '记录成电的十二年，这个过程漫长、意义非凡。 成电的每一个瞬间，都在逆光众的镜头中留存。', '艺术  四川 成都  画册 风光 成电', 'images/xiangmu7.jpg', 12400, 7136, 464, '2018-06-12 18:06:50', '逆光摄影工作室', NULL, NULL, NULL);
INSERT INTO `xiangmu` VALUES ('1', 'é’±é’±', 'å¾ˆå¥½', 'å±±ä¸œ é’å²›', '57cf794a89e2b.jpg', 5000, NULL, NULL, '2018-06-15 09:18:10', 'è›¤', 'å…¬ç›Š,åŒºå—é“¾', 365, 'èµ°å¿ƒè¾žèŒä¿¡');
INSERT INTO `xiangmu` VALUES ('123', 'é’±é’±', 'å¾ˆå¥½', 'å±±ä¸œ é’å²›', 'timg.jpg', 5000, NULL, NULL, '2018-06-15 09:24:58', 'è›¤', 'å…¬ç›Š,åŒºå—é“¾', 365, '666');
INSERT INTO `xiangmu` VALUES ('12', 'cmmm', 'cmmm', 'å±±ä¸œ é’å²›', 'timg.jpg', 5000, NULL, NULL, '2018-06-15 11:54:45', 'è›¤', 'å…¬ç›Š,åŒºå—é“¾', 365, '666');
INSERT INTO `xiangmu` VALUES ('111', '啦啦啦', '哈哈哈', '111', '57cf794a89e2b.jpg', 5000, NULL, NULL, '2018-06-15 12:26:51', '666', '公益,区块链', 4000, '666');
INSERT INTO `xiangmu` VALUES ('啦啦啦', '777', '济南济南', '酷酷酷', '57cf794a89e2b.jpg', 78, NULL, NULL, '2018-06-15 12:33:44', '好好好', '出版,娱乐', 789, '烦烦烦');
INSERT INTO `xiangmu` VALUES ('你你你', '哦哦哦', '么么么', '山东 青岛', 'timg.jpg', 5000, NULL, NULL, '2018-06-15 12:35:09', '急急急', '公益,区块链', 365, '8了解');

SET FOREIGN_KEY_CHECKS = 1;
