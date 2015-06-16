/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50537
Source Host           : 127.0.0.1:3306
Source Database       : userdatabase

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-06-16 20:27:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '莎莎网', '2014-03-01', '莎莎网自2014年成立以来，本着以服务广大中俄师生需求为己任的宗旨，量身定做，打造精品中俄网络教学沟通平台。方便有汉语、俄语学习需求的同学寻找高质量中、俄外教同时，还为中俄教师提供了更为广阔的教学平台。</br>       В настоящее время китайский язык набирает всё большую популярность в России и во всём мире. Ресурс chineseteacher.ru - это быстрый и удобный способ найти репетитора китайского языка. Всё что Вам понадобится это интернет!\r\n</br>\r\n');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '1234');

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thusername` varchar(20) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `ads_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `like_teacher` (`thusername`),
  CONSTRAINT `like_teacher` FOREIGN KEY (`thusername`) REFERENCES `teacher` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ads
-- ----------------------------
INSERT INTO `ads` VALUES ('5', 'teacher', '苍老师正式入住莎莎网，请多支持！！！', '2014-03-17');
INSERT INTO `ads` VALUES ('6', 'teacher', '阿斯顿撒', '2014-03-20');

-- ----------------------------
-- Table structure for advert
-- ----------------------------
DROP TABLE IF EXISTS `advert`;
CREATE TABLE `advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(80) DEFAULT NULL,
  `filepath` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advert
-- ----------------------------
INSERT INTO `advert` VALUES ('1', '1.JPG', 'advert\\1.JPG', '');
INSERT INTO `advert` VALUES ('2', '360截图20140324114303341.jpg', 'advert\\360截图20140324114303341.jpg', '');
INSERT INTO `advert` VALUES ('3', 'ad3.jpg', 'advert\\ad3.jpg', '');
INSERT INTO `advert` VALUES ('4', 'ad4.jpg', 'advert\\ad4.jpg', '');
INSERT INTO `advert` VALUES ('5', 'f.jpg', 'advert\\f.jpg', '');
INSERT INTO `advert` VALUES ('6', '2.jpg', 'advert\\2.jpg', '');
INSERT INTO `advert` VALUES ('7', '037.jpg', 'advert\\037.jpg', '');
INSERT INTO `advert` VALUES ('8', '6522381_165846098187_2.jpg', 'advert\\6522381_165846098187_2.jpg', '');
INSERT INTO `advert` VALUES ('9', '0080020017.jpg', 'advert\\0080020017.jpg', '');
INSERT INTO `advert` VALUES ('10', '088.jpg', 'advert\\088.jpg', '');
INSERT INTO `advert` VALUES ('11', '7126869_161547452139_2.jpg', 'advert\\7126869_161547452139_2.jpg', '');
INSERT INTO `advert` VALUES ('12', '818147_055917699439_2.jpg', 'advert\\818147_055917699439_2.jpg', '');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `courseName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courseName` (`courseName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  `answer` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES ('2', 'Как это работает?', 'Для того, чтобы начать заниматься с репетитором удалённо, у Вас должен быть выход в интернет, компьютер с установленной программой skype и вэб-камера. Всё что нужно - это пройти бесплатную регистрацию в качестве ученика, а затем выбрать себе репетитора из каталога. Выбрав и оплатив репетитора, просто ожидайте когда Ваш репетитор добавит Вас в skype, который Вы указывали при регистрации. ');
INSERT INTO `faq` VALUES ('3', 'Могу ли я быть увере', 'Вы можете быть абсолютно спокойны за Ваши деньги, так как оплата поступает не напрямую репетитору, а на счёт ресурса chineseteacher.ru. Мы выступаем гарантом того, что с одной стороны ученик оплтит труд репетитора, а сдругой стороны, мы сделали так, что репетитор получит свои деньги только тогда, когда проведёт с Вами все восемь занятий. \r\n');
INSERT INTO `faq` VALUES ('4', 'По каким материалам ', 'Ввиду того, что у каждого ученика свой уровень языковой подготовленности, свои интересы, личные предпочтения и т.д., то лучше всего, чтобы ученик и преподаватель сами определились с тематикой занятий, используемыми учебными материалами, и расписанием занятий.  \r\nЕсли у Вас есть учебник, по которому Вы хотели бы заниматься, то мы рекомендуем Вам отсканировать его и переслать Вашему преподавателю. Передать документ можно непосредственно в программе skype, или по электронной почте.\r\n');
INSERT INTO `faq` VALUES ('5', 'Поменять преподавате', 'Ввиду того, что база репетиторов постоянно расширяется и сразу найти подходящего репетитора бывает затруднительно, то мы ничего не имеем против того, чтобы Вы, имели возможность поменять репетитора. Выбрать нового преподавателя можно только по завершении восьми занятий со старым. ');
INSERT INTO `faq` VALUES ('6', 'Как оплатить обучени', 'Вариант 1.\r\nДля удобства оплаты, рекомендуем Вам зарегистрировать электронный кошелёк “Яндекс деньги”. Выбрав нужного репетитора по каталогу, нажмите на кнопку с изображением корзины и, в открывшемся окошке, введите сумму к оплате, (оплата производится за восемь занятий, длительность каждого занятия-60 минут), затем нажмите “оплатить”, и Вы будете перенаправлены в свой электронный кошелёк. По завершении оплаты, зайдите в личный кабинет и сообщите об оплате, не забыв указать  личный номер выбранного Вами репетитора. (это нужно для того, чтобы мы связали Вас именно с тем репетитором ) \r\nВариант 2.\r\nЕсли у вас нет кошелька “Яндекс деньги”, то оплату обучения можно произвести из любого отделения Евросети через платёжный терминал. (при этом, возможно, будет взиматься комиссия). Для этого на экране терминала выбирете “Яндекс деньги”, введите номер кошелька: 41001769379130 и произведите оплату. По завершении оплаты, зайдите в личный кабинет и сообщите об оплате, не забыв указать  личный номер выбранного Вами репетитора. (это нужно для того, чтобы мы связали Вас с нужным репетитором )');
INSERT INTO `faq` VALUES ('7', 'Если преподаватель н', 'Если после оплаты обучения преподаватель не выходит на связь более чем двое суток, или же преподаватель не выходит на связь после нескольких занятий, то Вам следует войти в личный кабинет и оттуда отправить нам сообщение о возникшей проблеме. Мы свяжемся с Вашим репетитором и сообщим Вам о времени  начала или возобновления занятий. \r\n');
INSERT INTO `faq` VALUES ('8', '怎样当上chineseteacher.ru网站的老师？', '想成为我们网站的老师并在线教俄罗斯人汉语，你只要通过免费注册，填写真实的个人信息即可。你所注册的的账号与个人资料（除了联系方式与银行卡信息之外）将会显示在老师目录里。 如果有学生选择你为辅导老师，我们将立即用合适的联系方式告诉你（比如发短信，打电话，发邮件，QQ等方式）并通知你，学生的skype号。你在接到我们的通知48小时（两天）之内应该在skype上和他（她）联系，就可以开始进行辅导了。');
INSERT INTO `faq` VALUES ('9', '纠纷解决。', '理论上会发生一种你教完学生，而他（她）因为某种原因否认被教了的情况。 因此，为了保护自己的利益以及证明自己已的确完成了教学任务，我们推荐老师在每一次讲课时都要截屏。到时候拿截取的画面可以当做证据，避免不必要的误会。');
INSERT INTO `faq` VALUES ('10', '怎样领取工资？', 'Chineseteacher.ru 每一次收学生的8节课的学费。当你讲完第8节课时，就可以通过你的账号，给我们留言。我们将会跟您的学生联系，跟他（她）确认一下。在没有问题的情况下，我们就会把学生汇过来的学费汇到您填写银行卡的信息的时候指定的账号。');
INSERT INTO `faq` VALUES ('11', 'Chineseteacher.ru网站的好处费。', '在我们的网站上任何一个以汉语为母语的人都可以免费注册并赚到钱。我们不收你们的任何费用（比如：会员费，注册费等等）。我们网站的好处费来自于学生交的学费。每一次给老师开支时，我们将会把一节课的学费留给自己。（比如：老师把一节课的学费定为50元，8节课的钱数-400元。开支时，我们会把7节课的学费（350元）汇给老师，而把50元留给自己。）');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `realname` varchar(80) DEFAULT NULL,
  `filepath` varchar(300) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `date` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('28', '1750db03-957b-42f7-a63b-0313a607afe3.txt', '新建文本文档.txt', 'E:/Program Files/tomcat7/webapps/translation/WEB-INF/upload/10/7/', 'fgwioeufiowjeiof', '2014-05-05');
INSERT INTO `file` VALUES ('29', '4d9d34b8-f8a3-4fc9-8deb-f2eafe1eb7d0.jsp', 'index.jsp', 'E:/Program Files/tomcat7/webapps/translation/WEB-INF/upload/9/12/', 'jsp', '2014-05-07');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `stusername` varchar(20) DEFAULT NULL,
  `thusername` varchar(20) DEFAULT NULL,
  `thname` varchar(20) DEFAULT NULL,
  `banknum` varchar(50) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('30', '无', 'teacher', '李老师', '无', '哈哈', '2014-04-05');
INSERT INTO `message` VALUES ('33', 'student', 'hahaha', '刘志杰', '15411', '1416451', '2014-04-07');
INSERT INTO `message` VALUES ('34', '无', 'teacher', '胡老师', '无', '1515', '2014-04-07');
INSERT INTO `message` VALUES ('35', '无', 'teacher', '胡老师', '无', 'wgsefgedgdffgdfghfbdvsvs', '2014-05-07');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '莎莎网正式上线通知', '爱上飞洒<br/>111111', '2014-03-11');
INSERT INTO `news` VALUES ('13', '三个地方', '阿飞第三段', '2007-08-21');
INSERT INTO `news` VALUES ('15', 'sadfsdf ', 'fsdf ', '2014-01-21');
INSERT INTO `news` VALUES ('16', '萨芬', '艾丝凡萨芬<br/>4545415', '2014-01-21');
INSERT INTO `news` VALUES ('17', '马航失踪', '   马航失踪第十天。\r\n阿斯达所发生的\r\n\r\n\r\n\r\n\r\n规划规划将规划', '2014-03-17');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `responseCount` int(11) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `lastResTime` date DEFAULT NULL,
  `lastResponser` varchar(30) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('6', null, '2014-03-23', '第四个帖子', '1', null, '<p>发大水发生大幅&nbsp;</p>\r\n', null, null, '6', '0', null, '1');
INSERT INTO `post` VALUES ('7', null, '2014-03-24', '你好', '2', null, '<p>阿斯顿撒</p>\r\n', null, null, '7', '0', null, '1');
INSERT INTO `post` VALUES ('8', null, '2014-03-24', '你好', '3', null, '<p>阿斯顿撒</p>\r\n', null, null, '8', '0', null, '1');
INSERT INTO `post` VALUES ('9', null, '2014-03-24', 'asfsd', '4', null, '&lt;p&gt;sdfds&lt;/p&gt;\r\n', null, null, '9', '0', null, '1');
INSERT INTO `post` VALUES ('10', null, '2014-03-24', 'asfsd', null, null, '&lt;p&gt;sdfds&lt;/p&gt;\r\n', null, null, '10', '0', null, '1');
INSERT INTO `post` VALUES ('11', null, '2014-03-24', 'asdas', null, null, '&lt;p&gt;asfsd&lt;/p&gt;\r\n', null, null, '11', '0', null, '1');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `teacherusername` varchar(20) DEFAULT NULL,
  `studentusername` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('37', 'hahaha', 'student');
INSERT INTO `score` VALUES ('38', 'teacher', 'student');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `protection` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `answer` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `view_photo` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_user` (`username`),
  CONSTRAINT `student_user` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('00000000000000000043', '0', 'student', 'zxl123', null, 'dasdasdao@qq.com', '12345678901', '您母亲的姓名是？', 'asd', '小刘', '2014-03-16', 'images/6/12/d781234d-6e07-4b1c-b453-755f1df11eb1.jpg', 'view/5/10/f26f0b33-d162-4df6-bd97-beb19fef5b3f.jpg');
INSERT INTO `student` VALUES ('00000000000000000044', '0', 'zxl1991', 'zxl1991', null, 'dfwe@mail.ru', '12345678901', null, null, null, '2014-04-20', 'images/4/15/2d559172-88c8-4387-95a3-8eab459ca1bf.jpg', 'view/13/10/2d559172-88c8-4387-95a3-8eab459ca1bf.jpg');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `education` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `college` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bank` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `banknum` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `protection` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `answer` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `score` int(20) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `introduction` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `view_photo` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_user` (`username`),
  CONSTRAINT `teacher_user` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('00000000000000000024', '1', 'teacher', 'zxl1991', '女', '三个月', '俄语', '黑龙江大学', 'daodaozhanhou@163.com', '15145112241', '1973-12-23', 'images/10/0/af33ee49-43e6-47a6-9ffd-a9ea1d9d64d9.jpg', null, '240元', '中国工商银行', '1231231223', '您父亲的姓名是？', '胡老师', '你好', '100', '2014-03-16', 'dsdsd', 'view/4/1/7593cfe8-c917-4dda-a1d6-59d03abb7077.JPG');
INSERT INTO `teacher` VALUES ('00000000000000000025', '1', 'hahaha', '123456a', '男', '三个月', 'китайский', '黑龙江大学', 'daodaozhanhou@163.com', '12345678901', '1973-11-24', null, null, null, '', '', null, '刘志杰', null, '11', '2014-03-27', '水电费水电费', null);
INSERT INTO `teacher` VALUES ('00000000000000000026', '1', 'fwefe1', 'asd123', '男', '六个月', '俄语', 'gwegerge', 'gergrgr@bk.ru', '12345678901', '1971-03-18', null, null, null, null, null, null, null, null, null, '2014-04-21', 'getgergegdger', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('00000000000000000058', '0', 'student', 'zxl123');
INSERT INTO `user` VALUES ('00000000000000000059', '1', 'teacher', 'zxl1991');
INSERT INTO `user` VALUES ('00000000000000000060', '1', 'hahaha', '123456a');
INSERT INTO `user` VALUES ('00000000000000000061', '0', 'zxl1991', 'zxl1991');
INSERT INTO `user` VALUES ('00000000000000000062', '1', 'fwefe1', 'asd123');
