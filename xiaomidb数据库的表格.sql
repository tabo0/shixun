/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.20 : Database - myxmshoping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myxmshoping` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myxmshoping`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `customerid` int(11) DEFAULT NULL COMMENT '客户id',
  `cnee` varchar(50) DEFAULT NULL COMMENT '客户的名字',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`addressId`,`customerid`,`cnee`,`phone`,`address`) values (1,1,'张三','111','北京海淀甲骨文'),(2,1,'甲骨文','222','北京朝阳科技文化一条街'),(3,2,'李四','333','北京大兴西红门');

/*Table structure for table `carshop` */

DROP TABLE IF EXISTS `carshop`;

CREATE TABLE `carshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `numbers` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `carshop` */

insert  into `carshop`(`id`,`customerid`,`productid`,`numbers`) values (3,2,4,2),(4,1,4,1);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cname` varchar(50) DEFAULT NULL COMMENT '客户账号',
  `cpass` varchar(50) DEFAULT NULL COMMENT '客户密码',
  `csex` varchar(11) DEFAULT NULL COMMENT '性别',
  `cage` int(11) DEFAULT NULL COMMENT '年龄',
  `realname` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`cid`,`cname`,`cpass`,`csex`,`cage`,`realname`,`phone`) values (1,'zs','D5396EA77C42FEBAF7C710BCACAD40C6','男',18,'张三','180111111'),(2,'admin','D5396EA77C42FEBAF7C710BCACAD40C6',NULL,NULL,NULL,NULL),(3,'aqwertyu','D5396EA77C42FEBAF7C710BCACAD40C6',NULL,NULL,NULL,NULL);

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `odid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单详情id 主键 自动增加',
  `oid` char(32) DEFAULT NULL COMMENT '订单id',
  `pid` int(11) DEFAULT NULL COMMENT '商品id',
  `pnumber` int(11) DEFAULT NULL COMMENT '商品数量',
  `ptotal` double(10,2) DEFAULT NULL COMMENT '商品总价',
  PRIMARY KEY (`odid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `orderdetail` */

insert  into `orderdetail`(`odid`,`oid`,`pid`,`pnumber`,`ptotal`) values (1,'abcd111222333444777888999000wwww',1,2,9996.00);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `content` varchar(200) DEFAULT NULL COMMENT '内容',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `image` varchar(200) DEFAULT NULL COMMENT '图片',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `typeid` int(11) DEFAULT NULL COMMENT '商品类型id',
  `date` datetime DEFAULT NULL COMMENT '创建商品的日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`content`,`price`,`image`,`number`,`typeid`,`date`) values (4,'小米MAX2','全金属 金色 4GB内存 64GB闪存',1599,'xmMAX2.jpg',500,1,'2018-01-02 00:00:00'),(5,'小米5X','全金属 金色 4GB内存 64GB闪存',1499,'xm5X.jpg',500,1,'2018-01-03 00:00:00'),(7,'红米Note5A','5.5英寸 粉色 2GB内存 16GB闪存',699,'hmNote5A.jpg',500,1,'2018-01-05 00:00:00'),(8,'红米Note4X','5.5英寸 绿色 4GB内存 64GB闪存',1299,'hmNote4X.jpg',500,1,'2018-01-06 00:00:00');

/*Table structure for table `producttype` */

DROP TABLE IF EXISTS `producttype`;

CREATE TABLE `producttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '商品类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `producttype` */

insert  into `producttype`(`id`,`name`) values (1,'手机'),(2,'电脑'),(3,'电视'),(11,'电视2'),(12,'电视3'),(13,'电视4');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rolename` varchar(20) DEFAULT NULL COMMENT '角色的名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`rolename`) values (1,'普通用户'),(2,'管理员');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uname` varchar(50) DEFAULT NULL COMMENT '账号',
  `upass` varchar(50) DEFAULT NULL COMMENT '密码',
  `udepartment` varchar(20) DEFAULT NULL COMMENT '部门',
  `realname` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`uid`,`uname`,`upass`,`udepartment`,`realname`,`roleid`) values (1,'zs','3E778A428DEA6B9C8ADA447BD5E2E616','办公室','张三',2),(2,'ls','3E778A428DEA6B9C8ADA447BD5E2E616','办公室','李四',1),(10,'ww','3E778A428DEA6B9C8ADA447BD5E2E616','开发部','王五',1),(11,'wt','3E778A428DEA6B9C8ADA447BD5E2E616','开发部','王六',1);

/*Table structure for table `xmorder` */

DROP TABLE IF EXISTS `xmorder`;

CREATE TABLE `xmorder` (
  `oid` char(32) NOT NULL COMMENT '订单号',
  `customerid` int(11) DEFAULT NULL COMMENT '客户id',
  `addressId` int(11) DEFAULT NULL COMMENT '地址id',
  `totalprice` double(10,2) DEFAULT NULL COMMENT '总价格',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` varchar(6) DEFAULT NULL COMMENT '状态',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xmorder` */

insert  into `xmorder`(`oid`,`customerid`,`addressId`,`totalprice`,`remarks`,`status`,`odate`) values ('abcd111222333444777888999000wwww',1,1,9996.00,'尽快送到','待发货','2019-12-19 20:07:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
