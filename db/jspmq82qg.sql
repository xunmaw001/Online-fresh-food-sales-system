-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmq82qg
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616227987438 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-20 08:03:20',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-20 08:03:20',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-20 08:03:20',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-20 08:03:20',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-20 08:03:20',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-20 08:03:20',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616227987437,'2021-03-20 08:13:07',1616227943236,'广东省梅州市梅江区江南街道百花洲市场','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616228445933 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1616227462106,'2021-03-20 08:04:21','shangpinxinxi',11,46,'商品名称6','http://localhost:8080/jspmq82qg/upload/shangpinxinxi_tupian6.jpg',1,99.9,0),(1616228445932,'2021-03-20 08:20:45','shangpinxinxi',1616227943236,45,'商品名称5','http://localhost:8080/jspmq82qg/upload/1616227649145.jpg',1,99.9,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616228096827 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-20 08:03:20',1,1,'提问1','回复1',1),(62,'2021-03-20 08:03:20',2,2,'提问2','回复2',2),(63,'2021-03-20 08:03:20',3,3,'提问3','回复3',3),(64,'2021-03-20 08:03:20',4,4,'提问4','回复4',4),(65,'2021-03-20 08:03:20',5,5,'提问5','回复5',5),(66,'2021-03-20 08:03:20',6,6,'提问6','回复6',6),(1616228096826,'2021-03-20 08:14:56',1616227943236,NULL,'‍请问有海产品吗\r\n','有的\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmq82qg/upload/1616227732582.jpg'),(2,'picture2','http://localhost:8080/jspmq82qg/upload/1616227738697.jpg'),(3,'picture3','http://localhost:8080/jspmq82qg/upload/1616227917962.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `yonghupingfen` varchar(200) DEFAULT NULL COMMENT '用户评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616228342071 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (51,'2021-03-20 08:03:20','订单编号1','商品名称1','1','http://localhost:8080/jspmq82qg/upload/1616227670448.jpg','评价内容1','2021-03-20','用户名1','联系电话1','是',''),(52,'2021-03-20 08:03:20','订单编号2','商品名称2','1','http://localhost:8080/jspmq82qg/upload/1616227676724.jpg','评价内容2','2021-03-20','用户名2','联系电话2','是',''),(53,'2021-03-20 08:03:20','订单编号3','商品名称3','1','http://localhost:8080/jspmq82qg/upload/1616227683934.jpg','评价内容3','2021-03-20','用户名3','联系电话3','是',''),(54,'2021-03-20 08:03:20','订单编号4','商品名称4','1','http://localhost:8080/jspmq82qg/upload/1616227700959.jpg','评价内容4','2021-03-20','用户名4','联系电话4','是',''),(55,'2021-03-20 08:03:20','订单编号5','商品名称5','1','http://localhost:8080/jspmq82qg/upload/1616227707627.jpg','评价内容5','2021-03-20','用户名5','联系电话5','是',''),(56,'2021-03-20 08:03:20','订单编号6','商品名称6','1','http://localhost:8080/jspmq82qg/upload/1616227714867.jpg','评价内容6','2021-03-20','用户名6','联系电话6','是',''),(1616228342070,'2021-03-20 08:19:01','202132016151420111747	','新鲜甜玉米','5','http://localhost:8080/jspmq82qg/upload/1616228326264.jpg','配送很快，玉米很鲜甜','2021-03-22','1','12312312312','是','感谢支持');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (121,'2021-03-20 08:03:20',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-20 08:03:20',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-20 08:03:20',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-20 08:03:20',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-20 08:03:20',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-20 08:03:20',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinzixun`
--

DROP TABLE IF EXISTS `discussshangpinzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616228039143 DEFAULT CHARSET=utf8 COMMENT='商品资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinzixun`
--

LOCK TABLES `discussshangpinzixun` WRITE;
/*!40000 ALTER TABLE `discussshangpinzixun` DISABLE KEYS */;
INSERT INTO `discussshangpinzixun` VALUES (111,'2021-03-20 08:03:20',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-20 08:03:20',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-20 08:03:20',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-20 08:03:20',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-20 08:03:20',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-20 08:03:20',6,6,'用户名6','评论内容6','回复内容6'),(1616228039142,'2021-03-20 08:13:59',1616227842298,1616227943236,NULL,'gfgh',NULL);
/*!40000 ALTER TABLE `discussshangpinzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616228115788 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1616228115787,'2021-03-20 08:15:14','202132016151420111747','shangpinxinxi',1616227943236,1616227901671,'新鲜甜玉米','http://localhost:8080/jspmq82qg/upload/1616227876631.jpg',4,10,10,40,40,1,'已完成','广东省梅州市梅江区江南街道百花洲市场');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616227864349 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2021-03-20 08:03:20','分类1'),(32,'2021-03-20 08:03:20','分类2'),(33,'2021-03-20 08:03:20','分类3'),(34,'2021-03-20 08:03:20','分类4'),(35,'2021-03-20 08:03:20','分类5'),(36,'2021-03-20 08:03:20','分类6'),(1616227851836,'2021-03-20 08:10:51','蔬菜'),(1616227856819,'2021-03-20 08:10:56','肉品'),(1616227864348,'2021-03-20 08:11:03','水果');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616227901672 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-03-20 08:03:20','商品名称1','分类1','http://localhost:8080/jspmq82qg/upload/1616227618053.jpg','规格1','产地1','保质期1','商品详情1\r\n','2021-03-20 16:06:54',3,99.9,1,99),(42,'2021-03-20 08:03:20','商品名称2','分类2','http://localhost:8080/jspmq82qg/upload/1616227625601.jpg','规格2','产地2','保质期2','商品详情2\r\n','2021-03-20 16:07:02',4,99.9,2,99),(43,'2021-03-20 08:03:20','商品名称3','分类3','http://localhost:8080/jspmq82qg/upload/1616227633021.jpg','规格3','产地3','保质期3','商品详情3\r\n','2021-03-20 16:07:10',5,99.9,3,99),(44,'2021-03-20 08:03:20','商品名称4','分类4','http://localhost:8080/jspmq82qg/upload/1616227639875.jpg','规格4','产地4','保质期4','商品详情4\r\n','2021-03-20 16:15:03',7,99.9,4,99),(45,'2021-03-20 08:03:20','商品名称5','分类5','http://localhost:8080/jspmq82qg/upload/1616227649145.jpg','规格5','产地5','保质期5','商品详情5\r\n','2021-03-20 16:20:44',13,99.9,5,99),(46,'2021-03-20 08:03:20','商品名称6','分类6','http://localhost:8080/jspmq82qg/upload/1616227661080.jpg','规格6','产地6','保质期6','商品详情6\r\n','2021-03-20 16:07:33',10,99.9,6,99),(1616227901671,'2021-03-20 08:11:41','新鲜甜玉米','蔬菜','http://localhost:8080/jspmq82qg/upload/1616227876631.jpg','2根','广西','7天','玉米介绍\r\n<img src=\"http://localhost:8080/jspmq82qg/upload/1616227899998.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmq82qg/upload/1616227899998.jpg\">\r\n','2021-03-20 16:15:22',6,10,5,96);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinzixun`
--

DROP TABLE IF EXISTS `shangpinzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '资讯标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616227842299 DEFAULT CHARSET=utf8 COMMENT='商品资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinzixun`
--

LOCK TABLES `shangpinzixun` WRITE;
/*!40000 ALTER TABLE `shangpinzixun` DISABLE KEYS */;
INSERT INTO `shangpinzixun` VALUES (21,'2021-03-20 08:03:20','资讯标题1','类型1','http://localhost:8080/jspmq82qg/upload/shangpinzixun_tupian1.jpg','内容1','2021-03-20'),(22,'2021-03-20 08:03:20','资讯标题2','类型2','http://localhost:8080/jspmq82qg/upload/1616227560333.jpg','内容2\r\n','2021-03-20'),(23,'2021-03-20 08:03:20','资讯标题3','类型3','http://localhost:8080/jspmq82qg/upload/1616227577932.jpg','内容3\r\n','2021-03-20'),(24,'2021-03-20 08:03:20','资讯标题4','类型4','http://localhost:8080/jspmq82qg/upload/1616227570366.jpg','内容4\r\n','2021-03-20'),(25,'2021-03-20 08:03:20','资讯标题5','类型5','http://localhost:8080/jspmq82qg/upload/1616227600489.jpg','内容5\r\n','2021-03-20'),(26,'2021-03-20 08:03:20','资讯标题6','类型6','http://localhost:8080/jspmq82qg/upload/1616227607752.jpg','内容6\r\n','2021-03-20'),(1616227842298,'2021-03-20 08:10:41','生鲜优惠资讯','优惠','http://localhost:8080/jspmq82qg/upload/1616227823867.jpg','全场生鲜参与优惠活动\r\n<img src=\"http://localhost:8080/jspmq82qg/upload/1616227840241.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmq82qg/upload/1616227840241.jpg\">\r\n','2021-03-20');
/*!40000 ALTER TABLE `shangpinzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616228054262 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616228034712,'2021-03-20 08:13:54',1616227943236,1616227842298,'shangpinzixun','生鲜优惠资讯','http://localhost:8080/jspmq82qg/upload/1616227823867.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','m4vx5tgafkhav5989m7euuxpyttueokh','2021-03-20 08:04:17','2021-03-20 09:04:17'),(2,1,'abo','users','管理员','ldkzcz962uxh208e31ti21yqrqrr5spm','2021-03-20 08:05:37','2021-03-20 09:19:18'),(3,1616227943236,'1','yonghu','用户','n7k4xdq74lrpz22ddpv7cj7q002e4w43','2021-03-20 08:12:28','2021-03-20 09:12:28');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-20 08:03:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616227943237 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-20 08:03:20','用户1','123456','姓名1','http://localhost:8080/jspmq82qg/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-20 08:03:20','用户2','123456','姓名2','http://localhost:8080/jspmq82qg/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-20 08:03:20','用户3','123456','姓名3','http://localhost:8080/jspmq82qg/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-20 08:03:20','用户4','123456','姓名4','http://localhost:8080/jspmq82qg/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-20 08:03:20','用户5','123456','姓名5','http://localhost:8080/jspmq82qg/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-20 08:03:20','用户6','123456','姓名6','http://localhost:8080/jspmq82qg/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1616227943236,'2021-03-20 08:12:23','1','1','陈一','http://localhost:8080/jspmq82qg/upload/1616227957014.jpg','女','12312312312',160);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-21 15:19:18
