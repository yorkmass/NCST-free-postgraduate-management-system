/*
Navicat MySQL Data Transfer

Source Server         : yorkmass
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : yl

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2021-03-09 14:01:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bus_basicscore
-- ----------------------------
DROP TABLE IF EXISTS `bus_basicscore`;
CREATE TABLE `bus_basicscore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `deptname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdeptid` int(11) DEFAULT NULL,
  `pdeptname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avascore` float(10,3) DEFAULT NULL,
  `avastuscore` float(10,3) DEFAULT NULL,
  `addscore` float(10,3) DEFAULT NULL,
  `paddscore` float(10,3) DEFAULT NULL,
  `qualify` varchar(2) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '有或无',
  `rank` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bus_basicscore
-- ----------------------------
INSERT INTO `bus_basicscore` VALUES ('1', '201614120212', '豆华  ', '8', '16信管2     ', '3', '信管', '89.370', '3.760', '89.760', '89.760', '有', '1');
INSERT INTO `bus_basicscore` VALUES ('2', '201614120429', '俞磊  ', '12', '16信管4     ', '3', '信管', '89.030', '3.720', '88.890', '88.890', '有', '2');
INSERT INTO `bus_basicscore` VALUES ('3', '201614120417', '吴冰鑫   ', '12', '16信管4     ', '3', '信管', '87.360', '3.600', '87.490', '87.490', '有', '3');
INSERT INTO `bus_basicscore` VALUES ('4', '201614120306', '徐微微   ', '11', '16信管3     ', '3', '信管', '87.760', '3.650', '87.340', '87.340', '有', '4');
INSERT INTO `bus_basicscore` VALUES ('5', '201614120418', '陈玉翠   ', '12', '16信管4     ', '3', '信管', '87.390', '3.540', '87.050', '87.050', '有', '5');
INSERT INTO `bus_basicscore` VALUES ('6', '201614120120', '王杏  ', '7', '16信管1     ', '3', '信管', '86.360', '3.530', '86.270', '86.270', '有', '6');
INSERT INTO `bus_basicscore` VALUES ('7', '201614120106', '王丽娜   ', '7', '16信管1     ', '3', '信管', '86.470', '3.460', '86.100', '86.100', '有', '7');
INSERT INTO `bus_basicscore` VALUES ('8', '201614120118', '杨春雨   ', '7', '16信管1     ', '3', '信管', '86.050', '3.500', '85.800', '85.800', '无', '8');
INSERT INTO `bus_basicscore` VALUES ('9', '201614120230', '谢雨初   ', '8', '16信管2     ', '3', '信管', '86.600', '3.440', '85.790', '85.790', '有', '9');
INSERT INTO `bus_basicscore` VALUES ('10', '201614120216', '刘珂羽   ', '8', '16信管2     ', '3', '信管', '86.100', '3.460', '85.640', '85.640', '无', '10');
INSERT INTO `bus_basicscore` VALUES ('11', '201614120310', '孟箫  ', '11', '16信管3     ', '3', '信管', '86.120', '3.440', '85.390', '85.390', '有', '11');
INSERT INTO `bus_basicscore` VALUES ('12', '201614120219', '赵倩  ', '8', '16信管2     ', '3', '信管', '85.780', '3.470', '85.300', '85.300', '有', '12');
INSERT INTO `bus_basicscore` VALUES ('13', '201614120315', '樊娇  ', '11', '16信管3     ', '3', '信管', '85.880', '3.450', '85.270', '85.270', '有', '13');
INSERT INTO `bus_basicscore` VALUES ('14', '201614120410', '刘增宝   ', '12', '16信管4     ', '3', '信管', '85.050', '3.490', '85.240', '85.240', '有', '14');
INSERT INTO `bus_basicscore` VALUES ('15', '201614120413', '房士湉   ', '12', '16信管4     ', '3', '信管', '85.310', '3.490', '85.220', '85.220', '有', '15');
INSERT INTO `bus_basicscore` VALUES ('16', '201614120401', '张启荣   ', '12', '16信管4     ', '3', '信管', '85.490', '3.440', '85.190', '85.190', '有', '16');
INSERT INTO `bus_basicscore` VALUES ('17', '201614120312', '李忠鹏   ', '11', '16信管3     ', '3', '信管', '86.430', '3.430', '85.160', '85.160', '有', '17');
INSERT INTO `bus_basicscore` VALUES ('18', '201614120319', '刘振  ', '11', '16信管3     ', '3', '信管', '85.970', '3.430', '85.120', '85.120', '有', '18');
INSERT INTO `bus_basicscore` VALUES ('19', '201614120419', '贺彩云   ', '12', '16信管4     ', '3', '信管', '86.110', '3.420', '84.940', '84.940', '有', '19');
INSERT INTO `bus_basicscore` VALUES ('20', '201614120302', '段凯丽   ', '11', '16信管3     ', '3', '信管', '85.050', '3.430', '84.860', '84.860', '有', '20');
INSERT INTO `bus_basicscore` VALUES ('21', '201614120114', '张瑜  ', '7', '16信管1     ', '3', '信管', '84.820', '3.460', '84.810', '84.810', '有', '21');
INSERT INTO `bus_basicscore` VALUES ('22', '201614120415', '唐硕  ', '12', '16信管4     ', '3', '信管', '84.700', '3.440', '84.800', '84.800', '有', '22');
INSERT INTO `bus_basicscore` VALUES ('23', '201614120123', '叶晓阳   ', '7', '16信管1     ', '3', '信管', '85.220', '3.440', '84.670', '84.670', '有', '23');
INSERT INTO `bus_basicscore` VALUES ('24', '201614120309', '霍智华   ', '11', '16信管3     ', '3', '信管', '85.200', '3.420', '84.440', '84.440', '有', '24');
INSERT INTO `bus_basicscore` VALUES ('25', '201614120303', '李倩  ', '11', '16信管3     ', '3', '信管', '85.370', '3.400', '84.220', '84.220', '有', '25');
INSERT INTO `bus_basicscore` VALUES ('26', '201614890119', '王丽荣   ', '12', '16信管4     ', '3', '信管', '84.820', '3.350', '84.040', '84.040', '有', '26');
INSERT INTO `bus_basicscore` VALUES ('27', '201614120412', '李嘉烁   ', '12', '16信管4     ', '3', '信管', '84.390', '3.360', '83.660', '83.660', '有', '27');
INSERT INTO `bus_basicscore` VALUES ('28', '201614120326', '栗园扣   ', '11', '16信管3     ', '3', '信管', '84.470', '3.300', '83.590', '83.590', '有', '28');
INSERT INTO `bus_basicscore` VALUES ('29', '201614120305', '尹丽莹   ', '11', '16信管3     ', '3', '信管', '83.690', '3.300', '83.520', '83.520', '有', '29');
INSERT INTO `bus_basicscore` VALUES ('30', '201614120125', '李佳莹   ', '7', '16信管1     ', '3', '信管', '84.160', '3.310', '83.510', '83.510', '有', '30');
INSERT INTO `bus_basicscore` VALUES ('31', '201614120105', '张家瑗   ', '7', '16信管1     ', '3', '信管', '84.440', '3.280', '83.500', '83.500', '有', '31');
INSERT INTO `bus_basicscore` VALUES ('32', '201614120416', '张倩  ', '12', '16信管4     ', '3', '信管', '84.010', '3.330', '83.410', '83.410', '有', '32');
INSERT INTO `bus_basicscore` VALUES ('33', '201614120205', '袁美玲   ', '8', '16信管2     ', '3', '信管', '84.060', '3.260', '82.840', '82.840', '有', '33');
INSERT INTO `bus_basicscore` VALUES ('34', '201614120107', '杨柳  ', '7', '16信管1     ', '3', '信管', '83.480', '3.270', '82.830', '82.830', '有', '34');
INSERT INTO `bus_basicscore` VALUES ('35', '201614120409', '门川琨   ', '12', '16信管4     ', '3', '信管', '83.470', '3.270', '82.750', '82.750', '有', '35');
INSERT INTO `bus_basicscore` VALUES ('36', '201614120127', '曾莉美   ', '7', '16信管1     ', '3', '信管', '83.320', '3.240', '82.430', '82.430', '有', '36');
INSERT INTO `bus_basicscore` VALUES ('37', '201614120423', '姚懿  ', '12', '16信管4     ', '3', '信管', '83.390', '3.170', '82.110', '82.110', '有', '37');
INSERT INTO `bus_basicscore` VALUES ('38', '201614120203', '王楠  ', '8', '16信管2     ', '3', '信管', '82.690', '3.220', '82.090', '82.090', '无', '38');
INSERT INTO `bus_basicscore` VALUES ('39', '201614120121', '王薇  ', '7', '16信管1     ', '3', '信管', '83.760', '3.190', '81.990', '81.990', '无', '39');
INSERT INTO `bus_basicscore` VALUES ('40', '201614120304', '马超华   ', '11', '16信管3     ', '3', '信管', '82.570', '3.160', '81.960', '81.960', '无', '40');
INSERT INTO `bus_basicscore` VALUES ('41', '201614120411', '李雅楠   ', '12', '16信管4     ', '3', '信管', '82.930', '3.180', '81.920', '81.920', '无', '41');
INSERT INTO `bus_basicscore` VALUES ('42', '201614120404', '赵娣  ', '12', '16信管4     ', '3', '信管', '82.940', '3.170', '81.850', '81.850', '无', '42');
INSERT INTO `bus_basicscore` VALUES ('43', '201614120214', '牛连君   ', '8', '16信管2     ', '3', '信管', '82.670', '3.190', '81.850', '81.850', '无', '43');
INSERT INTO `bus_basicscore` VALUES ('44', '201614120206', '谢明慧   ', '8', '16信管2     ', '3', '信管', '83.280', '3.200', '81.850', '81.850', '无', '44');
INSERT INTO `bus_basicscore` VALUES ('45', '201614120115', '郭萍萍   ', '7', '16信管1     ', '3', '信管', '82.860', '3.180', '81.810', '81.810', '无', '45');
INSERT INTO `bus_basicscore` VALUES ('46', '201614120406', '刘晨悦   ', '12', '16信管4     ', '3', '信管', '82.290', '3.160', '81.680', '81.680', '无', '46');
INSERT INTO `bus_basicscore` VALUES ('47', '201614120217', '尹智涛   ', '8', '16信管2     ', '3', '信管', '82.100', '3.130', '81.540', '81.540', '无', '47');
INSERT INTO `bus_basicscore` VALUES ('48', '201614120403', '赵灿  ', '12', '16信管4     ', '3', '信管', '82.270', '3.070', '81.050', '81.050', '无', '48');
INSERT INTO `bus_basicscore` VALUES ('49', '201614120325', '李俊  ', '11', '16信管3     ', '3', '信管', '81.320', '3.060', '81.000', '81.000', '无', '49');
INSERT INTO `bus_basicscore` VALUES ('50', '201614120313', '石卓娅   ', '11', '16信管3     ', '3', '信管', '81.860', '3.100', '80.870', '80.870', '无', '50');
INSERT INTO `bus_basicscore` VALUES ('51', '201614120117', '李慧晴   ', '7', '16信管1     ', '3', '信管', '81.840', '3.070', '80.790', '80.790', '无', '51');
INSERT INTO `bus_basicscore` VALUES ('52', '201614120211', '冯娇  ', '8', '16信管2     ', '3', '信管', '81.760', '3.080', '80.640', '80.640', '无', '52');
INSERT INTO `bus_basicscore` VALUES ('53', '201614120209', '刘迪  ', '8', '16信管2     ', '3', '信管', '81.750', '3.050', '80.410', '80.410', '无', '53');
INSERT INTO `bus_basicscore` VALUES ('54', '201614120108', '索佳华   ', '7', '16信管1     ', '3', '信管', '80.980', '2.980', '80.110', '80.110', '无', '54');
INSERT INTO `bus_basicscore` VALUES ('55', '201614120119', '李天天   ', '7', '16信管1     ', '3', '信管', '80.900', '3.010', '79.950', '79.950', '无', '55');
INSERT INTO `bus_basicscore` VALUES ('56', '201614120422', '王灏  ', '12', '16信管4     ', '3', '信管', '80.670', '3.000', '79.660', '79.660', '无', '56');
INSERT INTO `bus_basicscore` VALUES ('57', '201614120320', '王蕊  ', '11', '16信管3     ', '3', '信管', '81.140', '3.000', '79.610', '79.610', '无', '57');
INSERT INTO `bus_basicscore` VALUES ('58', '201614110114', '田梦先   ', '12', '16信管4     ', '3', '信管', '81.100', '2.910', '79.490', '79.490', '无', '58');
INSERT INTO `bus_basicscore` VALUES ('59', '201614120207', '王凡  ', '8', '16信管2     ', '3', '信管', '80.130', '2.960', '79.440', '79.440', '无', '59');
INSERT INTO `bus_basicscore` VALUES ('60', '201614120226', '郝瀚  ', '8', '16信管2     ', '3', '信管', '81.450', '2.940', '79.390', '79.390', '无', '60');
INSERT INTO `bus_basicscore` VALUES ('61', '201614120421', '郑莹  ', '12', '16信管4     ', '3', '信管', '81.130', '2.940', '79.270', '79.270', '无', '61');
INSERT INTO `bus_basicscore` VALUES ('62', '201614120311', '李玥澎   ', '11', '16信管3     ', '3', '信管', '80.620', '2.950', '79.140', '79.140', '无', '62');
INSERT INTO `bus_basicscore` VALUES ('63', '201614120228', '李继超   ', '8', '16信管2     ', '3', '信管', '80.620', '2.950', '79.140', '79.140', '无', '63');
INSERT INTO `bus_basicscore` VALUES ('64', '201614120327', '孙淑娴   ', '11', '16信管3     ', '3', '信管', '79.820', '2.920', '78.770', '78.770', '无', '64');
INSERT INTO `bus_basicscore` VALUES ('65', '201614120109', '宋康  ', '7', '16信管1     ', '3', '信管', '80.260', '2.910', '78.750', '78.750', '无', '65');
INSERT INTO `bus_basicscore` VALUES ('66', '201614120126', '刘文龙   ', '7', '16信管1     ', '3', '信管', '78.840', '2.880', '78.560', '78.560', '无', '66');
INSERT INTO `bus_basicscore` VALUES ('67', '201614120111', '王雨晴   ', '7', '16信管1     ', '3', '信管', '79.460', '2.880', '78.540', '78.540', '无', '67');
INSERT INTO `bus_basicscore` VALUES ('68', '201614120317', '付香华   ', '11', '16信管3     ', '3', '信管', '80.680', '2.890', '78.490', '78.490', '无', '68');
INSERT INTO `bus_basicscore` VALUES ('69', '201614120329', '张娴  ', '11', '16信管3     ', '3', '信管', '79.740', '2.880', '78.380', '78.380', '无', '69');
INSERT INTO `bus_basicscore` VALUES ('70', '201614120202', '信德宇   ', '8', '16信管2     ', '3', '信管', '79.390', '2.860', '78.020', '78.020', '无', '70');
INSERT INTO `bus_basicscore` VALUES ('71', '201614120323', '郝亚洁   ', '11', '16信管3     ', '3', '信管', '79.060', '2.840', '77.930', '77.930', '无', '71');
INSERT INTO `bus_basicscore` VALUES ('72', '201614120103', '屈梦琦   ', '7', '16信管1     ', '3', '信管', '78.510', '2.840', '77.680', '77.680', '无', '72');
INSERT INTO `bus_basicscore` VALUES ('73', '201614120222', '张建龙   ', '8', '16信管2     ', '3', '信管', '79.960', '2.840', '77.560', '77.560', '无', '73');
INSERT INTO `bus_basicscore` VALUES ('74', '201614120112', '曹现凯   ', '7', '16信管1     ', '3', '信管', '78.710', '2.820', '77.510', '77.510', '无', '74');
INSERT INTO `bus_basicscore` VALUES ('75', '201614120129', '王佳  ', '7', '16信管1     ', '3', '信管', '79.230', '2.760', '77.210', '77.210', '无', '75');
INSERT INTO `bus_basicscore` VALUES ('76', '201614120208', '王一凡   ', '8', '16信管2     ', '3', '信管', '77.200', '2.750', '76.950', '76.950', '无', '76');
INSERT INTO `bus_basicscore` VALUES ('77', '201614120321', '颜路樊   ', '11', '16信管3     ', '3', '信管', '78.630', '2.770', '76.900', '76.900', '无', '77');
INSERT INTO `bus_basicscore` VALUES ('78', '201614120402', '王笑颖   ', '12', '16信管4     ', '3', '信管', '78.310', '2.740', '76.620', '76.620', '无', '78');
INSERT INTO `bus_basicscore` VALUES ('79', '201614120425', '贺紫薇   ', '12', '16信管4     ', '3', '信管', '78.780', '2.680', '76.590', '76.590', '无', '79');
INSERT INTO `bus_basicscore` VALUES ('80', '201614120101', '孟畅  ', '7', '16信管1     ', '3', '信管', '77.920', '2.700', '76.290', '76.290', '无', '80');
INSERT INTO `bus_basicscore` VALUES ('81', '201614120324', '徐鹏  ', '11', '16信管3     ', '3', '信管', '77.620', '2.670', '75.910', '75.910', '无', '81');
INSERT INTO `bus_basicscore` VALUES ('82', '201614120124', '冯佳欢   ', '7', '16信管1     ', '3', '信管', '77.690', '2.720', '75.860', '75.860', '无', '82');
INSERT INTO `bus_basicscore` VALUES ('83', '201614120224', '林芝培   ', '8', '16信管2     ', '3', '信管', '77.430', '2.670', '75.760', '75.760', '无', '83');
INSERT INTO `bus_basicscore` VALUES ('84', '201614120128', '刘工玮   ', '7', '16信管1     ', '3', '信管', '77.710', '2.630', '75.660', '75.660', '无', '84');
INSERT INTO `bus_basicscore` VALUES ('85', '201614120316', '杨璐嘉   ', '11', '16信管3     ', '3', '信管', '77.150', '2.650', '75.600', '75.600', '无', '85');
INSERT INTO `bus_basicscore` VALUES ('86', '201614120113', '韩子浩   ', '7', '16信管1     ', '3', '信管', '77.760', '2.590', '75.500', '75.500', '无', '86');
INSERT INTO `bus_basicscore` VALUES ('87', '201614120104', '王鲲鹏   ', '7', '16信管1     ', '3', '信管', '77.310', '2.630', '75.440', '75.440', '无', '87');
INSERT INTO `bus_basicscore` VALUES ('88', '201614120318', '王通  ', '11', '16信管3     ', '3', '信管', '77.920', '2.640', '75.220', '76.090', '无', '88');
INSERT INTO `bus_basicscore` VALUES ('89', '201614120307', '刘国梁   ', '11', '16信管3     ', '3', '信管', '76.830', '2.590', '75.080', '75.080', '无', '89');
INSERT INTO `bus_basicscore` VALUES ('90', '201614120201', '刘宇  ', '8', '16信管2     ', '3', '信管', '76.370', '2.600', '75.010', '75.010', '无', '90');
INSERT INTO `bus_basicscore` VALUES ('91', '201614120227', '谢欢  ', '8', '16信管2     ', '3', '信管', '76.430', '2.550', '74.860', '74.860', '无', '91');
INSERT INTO `bus_basicscore` VALUES ('92', '201614120130', '朱必杰   ', '7', '16信管1     ', '3', '信管', '76.190', '2.600', '74.850', '74.850', '无', '92');
INSERT INTO `bus_basicscore` VALUES ('93', '201614120215', '王佳慧   ', '8', '16信管2     ', '3', '信管', '77.840', '2.690', '74.750', '75.950', '无', '93');
INSERT INTO `bus_basicscore` VALUES ('94', '201614120220', '杨亭亭   ', '8', '16信管2     ', '3', '信管', '77.580', '2.600', '74.290', '75.460', '无', '94');
INSERT INTO `bus_basicscore` VALUES ('95', '201614120308', '郝鹏昭   ', '11', '16信管3     ', '3', '信管', '75.440', '2.510', '74.290', '74.290', '无', '95');
INSERT INTO `bus_basicscore` VALUES ('96', '201614120330', '李琛  ', '11', '16信管3     ', '3', '信管', '75.860', '2.560', '74.250', '74.250', '无', '96');
INSERT INTO `bus_basicscore` VALUES ('97', '201614120427', '廉冰  ', '12', '16信管4     ', '3', '信管', '76.490', '2.480', '74.250', '74.250', '无', '97');
INSERT INTO `bus_basicscore` VALUES ('98', '201614120408', '李清钊   ', '12', '16信管4     ', '3', '信管', '78.260', '2.650', '74.090', '75.800', '无', '98');
INSERT INTO `bus_basicscore` VALUES ('99', '201614030417', '孙远顺   ', '12', '16信管4     ', '3', '信管', '75.340', '2.520', '73.980', '73.980', '无', '99');
INSERT INTO `bus_basicscore` VALUES ('100', '201614120414', '齐宝树   ', '12', '16信管4     ', '3', '信管', '75.840', '2.520', '73.950', '73.950', '无', '100');
INSERT INTO `bus_basicscore` VALUES ('101', '201614120314', '纪江贤   ', '11', '16信管3     ', '3', '信管', '74.970', '2.580', '73.880', '74.750', '无', '101');
INSERT INTO `bus_basicscore` VALUES ('102', '201614120229', '兰丁  ', '8', '16信管2     ', '3', '信管', '75.790', '2.510', '73.740', '73.740', '无', '102');
INSERT INTO `bus_basicscore` VALUES ('103', '201614120204', '李博  ', '8', '16信管2     ', '3', '信管', '74.770', '2.490', '73.460', '73.460', '无', '103');
INSERT INTO `bus_basicscore` VALUES ('104', '201614120218', '路文开   ', '8', '16信管2     ', '3', '信管', '76.970', '2.560', '73.230', '74.830', '无', '104');
INSERT INTO `bus_basicscore` VALUES ('105', '201614120102', '孙鹏辉   ', '7', '16信管1     ', '3', '信管', '77.360', '2.630', '73.160', '75.610', '无', '105');
INSERT INTO `bus_basicscore` VALUES ('106', '201614150128', '白兵宜   ', '12', '16信管4     ', '3', '信管', '74.110', '2.420', '72.790', '72.790', '无', '106');
INSERT INTO `bus_basicscore` VALUES ('107', '201614120116', '许贵东   ', '7', '16信管1     ', '3', '信管', '75.750', '2.440', '72.700', '73.530', '无', '107');
INSERT INTO `bus_basicscore` VALUES ('108', '201614120328', '杨尚智   ', '11', '16信管3     ', '3', '信管', '75.990', '2.510', '72.600', '74.310', '无', '108');
INSERT INTO `bus_basicscore` VALUES ('109', '201614120424', '黄红  ', '12', '16信管4     ', '3', '信管', '75.560', '2.410', '71.890', '72.770', '无', '109');
INSERT INTO `bus_basicscore` VALUES ('110', '201414030429', '任博冲   ', '7', '16信管1     ', '3', '信管', '73.170', '2.440', '71.850', '71.850', '无', '110');
INSERT INTO `bus_basicscore` VALUES ('111', '201614120405', '米达  ', '12', '16信管4     ', '3', '信管', '75.870', '2.450', '71.840', '73.620', '无', '111');
INSERT INTO `bus_basicscore` VALUES ('112', '201614120223', '杨颖  ', '8', '16信管2     ', '3', '信管', '77.450', '2.520', '71.810', '74.620', '无', '112');
INSERT INTO `bus_basicscore` VALUES ('113', '201614120225', '盖方  ', '8', '16信管2     ', '3', '信管', '77.610', '2.540', '71.660', '74.570', '无', '113');
INSERT INTO `bus_basicscore` VALUES ('114', '201614120221', '郝迟  ', '8', '16信管2     ', '3', '信管', '75.040', '2.440', '71.200', '73.440', '无', '114');
INSERT INTO `bus_basicscore` VALUES ('115', '201614300225', '冉杰  ', '12', '16信管4     ', '3', '信管', '74.350', '2.400', '71.020', '72.630', '无', '115');
INSERT INTO `bus_basicscore` VALUES ('116', '201614120110', '霍帅岗   ', '7', '16信管1     ', '3', '信管', '74.790', '2.390', '70.960', '72.640', '无', '116');
INSERT INTO `bus_basicscore` VALUES ('117', '201614120213', '宋晨阳   ', '8', '16信管2     ', '3', '信管', '74.580', '2.340', '70.630', '72.270', '无', '117');
INSERT INTO `bus_basicscore` VALUES ('118', '201614120122', '牛学朋   ', '7', '16信管1     ', '3', '信管', '72.010', '2.260', '69.760', '71.240', '无', '118');
INSERT INTO `bus_basicscore` VALUES ('119', '201614120322', '王云昊   ', '11', '16信管3     ', '3', '信管', '73.100', '2.230', '69.230', '71.110', '无', '119');
INSERT INTO `bus_basicscore` VALUES ('120', '201414120131', '陶士恒   ', '7', '16信管1     ', '3', '信管', '69.600', '2.190', '69.050', '69.050', '无', '120');
INSERT INTO `bus_basicscore` VALUES ('121', '201614120426', '邓可为   ', '12', '16信管4     ', '3', '信管', '73.580', '2.270', '68.390', '72.010', '无', '121');
INSERT INTO `bus_basicscore` VALUES ('122', '201614120210', '张牛  ', '8', '16信管2     ', '3', '信管', '72.230', '2.180', '66.880', '70.800', '无', '122');
INSERT INTO `bus_basicscore` VALUES ('123', '201614120420', '苑康杰   ', '12', '16信管4     ', '3', '信管', '68.930', '2.000', '59.700', '65.810', '无', '123');
INSERT INTO `bus_basicscore` VALUES ('124', '201614120301', '南瀚文   ', '11', '16信管3     ', '3', '信管', '66.750', '1.710', '53.080', '65.130', '无', '124');

-- ----------------------------
-- Table structure for bus_comprehensive
-- ----------------------------
DROP TABLE IF EXISTS `bus_comprehensive`;
CREATE TABLE `bus_comprehensive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `deptname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `term` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submittime` datetime DEFAULT NULL,
  `compscore` float(10,3) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filetitle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filecontent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jstatus` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bus_comprehensive
-- ----------------------------

-- ----------------------------
-- Table structure for bus_terms
-- ----------------------------
DROP TABLE IF EXISTS `bus_terms`;
CREATE TABLE `bus_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `term` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bus_terms
-- ----------------------------
INSERT INTO `bus_terms` VALUES ('1', '2016年秋');
INSERT INTO `bus_terms` VALUES ('2', '2017年春');
INSERT INTO `bus_terms` VALUES ('3', '2017年秋');
INSERT INTO `bus_terms` VALUES ('4', '2018年春');
INSERT INTO `bus_terms` VALUES ('5', '2018年秋');
INSERT INTO `bus_terms` VALUES ('6', '2019年春');
INSERT INTO `bus_terms` VALUES ('7', '2020年春');
INSERT INTO `bus_terms` VALUES ('8', '2020年秋');

-- ----------------------------
-- Table structure for bus_totlescore
-- ----------------------------
DROP TABLE IF EXISTS `bus_totlescore`;
CREATE TABLE `bus_totlescore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `deptname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m21` float(10,3) DEFAULT '0.000',
  `m22` float(10,3) DEFAULT '0.000',
  `m12` float(10,3) DEFAULT '0.000',
  `m11` float(10,3) DEFAULT '0.000',
  `year` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totlescore` float(10,3) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `opername` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m31` float(10,3) DEFAULT '0.000',
  `m32` float(10,3) DEFAULT '0.000',
  `addrank` int(11) DEFAULT NULL,
  `addava` float(10,3) DEFAULT NULL,
  `basicrank` int(11) DEFAULT NULL,
  `basicesocre` float(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bus_totlescore
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL COMMENT '是否展开，0不展开，1展开',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '是否可用，0不可用，1可用',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '华北理工大学管理学院', '1', '最高权力机关', '华北理工大学', '1', '1', '2020-03-08 14:49:02');
INSERT INTO `sys_dept` VALUES ('3', '1', '信管', '1', '信息管理与信息系统学生\n', '专业', '1', '2', '2020-03-08 06:51:31');
INSERT INTO `sys_dept` VALUES ('4', '1', '工商', '1', '工商管理学生', '专业', '1', '3', '2020-03-08 06:52:24');
INSERT INTO `sys_dept` VALUES ('5', '1', '社保', '1', '劳动与社会保障专业', '专业', '1', '4', '2020-03-08 06:53:28');
INSERT INTO `sys_dept` VALUES ('7', '3', '16信管1', '1', '班级', '班级', '1', '5', '2020-03-17 13:10:29');
INSERT INTO `sys_dept` VALUES ('8', '3', '16信管2', '1', '班级', '班级', '1', '6', '2020-03-17 13:10:46');
INSERT INTO `sys_dept` VALUES ('9', '4', '16工商1', '1', '班级', '班级', '1', '7', '2020-03-17 13:11:06');
INSERT INTO `sys_dept` VALUES ('10', '5', '16社保1', '1', '', '班级', '1', '8', '2020-03-17 13:11:23');
INSERT INTO `sys_dept` VALUES ('11', '3', '16信管3', '1', '', '华北理工大学', '1', '9', '2020-04-25 10:03:04');
INSERT INTO `sys_dept` VALUES ('12', '3', '16信管4', '1', '', '华北理工大学', '1', '10', '2020-04-25 10:03:19');

-- ----------------------------
-- Table structure for sys_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=613 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
INSERT INTO `sys_loginfo` VALUES ('267', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 08:54:41');
INSERT INTO `sys_loginfo` VALUES ('268', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 08:55:21');
INSERT INTO `sys_loginfo` VALUES ('269', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 08:56:33');
INSERT INTO `sys_loginfo` VALUES ('270', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 09:12:42');
INSERT INTO `sys_loginfo` VALUES ('271', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 09:15:53');
INSERT INTO `sys_loginfo` VALUES ('272', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 09:16:58');
INSERT INTO `sys_loginfo` VALUES ('273', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 12:16:11');
INSERT INTO `sys_loginfo` VALUES ('274', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 12:31:09');
INSERT INTO `sys_loginfo` VALUES ('275', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 04:36:50');
INSERT INTO `sys_loginfo` VALUES ('276', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 04:55:26');
INSERT INTO `sys_loginfo` VALUES ('277', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 04:59:08');
INSERT INTO `sys_loginfo` VALUES ('278', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:03:41');
INSERT INTO `sys_loginfo` VALUES ('279', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:05:10');
INSERT INTO `sys_loginfo` VALUES ('280', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:22:29');
INSERT INTO `sys_loginfo` VALUES ('281', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:47:54');
INSERT INTO `sys_loginfo` VALUES ('282', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:51:46');
INSERT INTO `sys_loginfo` VALUES ('283', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 06:05:29');
INSERT INTO `sys_loginfo` VALUES ('284', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 06:07:31');
INSERT INTO `sys_loginfo` VALUES ('285', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 06:11:29');
INSERT INTO `sys_loginfo` VALUES ('286', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 08:44:49');
INSERT INTO `sys_loginfo` VALUES ('287', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 08:47:33');
INSERT INTO `sys_loginfo` VALUES ('288', 'shiro-shiro', '0:0:0:0:0:0:0:1', '2020-03-10 08:49:31');
INSERT INTO `sys_loginfo` VALUES ('289', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 08:49:41');
INSERT INTO `sys_loginfo` VALUES ('290', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 09:08:02');
INSERT INTO `sys_loginfo` VALUES ('291', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 09:14:20');
INSERT INTO `sys_loginfo` VALUES ('292', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 05:24:17');
INSERT INTO `sys_loginfo` VALUES ('293', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 05:30:34');
INSERT INTO `sys_loginfo` VALUES ('294', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 05:53:38');
INSERT INTO `sys_loginfo` VALUES ('295', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:08:17');
INSERT INTO `sys_loginfo` VALUES ('296', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:18:10');
INSERT INTO `sys_loginfo` VALUES ('299', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:28:09');
INSERT INTO `sys_loginfo` VALUES ('300', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:31:53');
INSERT INTO `sys_loginfo` VALUES ('301', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:32:39');
INSERT INTO `sys_loginfo` VALUES ('302', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:35:41');
INSERT INTO `sys_loginfo` VALUES ('303', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:50:42');
INSERT INTO `sys_loginfo` VALUES ('304', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:54:33');
INSERT INTO `sys_loginfo` VALUES ('305', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 12:51:29');
INSERT INTO `sys_loginfo` VALUES ('306', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 12:57:41');
INSERT INTO `sys_loginfo` VALUES ('307', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 12:58:46');
INSERT INTO `sys_loginfo` VALUES ('308', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 12:59:33');
INSERT INTO `sys_loginfo` VALUES ('309', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:02:14');
INSERT INTO `sys_loginfo` VALUES ('310', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:03:05');
INSERT INTO `sys_loginfo` VALUES ('311', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:04:16');
INSERT INTO `sys_loginfo` VALUES ('312', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:06:12');
INSERT INTO `sys_loginfo` VALUES ('313', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:17:27');
INSERT INTO `sys_loginfo` VALUES ('314', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:26:25');
INSERT INTO `sys_loginfo` VALUES ('315', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:34:23');
INSERT INTO `sys_loginfo` VALUES ('316', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 13:34:46');
INSERT INTO `sys_loginfo` VALUES ('317', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 04:39:29');
INSERT INTO `sys_loginfo` VALUES ('318', '江楠-1002', '0:0:0:0:0:0:0:1', '2020-03-18 04:46:30');
INSERT INTO `sys_loginfo` VALUES ('319', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 04:47:14');
INSERT INTO `sys_loginfo` VALUES ('320', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-03-18 04:47:30');
INSERT INTO `sys_loginfo` VALUES ('321', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-03-18 04:48:10');
INSERT INTO `sys_loginfo` VALUES ('322', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 04:48:25');
INSERT INTO `sys_loginfo` VALUES ('323', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 07:32:07');
INSERT INTO `sys_loginfo` VALUES ('324', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 07:36:46');
INSERT INTO `sys_loginfo` VALUES ('325', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 09:09:50');
INSERT INTO `sys_loginfo` VALUES ('326', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 09:11:40');
INSERT INTO `sys_loginfo` VALUES ('327', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-25 13:06:32');
INSERT INTO `sys_loginfo` VALUES ('328', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-26 07:14:44');
INSERT INTO `sys_loginfo` VALUES ('329', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-26 07:21:59');
INSERT INTO `sys_loginfo` VALUES ('330', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-26 07:28:07');
INSERT INTO `sys_loginfo` VALUES ('331', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-26 08:11:00');
INSERT INTO `sys_loginfo` VALUES ('332', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-26 08:15:51');
INSERT INTO `sys_loginfo` VALUES ('333', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-03-26 08:19:48');
INSERT INTO `sys_loginfo` VALUES ('334', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-26 08:20:07');
INSERT INTO `sys_loginfo` VALUES ('335', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-26 08:42:31');
INSERT INTO `sys_loginfo` VALUES ('336', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-22 13:41:26');
INSERT INTO `sys_loginfo` VALUES ('337', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 05:29:54');
INSERT INTO `sys_loginfo` VALUES ('338', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 05:33:22');
INSERT INTO `sys_loginfo` VALUES ('339', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:00:57');
INSERT INTO `sys_loginfo` VALUES ('340', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:16:13');
INSERT INTO `sys_loginfo` VALUES ('341', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:23:16');
INSERT INTO `sys_loginfo` VALUES ('342', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:26:28');
INSERT INTO `sys_loginfo` VALUES ('343', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:28:24');
INSERT INTO `sys_loginfo` VALUES ('344', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:31:50');
INSERT INTO `sys_loginfo` VALUES ('345', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:33:15');
INSERT INTO `sys_loginfo` VALUES ('346', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:38:52');
INSERT INTO `sys_loginfo` VALUES ('347', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:41:00');
INSERT INTO `sys_loginfo` VALUES ('348', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:41:49');
INSERT INTO `sys_loginfo` VALUES ('349', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:43:50');
INSERT INTO `sys_loginfo` VALUES ('350', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:44:37');
INSERT INTO `sys_loginfo` VALUES ('351', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:45:30');
INSERT INTO `sys_loginfo` VALUES ('352', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:46:32');
INSERT INTO `sys_loginfo` VALUES ('353', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-23 09:46:59');
INSERT INTO `sys_loginfo` VALUES ('354', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 05:12:09');
INSERT INTO `sys_loginfo` VALUES ('355', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 06:44:36');
INSERT INTO `sys_loginfo` VALUES ('356', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 07:30:15');
INSERT INTO `sys_loginfo` VALUES ('357', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 08:02:56');
INSERT INTO `sys_loginfo` VALUES ('358', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 08:12:21');
INSERT INTO `sys_loginfo` VALUES ('359', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 08:15:01');
INSERT INTO `sys_loginfo` VALUES ('360', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 08:25:31');
INSERT INTO `sys_loginfo` VALUES ('361', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 08:28:04');
INSERT INTO `sys_loginfo` VALUES ('362', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 08:38:27');
INSERT INTO `sys_loginfo` VALUES ('363', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:02:09');
INSERT INTO `sys_loginfo` VALUES ('364', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:06:06');
INSERT INTO `sys_loginfo` VALUES ('365', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:12:12');
INSERT INTO `sys_loginfo` VALUES ('366', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:13:11');
INSERT INTO `sys_loginfo` VALUES ('367', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:17:05');
INSERT INTO `sys_loginfo` VALUES ('368', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:18:30');
INSERT INTO `sys_loginfo` VALUES ('369', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:21:55');
INSERT INTO `sys_loginfo` VALUES ('370', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:25:15');
INSERT INTO `sys_loginfo` VALUES ('371', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:26:44');
INSERT INTO `sys_loginfo` VALUES ('372', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:27:37');
INSERT INTO `sys_loginfo` VALUES ('373', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:29:04');
INSERT INTO `sys_loginfo` VALUES ('374', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:31:32');
INSERT INTO `sys_loginfo` VALUES ('375', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:36:44');
INSERT INTO `sys_loginfo` VALUES ('376', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:37:51');
INSERT INTO `sys_loginfo` VALUES ('377', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:40:15');
INSERT INTO `sys_loginfo` VALUES ('378', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 10:40:27');
INSERT INTO `sys_loginfo` VALUES ('379', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 12:04:33');
INSERT INTO `sys_loginfo` VALUES ('380', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 12:08:46');
INSERT INTO `sys_loginfo` VALUES ('381', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 12:14:36');
INSERT INTO `sys_loginfo` VALUES ('382', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 12:19:59');
INSERT INTO `sys_loginfo` VALUES ('383', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 13:02:14');
INSERT INTO `sys_loginfo` VALUES ('384', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 13:04:18');
INSERT INTO `sys_loginfo` VALUES ('385', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 13:10:07');
INSERT INTO `sys_loginfo` VALUES ('386', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 13:11:32');
INSERT INTO `sys_loginfo` VALUES ('387', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 13:16:46');
INSERT INTO `sys_loginfo` VALUES ('388', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 13:19:20');
INSERT INTO `sys_loginfo` VALUES ('389', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 05:39:29');
INSERT INTO `sys_loginfo` VALUES ('390', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 05:51:34');
INSERT INTO `sys_loginfo` VALUES ('391', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 05:53:41');
INSERT INTO `sys_loginfo` VALUES ('392', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 05:57:13');
INSERT INTO `sys_loginfo` VALUES ('393', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 05:58:28');
INSERT INTO `sys_loginfo` VALUES ('394', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 05:59:25');
INSERT INTO `sys_loginfo` VALUES ('395', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 06:05:40');
INSERT INTO `sys_loginfo` VALUES ('396', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 06:14:37');
INSERT INTO `sys_loginfo` VALUES ('397', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 06:16:48');
INSERT INTO `sys_loginfo` VALUES ('398', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 07:14:15');
INSERT INTO `sys_loginfo` VALUES ('399', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 07:27:02');
INSERT INTO `sys_loginfo` VALUES ('400', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 07:36:04');
INSERT INTO `sys_loginfo` VALUES ('401', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 07:36:54');
INSERT INTO `sys_loginfo` VALUES ('402', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 07:37:04');
INSERT INTO `sys_loginfo` VALUES ('403', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 07:37:31');
INSERT INTO `sys_loginfo` VALUES ('404', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 07:40:29');
INSERT INTO `sys_loginfo` VALUES ('405', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 07:43:09');
INSERT INTO `sys_loginfo` VALUES ('406', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 07:51:43');
INSERT INTO `sys_loginfo` VALUES ('407', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 07:54:42');
INSERT INTO `sys_loginfo` VALUES ('408', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 07:56:06');
INSERT INTO `sys_loginfo` VALUES ('409', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-04-26 07:56:29');
INSERT INTO `sys_loginfo` VALUES ('410', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 07:59:12');
INSERT INTO `sys_loginfo` VALUES ('411', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 08:02:11');
INSERT INTO `sys_loginfo` VALUES ('412', '江楠-1002', '0:0:0:0:0:0:0:1', '2020-04-26 08:02:46');
INSERT INTO `sys_loginfo` VALUES ('413', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 08:03:10');
INSERT INTO `sys_loginfo` VALUES ('414', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 09:46:17');
INSERT INTO `sys_loginfo` VALUES ('415', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 09:51:58');
INSERT INTO `sys_loginfo` VALUES ('416', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 09:52:39');
INSERT INTO `sys_loginfo` VALUES ('417', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 10:22:44');
INSERT INTO `sys_loginfo` VALUES ('418', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 10:28:13');
INSERT INTO `sys_loginfo` VALUES ('419', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 10:28:30');
INSERT INTO `sys_loginfo` VALUES ('420', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-04-26 10:28:46');
INSERT INTO `sys_loginfo` VALUES ('421', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 11:13:24');
INSERT INTO `sys_loginfo` VALUES ('422', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 11:16:46');
INSERT INTO `sys_loginfo` VALUES ('423', '超级管理员-admin', '127.0.0.1', '2020-04-26 11:17:57');
INSERT INTO `sys_loginfo` VALUES ('424', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 11:20:35');
INSERT INTO `sys_loginfo` VALUES ('425', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:21:12');
INSERT INTO `sys_loginfo` VALUES ('426', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:26:14');
INSERT INTO `sys_loginfo` VALUES ('427', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:30:55');
INSERT INTO `sys_loginfo` VALUES ('428', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:32:13');
INSERT INTO `sys_loginfo` VALUES ('429', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:42:27');
INSERT INTO `sys_loginfo` VALUES ('430', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:55:17');
INSERT INTO `sys_loginfo` VALUES ('431', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:56:34');
INSERT INTO `sys_loginfo` VALUES ('432', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 11:59:18');
INSERT INTO `sys_loginfo` VALUES ('433', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:00:09');
INSERT INTO `sys_loginfo` VALUES ('434', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:01:12');
INSERT INTO `sys_loginfo` VALUES ('435', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:02:34');
INSERT INTO `sys_loginfo` VALUES ('436', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:04:03');
INSERT INTO `sys_loginfo` VALUES ('437', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:04:46');
INSERT INTO `sys_loginfo` VALUES ('438', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:26:07');
INSERT INTO `sys_loginfo` VALUES ('439', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:28:29');
INSERT INTO `sys_loginfo` VALUES ('440', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:35:19');
INSERT INTO `sys_loginfo` VALUES ('441', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 12:44:31');
INSERT INTO `sys_loginfo` VALUES ('442', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 12:46:34');
INSERT INTO `sys_loginfo` VALUES ('443', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 12:48:33');
INSERT INTO `sys_loginfo` VALUES ('444', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 12:55:31');
INSERT INTO `sys_loginfo` VALUES ('445', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 12:57:01');
INSERT INTO `sys_loginfo` VALUES ('446', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 12:58:21');
INSERT INTO `sys_loginfo` VALUES ('447', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 13:00:10');
INSERT INTO `sys_loginfo` VALUES ('448', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 13:02:02');
INSERT INTO `sys_loginfo` VALUES ('449', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:16:23');
INSERT INTO `sys_loginfo` VALUES ('450', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:18:30');
INSERT INTO `sys_loginfo` VALUES ('451', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:27:23');
INSERT INTO `sys_loginfo` VALUES ('452', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:34:54');
INSERT INTO `sys_loginfo` VALUES ('453', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:38:55');
INSERT INTO `sys_loginfo` VALUES ('454', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:44:27');
INSERT INTO `sys_loginfo` VALUES ('455', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:52:47');
INSERT INTO `sys_loginfo` VALUES ('456', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:53:53');
INSERT INTO `sys_loginfo` VALUES ('457', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 13:58:11');
INSERT INTO `sys_loginfo` VALUES ('458', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:08:13');
INSERT INTO `sys_loginfo` VALUES ('459', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:11:11');
INSERT INTO `sys_loginfo` VALUES ('460', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:18:02');
INSERT INTO `sys_loginfo` VALUES ('461', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:20:15');
INSERT INTO `sys_loginfo` VALUES ('462', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:21:26');
INSERT INTO `sys_loginfo` VALUES ('463', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:23:31');
INSERT INTO `sys_loginfo` VALUES ('464', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:29:40');
INSERT INTO `sys_loginfo` VALUES ('465', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:31:18');
INSERT INTO `sys_loginfo` VALUES ('466', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:36:41');
INSERT INTO `sys_loginfo` VALUES ('467', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:41:52');
INSERT INTO `sys_loginfo` VALUES ('468', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:42:51');
INSERT INTO `sys_loginfo` VALUES ('469', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:44:03');
INSERT INTO `sys_loginfo` VALUES ('470', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:45:04');
INSERT INTO `sys_loginfo` VALUES ('471', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 14:46:34');
INSERT INTO `sys_loginfo` VALUES ('472', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 15:09:38');
INSERT INTO `sys_loginfo` VALUES ('473', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 15:15:20');
INSERT INTO `sys_loginfo` VALUES ('474', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 15:15:43');
INSERT INTO `sys_loginfo` VALUES ('475', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-04-26 15:18:20');
INSERT INTO `sys_loginfo` VALUES ('476', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 15:18:50');
INSERT INTO `sys_loginfo` VALUES ('477', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 15:19:55');
INSERT INTO `sys_loginfo` VALUES ('478', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-04-26 15:20:11');
INSERT INTO `sys_loginfo` VALUES ('479', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 15:24:25');
INSERT INTO `sys_loginfo` VALUES ('480', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-04-26 15:24:37');
INSERT INTO `sys_loginfo` VALUES ('481', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 15:25:39');
INSERT INTO `sys_loginfo` VALUES ('482', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-04-26 15:26:04');
INSERT INTO `sys_loginfo` VALUES ('483', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 15:26:42');
INSERT INTO `sys_loginfo` VALUES ('484', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 15:37:23');
INSERT INTO `sys_loginfo` VALUES ('485', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 15:38:21');
INSERT INTO `sys_loginfo` VALUES ('486', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 15:38:39');
INSERT INTO `sys_loginfo` VALUES ('487', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 15:42:22');
INSERT INTO `sys_loginfo` VALUES ('488', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 15:53:37');
INSERT INTO `sys_loginfo` VALUES ('489', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 15:57:40');
INSERT INTO `sys_loginfo` VALUES ('490', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-26 15:58:15');
INSERT INTO `sys_loginfo` VALUES ('491', '王灏-201614120422', '0:0:0:0:0:0:0:1', '2020-04-26 15:59:30');
INSERT INTO `sys_loginfo` VALUES ('492', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 15:59:48');
INSERT INTO `sys_loginfo` VALUES ('493', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 16:00:57');
INSERT INTO `sys_loginfo` VALUES ('494', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:02:19');
INSERT INTO `sys_loginfo` VALUES ('495', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:16:29');
INSERT INTO `sys_loginfo` VALUES ('496', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:17:27');
INSERT INTO `sys_loginfo` VALUES ('497', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:22:37');
INSERT INTO `sys_loginfo` VALUES ('498', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:27:15');
INSERT INTO `sys_loginfo` VALUES ('499', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:53:47');
INSERT INTO `sys_loginfo` VALUES ('500', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:55:49');
INSERT INTO `sys_loginfo` VALUES ('501', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:57:39');
INSERT INTO `sys_loginfo` VALUES ('502', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 16:59:26');
INSERT INTO `sys_loginfo` VALUES ('503', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:00:02');
INSERT INTO `sys_loginfo` VALUES ('504', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:03:06');
INSERT INTO `sys_loginfo` VALUES ('505', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:04:01');
INSERT INTO `sys_loginfo` VALUES ('506', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:05:03');
INSERT INTO `sys_loginfo` VALUES ('507', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:12:21');
INSERT INTO `sys_loginfo` VALUES ('508', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:16:48');
INSERT INTO `sys_loginfo` VALUES ('509', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:21:39');
INSERT INTO `sys_loginfo` VALUES ('510', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:24:53');
INSERT INTO `sys_loginfo` VALUES ('511', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 17:27:52');
INSERT INTO `sys_loginfo` VALUES ('512', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 17:33:00');
INSERT INTO `sys_loginfo` VALUES ('513', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 17:36:28');
INSERT INTO `sys_loginfo` VALUES ('514', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-26 17:36:45');
INSERT INTO `sys_loginfo` VALUES ('515', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 17:37:52');
INSERT INTO `sys_loginfo` VALUES ('516', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 17:44:33');
INSERT INTO `sys_loginfo` VALUES ('517', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-26 17:47:10');
INSERT INTO `sys_loginfo` VALUES ('518', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-27 01:40:53');
INSERT INTO `sys_loginfo` VALUES ('519', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 01:43:33');
INSERT INTO `sys_loginfo` VALUES ('520', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-27 01:46:59');
INSERT INTO `sys_loginfo` VALUES ('521', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 01:47:32');
INSERT INTO `sys_loginfo` VALUES ('522', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 01:49:39');
INSERT INTO `sys_loginfo` VALUES ('523', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:07:20');
INSERT INTO `sys_loginfo` VALUES ('524', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:11:51');
INSERT INTO `sys_loginfo` VALUES ('525', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:13:20');
INSERT INTO `sys_loginfo` VALUES ('526', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:14:22');
INSERT INTO `sys_loginfo` VALUES ('527', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:15:48');
INSERT INTO `sys_loginfo` VALUES ('528', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:22:53');
INSERT INTO `sys_loginfo` VALUES ('529', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:26:00');
INSERT INTO `sys_loginfo` VALUES ('530', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:27:21');
INSERT INTO `sys_loginfo` VALUES ('531', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:30:40');
INSERT INTO `sys_loginfo` VALUES ('532', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:36:17');
INSERT INTO `sys_loginfo` VALUES ('533', '江楠-1002', '0:0:0:0:0:0:0:1', '2020-04-27 02:40:03');
INSERT INTO `sys_loginfo` VALUES ('534', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:40:31');
INSERT INTO `sys_loginfo` VALUES ('535', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:48:00');
INSERT INTO `sys_loginfo` VALUES ('536', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 02:48:50');
INSERT INTO `sys_loginfo` VALUES ('537', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:50:26');
INSERT INTO `sys_loginfo` VALUES ('538', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 02:50:40');
INSERT INTO `sys_loginfo` VALUES ('539', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 02:51:31');
INSERT INTO `sys_loginfo` VALUES ('540', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 03:22:05');
INSERT INTO `sys_loginfo` VALUES ('541', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 03:56:47');
INSERT INTO `sys_loginfo` VALUES ('542', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 04:00:22');
INSERT INTO `sys_loginfo` VALUES ('543', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 04:05:23');
INSERT INTO `sys_loginfo` VALUES ('544', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 04:09:35');
INSERT INTO `sys_loginfo` VALUES ('545', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 04:10:40');
INSERT INTO `sys_loginfo` VALUES ('546', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 04:49:56');
INSERT INTO `sys_loginfo` VALUES ('547', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 04:53:20');
INSERT INTO `sys_loginfo` VALUES ('548', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 04:58:11');
INSERT INTO `sys_loginfo` VALUES ('549', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 05:11:12');
INSERT INTO `sys_loginfo` VALUES ('550', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 05:12:44');
INSERT INTO `sys_loginfo` VALUES ('551', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 05:21:16');
INSERT INTO `sys_loginfo` VALUES ('552', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 05:22:49');
INSERT INTO `sys_loginfo` VALUES ('553', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 05:23:55');
INSERT INTO `sys_loginfo` VALUES ('554', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 06:01:33');
INSERT INTO `sys_loginfo` VALUES ('555', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 07:33:40');
INSERT INTO `sys_loginfo` VALUES ('556', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 07:47:25');
INSERT INTO `sys_loginfo` VALUES ('557', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 07:48:53');
INSERT INTO `sys_loginfo` VALUES ('558', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 07:52:18');
INSERT INTO `sys_loginfo` VALUES ('559', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 07:57:01');
INSERT INTO `sys_loginfo` VALUES ('560', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 07:57:12');
INSERT INTO `sys_loginfo` VALUES ('561', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-27 07:57:41');
INSERT INTO `sys_loginfo` VALUES ('562', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 07:58:10');
INSERT INTO `sys_loginfo` VALUES ('563', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 07:58:24');
INSERT INTO `sys_loginfo` VALUES ('564', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:05:33');
INSERT INTO `sys_loginfo` VALUES ('565', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:17:07');
INSERT INTO `sys_loginfo` VALUES ('566', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:19:38');
INSERT INTO `sys_loginfo` VALUES ('567', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:21:05');
INSERT INTO `sys_loginfo` VALUES ('568', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:22:09');
INSERT INTO `sys_loginfo` VALUES ('569', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:24:17');
INSERT INTO `sys_loginfo` VALUES ('570', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:25:59');
INSERT INTO `sys_loginfo` VALUES ('571', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:29:25');
INSERT INTO `sys_loginfo` VALUES ('572', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 08:57:47');
INSERT INTO `sys_loginfo` VALUES ('573', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 08:58:56');
INSERT INTO `sys_loginfo` VALUES ('574', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:32:44');
INSERT INTO `sys_loginfo` VALUES ('575', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:33:47');
INSERT INTO `sys_loginfo` VALUES ('576', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:36:35');
INSERT INTO `sys_loginfo` VALUES ('577', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:38:07');
INSERT INTO `sys_loginfo` VALUES ('578', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:45:58');
INSERT INTO `sys_loginfo` VALUES ('579', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:47:34');
INSERT INTO `sys_loginfo` VALUES ('580', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:49:46');
INSERT INTO `sys_loginfo` VALUES ('581', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:50:58');
INSERT INTO `sys_loginfo` VALUES ('582', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 09:53:21');
INSERT INTO `sys_loginfo` VALUES ('583', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:02:41');
INSERT INTO `sys_loginfo` VALUES ('584', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:05:50');
INSERT INTO `sys_loginfo` VALUES ('585', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:07:21');
INSERT INTO `sys_loginfo` VALUES ('586', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:08:29');
INSERT INTO `sys_loginfo` VALUES ('587', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:15:10');
INSERT INTO `sys_loginfo` VALUES ('588', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:16:24');
INSERT INTO `sys_loginfo` VALUES ('589', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:20:17');
INSERT INTO `sys_loginfo` VALUES ('590', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:22:10');
INSERT INTO `sys_loginfo` VALUES ('591', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:23:42');
INSERT INTO `sys_loginfo` VALUES ('592', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:24:32');
INSERT INTO `sys_loginfo` VALUES ('593', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-27 10:25:40');
INSERT INTO `sys_loginfo` VALUES ('594', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:27:12');
INSERT INTO `sys_loginfo` VALUES ('595', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:39:38');
INSERT INTO `sys_loginfo` VALUES ('596', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 10:40:23');
INSERT INTO `sys_loginfo` VALUES ('597', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:52:20');
INSERT INTO `sys_loginfo` VALUES ('598', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:55:21');
INSERT INTO `sys_loginfo` VALUES ('599', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 10:57:08');
INSERT INTO `sys_loginfo` VALUES ('600', '吕震宇-1001', '0:0:0:0:0:0:0:1', '2020-04-27 10:58:54');
INSERT INTO `sys_loginfo` VALUES ('601', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-27 10:59:27');
INSERT INTO `sys_loginfo` VALUES ('602', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 11:13:10');
INSERT INTO `sys_loginfo` VALUES ('603', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2020-04-27 11:15:03');
INSERT INTO `sys_loginfo` VALUES ('604', '俞磊-201614120429', '0:0:0:0:0:0:0:1', '2020-04-27 11:15:31');
INSERT INTO `sys_loginfo` VALUES ('605', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-27 11:17:01');
INSERT INTO `sys_loginfo` VALUES ('606', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-06-21 12:09:03');
INSERT INTO `sys_loginfo` VALUES ('607', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-06-21 12:25:42');
INSERT INTO `sys_loginfo` VALUES ('608', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-06-21 13:08:50');
INSERT INTO `sys_loginfo` VALUES ('609', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-06-21 13:16:16');
INSERT INTO `sys_loginfo` VALUES ('610', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-06-21 13:46:45');
INSERT INTO `sys_loginfo` VALUES ('611', '姚懿-201614120423', '0:0:0:0:0:0:0:1', '2021-02-08 07:01:15');
INSERT INTO `sys_loginfo` VALUES ('612', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2021-02-08 07:01:52');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('36', '华北理工大学管理学院推免管理系统上线啦', '俞磊制作', '2020-03-10 05:26:19', '超级管理员');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限编码[只有type=permission才有 user:view]',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '是否可用[0不可用，1可用]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', 'menu', '推免管理MS', null, '&#xe68e;', '', '', '1', '1', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', 'menu', '成绩管理', null, '&#xe857;', '', '', '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('3', '1', 'menu', '我的推免', null, '&#xe615;', '', '', '1', '3', '1');
INSERT INTO `sys_permission` VALUES ('5', '1', 'menu', '系统管理', null, '&#xe614;', '', '', '1', '5', '1');
INSERT INTO `sys_permission` VALUES ('6', '1', 'menu', '其它管理', null, '&#xe628;', '', '', '0', '6', '1');
INSERT INTO `sys_permission` VALUES ('14', '5', 'menu', '部门管理', null, '&#xe770;', '/sys/toDeptManager', '', '0', '14', '1');
INSERT INTO `sys_permission` VALUES ('15', '5', 'menu', '菜单管理', null, '&#xe857;', '/sys/toMenuManager', '', '0', '15', '1');
INSERT INTO `sys_permission` VALUES ('16', '5', 'menu', '权限管理', '', '&#xe857;', '/sys/toPermissionManager', '', '0', '16', '1');
INSERT INTO `sys_permission` VALUES ('17', '5', 'menu', '角色管理', '', '&#xe650;', '/sys/toRoleManager', '', '0', '17', '1');
INSERT INTO `sys_permission` VALUES ('18', '5', 'menu', '用户管理', '', '&#xe612;', '/sys/toUserManager', '', '0', '18', '1');
INSERT INTO `sys_permission` VALUES ('21', '6', 'menu', '登陆日志', null, '&#xe675;', '/sys/toLoginfoManager', '', '0', '23', '1');
INSERT INTO `sys_permission` VALUES ('22', '6', 'menu', '系统公告', null, '&#xe756;', '/sys/toNoticeManager', '', '0', '19', '1');
INSERT INTO `sys_permission` VALUES ('23', '6', 'menu', '图标管理', null, '&#xe670;', '../resources/page/icon.html', '', '0', '24', '1');
INSERT INTO `sys_permission` VALUES ('30', '14', 'permission', '添加部门', 'dept:create', '', null, null, '0', '24', '1');
INSERT INTO `sys_permission` VALUES ('31', '14', 'permission', '修改部门', 'dept:update', '', null, null, '0', '26', '1');
INSERT INTO `sys_permission` VALUES ('32', '14', 'permission', '删除部门', 'dept:delete', '', null, null, '0', '27', '1');
INSERT INTO `sys_permission` VALUES ('34', '15', 'permission', '添加菜单', 'menu:create', '', '', '', '0', '29', '1');
INSERT INTO `sys_permission` VALUES ('35', '15', 'permission', '修改菜单', 'menu:update', '', null, null, '0', '30', '1');
INSERT INTO `sys_permission` VALUES ('36', '15', 'permission', '删除菜单', 'menu:delete', '', null, null, '0', '31', '1');
INSERT INTO `sys_permission` VALUES ('38', '16', 'permission', '添加权限', 'permission:create', '', null, null, '0', '33', '1');
INSERT INTO `sys_permission` VALUES ('39', '16', 'permission', '修改权限', 'permission:update', '', null, null, '0', '34', '1');
INSERT INTO `sys_permission` VALUES ('40', '16', 'permission', '删除权限', 'permission:delete', '', null, null, '0', '35', '1');
INSERT INTO `sys_permission` VALUES ('42', '17', 'permission', '添加角色', 'role:create', '', null, null, '0', '37', '1');
INSERT INTO `sys_permission` VALUES ('43', '17', 'permission', '修改角色', 'role:update', '', null, null, '0', '38', '1');
INSERT INTO `sys_permission` VALUES ('44', '17', 'permission', '删除角色', 'role:delete', '', null, null, '0', '39', '1');
INSERT INTO `sys_permission` VALUES ('46', '17', 'permission', '分配权限', 'role:selectPermission', '', null, null, '0', '41', '1');
INSERT INTO `sys_permission` VALUES ('47', '18', 'permission', '添加用户', 'user:create', '', null, null, '0', '42', '1');
INSERT INTO `sys_permission` VALUES ('48', '18', 'permission', '修改用户', 'user:update', '', null, null, '0', '43', '1');
INSERT INTO `sys_permission` VALUES ('49', '18', 'permission', '删除用户', 'user:delete', '', null, null, '0', '44', '1');
INSERT INTO `sys_permission` VALUES ('51', '18', 'permission', '用户分配角色', 'user:selectRole', '', null, null, '0', '46', '1');
INSERT INTO `sys_permission` VALUES ('52', '18', 'permission', '重置密码', 'user:resetPwd', null, null, null, '0', '47', '1');
INSERT INTO `sys_permission` VALUES ('53', '14', 'permission', '部门查询', 'dept:view', null, null, null, '0', '48', '1');
INSERT INTO `sys_permission` VALUES ('54', '15', 'permission', '菜单查询', 'menu:view', null, null, null, '0', '49', '1');
INSERT INTO `sys_permission` VALUES ('55', '16', 'permission', '权限查询', 'permission:view', null, null, null, '0', '50', '1');
INSERT INTO `sys_permission` VALUES ('56', '17', 'permission', '角色查询', 'role:view', null, null, null, '0', '51', '1');
INSERT INTO `sys_permission` VALUES ('57', '18', 'permission', '用户查询', 'user:view', null, null, null, '0', '52', '1');
INSERT INTO `sys_permission` VALUES ('73', '21', 'permission', '日志查询', 'info:view', null, null, null, null, '65', '1');
INSERT INTO `sys_permission` VALUES ('74', '21', 'permission', '日志删除', 'info:delete', null, null, null, null, '66', '1');
INSERT INTO `sys_permission` VALUES ('75', '21', 'permission', '日志批量删除', 'info:batchdelete', null, null, null, null, '67', '1');
INSERT INTO `sys_permission` VALUES ('76', '22', 'permission', '公告查询', 'notice:view', null, null, null, null, '68', '1');
INSERT INTO `sys_permission` VALUES ('77', '22', 'permission', '公告添加', 'notice:create', null, null, null, null, '69', '1');
INSERT INTO `sys_permission` VALUES ('78', '22', 'permission', '公告修改', 'notice:update', null, null, null, null, '70', '1');
INSERT INTO `sys_permission` VALUES ('79', '22', 'permission', '公告删除', 'notice:delete', null, null, null, null, '71', '1');
INSERT INTO `sys_permission` VALUES ('86', '22', 'permission', '公告查看', 'notice:viewnotice', null, null, null, null, '78', '1');
INSERT INTO `sys_permission` VALUES ('119', '22', 'permission', '公告批量删除', 'notice:batchdelete', null, null, null, '0', '87', '1');
INSERT INTO `sys_permission` VALUES ('121', '6', 'menu', '数据库管理', null, '&#xe656;', '/druid', '', '0', '21', '1');
INSERT INTO `sys_permission` VALUES ('124', '121', 'permission', '数据库', 'sys.data', null, null, null, '0', '89', '1');
INSERT INTO `sys_permission` VALUES ('125', '2', 'menu', '综测成绩导入', null, '&#xe609;', '/bus/addscore', '', '0', '90', '1');
INSERT INTO `sys_permission` VALUES ('126', '2', 'menu', '推免成绩计算', null, '&#xe615;', '/bus/calscore', '', '0', '91', '1');
INSERT INTO `sys_permission` VALUES ('128', '125', 'permission', '上传权限', 'usr:upfile', null, null, null, '0', '1', '1');
INSERT INTO `sys_permission` VALUES ('129', '125', 'permission', '下载权限', 'usr:download', null, null, null, '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('130', '125', 'permission', '更新权限', 'usr:update', null, null, null, '0', '3', '1');
INSERT INTO `sys_permission` VALUES ('131', '126', 'permission', '下载文档', 'all:download', null, null, null, '0', '1', '1');
INSERT INTO `sys_permission` VALUES ('132', '126', 'permission', '删除文档', 'all:del', null, null, null, '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('133', '125', 'permission', '删除权限', 'usr:del', null, null, null, '0', '4', '1');
INSERT INTO `sys_permission` VALUES ('134', '126', 'permission', '更新文档', 'all:update', null, null, null, '0', '3', '1');
INSERT INTO `sys_permission` VALUES ('136', '6', 'menu', '缓存管理', null, '&#xe62e;', '/sys/toCacheManager', '', '0', '22', '1');
INSERT INTO `sys_permission` VALUES ('137', '2', 'menu', '复审材料', null, '&#xe69c;', '/bus/judge', '', '0', '92', '1');
INSERT INTO `sys_permission` VALUES ('138', '2', 'menu', '终审材料', null, '&#xe6af;', '/bus/endjudge', '', '0', '93', '1');
INSERT INTO `sys_permission` VALUES ('141', '3', 'menu', '推免资格查看', null, '&#xe672;', '/bus/qualify', '', '0', '4', '1');
INSERT INTO `sys_permission` VALUES ('142', '3', 'menu', '初审材料提交', null, '&#xe6b2;', '/bus/addfiles', '', '0', '95', '1');
INSERT INTO `sys_permission` VALUES ('143', '2', 'menu', '推免结果公示', null, '&#xe756;', '/bus/result', '', '0', '96', '1');
INSERT INTO `sys_permission` VALUES ('144', '2', 'menu', '学期管理', null, '&#xe637;', '/bus/term', '', '0', '97', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '0不可用，1可用',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('23', '超级管理员', '系统管理\n', '1', '2020-03-17 13:07:27');
INSERT INTO `sys_role` VALUES ('24', '学生干部', '学生干部权限', '1', '2020-03-17 13:07:53');
INSERT INTO `sys_role` VALUES ('25', '学生', '底层学生', '1', '2020-03-17 13:11:47');
INSERT INTO `sys_role` VALUES ('26', '老师', '辅导员，管理整个学院', '1', '2020-03-17 13:11:56');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`pid`,`rid`),
  KEY `sys_role_permission_ibfk_2` (`rid`),
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`),
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('23', '1');
INSERT INTO `sys_role_permission` VALUES ('23', '2');
INSERT INTO `sys_role_permission` VALUES ('23', '5');
INSERT INTO `sys_role_permission` VALUES ('23', '6');
INSERT INTO `sys_role_permission` VALUES ('23', '14');
INSERT INTO `sys_role_permission` VALUES ('23', '15');
INSERT INTO `sys_role_permission` VALUES ('23', '16');
INSERT INTO `sys_role_permission` VALUES ('23', '17');
INSERT INTO `sys_role_permission` VALUES ('23', '18');
INSERT INTO `sys_role_permission` VALUES ('23', '21');
INSERT INTO `sys_role_permission` VALUES ('23', '22');
INSERT INTO `sys_role_permission` VALUES ('23', '23');
INSERT INTO `sys_role_permission` VALUES ('23', '30');
INSERT INTO `sys_role_permission` VALUES ('23', '31');
INSERT INTO `sys_role_permission` VALUES ('23', '32');
INSERT INTO `sys_role_permission` VALUES ('23', '34');
INSERT INTO `sys_role_permission` VALUES ('23', '35');
INSERT INTO `sys_role_permission` VALUES ('23', '36');
INSERT INTO `sys_role_permission` VALUES ('23', '38');
INSERT INTO `sys_role_permission` VALUES ('23', '39');
INSERT INTO `sys_role_permission` VALUES ('23', '40');
INSERT INTO `sys_role_permission` VALUES ('23', '42');
INSERT INTO `sys_role_permission` VALUES ('23', '43');
INSERT INTO `sys_role_permission` VALUES ('23', '44');
INSERT INTO `sys_role_permission` VALUES ('23', '46');
INSERT INTO `sys_role_permission` VALUES ('23', '47');
INSERT INTO `sys_role_permission` VALUES ('23', '48');
INSERT INTO `sys_role_permission` VALUES ('23', '49');
INSERT INTO `sys_role_permission` VALUES ('23', '51');
INSERT INTO `sys_role_permission` VALUES ('23', '52');
INSERT INTO `sys_role_permission` VALUES ('23', '53');
INSERT INTO `sys_role_permission` VALUES ('23', '54');
INSERT INTO `sys_role_permission` VALUES ('23', '55');
INSERT INTO `sys_role_permission` VALUES ('23', '56');
INSERT INTO `sys_role_permission` VALUES ('23', '57');
INSERT INTO `sys_role_permission` VALUES ('23', '73');
INSERT INTO `sys_role_permission` VALUES ('23', '74');
INSERT INTO `sys_role_permission` VALUES ('23', '75');
INSERT INTO `sys_role_permission` VALUES ('23', '76');
INSERT INTO `sys_role_permission` VALUES ('23', '77');
INSERT INTO `sys_role_permission` VALUES ('23', '78');
INSERT INTO `sys_role_permission` VALUES ('23', '79');
INSERT INTO `sys_role_permission` VALUES ('23', '86');
INSERT INTO `sys_role_permission` VALUES ('23', '119');
INSERT INTO `sys_role_permission` VALUES ('23', '121');
INSERT INTO `sys_role_permission` VALUES ('23', '124');
INSERT INTO `sys_role_permission` VALUES ('23', '125');
INSERT INTO `sys_role_permission` VALUES ('23', '126');
INSERT INTO `sys_role_permission` VALUES ('23', '128');
INSERT INTO `sys_role_permission` VALUES ('23', '129');
INSERT INTO `sys_role_permission` VALUES ('23', '130');
INSERT INTO `sys_role_permission` VALUES ('23', '131');
INSERT INTO `sys_role_permission` VALUES ('23', '132');
INSERT INTO `sys_role_permission` VALUES ('23', '133');
INSERT INTO `sys_role_permission` VALUES ('23', '134');
INSERT INTO `sys_role_permission` VALUES ('23', '136');
INSERT INTO `sys_role_permission` VALUES ('23', '137');
INSERT INTO `sys_role_permission` VALUES ('23', '138');
INSERT INTO `sys_role_permission` VALUES ('23', '143');
INSERT INTO `sys_role_permission` VALUES ('23', '144');
INSERT INTO `sys_role_permission` VALUES ('24', '1');
INSERT INTO `sys_role_permission` VALUES ('24', '2');
INSERT INTO `sys_role_permission` VALUES ('24', '137');
INSERT INTO `sys_role_permission` VALUES ('25', '1');
INSERT INTO `sys_role_permission` VALUES ('25', '2');
INSERT INTO `sys_role_permission` VALUES ('25', '3');
INSERT INTO `sys_role_permission` VALUES ('25', '141');
INSERT INTO `sys_role_permission` VALUES ('25', '142');
INSERT INTO `sys_role_permission` VALUES ('25', '143');
INSERT INTO `sys_role_permission` VALUES ('26', '1');
INSERT INTO `sys_role_permission` VALUES ('26', '2');
INSERT INTO `sys_role_permission` VALUES ('26', '125');
INSERT INTO `sys_role_permission` VALUES ('26', '126');
INSERT INTO `sys_role_permission` VALUES ('26', '128');
INSERT INTO `sys_role_permission` VALUES ('26', '129');
INSERT INTO `sys_role_permission` VALUES ('26', '130');
INSERT INTO `sys_role_permission` VALUES ('26', '131');
INSERT INTO `sys_role_permission` VALUES ('26', '132');
INSERT INTO `sys_role_permission` VALUES ('26', '133');
INSERT INTO `sys_role_permission` VALUES ('26', '134');
INSERT INTO `sys_role_permission` VALUES ('26', '138');
INSERT INTO `sys_role_permission` VALUES ('26', '143');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `hiredate` datetime DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL COMMENT '上级领导id',
  `available` int(11) DEFAULT NULL COMMENT '是否可用，0不可用，1可用',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `type` int(11) DEFAULT NULL COMMENT '用户类型[0超级管理员，1管理员，2普通用户]',
  `imgpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像地址',
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '超级管理员', 'admin', '532ac00e86893901af5f0be6b704dbc7', '华北理工大学', '1', '超级管理员', '1', '2018-06-25 11:06:34', null, '1', '1', '0', '2020-04-27/03FE9C57C7A744A78BD26FECAFEFE22B.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('26', '吕震宇', '1001', '21e7c44fa18c452218d20719ca0caaca', '吕院长', '1', '', '1', '2020-03-03 16:00:00', null, '1', '2', '1', '/images/defaultusertitle.jpg', '452B6025686540E7821E3868C495DC65');
INSERT INTO `sys_user` VALUES ('27', '江楠', '1002', '65242b1e2359b3fcb8764c4fa0e2d88f', '辅导员', '1', '', '3', null, '26', '1', '3', '1', '/images/defaultusertitle.jpg', 'F0479B98BB064E96AF099346BAEC71D3');
INSERT INTO `sys_user` VALUES ('30', '豆华', '201614120212', '5b681336d2bf451873f240afcb48d842', '梅苑', '1', '管理学院学生', '8', null, '27', '1', '22', '1', '/images/defaultusertitle.jpg', '158F2FAA38414B4FBF40C9DD8E042BEB');
INSERT INTO `sys_user` VALUES ('31', '俞磊', '201614120429', '5f767f353ac799ddd688b6320fcf04a7', '梅苑', '1', '管理学院学生', '12', null, '27', '1', '2', '1', '/images/defaultusertitle.jpg', '11C14F21553D4FA5B99531BE3E8DB448');
INSERT INTO `sys_user` VALUES ('32', '吴冰鑫', '201614120417', '97b656890fb7f77daca9b2b564ef6025', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '3B4860932FEC4792BF6E8C524193426F');
INSERT INTO `sys_user` VALUES ('33', '徐微微', '201614120306', 'd823030cd7171751095417ff8c728247', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '6CA4267D59884E3C98EFC6E2A9763399');
INSERT INTO `sys_user` VALUES ('34', '陈玉翠', '201614120418', 'af596e9386f72c52a8c7ee9e60f4a331', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '6714B12C48A0410E9035D5D25C927277');
INSERT INTO `sys_user` VALUES ('35', '王杏', '201614120120', '5e8bfab27a4b1c8ed4dd9b746224a2e1', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'E1EC251BD16F4DDD9BB56ABC6836D844');
INSERT INTO `sys_user` VALUES ('36', '王丽娜', '201614120106', '69ee8ddac4ea9506dc104c7c57537189', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'EF349933528149608AE0FFB82CFE7BB8');
INSERT INTO `sys_user` VALUES ('37', '杨春雨', '201614120118', '7a66e420d089bb8dd469d596daf3423f', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'C463C0449BE6436AB52FF1D32971FFA2');
INSERT INTO `sys_user` VALUES ('38', '谢雨初', '201614120230', 'e92d3f138ea4506a2be0e875057c8b45', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'AAABCD2A9AAA4C93B97FAFC1139BCB3D');
INSERT INTO `sys_user` VALUES ('39', '刘珂羽', '201614120216', '944046ad3e1fa693e37c0f036bb91003', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '6F5910A219E74CCDA7722BC412D6F6DA');
INSERT INTO `sys_user` VALUES ('40', '孟箫', '201614120310', '8c9d7ff81213f6b325d26fe593989f78', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '2B4A6761EC044B2288F37AECDB21CE64');
INSERT INTO `sys_user` VALUES ('41', '赵倩', '201614120219', '40b5eaa02bf184c98965904c344df90e', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'C355DED471F44AD59BF9CA5B0F731443');
INSERT INTO `sys_user` VALUES ('42', '樊娇', '201614120315', 'ce73342f3b3b38d317a633217e944a80', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '59F6C49731B344FB9C44BC100B8E2118');
INSERT INTO `sys_user` VALUES ('43', '刘增宝', '201614120410', 'e82e0864d9944989f231180d17b590d8', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '6681ADBD1BB94F77B940BC2D9D126374');
INSERT INTO `sys_user` VALUES ('44', '房士湉', '201614120413', 'c0ae05a58ba1c68f32f744ac79177a2c', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'CD274386D8ED47B68B8D971821D413FA');
INSERT INTO `sys_user` VALUES ('45', '张启荣', '201614120401', '946742ad7fc836f323753da22af981f0', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '74BBCD7FB26A4C52A9F3BC2D78058C03');
INSERT INTO `sys_user` VALUES ('46', '李忠鹏', '201614120312', 'ddbc99d0feeeeddbbb760b102e29e0e4', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '23C9332C2B3F417AAE9E76D88AED969B');
INSERT INTO `sys_user` VALUES ('47', '刘振', '201614120319', '5e1f1726ac03be320a1d23077ae42f63', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '12FDAF17C9D243D48E3AC1B9C0C0A245');
INSERT INTO `sys_user` VALUES ('48', '贺彩云', '201614120419', 'f48276653d283eee629a3bf6c43080cf', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '5A424773D61046ACB3BD2ACFDD855384');
INSERT INTO `sys_user` VALUES ('49', '段凯丽', '201614120302', 'a41784fdebb87bf2419393504d6262f8', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '05970A33276E4C40A96E823A338A3844');
INSERT INTO `sys_user` VALUES ('50', '张瑜', '201614120114', 'c8c218b8e1c0c4daf58752cff337409a', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '7451FC40EF214848A32742FACF19F69C');
INSERT INTO `sys_user` VALUES ('51', '唐硕', '201614120415', '9160be148f5dd64ddd780c4d29608429', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'EE35913F4A9A4ED591EB85615E23B66C');
INSERT INTO `sys_user` VALUES ('52', '叶晓阳', '201614120123', '685b561786b6271b9f4ad94c0e0172bd', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '18168CBF22DA464EB7670C85F70A7848');
INSERT INTO `sys_user` VALUES ('53', '霍智华', '201614120309', 'a302ee4f90a8ecf111c83027fa08df81', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'C652A76520D544BF8D170946BFCAFAF6');
INSERT INTO `sys_user` VALUES ('54', '李倩', '201614120303', '9d88757ed123a447a1396acf21b24621', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '671D102D544A46908B932F7E4C41E491');
INSERT INTO `sys_user` VALUES ('55', '王丽荣', '201614890119', '4110b802868cc79ccf28c6c5e03df02c', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'FAAF8DD8FF464C689B51C38E102D482C');
INSERT INTO `sys_user` VALUES ('56', '李嘉烁', '201614120412', 'f3dc109e2d6ae4c92dad171ac580bdff', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'AB2CD9ED72A84F7B9C7CBF22E45806C0');
INSERT INTO `sys_user` VALUES ('57', '栗园扣', '201614120326', '330cb5290dfbf88a0692535a38592830', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '64D0AF17189246C2AAC37AD610F49C2E');
INSERT INTO `sys_user` VALUES ('58', '尹丽莹', '201614120305', '653b86a29d1814107117f2825cd70d95', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '966D31F793C744459B2ED55B694E54CF');
INSERT INTO `sys_user` VALUES ('59', '李佳莹', '201614120125', 'e7fede35cf4c8429e973f5bfa7fc795a', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'F8C4B6D522504C0B91AA81DFCCCA0CB7');
INSERT INTO `sys_user` VALUES ('60', '张家瑗', '201614120105', 'cb176470bbbae42324d38a3a78c30168', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '4172E67D656C4C3B890C13DBB44C0D09');
INSERT INTO `sys_user` VALUES ('61', '张倩', '201614120416', '539a5cf4846b48e55f388104cec05441', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'FF13BA9DF8ED45BC93F23DC9D0C87021');
INSERT INTO `sys_user` VALUES ('62', '袁美玲', '201614120205', '1b206e69adecd493987054b6fe8125a4', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '8DDF079EE0BC4E31B84B3584E1C979E9');
INSERT INTO `sys_user` VALUES ('63', '杨柳', '201614120107', 'c1f09007f56aaa1fdda1ecc329f2201c', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'B6FBB2B007CC4D88BA61220B841ADBA3');
INSERT INTO `sys_user` VALUES ('64', '门川琨', '201614120409', '86491403227dd877fd7b1818889039cf', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D6D6BEF3D341444BB0FDE74033549D96');
INSERT INTO `sys_user` VALUES ('65', '曾莉美', '201614120127', 'afe6c5ad2147c8ff0e760c5bd7728f10', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'B2656EB8A2A44B9C95D7B181B193BDDE');
INSERT INTO `sys_user` VALUES ('66', '姚懿', '201614120423', 'e2b510a6a5cbe4188e39b6553b10b6c0', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D1C45C8BC97D418287C3D4E05E81DDC1');
INSERT INTO `sys_user` VALUES ('67', '王楠', '201614120203', 'f69db2c2fd5e8d0686aec0cd56a8e871', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'ADB812E2F0A54F5D9B67DAA6682DAE31');
INSERT INTO `sys_user` VALUES ('68', '王薇', '201614120121', '63d663b429e9f1acf10ef2b112eb503f', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '63946FA6479845BBB37477A800C411D2');
INSERT INTO `sys_user` VALUES ('69', '马超华', '201614120304', 'acf70b776955849fbf2051c1cc1a1f94', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D321BCC9B5194513AEBF4BCB052A2E80');
INSERT INTO `sys_user` VALUES ('70', '李雅楠', '201614120411', '53d7afed2e9663c054f8a8b70871a3b7', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'EEE77FE0538949A9AA4356A6616F70FC');
INSERT INTO `sys_user` VALUES ('71', '赵娣', '201614120404', '3381b85fdaa16675f71cf615e1f020a8', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '7EB95F52789C4EBA8A4F150E32D04B72');
INSERT INTO `sys_user` VALUES ('72', '牛连君', '201614120214', '9e497f480b78f86402746c63f59a574d', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '1962F43296794DB9B9BCB970D04BAA33');
INSERT INTO `sys_user` VALUES ('73', '谢明慧', '201614120206', '4d667331f29d14c8ac9eee7dc81a2738', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '5A445871BE9646B5B635E66756605950');
INSERT INTO `sys_user` VALUES ('74', '郭萍萍', '201614120115', '1f71d2f177f10c18139d18cbae921761', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D6610AA7F0D449E984DD78DE8E34D3A0');
INSERT INTO `sys_user` VALUES ('75', '刘晨悦', '201614120406', '9ddbe85f93f6fc998e3e99c9f80cdab7', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'F956272A8A5246599C32833D62483E36');
INSERT INTO `sys_user` VALUES ('76', '尹智涛', '201614120217', 'b8633b8ff1bbfe5de10bc16ce531ef88', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '4B172B4C8BFE487CB457740BB7233B64');
INSERT INTO `sys_user` VALUES ('77', '赵灿', '201614120403', '0a5a75f79d24a1b257943f9d6351446d', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '73D221F75FBE43678CBB91C4F06CAFE6');
INSERT INTO `sys_user` VALUES ('78', '李俊', '201614120325', '6e8611d391746b9fc2d05528d10424b0', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '6BC5B6FD6A8940F383B5C8CABAAF7A7E');
INSERT INTO `sys_user` VALUES ('79', '石卓娅', '201614120313', 'b81dca2af0c5e759c284a8b77258b1e4', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '3CA8E80945904BF59A37B17443420501');
INSERT INTO `sys_user` VALUES ('80', '李慧晴', '201614120117', '38c57000b6ba9400729397df1150298b', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '0FB7F58FBBC94B81943426F9055CD817');
INSERT INTO `sys_user` VALUES ('81', '冯娇', '201614120211', 'e48da59cad5a73e87563d00117f55507', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '4927F4FE7F614A7DB7E7C6559767961B');
INSERT INTO `sys_user` VALUES ('82', '刘迪', '201614120209', '6d88e23bfc7c63d51fd546f45d9e286e', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '62ABAC7069E641028CA045FFBC4925BA');
INSERT INTO `sys_user` VALUES ('83', '索佳华', '201614120108', '8366ef9bab4e2df193292a9e2edb7a22', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '3E149F69E94149BCAA52788405899A92');
INSERT INTO `sys_user` VALUES ('84', '李天天', '201614120119', '88f1e5f930bb3cb48f74a5d700399375', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '79ACF446CF804836A91BAC58B1BB803B');
INSERT INTO `sys_user` VALUES ('85', '王灏', '201614120422', 'd576de799a08ec8220bea212651476a7', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'B0C43336151146919B785C1B324E3F24');
INSERT INTO `sys_user` VALUES ('86', '王蕊', '201614120320', '99d38028d8b5a605bf46d03137a8eabd', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'E2A519F45FF3405C820D36A808C31320');
INSERT INTO `sys_user` VALUES ('87', '田梦先', '201614110114', 'c07996868f4f28340326f5e76f919363', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '962573D61C21480EA95A7C89A5158730');
INSERT INTO `sys_user` VALUES ('88', '王凡', '201614120207', '38350e24896340e84d787ef0b88e09e6', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '527C25402D8643A395A57764A86FD220');
INSERT INTO `sys_user` VALUES ('89', '郝瀚', '201614120226', '54b9af6980c75d460be096eb93a7f3af', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '211C326A9AFE4AA5A9FEE75F0C522EDE');
INSERT INTO `sys_user` VALUES ('90', '郑莹', '201614120421', 'd95aa0db7d2b30debd5ffaba8099b428', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'F51BD5DA389D4581B176C0A3E683B7B3');
INSERT INTO `sys_user` VALUES ('91', '李玥澎', '201614120311', 'c49549026ae0745f6edd449e24d01729', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D5391233BA1F4EA4A479E2CCD5CF6E8A');
INSERT INTO `sys_user` VALUES ('92', '李继超', '201614120228', 'b6f9885d6e2208bedaa6bb3d6e6838d5', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '4E4DA530F45B475D9A4F424D23EAEBB0');
INSERT INTO `sys_user` VALUES ('93', '孙淑娴', '201614120327', '1217f75478e2a16438201438c79111a4', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '969BE2EFF87A47E9BA04D716DE0C27D8');
INSERT INTO `sys_user` VALUES ('94', '宋康', '201614120109', 'ae924d17dd8a8ac38ad741f631707aad', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'E46DD9E695964B3F8DB09E52D6BE3C77');
INSERT INTO `sys_user` VALUES ('95', '刘文龙', '201614120126', '9d78aff7637e8a8a0e512116c162c38e', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D08F0D21B8FE4B7DB2F706CC38D94BEC');
INSERT INTO `sys_user` VALUES ('96', '王雨晴', '201614120111', '38ee0b6f68c04fd8fb25b688200c8141', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '52D81DF9BD5545F2899B49B57A40750C');
INSERT INTO `sys_user` VALUES ('97', '付香华', '201614120317', '6fdad4af671712b70ba32d8552b0c101', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'FA818E822F6E4629AE875EEA7E437D37');
INSERT INTO `sys_user` VALUES ('98', '张娴', '201614120329', '4aab3f63d7d192abdcd6c59a62495ae4', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'A6D99E0EC9B7476485E693AF5CB47C9D');
INSERT INTO `sys_user` VALUES ('99', '信德宇', '201614120202', '00ea0dd869a49693fa25cae7884cca58', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '43BA3850FF5147F291FF028AE5480DAB');
INSERT INTO `sys_user` VALUES ('100', '郝亚洁', '201614120323', 'c2abef1b4b6f9b9be248c777850db160', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'C36F572DD3F6419A880B3F55E0BDD55B');
INSERT INTO `sys_user` VALUES ('101', '屈梦琦', '201614120103', '7e91f8e4ab59e7be84b7232eef2d5d1e', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '1AD61E21C9BF413C96B08687D0B67E81');
INSERT INTO `sys_user` VALUES ('102', '张建龙', '201614120222', '3666ba060e29fce2de19809d655766a2', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D3ADF1E1826842F190AC9F716E684D9B');
INSERT INTO `sys_user` VALUES ('103', '曹现凯', '201614120112', 'b17fa818423d13d8bbb685b7d081b81a', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'A746758B13FA43469DE34A3B53D9CEAA');
INSERT INTO `sys_user` VALUES ('104', '王佳', '201614120129', 'f8b2643a45d047924683aca4003a2ef3', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '96BD97A98131429EB6DC2E9ED897F2A2');
INSERT INTO `sys_user` VALUES ('105', '王一凡', '201614120208', '271faf5805b58e0c447bf9b0ce6aaf82', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'EABDDB798F5444019DED79FAE306C503');
INSERT INTO `sys_user` VALUES ('106', '颜路樊', '201614120321', '8095a41e59764060b479b35736bb2833', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '95D0CA7DCDBB4785B58D27115A1D7542');
INSERT INTO `sys_user` VALUES ('107', '王笑颖', '201614120402', 'b2450c82206b85ff08769b5b0af65a9a', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'BB6A55C0138745BC8FFD872B6404358C');
INSERT INTO `sys_user` VALUES ('108', '贺紫薇', '201614120425', '97c03e5e5eeaaede3af0a844ed6eb02b', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'A5631A15564846408033FD58B7C5865E');
INSERT INTO `sys_user` VALUES ('109', '孟畅', '201614120101', 'e48bfb8c922559e900c631c54f853516', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'E07B2E6B391E4EDA80C2A6E6B13FB1EF');
INSERT INTO `sys_user` VALUES ('110', '徐鹏', '201614120324', '8961f0277fdc47214fe2b6e615b06f87', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '64CA7801612142B6BB88C7B92750E205');
INSERT INTO `sys_user` VALUES ('111', '冯佳欢', '201614120124', '709ea4db896d08a5de735f5d166c9628', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'F4F63DB464C04472B2FF8D685606394F');
INSERT INTO `sys_user` VALUES ('112', '林芝培', '201614120224', '384e7b4b635a2ba85d5cf613079158b2', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '4F11972EB2BB4610900DFBA513F1DF91');
INSERT INTO `sys_user` VALUES ('113', '刘工玮', '201614120128', '80e79afa74550650af428ba5598266d2', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '7865072BF2F444BC8A4D5A62EEC67E6B');
INSERT INTO `sys_user` VALUES ('114', '杨璐嘉', '201614120316', '4901fadbed39650074d589a7479f0ae9', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'A959442550BC49DBA3600879B5ACB48F');
INSERT INTO `sys_user` VALUES ('115', '韩子浩', '201614120113', '164559be82f769a1bf72c7df0a279425', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '9FE5220255344B2BBAB696E1C94275A3');
INSERT INTO `sys_user` VALUES ('116', '王鲲鹏', '201614120104', '63fe9b3aa5a2b8daea3860ee6aab0e09', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '5B3B20A2B7F04A53820EA75E87921BCB');
INSERT INTO `sys_user` VALUES ('117', '王通', '201614120318', 'fe31b804fb3bbbdb4523cce777d31177', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '5260A08F996542BFA2EFA0166ECB00A3');
INSERT INTO `sys_user` VALUES ('118', '刘国梁', '201614120307', 'ecde2b5823b87e599881d64ea243e6dc', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '30C02FCD1761432FA40A3F159C62E282');
INSERT INTO `sys_user` VALUES ('119', '刘宇', '201614120201', '7241bcbbaec9bb5e27c6f1737490623d', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '6BD85ABC56BB49468A1B05C60230D92D');
INSERT INTO `sys_user` VALUES ('120', '谢欢', '201614120227', '12396ebc707efbe7fb10a09b6dec90c7', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '5B6922ED97CA49BAB0FCC21F1C085603');
INSERT INTO `sys_user` VALUES ('121', '朱必杰', '201614120130', '057274c49205bdd1cd14d4a915d5341e', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '402CA6F33CFB46F8BCE7F97A743CEFE2');
INSERT INTO `sys_user` VALUES ('122', '王佳慧', '201614120215', 'f726bbbe32b332c42400f7e4a3c33704', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '493403DDDAA34BD5877F578BF4ABAE39');
INSERT INTO `sys_user` VALUES ('123', '杨亭亭', '201614120220', '421ef2f632060f4bfd11297a1eb11bd6', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '01A6F5BCE3124E1A919E35EAE4F4CF07');
INSERT INTO `sys_user` VALUES ('124', '郝鹏昭', '201614120308', 'b44d1766e45495ed42c2186610937144', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '8AFFFCF2F35045CBB1B3D7CEB3BB112E');
INSERT INTO `sys_user` VALUES ('125', '李琛', '201614120330', '1daf61ec6c0d274dbac75b3272ebd6d8', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '010F201C37644A9DB72D693D122C161D');
INSERT INTO `sys_user` VALUES ('126', '廉冰', '201614120427', '9db5e7e2438853866fa9fef4ca69cf90', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D06F31460C6E42B3AF79CC604B5D5D59');
INSERT INTO `sys_user` VALUES ('127', '李清钊', '201614120408', '40c0d554d386193527626305a2ab5a98', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '62F17CB2B014434896091F945B902697');
INSERT INTO `sys_user` VALUES ('128', '孙远顺', '201614030417', '556e1408236662df710e925df3976c56', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '09B6E9C8FC0D424688AAB25C4EED2931');
INSERT INTO `sys_user` VALUES ('129', '齐宝树', '201614120414', 'ad1e7e934a792f1046d1ccc7d63bb4dc', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '23B1E45F5E8440EA88D131595208BDFE');
INSERT INTO `sys_user` VALUES ('130', '纪江贤', '201614120314', '9986f8be342689c79df4ae0cab5c61a4', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'E068AA4A6D314DB9AC838FECEAFCD23A');
INSERT INTO `sys_user` VALUES ('131', '兰丁', '201614120229', '0ebfb2dcb42bcd617a2b1784ad2cb251', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'FE42DC5FEFA049D78FF0C4F434AA5F1C');
INSERT INTO `sys_user` VALUES ('132', '李博', '201614120204', '03c6e0e153f7f960f358cc241e6bd93f', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '24E7307A7E42480DBF947ADB59D61D83');
INSERT INTO `sys_user` VALUES ('133', '路文开', '201614120218', '76b932f8242ca6d86d4f4fcc163a736d', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '31219CA234864ACB98FC26D81279FD16');
INSERT INTO `sys_user` VALUES ('134', '孙鹏辉', '201614120102', '17dd1a8d97c6e916908f350f5ba4ac83', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '005EF9E7C39C43F4A11B71A8816BA513');
INSERT INTO `sys_user` VALUES ('135', '白兵宜', '201614150128', '2d3f25e9c50dccc50d206c8f4605f579', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'A07BA88E1E504FC6AABF80DEED4E399A');
INSERT INTO `sys_user` VALUES ('136', '许贵东', '201614120116', 'd91b508f951d7caf9ec6f9c41cecd499', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'F461CE97FEA04DA0AE680D84752A6752');
INSERT INTO `sys_user` VALUES ('137', '杨尚智', '201614120328', 'c7bb4ca1980a1d3c79cb36e7fb3bd64c', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '4B4508D736994BC8A0F3628A283B6920');
INSERT INTO `sys_user` VALUES ('138', '黄红', '201614120424', 'c21a7adf29aa3231636c4d8f6aa4e96e', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D063CBDF3ED04C5BAF6562A1578101F1');
INSERT INTO `sys_user` VALUES ('139', '任博冲', '201414030429', 'cb41f5e8365cde9699450d46a42fbc71', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '07FF745065444102B250EABC2EF69829');
INSERT INTO `sys_user` VALUES ('140', '米达', '201614120405', '7c520b4ca916de158c430207c8d4b163', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'F4BA99B28208464ABF311977E79B0DF3');
INSERT INTO `sys_user` VALUES ('141', '杨颖', '201614120223', '013e38210f3d3d914237b46a0a35c9da', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'BF326DC6FF90459FABB109F512AE583A');
INSERT INTO `sys_user` VALUES ('142', '盖方', '201614120225', '3a8a3452ce5b3e4b4f22fdef21b4e223', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D7625F5999EF4A39A1682C7F78327137');
INSERT INTO `sys_user` VALUES ('143', '郝迟', '201614120221', '9e5db7cfe05f60ede7ea66c625427ce6', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '33B6E12F36244CA3B5527C13AC1F1531');
INSERT INTO `sys_user` VALUES ('144', '冉杰', '201614300225', '856566d86b368d310dc289b032b86075', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'B41061F6BE694D0BAD4687FFC04669AB');
INSERT INTO `sys_user` VALUES ('145', '霍帅岗', '201614120110', '9eae88fd43302f392e187b4b795b1704', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'D1562883E0154883A917F9AABD1B5D68');
INSERT INTO `sys_user` VALUES ('146', '宋晨阳', '201614120213', 'e2218e292f94b220c79c4481e51d72be', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'A202A18AB6F84A54B4631FB88A731E41');
INSERT INTO `sys_user` VALUES ('147', '牛学朋', '201614120122', 'c15b78635ff64437fc944e2891d91e7a', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '15DD9823518B4487B8D008D9CA37296C');
INSERT INTO `sys_user` VALUES ('148', '王云昊', '201614120322', 'b266eaadddfcca9ab15a25793e01089e', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'B45887B585584E02ADF95E5260D0AF06');
INSERT INTO `sys_user` VALUES ('149', '陶士恒', '201414120131', '40633b4da99a8b939559914726bfaecf', '梅苑', null, '管理学院学生', '7', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'B63D9912CE0A4BDC8080E91770BBC1CF');
INSERT INTO `sys_user` VALUES ('150', '邓可为', '201614120426', '363209cf366e58ad9d447401edc0b59f', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '8703D6CAB6C14A8E8CACEDD94F410F83');
INSERT INTO `sys_user` VALUES ('151', '张牛', '201614120210', '1d9bfe123706a7b72b9c848854eded23', '梅苑', null, '管理学院学生', '8', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', 'A6C44AD9386F4CA091346CF8B925D1EA');
INSERT INTO `sys_user` VALUES ('152', '苑康杰', '201614120420', '2bf3a4aff2fcfa89bff443d6fc188233', '梅苑', null, '管理学院学生', '12', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '01B7002E1C454FED9BA6394A2EBB72E0');
INSERT INTO `sys_user` VALUES ('153', '南瀚文', '201614120301', 'd37da2eaf59809d3f14c68c4c358f834', '梅苑', null, '管理学院学生', '11', null, '27', '1', null, '1', '/images/defaultusertitle.jpg', '33DDC94610AD4EEAAE229CF2C43820F3');
INSERT INTO `sys_user` VALUES ('154', '工商班主任', '1003', '993a0db8c1854deb9b6de2edc3b03455', '', '1', '', '4', '2020-03-31 16:00:00', '26', '1', '23', '1', '/images/defaultusertitle.jpg', '4B94527371F940528975774FE57AD540');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`rid`,`uid`),
  KEY `FK_sys_user_role_2` (`uid`),
  CONSTRAINT `FK_sys_user_role_1` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK_sys_user_role_2` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '23');
INSERT INTO `sys_user_role` VALUES ('26', '23');
INSERT INTO `sys_user_role` VALUES ('26', '26');
INSERT INTO `sys_user_role` VALUES ('27', '26');
INSERT INTO `sys_user_role` VALUES ('30', '25');
INSERT INTO `sys_user_role` VALUES ('31', '24');
INSERT INTO `sys_user_role` VALUES ('31', '25');
INSERT INTO `sys_user_role` VALUES ('32', '25');
INSERT INTO `sys_user_role` VALUES ('33', '25');
INSERT INTO `sys_user_role` VALUES ('34', '25');
INSERT INTO `sys_user_role` VALUES ('35', '25');
INSERT INTO `sys_user_role` VALUES ('36', '25');
INSERT INTO `sys_user_role` VALUES ('37', '25');
INSERT INTO `sys_user_role` VALUES ('38', '25');
INSERT INTO `sys_user_role` VALUES ('39', '25');
INSERT INTO `sys_user_role` VALUES ('40', '25');
INSERT INTO `sys_user_role` VALUES ('41', '25');
INSERT INTO `sys_user_role` VALUES ('42', '25');
INSERT INTO `sys_user_role` VALUES ('43', '25');
INSERT INTO `sys_user_role` VALUES ('44', '25');
INSERT INTO `sys_user_role` VALUES ('45', '25');
INSERT INTO `sys_user_role` VALUES ('46', '25');
INSERT INTO `sys_user_role` VALUES ('47', '25');
INSERT INTO `sys_user_role` VALUES ('48', '25');
INSERT INTO `sys_user_role` VALUES ('49', '25');
INSERT INTO `sys_user_role` VALUES ('50', '25');
INSERT INTO `sys_user_role` VALUES ('51', '25');
INSERT INTO `sys_user_role` VALUES ('52', '25');
INSERT INTO `sys_user_role` VALUES ('53', '25');
INSERT INTO `sys_user_role` VALUES ('54', '25');
INSERT INTO `sys_user_role` VALUES ('55', '25');
INSERT INTO `sys_user_role` VALUES ('56', '25');
INSERT INTO `sys_user_role` VALUES ('57', '25');
INSERT INTO `sys_user_role` VALUES ('58', '25');
INSERT INTO `sys_user_role` VALUES ('59', '25');
INSERT INTO `sys_user_role` VALUES ('60', '25');
INSERT INTO `sys_user_role` VALUES ('61', '25');
INSERT INTO `sys_user_role` VALUES ('62', '25');
INSERT INTO `sys_user_role` VALUES ('63', '25');
INSERT INTO `sys_user_role` VALUES ('64', '25');
INSERT INTO `sys_user_role` VALUES ('65', '25');
INSERT INTO `sys_user_role` VALUES ('66', '25');
INSERT INTO `sys_user_role` VALUES ('67', '25');
INSERT INTO `sys_user_role` VALUES ('68', '25');
INSERT INTO `sys_user_role` VALUES ('69', '25');
INSERT INTO `sys_user_role` VALUES ('70', '25');
INSERT INTO `sys_user_role` VALUES ('71', '25');
INSERT INTO `sys_user_role` VALUES ('72', '25');
INSERT INTO `sys_user_role` VALUES ('73', '25');
INSERT INTO `sys_user_role` VALUES ('74', '25');
INSERT INTO `sys_user_role` VALUES ('75', '25');
INSERT INTO `sys_user_role` VALUES ('76', '25');
INSERT INTO `sys_user_role` VALUES ('77', '25');
INSERT INTO `sys_user_role` VALUES ('78', '25');
INSERT INTO `sys_user_role` VALUES ('79', '25');
INSERT INTO `sys_user_role` VALUES ('80', '25');
INSERT INTO `sys_user_role` VALUES ('81', '25');
INSERT INTO `sys_user_role` VALUES ('82', '25');
INSERT INTO `sys_user_role` VALUES ('83', '25');
INSERT INTO `sys_user_role` VALUES ('84', '25');
INSERT INTO `sys_user_role` VALUES ('85', '25');
INSERT INTO `sys_user_role` VALUES ('86', '25');
INSERT INTO `sys_user_role` VALUES ('87', '25');
INSERT INTO `sys_user_role` VALUES ('88', '25');
INSERT INTO `sys_user_role` VALUES ('89', '25');
INSERT INTO `sys_user_role` VALUES ('90', '25');
INSERT INTO `sys_user_role` VALUES ('91', '25');
INSERT INTO `sys_user_role` VALUES ('92', '25');
INSERT INTO `sys_user_role` VALUES ('93', '25');
INSERT INTO `sys_user_role` VALUES ('94', '25');
INSERT INTO `sys_user_role` VALUES ('95', '25');
INSERT INTO `sys_user_role` VALUES ('96', '25');
INSERT INTO `sys_user_role` VALUES ('97', '25');
INSERT INTO `sys_user_role` VALUES ('98', '25');
INSERT INTO `sys_user_role` VALUES ('99', '25');
INSERT INTO `sys_user_role` VALUES ('100', '25');
INSERT INTO `sys_user_role` VALUES ('101', '25');
INSERT INTO `sys_user_role` VALUES ('102', '25');
INSERT INTO `sys_user_role` VALUES ('103', '25');
INSERT INTO `sys_user_role` VALUES ('104', '25');
INSERT INTO `sys_user_role` VALUES ('105', '25');
INSERT INTO `sys_user_role` VALUES ('106', '25');
INSERT INTO `sys_user_role` VALUES ('107', '25');
INSERT INTO `sys_user_role` VALUES ('108', '25');
INSERT INTO `sys_user_role` VALUES ('109', '25');
INSERT INTO `sys_user_role` VALUES ('110', '25');
INSERT INTO `sys_user_role` VALUES ('111', '25');
INSERT INTO `sys_user_role` VALUES ('112', '25');
INSERT INTO `sys_user_role` VALUES ('113', '25');
INSERT INTO `sys_user_role` VALUES ('114', '25');
INSERT INTO `sys_user_role` VALUES ('115', '25');
INSERT INTO `sys_user_role` VALUES ('116', '25');
INSERT INTO `sys_user_role` VALUES ('117', '25');
INSERT INTO `sys_user_role` VALUES ('118', '25');
INSERT INTO `sys_user_role` VALUES ('119', '25');
INSERT INTO `sys_user_role` VALUES ('120', '25');
INSERT INTO `sys_user_role` VALUES ('121', '25');
INSERT INTO `sys_user_role` VALUES ('122', '25');
INSERT INTO `sys_user_role` VALUES ('123', '25');
INSERT INTO `sys_user_role` VALUES ('124', '25');
INSERT INTO `sys_user_role` VALUES ('125', '25');
INSERT INTO `sys_user_role` VALUES ('126', '25');
INSERT INTO `sys_user_role` VALUES ('127', '25');
INSERT INTO `sys_user_role` VALUES ('128', '25');
INSERT INTO `sys_user_role` VALUES ('129', '25');
INSERT INTO `sys_user_role` VALUES ('130', '25');
INSERT INTO `sys_user_role` VALUES ('131', '25');
INSERT INTO `sys_user_role` VALUES ('132', '25');
INSERT INTO `sys_user_role` VALUES ('133', '25');
INSERT INTO `sys_user_role` VALUES ('134', '25');
INSERT INTO `sys_user_role` VALUES ('135', '25');
INSERT INTO `sys_user_role` VALUES ('136', '25');
INSERT INTO `sys_user_role` VALUES ('137', '25');
INSERT INTO `sys_user_role` VALUES ('138', '25');
INSERT INTO `sys_user_role` VALUES ('139', '25');
INSERT INTO `sys_user_role` VALUES ('140', '25');
INSERT INTO `sys_user_role` VALUES ('141', '25');
INSERT INTO `sys_user_role` VALUES ('142', '25');
INSERT INTO `sys_user_role` VALUES ('143', '25');
INSERT INTO `sys_user_role` VALUES ('144', '25');
INSERT INTO `sys_user_role` VALUES ('145', '25');
INSERT INTO `sys_user_role` VALUES ('146', '25');
INSERT INTO `sys_user_role` VALUES ('147', '25');
INSERT INTO `sys_user_role` VALUES ('148', '25');
INSERT INTO `sys_user_role` VALUES ('149', '25');
INSERT INTO `sys_user_role` VALUES ('150', '25');
INSERT INTO `sys_user_role` VALUES ('151', '25');
INSERT INTO `sys_user_role` VALUES ('152', '25');
INSERT INTO `sys_user_role` VALUES ('153', '25');
INSERT INTO `sys_user_role` VALUES ('154', '26');
