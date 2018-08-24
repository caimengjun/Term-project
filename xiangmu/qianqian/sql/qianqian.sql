/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : qianqian

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-06-19 00:12:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for genxin
-- ----------------------------
DROP TABLE IF EXISTS `genxin`;
CREATE TABLE `genxin` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `neirong` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `faqiren` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of genxin
-- ----------------------------
INSERT INTO `genxin` VALUES ('1', '画册正在紧张准备中，修图排版都已快接近尾声，主创组也在加班加点商讨各处细节。', '2018-06-10', '逆光摄影工作室', null);
INSERT INTO `genxin` VALUES ('2', '马上完成了感谢各位的支持', '2018-06-16', '逆光摄影工作室', null);

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` varchar(255) NOT NULL,
  `tupian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('lubotu1', '轮播1.jpg');
INSERT INTO `lunbotu` VALUES ('lubotu2', '轮播2.jpg');
INSERT INTO `lunbotu` VALUES ('lubotu3', '轮播3.jpg');

-- ----------------------------
-- Table structure for mytable
-- ----------------------------
DROP TABLE IF EXISTS `mytable`;
CREATE TABLE `mytable` (
  `id` int(11) DEFAULT NULL,
  `des` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type1` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of mytable
-- ----------------------------
INSERT INTO `mytable` VALUES ('1', '星期六青少年篮球俱乐部，从2016年开始筹划，经过多年实践与积累，已经完成了系统化分级。涵盖了幼儿篮球启蒙、小学、初中、高中的年龄结构与相对应的技术水平。本着负责、认真、科学、专业系统、长期连贯的训练理念，俱乐部已经具有较为完善的训练体系和的较高的教与学的通道。已经形成了良好的内在团队核心价值理念。目前因场馆拓建，需要资金，谢谢您对篮球事业的热爱与支持!', 'img/basclub1.jpg', 'sport', 'bas');
INSERT INTO `mytable` VALUES ('2', '36成人篮球俱乐部，从2017年开始筹划，经过多年实践与积累，已经完成了系统化分级。涵盖了幼儿篮球启蒙、小学、初中、高中的年龄结构与相对应的技术水平。本着负责、认真、科学、专业系统、长期连贯的训练理念，俱乐部已经具有较为完善的训练体系和的较高的教与学的通道。已经形成了良好的内在团队核心价值理念。目前因场馆拓建，需要资金，谢谢您对篮球事业的热爱与支持!', 'img/basclub2.jpg', 'sport', 'bas');
INSERT INTO `mytable` VALUES ('3', '绿荫大巴足球俱乐部，是河北省石家庄市一家职业足球俱乐部，2014年2月25日，俱乐部\r\r\n成立于中国现代足球发祥地——厦门，俱乐部曾使用名称为厦门骏豪足球俱乐部。2014\r\r\n年12月，永昌地产开发集团收购俱乐部70%股份，更名为石家庄永昌骏豪足球俱乐部，并\r\r\n将球队主场迁移至石家庄裕彤国际体育中心。', 'img/footclub.jpg', 'sport', 'foot');
INSERT INTO `mytable` VALUES ('4', '龙格俱乐部创办初期致力于游泳培训和水中健身的开展，开设了游泳亲子普及培训班，让\r\r\n更多惧水、0基础的学员成功掌握游泳技能，提高了游泳爱好者的水平，发掘和培养游泳\r\r\n的可造人才。组织并举行会员间的比赛等活动，营造了一个良好的俱乐部氛围。经过是俱\r\r\n乐部的不懈努力得到了广大学员的认可和支持。', 'img/swim.jpg', 'sport', 'swim');
INSERT INTO `mytable` VALUES ('5', '宏翔武术俱乐部成立于2009年8月，是WMA（中国武术职业联赛）加盟俱乐部之一，是\r\r\n一所对中华武术精髓进行的传承、学习、研发、赛事推广为一体的产业机构。将传承发扬中国武术的搏击技术技法、探索发展传统武术为己任，旨在打造具有“山西领先、全国一流、世界知名”的文化产业。WMA作为一个新生的联赛，它为中国武术的发展提供了良好的展示。', 'img/wushu.jpg', 'sport', 'wushu');
INSERT INTO `mytable` VALUES ('6', '人类的实践，人与人，人与自然的情感交流，决定了人类交流媒体的产生，于是就出现了人类最初的雕刻——图画文字。因此在研究传统雕塑艺术的美学特征时，就得从雕塑的源\r\n雕塑头文字的产生开始，这里是从汉字的发生、发展来论述传统雕塑艺术的美学特征。雕塑主刀手出走，作品需要人接手！', 'img/diaosu.jpg', 'art', 'diaosu');
INSERT INTO `mytable` VALUES ('7', '昨天，一名小画家在展板前留影。\r\n\r\n　　2000多名儿童当天在香港维多利亚公园参加绘画比赛，为青海玉树震后重建和教育项目筹款。\r\n\r\n　　“中国儿童周2012小画家大梦想绘画比赛”由联合国儿童基金香港委员会主办，以“我的理想家园”为主题。从中午开始，孩子们聚集在维多利亚公园中央草坪，或坐在布上构思，或倚着纸箱勾勒，或趴在草坪上，为心中的理想家园涂上亮丽色彩。\r\n\r\n　　据介绍，本次比赛需要支持', 'img/draw.jpg', 'art', 'draw');
INSERT INTO `mytable` VALUES ('8', '顶层设计师俱乐部，是由居然顶层精心打造的家居设计师聚集与交流的平台。面向国内外家居设计师招募会员，俱乐部将汇集国内外知名设计大师、行业精英人士以及致力于在设计行业发展的大专院校学生。\r\n俱乐部采用会员制管理办法，促进设计行业的蓬勃发展。', 'img/sheji.jpg', 'art', 'sheji');
INSERT INTO `mytable` VALUES ('9', '只需您出一份力，江南大楼就成了！', 'img/jianzhu.jpg', 'art', 'jianzhu');
INSERT INTO `mytable` VALUES ('10', '《暗黑血统：战神版》是经典动作冒险游戏《暗黑血统》1代的重制作品。游戏采用原作两倍的材质分辨率，并且对阴影渲染、后处理效果等方面做了提升。本作以启示录为素材，玩家将扮演战神的角色，与堕落天使、恶魔进行战斗，重新找回属于自己的力量。', 'img/fps.jpg', 'game', 'fps');
INSERT INTO `mytable` VALUES ('11', '《烟火与献祭(Smoke and Sacrifice)》是一款由Solar Sail Ltd制作Curve Digital发行的开放世界生存RPG，游戏中玩家需要扮演一位母亲，一路披荆斩棘寻找儿子。玩家在游戏中打造物品，武器，炸药等等，甚至在游戏后期制作机甲，内容可以说是十分新奇。\r\n', 'img/rpg.jpg', 'game', 'rpg');
INSERT INTO `mytable` VALUES ('12', '由腾讯代理，S2 Game出品的类DOTA网游《超神英雄》（简称HON）于9月8日正式不限号测试！相比时下流行的追求简单操作的类似LOL这样的MOBA产品，HON则更加的贴近原版DOTA。允许反补的经济设定，必将虐CRY一大波手残党。你是否急不可耐的想要在HON中证明自己呢？还是先来看一看这款老牌MOBA到底有何不同吧！', 'img/moba.jpg', 'game', 'moba');
INSERT INTO `mytable` VALUES ('13', '《炉石传说》是一款跨平台手机卡牌游戏。作为暴雪进军休闲游戏市场的首款产品《炉石传说》成功做到了轻松上手和极致乐趣的完美结合。你无须拥有丰富的游戏经验，更不需腾出一整个晚上的时间投入游戏。五分钟学会操作，十分钟畅玩一局。享受暴雪品质的乐趣从未如此轻松！在《炉石传说》当中，你可以选取魔兽系列的九大经典英雄为你而战。每个英雄代表一个职业，分别拥有自己的战术风格和特长技能。你需要结合他们的职业特点组建手牌体系，邀请好友展开对弈，或是在天梯上与其他玩家大战300回合！', 'img/card.jpg', 'game', 'card');
INSERT INTO `mytable` VALUES ('14', '我们要考虑的，不仅仅只是我们这一代人。\r\n十几年前，刘晓光像胡杨一样屈膝跪在大漠上，无形中竖起了一面旗帜。十几年后的今天，阿拉善SEE由最初的67位企业家发展到现在的800多家会员。从旁观者到参与者，越来越多的企业家投身公益，希望能和阿拉善SEE一起，留住碧水蓝天。\r\n\r\n初心不改，希望我们能一路同行，将公益环保事业做得更好，为我们的下一代留住碧水蓝天。', 'img/gongyi.jpg', 'life', 'gongyi');
INSERT INTO `mytable` VALUES ('15', '巨大发展潜力散发着“长生”魅力，酒店选址却要接地气。\r\n\r\n禅城区张槎街道，是广佛经济、商圈重要组成部分，工业产值占据禅城半壁江山。\r\n\r\n本次标的佛山喆·啡酒店“落座”产业带核心位置十字路交汇口，让人一眼看到它的存在。', 'img/hotle.png', 'life', 'hotle');
INSERT INTO `mytable` VALUES ('16', '在2017年的全国最热旅游城市排行榜中，成都成为仅次于北京的热门旅游城市，位列第二。关于成都旅游景点的描述铺天盖地，让我们总是以为逛一圈宽窄巷子，看一眼大熊猫，徘徊于太古里，把灯红的锦里定格在镜头中就了解了成都的全部了。\r\n\r\n可到了最后，真正让我们了解它的，还是一份“麻辣火锅”，关于川人的生活方式、关于“美食之都”蕴藏的千万种味道，关于这座宜居城市的人情味，似乎全融于这一口锅底中。', 'img/rest.jpg', 'life', 'rest');
INSERT INTO `mytable` VALUES ('17', '刘德华公益出演，通过新作向社会筹款，该作品所获得的一切利润都会捐出！', 'img/film.jpg', 'life', 'film');

-- ----------------------------
-- Table structure for single
-- ----------------------------
DROP TABLE IF EXISTS `single`;
CREATE TABLE `single` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `jine` int(10) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of single
-- ----------------------------
INSERT INTO `single` VALUES ('28', '123', '16', '2018-06-19 00:11:49');
INSERT INTO `single` VALUES ('29', '123', '1007', '2018-06-19 00:11:54');
INSERT INTO `single` VALUES ('30', '123', '119', '2018-06-19 00:12:02');
INSERT INTO `single` VALUES ('31', '123', '1193', '2018-06-19 00:12:06');
INSERT INTO `single` VALUES ('32', '123', '3400', '2018-06-19 00:12:14');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('12', '123456', null, null, null, null);
INSERT INTO `user` VALUES ('718018270', '7c4a8d09ca3762af61e59520943dc26494f8941b', '718018270@qq.com', 'male', '2018-06-08', '2018-06-13 10:39:50.000000');
INSERT INTO `user` VALUES ('125', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '718018270@qq.com', 'male', '2018-06-08', '2018-06-15 16:06:00.000000');
INSERT INTO `user` VALUES ('admin', '444528fc68f99ea0f4fe027cb6cbd262f2a707fe', '371327@qq.com', 'female', '2018-06-06', '2018-06-15 21:37:42.000000');
INSERT INTO `user` VALUES ('admin44', 'fa6977c99b809db68e1c56888ec38bd004719b39', '145@qq.com', 'male', '2018-06-01', '2018-06-15 21:46:21.000000');
INSERT INTO `user` VALUES ('123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '123456@qq.com', 'male', '2018-06-01', '2018-06-16 20:51:02.000000');
INSERT INTO `user` VALUES ('122', '7c4a8d09ca3762af61e59520943dc26494f8941b', '123@qq.com', 'male', '2018-06-01', '2018-06-18 09:38:02.000000');
INSERT INTO `user` VALUES ('098', 'f6a7651443d5867f394fe61ab082aac01c3c25fd', '098@qq.com', 'male', '2018-06-04', '2018-06-18 09:54:41.000000');
INSERT INTO `user` VALUES ('4396', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '718018270@qq.com', 'male', '2018-06-01', '2018-06-18 10:37:12.000000');
INSERT INTO `user` VALUES ('1997', '809dceb566310ae7872a86c2f176f21ac5e67022', '718018270@qq.com', 'female', '2018-06-01', '2018-06-18 10:50:34.000000');
INSERT INTO `user` VALUES ('111', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '1111@qq.com', 'male', '2018-06-01', '2018-06-18 11:37:33.000000');
INSERT INTO `user` VALUES ('123', '7c4a8d09ca3762af61e59520943dc26494f8941b', '12213343@qq.com', 'male', '2018-06-08', '2018-06-18 12:36:18.000000');

-- ----------------------------
-- Table structure for xiangmu
-- ----------------------------
DROP TABLE IF EXISTS `xiangmu`;
CREATE TABLE `xiangmu` (
  `id` varchar(255) NOT NULL,
  `biaoti` varchar(255) DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  `guanjianzi` varchar(255) DEFAULT NULL,
  `tupian` varchar(255) DEFAULT NULL,
  `mubiaojine` double(255,0) DEFAULT NULL,
  `yichoujine` double(255,0) DEFAULT NULL,
  `zhichizheshumu` int(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Initiator` varchar(255) DEFAULT NULL,
  `leixing` varchar(255) DEFAULT NULL,
  `choukuanzhouqi` int(255) DEFAULT NULL,
  `xiangmugushi` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xiangmu
-- ----------------------------
INSERT INTO `xiangmu` VALUES ('xiangmu1', '2018拥抱纳咪支教团队——为四川阿坝藏区孩子众筹', '拥抱纳咪支教活动进行了7年，今年暑假我们要继续前往阿坝松潘县上纳咪村，助力孩子们的健康成长。本次筹得的款项将全部用于上纳咪村的教育事业发展。', '四川  阿坝  支教', 'xiangmu1.jpg', '10000', '14860', '386', '2018-06-18 12:34:34', null, null, null, null, null);
INSERT INTO `xiangmu` VALUES ('xiangmu2', '保温杯里泡枸杞？不如干了这杯“丝路小葡杞！”', '酿酒师李春光再出新作，20%中宁枸杞+80%宁夏赤霞珠=“丝路小葡杞”', '浙江  杭州  李春光  枸杞酒', 'xiangmu2.jpg', '20000', '15745', '278', '2018-06-18 12:34:37', null, null, null, null, null);
INSERT INTO `xiangmu` VALUES ('xiangmu3', '诗集《漫溯时光》小梵/著 融合生活与瑜伽 30载见闻与思考', '让更多热爱生活热爱文字热爱健康的朋友共同参与。', '福建  诗集  瑜伽', 'xiangmu3.jpg', '8000', '8560', '185', '2018-06-18 12:34:39', null, null, null, null, null);
INSERT INTO `xiangmu` VALUES ('xiangmu4', '中国传媒大学戏剧影视导演（中外）影视作品《不曾见过》众筹项目', '《不曾见过》主创团队由六位中国传媒大学戏剧影视导演（中外合作办学）专业学生组成', '北京 北京 影视作品 剧情短片', 'xiangmu4.jpg', '60000', '56352', '322', '2018-06-18 12:34:43', '', null, null, null, null);
INSERT INTO `xiangmu` VALUES ('xiangmu5', '关于自由与禁忌的生命寓言——中国传媒大学电影学毕业作品《第八种颜色》', '一群怀揣电影梦想的年轻人的诚意之作，一个关怀现实社会的独特故事，这是我们第一次面向公众募集创作资金，感谢您，我的电影筑梦人！', '湖北 武汉 影视 传媒大学 艺术', 'xiangmu5.jpg', '25000', '19458', '225', '2018-06-18 12:34:46', null, null, null, null, null);
INSERT INTO `xiangmu` VALUES ('xiangmu6', '深圳大学传播学院毕业影视作品《足球》众筹项目', '关于父亲，关于生活，关于这个我们借来的世界。', '广东 深圳 互联网 微电影 毕业设计', 'xiangmu6.jpg', '20000', '18984', '206', '2018-06-18 12:34:48', null, null, null, null, null);
INSERT INTO `xiangmu` VALUES ('xiangmu7', '电子科技大学学生独立原创风光画册', '记录成电的十二年，这个过程漫长、意义非凡。 成电的每一个瞬间，都在逆光众的镜头中留存。', '艺术  四川 成都  画册 风光 成电', 'xiangmu7.jpg', '12400', '5735', '478', '2018-06-19 00:12:14', '逆光摄影工作室', null, null, null, 'logo.jpg');
SET FOREIGN_KEY_CHECKS=1;
