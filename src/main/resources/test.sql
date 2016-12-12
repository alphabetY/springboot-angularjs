/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-12 10:34:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='市级信息';

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '郑州', '河南');
INSERT INTO `city` VALUES ('2', '深圳', '广东');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `countryname` varchar(255) DEFAULT NULL COMMENT '名称',
  `countrycode` varchar(255) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='国家信息';

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'Angola', 'AO');
INSERT INTO `country` VALUES ('2', 'Afghanistan', 'AF');
INSERT INTO `country` VALUES ('3', 'Albania', 'AL');
INSERT INTO `country` VALUES ('4', 'Algeria', 'DZ');
INSERT INTO `country` VALUES ('5', 'Andorra', 'AD');
INSERT INTO `country` VALUES ('6', 'Anguilla', 'AI');
INSERT INTO `country` VALUES ('7', 'Antigua and Barbuda', 'AG');
INSERT INTO `country` VALUES ('8', 'Argentina', 'AR');
INSERT INTO `country` VALUES ('9', 'Armenia', 'AM');
INSERT INTO `country` VALUES ('10', 'Australia', 'AU');
INSERT INTO `country` VALUES ('11', 'Austria', 'AT');
INSERT INTO `country` VALUES ('12', 'Azerbaijan', 'AZ');
INSERT INTO `country` VALUES ('13', 'Bahamas', 'BS');
INSERT INTO `country` VALUES ('14', 'Bahrain', 'BH');
INSERT INTO `country` VALUES ('15', 'Bangladesh', 'BD');
INSERT INTO `country` VALUES ('16', 'Barbados', 'BB');
INSERT INTO `country` VALUES ('17', 'Belarus', 'BY');
INSERT INTO `country` VALUES ('18', 'Belgium', 'BE');
INSERT INTO `country` VALUES ('19', 'Belize', 'BZ');
INSERT INTO `country` VALUES ('20', 'Benin', 'BJ');
INSERT INTO `country` VALUES ('21', 'Bermuda Is.', 'BM');
INSERT INTO `country` VALUES ('22', 'Bolivia', 'BO');
INSERT INTO `country` VALUES ('23', 'Botswana', 'BW');
INSERT INTO `country` VALUES ('24', 'Brazil', 'BR');
INSERT INTO `country` VALUES ('25', 'Brunei', 'BN');
INSERT INTO `country` VALUES ('26', 'Bulgaria', 'BG');
INSERT INTO `country` VALUES ('27', 'Burkina-faso', 'BF');
INSERT INTO `country` VALUES ('28', 'Burma', 'MM');
INSERT INTO `country` VALUES ('29', 'Burundi', 'BI');
INSERT INTO `country` VALUES ('30', 'Cameroon', 'CM');
INSERT INTO `country` VALUES ('31', 'Canada', 'CA');
INSERT INTO `country` VALUES ('32', 'Central African Republic', 'CF');
INSERT INTO `country` VALUES ('33', 'Chad', 'TD');
INSERT INTO `country` VALUES ('34', 'Chile', 'CL');
INSERT INTO `country` VALUES ('35', 'China', 'CN');
INSERT INTO `country` VALUES ('36', 'Colombia', 'CO');
INSERT INTO `country` VALUES ('37', 'Congo', 'CG');
INSERT INTO `country` VALUES ('38', 'Cook Is.', 'CK');
INSERT INTO `country` VALUES ('39', 'Costa Rica', 'CR');
INSERT INTO `country` VALUES ('40', 'Cuba', 'CU');
INSERT INTO `country` VALUES ('41', 'Cyprus', 'CY');
INSERT INTO `country` VALUES ('42', 'Czech Republic', 'CZ');
INSERT INTO `country` VALUES ('43', 'Denmark', 'DK');
INSERT INTO `country` VALUES ('44', 'Djibouti', 'DJ');
INSERT INTO `country` VALUES ('45', 'Dominica Rep.', 'DO');
INSERT INTO `country` VALUES ('46', 'Ecuador', 'EC');
INSERT INTO `country` VALUES ('47', 'Egypt', 'EG');
INSERT INTO `country` VALUES ('48', 'EI Salvador', 'SV');
INSERT INTO `country` VALUES ('49', 'Estonia', 'EE');
INSERT INTO `country` VALUES ('50', 'Ethiopia', 'ET');
INSERT INTO `country` VALUES ('51', 'Fiji', 'FJ');
INSERT INTO `country` VALUES ('52', 'Finland', 'FI');
INSERT INTO `country` VALUES ('53', 'France', 'FR');
INSERT INTO `country` VALUES ('54', 'French Guiana', 'GF');
INSERT INTO `country` VALUES ('55', 'Gabon', 'GA');
INSERT INTO `country` VALUES ('56', 'Gambia', 'GM');
INSERT INTO `country` VALUES ('57', 'Georgia', 'GE');
INSERT INTO `country` VALUES ('58', 'Germany', 'DE');
INSERT INTO `country` VALUES ('59', 'Ghana', 'GH');
INSERT INTO `country` VALUES ('60', 'Gibraltar', 'GI');
INSERT INTO `country` VALUES ('61', 'Greece', 'GR');
INSERT INTO `country` VALUES ('62', 'Grenada', 'GD');
INSERT INTO `country` VALUES ('63', 'Guam', 'GU');
INSERT INTO `country` VALUES ('64', 'Guatemala', 'GT');
INSERT INTO `country` VALUES ('65', 'Guinea', 'GN');
INSERT INTO `country` VALUES ('66', 'Guyana', 'GY');
INSERT INTO `country` VALUES ('67', 'Haiti', 'HT');
INSERT INTO `country` VALUES ('68', 'Honduras', 'HN');
INSERT INTO `country` VALUES ('69', 'Hongkong', 'HK');
INSERT INTO `country` VALUES ('70', 'Hungary', 'HU');
INSERT INTO `country` VALUES ('71', 'Iceland', 'IS');
INSERT INTO `country` VALUES ('72', 'India', 'IN');
INSERT INTO `country` VALUES ('73', 'Indonesia', 'ID');
INSERT INTO `country` VALUES ('74', 'Iran', 'IR');
INSERT INTO `country` VALUES ('75', 'Iraq', 'IQ');
INSERT INTO `country` VALUES ('76', 'Ireland', 'IE');
INSERT INTO `country` VALUES ('77', 'Israel', 'IL');
INSERT INTO `country` VALUES ('78', 'Italy', 'IT');
INSERT INTO `country` VALUES ('79', 'Jamaica', 'JM');
INSERT INTO `country` VALUES ('80', 'Japan', 'JP');
INSERT INTO `country` VALUES ('81', 'Jordan', 'JO');
INSERT INTO `country` VALUES ('82', 'Kampuchea (Cambodia )', 'KH');
INSERT INTO `country` VALUES ('83', 'Kazakstan', 'KZ');
INSERT INTO `country` VALUES ('84', 'Kenya', 'KE');
INSERT INTO `country` VALUES ('85', 'Korea', 'KR');
INSERT INTO `country` VALUES ('86', 'Kuwait', 'KW');
INSERT INTO `country` VALUES ('87', 'Kyrgyzstan', 'KG');
INSERT INTO `country` VALUES ('88', 'Laos', 'LA');
INSERT INTO `country` VALUES ('89', 'Latvia', 'LV');
INSERT INTO `country` VALUES ('90', 'Lebanon', 'LB');
INSERT INTO `country` VALUES ('91', 'Lesotho', 'LS');
INSERT INTO `country` VALUES ('92', 'Liberia', 'LR');
INSERT INTO `country` VALUES ('93', 'Libya', 'LY');
INSERT INTO `country` VALUES ('94', 'Liechtenstein', 'LI');
INSERT INTO `country` VALUES ('95', 'Lithuania', 'LT');
INSERT INTO `country` VALUES ('96', 'Luxembourg', 'LU');
INSERT INTO `country` VALUES ('97', 'Macao', 'MO');
INSERT INTO `country` VALUES ('98', 'Madagascar', 'MG');
INSERT INTO `country` VALUES ('99', 'Malawi', 'MW');
INSERT INTO `country` VALUES ('100', 'Malaysia', 'MY');
INSERT INTO `country` VALUES ('101', 'Maldives', 'MV');
INSERT INTO `country` VALUES ('102', 'Mali', 'ML');
INSERT INTO `country` VALUES ('103', 'Malta', 'MT');
INSERT INTO `country` VALUES ('104', 'Mauritius', 'MU');
INSERT INTO `country` VALUES ('105', 'Mexico', 'MX');
INSERT INTO `country` VALUES ('106', 'Moldova, Republic of', 'MD');
INSERT INTO `country` VALUES ('107', 'Monaco', 'MC');
INSERT INTO `country` VALUES ('108', 'Mongolia', 'MN');
INSERT INTO `country` VALUES ('109', 'Montserrat Is', 'MS');
INSERT INTO `country` VALUES ('110', 'Morocco', 'MA');
INSERT INTO `country` VALUES ('111', 'Mozambique', 'MZ');
INSERT INTO `country` VALUES ('112', 'Namibia', 'NA');
INSERT INTO `country` VALUES ('113', 'Nauru', 'NR');
INSERT INTO `country` VALUES ('114', 'Nepal', 'NP');
INSERT INTO `country` VALUES ('115', 'Netherlands', 'NL');
INSERT INTO `country` VALUES ('116', 'New Zealand', 'NZ');
INSERT INTO `country` VALUES ('117', 'Nicaragua', 'NI');
INSERT INTO `country` VALUES ('118', 'Niger', 'NE');
INSERT INTO `country` VALUES ('119', 'Nigeria', 'NG');
INSERT INTO `country` VALUES ('120', 'North Korea', 'KP');
INSERT INTO `country` VALUES ('121', 'Norway', 'NO');
INSERT INTO `country` VALUES ('122', 'Oman', 'OM');
INSERT INTO `country` VALUES ('123', 'Pakistan', 'PK');
INSERT INTO `country` VALUES ('124', 'Panama', 'PA');
INSERT INTO `country` VALUES ('125', 'Papua New Cuinea', 'PG');
INSERT INTO `country` VALUES ('126', 'Paraguay', 'PY');
INSERT INTO `country` VALUES ('127', 'Peru', 'PE');
INSERT INTO `country` VALUES ('128', 'Philippines', 'PH');
INSERT INTO `country` VALUES ('129', 'Poland', 'PL');
INSERT INTO `country` VALUES ('130', 'French Polynesia', 'PF');
INSERT INTO `country` VALUES ('131', 'Portugal', 'PT');
INSERT INTO `country` VALUES ('132', 'Puerto Rico', 'PR');
INSERT INTO `country` VALUES ('133', 'Qatar', 'QA');
INSERT INTO `country` VALUES ('134', 'Romania', 'RO');
INSERT INTO `country` VALUES ('135', 'Russia', 'RU');
INSERT INTO `country` VALUES ('136', 'Saint Lueia', 'LC');
INSERT INTO `country` VALUES ('137', 'Saint Vincent', 'VC');
INSERT INTO `country` VALUES ('138', 'San Marino', 'SM');
INSERT INTO `country` VALUES ('139', 'Sao Tome and Principe', 'ST');
INSERT INTO `country` VALUES ('140', 'Saudi Arabia', 'SA');
INSERT INTO `country` VALUES ('141', 'Senegal', 'SN');
INSERT INTO `country` VALUES ('142', 'Seychelles', 'SC');
INSERT INTO `country` VALUES ('143', 'Sierra Leone', 'SL');
INSERT INTO `country` VALUES ('144', 'Singapore', 'SG');
INSERT INTO `country` VALUES ('145', 'Slovakia', 'SK');
INSERT INTO `country` VALUES ('146', 'Slovenia', 'SI');
INSERT INTO `country` VALUES ('147', 'Solomon Is', 'SB');
INSERT INTO `country` VALUES ('148', 'Somali', 'SO');
INSERT INTO `country` VALUES ('149', 'South Africa', 'ZA');
INSERT INTO `country` VALUES ('150', 'Spain', 'ES');
INSERT INTO `country` VALUES ('151', 'Sri Lanka', 'LK');
INSERT INTO `country` VALUES ('152', 'St.Lucia', 'LC');
INSERT INTO `country` VALUES ('153', 'St.Vincent', 'VC');
INSERT INTO `country` VALUES ('154', 'Sudan', 'SD');
INSERT INTO `country` VALUES ('155', 'Suriname', 'SR');
INSERT INTO `country` VALUES ('156', 'Swaziland', 'SZ');
INSERT INTO `country` VALUES ('157', 'Sweden', 'SE');
INSERT INTO `country` VALUES ('158', 'Switzerland', 'CH');
INSERT INTO `country` VALUES ('159', 'Syria', 'SY');
INSERT INTO `country` VALUES ('160', 'Taiwan', 'TW');
INSERT INTO `country` VALUES ('161', 'Tajikstan', 'TJ');
INSERT INTO `country` VALUES ('162', 'Tanzania', 'TZ');
INSERT INTO `country` VALUES ('163', 'Thailand', 'TH');
INSERT INTO `country` VALUES ('164', 'Togo', 'TG');
INSERT INTO `country` VALUES ('165', 'Tonga', 'TO');
INSERT INTO `country` VALUES ('166', 'Trinidad and Tobago', 'TT');
INSERT INTO `country` VALUES ('167', 'Tunisia', 'TN');
INSERT INTO `country` VALUES ('168', 'Turkey', 'TR');
INSERT INTO `country` VALUES ('169', 'Turkmenistan', 'TM');
INSERT INTO `country` VALUES ('170', 'Uganda', 'UG');
INSERT INTO `country` VALUES ('171', 'Ukraine', 'UA');
INSERT INTO `country` VALUES ('172', 'United Arab Emirates', 'AE');
INSERT INTO `country` VALUES ('173', 'United Kiongdom', 'GB');
INSERT INTO `country` VALUES ('174', 'United States of America', 'US');
INSERT INTO `country` VALUES ('175', 'Uruguay', 'UY');
INSERT INTO `country` VALUES ('176', 'Uzbekistan', 'UZ');
INSERT INTO `country` VALUES ('177', 'Venezuela', 'VE');
INSERT INTO `country` VALUES ('178', 'Vietnam', 'VN');
INSERT INTO `country` VALUES ('179', 'Yemen', 'YE');
INSERT INTO `country` VALUES ('180', 'Yugoslavia', 'YU');
INSERT INTO `country` VALUES ('181', 'Zimbabwe', 'ZW');
INSERT INTO `country` VALUES ('182', 'Zaire', 'ZR');
INSERT INTO `country` VALUES ('183', 'Zambia', 'ZM');
INSERT INTO `country` VALUES ('184', null, null);
INSERT INTO `country` VALUES ('185', null, null);
INSERT INTO `country` VALUES ('186', null, null);

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `usertype` varchar(2) DEFAULT NULL COMMENT '用户类型',
  `enabled` int(2) DEFAULT NULL COMMENT '是否可用',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `qq` varchar(14) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'test1', '12345678', '1', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('2', 'test2', 'aaaa', '2', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('3', 'test3', 'bbbb', '1', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('4', 'test4', 'cccc', '2', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('5', 'test5', 'dddd', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for `xiang_liao`
-- ----------------------------
DROP TABLE IF EXISTS `xiang_liao`;
CREATE TABLE `xiang_liao` (
  `Id` int(255) NOT NULL AUTO_INCREMENT,
  `xuhao` varchar(255) DEFAULT '',
  `huahewumingcheng` varchar(255) DEFAULT '',
  `cas` varchar(255) DEFAULT '',
  `yingwenmingcheng` varchar(255) DEFAULT '',
  `fenzishi` varchar(255) DEFAULT '',
  `xiangyunleibie` varchar(255) DEFAULT '',
  `yuzhifanwei` varchar(255) DEFAULT '',
  `zuoyongyuzhi` varchar(255) DEFAULT '',
  `fenziliang` varchar(255) DEFAULT '',
  `jiegoushi` blob,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=941 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xiang_liao
-- ----------------------------
INSERT INTO `xiang_liao` VALUES ('753', '1.0', '甲基环戊烯酮醇', '80-71-7', 'Methyl cyclopentenolone', 'C6H8O2', '焦甜香', '(5.17-6.01)*10-13', '6.01*10-13', '168.19', null);
INSERT INTO `xiang_liao` VALUES ('754', '2.0', '乙基环戊烯酮醇', ' 21835-01-8', '3-ethyl-2-hydroxy-2-cyclopenten-1-one', 'C7H10O2', '焦甜香', '(4.11-4.51)*10-13', '4.51*10-13', '126.15', null);
INSERT INTO `xiang_liao` VALUES ('755', '3.0', '麦芽酚', '118-71-8', '3-hydroxy-2-methyl-4-pyrone', 'C6H6O3', '焦甜香', '(6.17-7.03)*10-13', '7.03*10-13', '126.11', null);
INSERT INTO `xiang_liao` VALUES ('756', '4.0', '乙基麦芽酚', '4940-11-8', 'Ethyl Maltol', 'C7H8O3', '焦甜香', '(5.00-7.02)*10-13', '7.02*10-13', '140.14', null);
INSERT INTO `xiang_liao` VALUES ('757', '5.0', '菠萝酮', '3658-77-3', '4-Hydroxy-2,5-dimethyl-3(2H)-furanone', 'C6H8O3', '焦甜香', '(3.00-5.01)*10-13', '5.01*10-13', '128.13', null);
INSERT INTO `xiang_liao` VALUES ('758', '6.0', '葫芦巴内酯', '28664-35-9', '4,5-Dimethyl-3-hydroxy-2,5-dihydrofuran-2-one', 'C6H8O3', '焦甜香', '(2.54-4.93)*10-6', '4.93*10-6', '128.13', null);
INSERT INTO `xiang_liao` VALUES ('759', '7.0', '乙基葫芦巴内酯', '698-10-2', '3-Hydroxy-4-methyl-5-ethyl-2(5H)furanone', 'C7H10O3', '焦甜香', '(3.92-5.01)*10-12', '5.01*10-12', '142.15', null);
INSERT INTO `xiang_liao` VALUES ('760', '8.0', '3,4-二甲基-1,2-环戊二酮', '13494-06-9', '3,4-Dimethyl-1,2-cyclopentanedione', 'C7H10O2', '焦甜香', '(6.00-7.02)*10-8', '7.02*10-8', '126.15', null);
INSERT INTO `xiang_liao` VALUES ('761', '9.0', '5-羟甲基糠醛', '67-47-0', '5-hydroxymethylfurfural', 'C6H6O3', '焦甜香', '(1.80-3.20)*10-9', '3.20*10-9', '126.11', null);
INSERT INTO `xiang_liao` VALUES ('762', '10.0', '糠醇', '98-00-0', 'Furfuryl alcohol', 'C5H6O2', '焦甜香', '(5.11-6.62)*10-8', '6.62*10-8', '98.1', null);
INSERT INTO `xiang_liao` VALUES ('763', '11.0', '糠醛', '98-01-1', 'furfural', 'C5H4O2', '焦甜香', '(4.57-8.06)*10-9', '8.06*10-9', '96.09', null);
INSERT INTO `xiang_liao` VALUES ('764', '12.0', '5-甲基糠醛', '620-02-0', '5-methylfurfural', 'C6H6O2', '焦甜香', '(1.52-2.70)*10-8', '2.70*10-8', '110.11', null);
INSERT INTO `xiang_liao` VALUES ('765', '13.0', '反式-2,3-二甲基丙烯酸', '13201-46-2', 'Tiglic acid', 'C5H8O2', '焦甜香', '(1.20-4.32)*10-9', '4.32*10-9', '100.05', null);
INSERT INTO `xiang_liao` VALUES ('766', '14.0', '4-甲基愈创木酚', '93-51-6', '2-Methoxy-4-Methyl Phenol', 'C6H10O2', '焦甜香', '(1.05-3.70)*10-8', '3.70*10-8', '138.16', null);
INSERT INTO `xiang_liao` VALUES ('767', '15.0', 'γ-巴豆酰内酯', '497-23-4', 'γ-crotonolactone ', 'C4H4O2', '焦甜香', '(1.52-4.69)*10-8', '4.69*10-8', '84.07', null);
INSERT INTO `xiang_liao` VALUES ('768', '16.0', '2-甲基吡嗪', '109-08-0', ' 2-methylpyrazine', 'C5H6N2', '坚果香', '(1.53-3.74)*10-4', '3.74*10-4', '94.12', null);
INSERT INTO `xiang_liao` VALUES ('769', '17.0', '2,3-二甲基吡嗪', '5910-89-/4', ' 2,3-Dimethylpyrazine', 'C6H8N2', '坚果香', '(2.00-5.96)*10-9', '5.96*10-9', '108.14', null);
INSERT INTO `xiang_liao` VALUES ('770', '18.0', '2,5-二甲基吡嗪', '123-32-0', ' 2,5-Dimethylpyrazine', 'C6H8N2', '坚果香', '(1.37-3.42)*10-13', '3.42*10-13', '108.14', null);
INSERT INTO `xiang_liao` VALUES ('771', '19.0', '2,6-二甲基吡嗪', '108-50-9', ' 2,6-Dimethylpyrazine', 'C6H8N2', '坚果香', '(2.00-4.04)*10-9', '4.04*10-9', '108.14', null);
INSERT INTO `xiang_liao` VALUES ('772', '20.0', '2,3,5-三甲基吡嗪', '14667-55-1', '2,3,5-trimethylpyrazine', 'C7H10N2', '坚果香', '(1.03-3.41)*10-4', '3.41*10-4', '122.17', null);
INSERT INTO `xiang_liao` VALUES ('773', '21.0', '2-乙基吡嗪', '13925-00-3', '2-Ethylpyrazine', 'C6H8N2', '坚果香', '(1.20-5.24)*10-5', '5.24*10-5', '108.14', null);
INSERT INTO `xiang_liao` VALUES ('774', '22.0', '2,3-二乙基吡嗪', '15707-24-1', '2,3-Diethylpyrazine', 'C8H12N2', '坚果香', '(1.00-3.04)*10-9', '3.04*10-9', '136.19', null);
INSERT INTO `xiang_liao` VALUES ('775', '23.0', '2-乙基-3,4-二甲基吡嗪', '55031-15-7', '2-Ethyl-3,6-Dimethylpyrazine', 'C8H12N2', '坚果香', '(3.77-5.66)*10-8', '5.66*10-8', '136.2', null);
INSERT INTO `xiang_liao` VALUES ('776', '24.0', '2-甲氧基吡嗪', '3149-28-8', '2-methoxypyrazine', 'C5H6N2O', '坚果香', '(2.07-4.09)*10-7', '4.09*10-7', '110.11', null);
INSERT INTO `xiang_liao` VALUES ('777', '25.0', '2-甲氧基-3-甲基吡嗪', '2847-30-5', '2-methoxy-3-methylpyrazine', 'C6H8N2O', '坚果香', '(1.41-3.43)*10-6', '2.33*10-6', '124.14', null);
INSERT INTO `xiang_liao` VALUES ('778', '26.0', '2-乙酰基吡嗪', '22047-25-2', '2-Acetylpyrazine', 'C6H6N2O', '坚果香', '(2.00-5.32)*10-2', '5.32*10-2', '122.12', null);
INSERT INTO `xiang_liao` VALUES ('779', '27.0', '2-甲基吡啶', '109-06-8', '2-Methylpyridine', 'C6H7N', '坚果香', '(1.22-4.21)*10-10', '4.21*10-10', '93.13', null);
INSERT INTO `xiang_liao` VALUES ('780', '28.0', '3-甲基吡啶', '108-99-6', '3-Methylpyridine', 'C6H7N', '坚果香', '(4.02-7.31)*10-5', '7.31*10-5', '93.13', null);
INSERT INTO `xiang_liao` VALUES ('781', '29.0', '2-乙基吡啶', '100-71-0', '2-ethylpyridine', 'C7H9N', '坚果香', '(4.40-7.77)*10-8', '7.77*10-8', '107.16', null);
INSERT INTO `xiang_liao` VALUES ('782', '30.0', '3-乙基吡啶', '536-78-7', '3-ethyl pyridine', 'C7H9N', '坚果香', '(1.05-2.10)*10-10', '2.10*10-10', '107.16', null);
INSERT INTO `xiang_liao` VALUES ('783', '31.0', '4-乙基吡啶', '536-75-4', '4-Ethylpyridine', 'C7H9N', '坚果香', '(1.80-5.30)*10-6', '5.30*10-6', '107.16', null);
INSERT INTO `xiang_liao` VALUES ('784', '32.0', '2,4-二甲基吡啶', '108-47-4', '2,4-Lutidine', 'C7H9N', '坚果香', '(2.77-4.81)*10-7', '4.81*10-7', '107.15', null);
INSERT INTO `xiang_liao` VALUES ('785', '33.0', '2,5-二甲基吡啶', ' 589-93-5', '2,5-Dimethylpyridine', 'C7H9N', '坚果香', '(2.05-3.44)*10-5', '3.44*10-5', '107.15', null);
INSERT INTO `xiang_liao` VALUES ('786', '34.0', '2,6-二甲基吡啶', '108-48-5', '2,6-Lutidine', 'C7H9N', '坚果香', '(1.43-2.91)*10-10', '2.91*10-10', '107.15', null);
INSERT INTO `xiang_liao` VALUES ('787', '35.0', '2,3,5-三甲基吡啶', '695-98-7', '2,3,5-Collidine', 'C8H11N', '坚果香', '(3.38-5.72)*10-5', '5.72*10-5', '121.18', null);
INSERT INTO `xiang_liao` VALUES ('788', '36.0', '3,5-二甲基吡啶', '591-22-0', '3,5-Lutidine', 'C7H9N', '坚果香', '(2.25-4.25)*10-4', '4.25*10-4', '107.15', null);
INSERT INTO `xiang_liao` VALUES ('789', '37.0', '2-乙烯基吡啶', '100-69-6', '2-Vinylpyridine', 'C7H7N', '坚果香', '(5.31-7.13)*10-10', '7.13*10-10', '105.14', null);
INSERT INTO `xiang_liao` VALUES ('790', '38.0', '3-乙烯基吡啶', '1121-55-7', '3-Vinylpyridine', 'C7H7N', '坚果香', '(1.23-4.02)*10-6', '4.02*10-6', '105.14', null);
INSERT INTO `xiang_liao` VALUES ('791', '39.0', '5-乙基-2-甲基吡啶', '104-90-5', '5-Ethyl-2-methyl pyridine', 'C8H11N', '坚果香', '(1.00-4.41)*10-7', '4.41*10-7', '121.18', null);
INSERT INTO `xiang_liao` VALUES ('792', '40.0', '2-乙酰基吡啶', '1122-62-9', '2-Acetylpyridine', 'C7H7NO', '坚果香', '(1.00-3.73)*10-4', '3.73*10-4', '121.14', null);
INSERT INTO `xiang_liao` VALUES ('793', '41.0', '3-乙酰基吡啶', '350-03-8', '3-Acetylpyridine', 'C7H7NO', '坚果香', '(1.89-5.53)*10-6', '3.53*10-6', '121.14', null);
INSERT INTO `xiang_liao` VALUES ('794', '42.0', '4-乙酰基吡啶', '1122-54-9', ' 4-Acetylpyridine', 'C7H7NO', '坚果香', '(2.20-7.03)*10-5', '4.03*10-5', '121.14', null);
INSERT INTO `xiang_liao` VALUES ('795', '43.0', '2-乙酰-4-甲基吡啶', '59576-26-0', '2-Acetyl-4-methylpyridine', 'C8H9NO', '坚果香', '(1.03-5.82)*10-6', '5.82*10-6', '135.16', null);
INSERT INTO `xiang_liao` VALUES ('796', '44.0', '2,3-环戊烯并吡啶(两个CAS号)', '583-37-9/533-37-9', '2,3-Cyclopenteno pyridine', 'C8H9N', '坚果香', '(1.51-5.14)*10-8', '5.14*10-8', '119.17', null);
INSERT INTO `xiang_liao` VALUES ('797', '45.0', '甲酰基吡咯（1-甲酰基吡咯烷）', '3760-54-1', '1-Formylpyrrolidine', 'C5H9NO', '坚果香', '(1.02-2.53)*10-3', '2.53*10-3', '99.13', null);
INSERT INTO `xiang_liao` VALUES ('798', '46.0', 'N-甲基-2-乙酰基吡咯', '932-16-1', '2-Acetyl-1-methylpyrrole', 'C7H9NO', '坚果香', '(1.83-2.81)*10-7', '2.81*10-7', '123.15', null);
INSERT INTO `xiang_liao` VALUES ('799', '47.0', '3-甲基喹啉', '612-58-8', '3-Methylquinoline', 'C10H9N', '坚果香', '(1.41-3.73)*10-11', '3.73*10-11', '143.19', null);
INSERT INTO `xiang_liao` VALUES ('800', '48.0', '6-甲基喹啉', '91-62-3', '6-methyl quinoline', 'C10H9N', '坚果香', '(1.01-4.12)*10-7', '4.12*10-7', '143.19', null);
INSERT INTO `xiang_liao` VALUES ('801', '49.0', '8-甲基喹啉', '611-32-5', '8-Methylquinoline', 'C10H9N', '坚果香', '(1.11-5.41)*10-7', '5.41*10-7', '143.19', null);
INSERT INTO `xiang_liao` VALUES ('802', '50.0', '2,6-二甲基喹啉', '877-43-0', '2,6-Dimethylquinoline', 'C11H11N', '坚果香', '(2.16-4.32)*10-5', '4.32*10-5', '157.21', null);
INSERT INTO `xiang_liao` VALUES ('803', '51.0', '2-乙酰基噻唑', '24295-03-2', ' 2-Acetylthiazole', 'C5H5NOS', '坚果香', '(1.00-4.40)*10-7', '4.40*10-7', '127.16', null);
INSERT INTO `xiang_liao` VALUES ('804', '52.0', '异戊醛', '590-86-3', '3-Methyl butanal', 'C5H10O', '坚果香', '(1.01-3.66)*10-11', '3.66*10-11', '86.13', null);
INSERT INTO `xiang_liao` VALUES ('805', '53.0', '异丁醛', '78-84-2', 'Isobutyraldehyde', 'C4H8O', '坚果香', '(2.51-7.99)*10-12', '7.99*10-12', '72.11', null);
INSERT INTO `xiang_liao` VALUES ('806', '54.0', '异佛尔酮', '78-59-1', 'Isophorone', 'C9H14O', '坚果香', '(5.24-7.95)*10-8', '7.95*10-8', '138.2', null);
INSERT INTO `xiang_liao` VALUES ('807', '55.0', '4-乙基苯甲醛', '4748-78-1', '4-Ethylbenzaldehyde', 'C9H10O', '坚果香', '(3.51-8.01)*10-6', '8.01*10-6', '134.18', null);
INSERT INTO `xiang_liao` VALUES ('808', '56.0', '香叶基丙酮（两个CAS）', '3796-70-1/689-67-8', 'Geranyl acetone', 'C13H22O', '（清）青香', '(2.25-4.10)*10-7', '4.10*10-7', '194.32', null);
INSERT INTO `xiang_liao` VALUES ('809', '57.0', '乙酸叶醇酯', '3681-71-8', 'cis-3-hexenyl acetate', 'C8H14O2', '（清）青香', '(1.20-5.31)*10-8', '5.31*10-8', '142.2', null);
INSERT INTO `xiang_liao` VALUES ('810', '58.0', '叶醇', '928-96-1', 'cis-3-Hexen-1-ol', 'C6H12O', '（清）青香', '(4.41-7.55)*10-10', '7.55*10-10', '100.16', null);
INSERT INTO `xiang_liao` VALUES ('811', '59.0', '6-甲基-5-庚烯-2-酮', '206-990-2', '6-Methylcoumarin', 'C8H14O', '（清）青香', '(5.51-7.33)*10-10', '7.33*10-10', '126.2', null);
INSERT INTO `xiang_liao` VALUES ('812', '60.0', 'β-大马酮', '23696-85-7', 'β-Damascenone', 'C10H18O', '（清）青香', '(3.00-5.30)*10-10', '5.30*10-10', '190.27', null);
INSERT INTO `xiang_liao` VALUES ('813', '61.0', '1-戊烯-3-醇', '616-25-1', '1-Penten-3-ol', 'C5H10O', '（清）青香', '(1.00-7.21)*10-9', '7.21*10-9', '86.13', null);
INSERT INTO `xiang_liao` VALUES ('814', '62.0', '反-2-己烯醛', '6718-26-3', 'E-2-Hexenal ', 'C6H10O', '（清）青香', '(1.05-2.71)*10-8', '2.71*10-8', '98.14', null);
INSERT INTO `xiang_liao` VALUES ('815', '63.0', 'β-二氢大马酮', '23726-91-2', '(Z)-β-DAMASCONE', 'C13H20O', '（清）青香', '(1.18-3.73)*10-12', '3.73*10-12', '192.29', null);
INSERT INTO `xiang_liao` VALUES ('816', '64.0', '4-氧代异佛尔酮', '1125-21-9', '4- ketoisophorone', 'C9H12O2', '（清）青香', '(1.22-3.60)*10-4', '3.60*10-4', '152.19', null);
INSERT INTO `xiang_liao` VALUES ('817', '65.0', '苯甲酸叶醇酯', '25152-85-6', 'cis-3-Hexenyl Benzoate', 'C13H16O2', '（清）青香', '(1.00-2.10)*10-13', '2.10*10-13', '204.26', null);
INSERT INTO `xiang_liao` VALUES ('818', '66.0', '己醛', '66-25-1', 'Capronaldehyde', 'C6H12O', '（清）青香', '(5.43-8.29)*10-12', '8.29*10-12', '100.16', null);
INSERT INTO `xiang_liao` VALUES ('819', '67.0', '2-乙基己醇', '104-76-7', '2-Ethyl hexanol', 'C8H18O', '（清）青香', '(1.03-2.80)*10-7', '2.80*10-7', '130.23', null);
INSERT INTO `xiang_liao` VALUES ('820', '68.0', '香茅醇', '106-22-9', 'Citronellol', 'C10H20O', '（清）青香', '(1.01-3.22)*10-12', '3.22*10-12', '156.27', null);
INSERT INTO `xiang_liao` VALUES ('821', '69.0', '紫苏醛', '18031-40-8', 'Perilla aldehyde', 'C10H14O', '（清）青香', '（1.00-3.15)*10-9', '3.15*10-9', '150.22', null);
INSERT INTO `xiang_liao` VALUES ('822', '70.0', '反-2-己烯酸', '13419-69-7', 'hex-2-enoic acid', 'C6H9O2', '（清）青香', '(1.73-4.01)*10-6', '4.01*10-6', '113.14', null);
INSERT INTO `xiang_liao` VALUES ('823', '71.0', '肉桂酸甲酯', '103-26-4', 'Methyl ester', 'C10H10O2', '（清）青香', '(1.52-7.65)*10-11', '7.65*10-11', '162.19', null);
INSERT INTO `xiang_liao` VALUES ('824', '72.0', '苯甲酸苄酯', '120-51-4', 'benzyl benzoate', 'C14H12O2', '（清）青香', '(1.02-3.94)*10-12', '3.94*10-12', '172.51', null);
INSERT INTO `xiang_liao` VALUES ('825', '73.0', '苯乙酸叶醇酯', '42436-07-7', 'cis-3-hexenyl acetate', 'C14H18O2', '（清）青香', '(1.01-6.63)*10-10', '6.63*10-10', '142.2', null);
INSERT INTO `xiang_liao` VALUES ('826', '74.0', '3-丁基吡啶', '539-32-2', '3-Butylpyridine', 'C9H13N', '（清）青香', '(2.01-3.81)*10-5', '3.81*10-5', '325.29', null);
INSERT INTO `xiang_liao` VALUES ('827', '75.0', '癸醛', '122-31-2', ' Decanal', 'C10H20O', '（清）青香', '(1.62-3.06)*10-6', '3.06*10-6', '156.27', null);
INSERT INTO `xiang_liao` VALUES ('828', '76.0', '乙酸糠酯', '623-17-6', '2-acetoxymethylfuran', 'C7H8O3', '（清）青香', '(1.45-6.22)*10-7', '6.22*10-7', '140.14', null);
INSERT INTO `xiang_liao` VALUES ('829', '77.0', '枯茗醛', '122-03-2', 'Cuminaldehyde', 'C10H12O', '（清）青香', '(1.01-4.90)*10-5', '4.90*10-5', '148.21', null);
INSERT INTO `xiang_liao` VALUES ('830', '78.0', '苯甲醛', '100-52-7', 'Benzaldehyde', 'C7H6O', '果香', '(3.44-9.41)*10-6', '9.41*10-6', '106.12', null);
INSERT INTO `xiang_liao` VALUES ('831', '79.0', '(+)-柠檬烯', '5989-27-5', '(+)-Limonene', 'C10H16', '果香', '(1.41-3.05)*10-7', '1.41*10-7', '136.24', null);
INSERT INTO `xiang_liao` VALUES ('832', '80.0', '戊醛', '110-62-3', 'pentanal', 'C5H10O', '果香', '(1.41-6.26)*10-13', '6.26*10-13', '86.13', null);
INSERT INTO `xiang_liao` VALUES ('833', '81.0', '乙酸乙酯', '141-78-6', 'ethyl acetate', 'C4H8O2', '果香', '(1.21-3.71)*10-10', '3.71*10-10', '88.11', null);
INSERT INTO `xiang_liao` VALUES ('834', '82.0', '乙酸丙酯', '109-60-4', 'n-Propyl acetate', 'C5H10O2', '果香', '(1.01-1.64)*10-8', '1.64*10-8', '102.13', null);
INSERT INTO `xiang_liao` VALUES ('835', '83.0', '乙酸丁酯', '123-86-4', 'n-Butyl acetate', 'C6H12O2', '果香', '(2.57-3.06)*10-14', '3.06*10-14', '116.16', null);
INSERT INTO `xiang_liao` VALUES ('836', '84.0', '戊酸乙酯', '539-82-2', 'Ethyl n-Valerate', 'C7H14O2', '果香', '(2.71-7.08)*10-11', '7.08*10-11', '130.18', null);
INSERT INTO `xiang_liao` VALUES ('837', '85.0', '乙酰乙酸乙酯', '141-97-9', 'Ethyl acetoacetate', 'C6H10O3', '果香', '(1.28-2.78)*10-12', '2.78*10-12', '130.14', null);
INSERT INTO `xiang_liao` VALUES ('838', '86.0', '丙酸乙酯', '105-37-3', 'Ethyl Propionate', 'C5H10O2', '果香', '(1.52-6.66)*10-9', '6.66*10-9', '102.13', null);
INSERT INTO `xiang_liao` VALUES ('839', '87.0', '异丁酸乙酯', '97-62-1', 'ethyl isobutyrate', 'C6H12O2', '果香', '(2.22-3.28)*10-10', '3.28*10-10', '116.16', null);
INSERT INTO `xiang_liao` VALUES ('840', '88.0', '己酸乙酯', '123-66-0', 'ethyl caproate', 'C8H16O2', '果香', '(3.21-6.88)*10-5', '6.88*10-5', '144.21', null);
INSERT INTO `xiang_liao` VALUES ('841', '89.0', '庚酸乙酯', '106-30-9', 'Ethyl heptanoate', 'C9H18O2', '果香', '(1.21-3.11)*10-5', '3.11*10-5', '158.24', null);
INSERT INTO `xiang_liao` VALUES ('842', '90.0', '癸酸乙酯', '110-38-3', 'Ethyl caprate', 'C12H24O2', '果香', '(1.32-6.13)*10-7', '6.13*10-7', '200.32', null);
INSERT INTO `xiang_liao` VALUES ('843', '91.0', '桂酸乙酯', '103-36-6', 'ETHYL CINNAMATE', 'C11H12O2', '果香', '(1.01-3.66)*10-9', '3.66*10-9', '176.21', null);
INSERT INTO `xiang_liao` VALUES ('844', '92.0', '肉桂酸苯乙酯', '103-53-7', ' Phenethyl cinnamate', 'C17H16O2', '果香', '(1.01-6.63)*10-10', '6.63*10-10', '252.31', null);
INSERT INTO `xiang_liao` VALUES ('845', '93.0', '乳酸乙酯', '97-64-3', ' ethyl lactate', 'C5H10O3', '果香', '(1.52-6.17)*10-9', '6.17*10-9', '118.13', null);
INSERT INTO `xiang_liao` VALUES ('846', '94.0', '马来酸二丁酯', '105-76-0', 'Maleic acid dibutyl ', 'C12H20O4', '果香', '(1.20-3.35)*10-9', '3.35*10-9', '228.28', null);
INSERT INTO `xiang_liao` VALUES ('847', '95.0', '乙酸-2-乙基己酯', '103-09-3', '2-Ethylhexyl acetate', 'C10H20O2', '果香', '(2.30-5.73)*10-10', '5.73*10-11', '172.26', null);
INSERT INTO `xiang_liao` VALUES ('848', '96.0', '二氢猕猴桃内酯', '17092-92-1', 'dihydroactinidiolide', 'C11H16O2', '果香', '(1.52-6.70)*10-7', '6.70*10-7', '180.24', null);
INSERT INTO `xiang_liao` VALUES ('849', '97.0', '糠酸甲酯', '611-13-2', 'Methyl 2-furoate', 'C6H6O3', '果香', '(1.03-2.89)*10-4', '2.89*10-4', '126.11', null);
INSERT INTO `xiang_liao` VALUES ('850', '98.0', '4-甲基苯乙酮', '122-62-3', '4\'-Methylacetophenone', 'C9H10O', '果香', '(1.30-3.76)*10-5', '3.76*10-5', '134.18', null);
INSERT INTO `xiang_liao` VALUES ('851', '99.0', '金合欢基丙酮', '762-29-8', 'Farnesylacetone', 'C18H30O', '花香', '(1.00-2.71)*10-9', '2.71*10-9', '262.43', null);
INSERT INTO `xiang_liao` VALUES ('852', '100.0', '2-环戊烯-1-酮', '930-30-3', '2-Cyclopentenone', 'C5H6O', '花香', '(2.74-3.51)*10-3', '3.51*10-3', '152.24', null);
INSERT INTO `xiang_liao` VALUES ('853', '101.0', '橙花醇', '106-25-2', 'Nerol', 'C10H18O', '花香', '(1.50-5.76)*10-6', '5.76*10-6', '154.25', null);
INSERT INTO `xiang_liao` VALUES ('854', '102.0', '乙酸苄酯', '140-11-4', 'Benzyl acetate', 'C9H10O2', '花香', '(7.03-7.89)*10-6', '7.89*10-6', '150.17', null);
INSERT INTO `xiang_liao` VALUES ('855', '103.0', '苯甲醇', '100-51-6', 'Benzyl alcohol', 'C7H8O', '花香', '(1.00-2.62)*10-7', '2.62*10-7', '108.14', null);
INSERT INTO `xiang_liao` VALUES ('856', '104.0', '苯乙醛', '122-78-1', 'Phenylacetaldehyde', 'C8H8O', '花香', '(2.03-7.01)*10-9', '7.01*10-9', '120.15', null);
INSERT INTO `xiang_liao` VALUES ('857', '105.0', '二氢-β-紫罗兰酮', '17283-81-7', 'DIHYDRO-BETA-IONONE', 'C13H22O', '花香', '(1.52-5.32)*10-8', '5.32*10-8', '194.31', null);
INSERT INTO `xiang_liao` VALUES ('858', '106.0', 'α-紫罗兰酮', '1076-38-6', 'α-Ionone', 'C13H20O', '花香', '(1.02-2.31)*10-11', '2.31*10-11', '192.3', null);
INSERT INTO `xiang_liao` VALUES ('859', '107.0', 'β-紫罗兰酮', '79-77-6', '4-(2,6,6-Trimethyl-1-cyclohexenyl)-3-buten-2-one', 'C13H20O', '花香', '(1.13-3.23)*10-10', '3.23*10-10', '192.3', null);
INSERT INTO `xiang_liao` VALUES ('860', '108.0', '香叶醇', '106-24-1', 'Geraniol', 'C10H18O', '花香', '(1.31-2.33)*10-9', '2.33*10-9', '154.25', null);
INSERT INTO `xiang_liao` VALUES ('861', '109.0', '芳樟醇', '78-70-6', 'Linalool', 'C10H18O', '花香', '(3.04-7.14)*10-13', '7.14*10-13', '154.25', null);
INSERT INTO `xiang_liao` VALUES ('862', '110.0', '乙酸对甲酚酯', '140-39-6', 'P-TOLYL ACETATE', 'C9H10O2', '花香', '(5.10-6.66)*10-5', '6.66*10-5', '150.17', null);
INSERT INTO `xiang_liao` VALUES ('863', '111.0', '苯乙醇', '22258-', 'Phenethyl alcohol', 'C8H10O', '花香', '(3.11-6.19)*10-8', '6.19*10-8', '122.16', null);
INSERT INTO `xiang_liao` VALUES ('864', '112.0', '1-戊烯-3-酮', '1629-58-9', 'Ethyl vinyl ketone', 'C5H8O', '辛香', '(5.08-8.90)*10-7', '8.90*10-7', '84.12', null);
INSERT INTO `xiang_liao` VALUES ('865', '113.0', '丁香酚', '97-53-0', 'Eugenol', 'C10H12O2', '辛香', '(1.35-7.11)*10-12', '7.11*10-12', '164.2', null);
INSERT INTO `xiang_liao` VALUES ('866', '114.0', '桂醛', '104-55-2', 'trans-Cinnamaldehyde', 'C9H8O', '辛香', '(1.06-3.31)*10-10', '3.31*10-10', '132.16', null);
INSERT INTO `xiang_liao` VALUES ('867', '115.0', '桂酸桂酯', '122-69-0', 'Cinnamyl cinnamate', 'C18H16O2', '辛香', '(1.02-2.54)*10-12', '2.54*10-12', '264.32', null);
INSERT INTO `xiang_liao` VALUES ('868', '116.0', '对二甲氧基苯', '150-78-7', '1,4-Dimethoxybenzene', 'C8H10O2', '辛香', '(5.60-8.46)*10-13', '8.46*10-13', '138.16', null);
INSERT INTO `xiang_liao` VALUES ('869', '117.0', '大茴香醛', '123-11-5', 'Anisic aldehyde', 'C8H8O2', '辛香', '(3.35-5.79)*10-12', '5.79*10-12', '136.15', null);
INSERT INTO `xiang_liao` VALUES ('870', '118.0', 'γ-丁内酯', '96-48-0', 'gamma-Butyrolactone', 'C4H6O2', '奶香韵', '(2.15-6.04)*10-7', '6.04*10-7', '86.09', null);
INSERT INTO `xiang_liao` VALUES ('871', '119.0', 'γ-戊内酯', '108-29-2', 'gamma-Valerolactone', 'C5H8O2', '奶香韵', '(1.02-4.53)*10-9', '4.53*10-9', '100.12', null);
INSERT INTO `xiang_liao` VALUES ('872', '120.0', '香兰素', '121-33-5', 'Vanillin', 'C8H8O3', '奶香韵', '(2.54-5.43)*10-7', '5.43*10-7', '152.15', null);
INSERT INTO `xiang_liao` VALUES ('873', '121.0', '乙基香兰素', '121-32-4', 'Ethyl vanillin', 'C9H10O3', '奶香韵', '(1.02-3.33)*10-7', '3.33*10-7', '166.17', null);
INSERT INTO `xiang_liao` VALUES ('874', '122.0', '丁二酮', '57-71-6', '2,3-Butanedione', 'C4H6O2', '奶香韵', '(1.02-4.35)*10-9', '4.35*10-9', '86.09', null);
INSERT INTO `xiang_liao` VALUES ('875', '123.0', '丁二酸', '110-15-6', 'butanedioic acid', 'C4H6O4', '奶香韵', '(2.51-5.87)*10-9', '5.87*10-9', '118.09', null);
INSERT INTO `xiang_liao` VALUES ('876', '124.0', '丁酸', '107-92-6', 'butyric acid', 'C4H8O2', '奶香韵', '(1.02-2.89)*10-5', '2.89*10-5', '88.11', null);
INSERT INTO `xiang_liao` VALUES ('877', '125.0', '异丁酸', '79-31-2', 'Isobutyric acid', 'C4H8O2', '奶香韵', '(4.30-7.59)*10-6', '7.59*10-6', '88.11', null);
INSERT INTO `xiang_liao` VALUES ('878', '126.0', '戊酸', '109-52-4', 'Valeric acid', 'C5H10O2', '奶香韵', '(1.73-3.02)*10-4', '3.02*10-4', '102.13', null);
INSERT INTO `xiang_liao` VALUES ('879', '127.0', '2-甲基丁酸', '116-53-0', ' 2-Methyl Butyric Acid Methylethyl acetic acid', 'C5H10O2', '奶香韵', '(1.14-4.61)*10-5', '4.61*10-5', '102.13', null);
INSERT INTO `xiang_liao` VALUES ('880', '128.0', '3-甲基丁酸', '72-18-4', '2-Methyl Butyric Acid Methylethyl acetic acid ', 'C5H10O2', '奶香韵', '(1.01-2.15)*10-7', '2.15*10-7', '102.13', null);
INSERT INTO `xiang_liao` VALUES ('881', '129.0', '2-甲基-2-丁烯酸', '565-63-9', 'ANGELIC ACID', 'C5H8O2', '奶香韵', '(1.50-4.21)*10-6', '4.21*10-6', '100.12', null);
INSERT INTO `xiang_liao` VALUES ('882', '130.0', '己酸', '142-62-1', 'Hexanoic acid', 'C6H12O2', '奶香韵', '(1.23-3.09)*10-7', '3.09*10-7', '116.16', null);
INSERT INTO `xiang_liao` VALUES ('883', '131.0', '3-甲基戊酸', '105-43-1', 'DL-3-Methylvaleric acid', 'C6H12O2', '奶香韵', '(1.01-2.99)*10-8', '2.99*10-8', '116.16', null);
INSERT INTO `xiang_liao` VALUES ('884', '132.0', '4-甲基戊酸', '646-07-1', '4-Methylvaleric acid', 'C6H12O2', '奶香韵', '(4.57-8.84)*10-9', '8.84*10-9', '116.16', null);
INSERT INTO `xiang_liao` VALUES ('885', '133.0', '2-戊烯酸', '13991-37-2', 'TRANS-2-PENTENOIC ACID', 'C5H8O2', '奶香韵', '(1.11-4.19)*10-8', '4.19*10-8', '100.12', null);
INSERT INTO `xiang_liao` VALUES ('886', '134.0', '庚酸', '111-14-8', 'Heptanoic acid', 'C7H14O2', '奶香韵', '(1.02-2.52)*10-7', '2.52*10-7', '130.18', null);
INSERT INTO `xiang_liao` VALUES ('887', '135.0', '7-辛烯酸', '18719-24-9', '7-OCTENOIC ACID', 'C8H14O2', '奶香韵', '(1.11-2.53)*10-6', '2.53*10-6', '142.2', null);
INSERT INTO `xiang_liao` VALUES ('888', '136.0', '辛酸', '124-07-2', 'Octanoic acid', 'C8H16O2', '脂蜡香', '(1.04-2.93)*10-8', '2.93*10-8', '144.21', null);
INSERT INTO `xiang_liao` VALUES ('889', '137.0', '壬酸', '112-05-0', 'Nonanoic acid', 'C9H18O2', '脂蜡香', '(1.03-2.95)*10-7', '2.95*10-7', '158.24', null);
INSERT INTO `xiang_liao` VALUES ('890', '138.0', '癸酸', '334-48-5', 'Capric acid', 'C10H20O2', '脂蜡香', '(1.21-3.73)*10-6', '3.73*10-6', '172.26', null);
INSERT INTO `xiang_liao` VALUES ('891', '139.0', '9-癸烯酸', '14436-32-9', '9-DECENOIC ACID', 'C10H18O2', '脂蜡香', '(1.13-2.81)*10-7', '2.81*10-7', '170.25', null);
INSERT INTO `xiang_liao` VALUES ('892', '140.0', '十一酸', '112-37-8', 'Hendecanoic acid', 'C11H22O2', '脂蜡香', '(1.02-5.21)*10-6', '5.21*10-6', '186.29', null);
INSERT INTO `xiang_liao` VALUES ('893', '141.0', '10-十一烯酸', '112-38-9', 'Undecenoic acid', 'C11H20O2', '脂蜡香', '(1.12-2.30)*10-7', '2.30*10-7', '184.28', null);
INSERT INTO `xiang_liao` VALUES ('894', '142.0', '月桂酸', '143-07-7', 'Lauric acid', 'C12H24O2', '脂蜡香', '(2.90-5.18)*10-8', '5.18*10-8', '200.32', null);
INSERT INTO `xiang_liao` VALUES ('895', '143.0', '十三酸', '638-53-9', 'TRIDECANOIC ACID', 'C13H26O2', '脂蜡香', '(3.70-8.13)*10-9', '8.13*10-9', '214.34', null);
INSERT INTO `xiang_liao` VALUES ('896', '144.0', '肉豆蔻酸', '544-63-8', 'Myristic acid', 'C14H28O2', '脂蜡香', '(1.17-6.11)*10-9', '6.11*10-9', '228.37', null);
INSERT INTO `xiang_liao` VALUES ('897', '145.0', '十五酸', '1002-84-2', 'PENTADECANOIC ACID', 'C15H30O2', '脂蜡香', '(2.00-2.98)*10-7', '2.98*10-7', '242.4', null);
INSERT INTO `xiang_liao` VALUES ('898', '146.0', '棕榈酸', '57-10-3', 'Palmitic acid', 'C16H32O2', '脂蜡香', '(1.12-3.27)*10-8', '3.27*10-8', '256.42', null);
INSERT INTO `xiang_liao` VALUES ('899', '147.0', '十七酸', '506-12-7', 'HEPTADECANOIC ACID', 'C17H34O2', '脂蜡香', '(1.14-2.98)*10-6', '2.98*10-6', '270.45', null);
INSERT INTO `xiang_liao` VALUES ('900', '148.0', '十八酸', '541-91-3', 'Stearic acid', 'C18H36O2', '脂蜡香', '(1.12-3.92)*10-7', '3.92*10-7', '284.48', null);
INSERT INTO `xiang_liao` VALUES ('901', '149.0', '油酸', '112-80-1', 'Oleic acid', 'C18H34O2', '脂蜡香', '(3.40-7.00)*10-5', '7.00*10-5', '282.46', null);
INSERT INTO `xiang_liao` VALUES ('902', '150.0', '花生酸', '506-30-9', 'Eicosanoic acid', 'C20H40O2', '脂蜡香', '(1.01-3.21)*10-5', '3.21*10-5', '312.53', null);
INSERT INTO `xiang_liao` VALUES ('903', '151.0', '二十二酸', '112-85-6', 'Docosanoic acid', 'C22H44O2', '脂蜡香', '(1.08-3.09)*10-7', '3.09*10-7', '340.58', null);
INSERT INTO `xiang_liao` VALUES ('904', '152.0', '壬酸乙酯', '123-29-5', 'Ethyl nonanoate', 'C11H22O2', '脂蜡香', '(1.70-3.82)*10-7', '3.82*10-7', '186.29', null);
INSERT INTO `xiang_liao` VALUES ('905', '153.0', '壬醛', '124-19-6', '1-Nonanal', 'C9H18O', '脂蜡香', '(1.08-3.44)*10-6', '3.44*10-6', '142.24', null);
INSERT INTO `xiang_liao` VALUES ('906', '154.0', '苯乙酸甲酯', '101-41-7', 'Methyl phenylacetate', 'C9H10O2', '甜香', '(2.25-4.49)*10-11', '4.49*10-11', '150.17', null);
INSERT INTO `xiang_liao` VALUES ('907', '155.0', '苯乙酸乙酯', '101-97-3', 'Ethyl phenylacetate', 'C10H12O2', '甜香', '(1.01-3.31)*10-12', '3.31*10-12', '164.2', null);
INSERT INTO `xiang_liao` VALUES ('908', '156.0', '苯乙酸苄酯', '102-16-9', 'benzyl phenylacetate', 'C15H14O2', '甜香', '(1.00-2.13)*10-11', '2.13*10-11', '225.26', null);
INSERT INTO `xiang_liao` VALUES ('909', '157.0', '苯乙酸苯乙酯', '102-20-5', 'Phenethyl phenylacetate', 'C16H16O2', '甜香', '(1.19-2.25)*10-11', '2.25*10-11', '240.29', null);
INSERT INTO `xiang_liao` VALUES ('910', '158.0', '乙酸苯乙酯', '103-45-7', 'Phenethyl acetate', 'C10H12O2', '甜香', '(2.79-3.74)*10-10', '3.74*10-10', '164.2', null);
INSERT INTO `xiang_liao` VALUES ('911', '159.0', 'β-环化柠檬醛', '432-25-7', 'beta-cyclocitral', 'C10H16O', '甜香', '(2.06-4.19)*10-6', '4.19*10-6', '152.23', null);
INSERT INTO `xiang_liao` VALUES ('912', '160.0', '苯乙酮', '98-86-2', 'Acetophenone', 'C8H8O', '甜香', '(1.30-5.39)*10-4', '5.39*10-4', '120.15', null);
INSERT INTO `xiang_liao` VALUES ('913', '161.0', '茶香螺烷', '36431-72-8', 'Theaspirane', 'C13H22O', '木香', '(2.83-4.09)*10-8', '4.09*10-8', '194.31', null);
INSERT INTO `xiang_liao` VALUES ('914', '162.0', '乙酸芳樟酯', '115-95-7', 'Linalyl acetate', 'C12H20O2', '木香', '(1.02-4.53)*10-9', '4.53*10-9', '196.29', null);
INSERT INTO `xiang_liao` VALUES ('915', '163.0', '茶香螺酮', '1125-21-9', 'Ketoisophorone', 'C9H12O2', '木香', '（1.63-5.23）*10-7', '5.23*10-7', '152.19', null);
INSERT INTO `xiang_liao` VALUES ('916', '164.0', '降龙涎香醚', '6790-58-5', 'Ambroxane', 'C16H28O', '木香', '(1.25-4.37)*10-7', '4.37*10-7', '236.34', null);
INSERT INTO `xiang_liao` VALUES ('917', '165.0', '香紫苏内酯', '564-20-5', 'Sclareolide', 'C16H26O2', '木香', '(4.57-7.91)*10-9', '7.91*10-9', '250.38', null);
INSERT INTO `xiang_liao` VALUES ('918', '166.0', '二氢香豆素', '119-84-6', '3,4-Dihydrocoumarin', 'C9H8O2', '豆香', '(4.55-7.03)*10-13', '7.03*10-13', '148.17', null);
INSERT INTO `xiang_liao` VALUES ('919', '167.0', '6-甲基香豆素', '92-48-8', '6-Methylcoumarin', 'C10H8O2', '豆香', '(1.42-3.68)*10-6', '3.68*10-6', '160.17', null);
INSERT INTO `xiang_liao` VALUES ('920', '168.0', 'γ-己内酯', '695-06-7', 'gamma-Hexalactone', 'C6H10O2', '豆香', '(1.32-3.42)*10-10', '3.42*10-10', '114.14', null);
INSERT INTO `xiang_liao` VALUES ('921', '169.0', '3-苯丙酸', '501-52-0', '3-Phenylpropionic acid', 'C9H10O2', '豆香', '(2.12-8.32)*10-9', '8.32*10-9', '150.17', null);
INSERT INTO `xiang_liao` VALUES ('922', '170.0', '2,3-二甲基吡啶', '583-61-9', '2,3-Lutidine', 'C7H9N', '豆香', '(1.11-4.91)*10-7', '4.91*10-7', '436.29', null);
INSERT INTO `xiang_liao` VALUES ('923', '171.0', '对甲氧基苯乙酮', '100-06-1', '4\'-Methoxyacetophenone', 'C9H10O2', '豆香', '(1.52-5.75)*10-10', '5.75*10-10', '150.17', null);
INSERT INTO `xiang_liao` VALUES ('924', '172.0', '薄荷酮', '14073-97-3', 'Cyclohexanone', 'C10H18O', '药草', '(1.20-3.61)*10-8', '3.61*10-8', '154.25', null);
INSERT INTO `xiang_liao` VALUES ('925', '173.0', '薄荷醇', '2216-51-5 ', 'L-Menthol', 'C10H20O', '药草', '(1.03-2.26)*10-9', '2.26*10-9', '156.27', null);
INSERT INTO `xiang_liao` VALUES ('926', '174.0', 'α-当归内酯', '591-12-8', 'alpha-Angelicalactone', 'C5H6O2', '药草', '(7.09-9.05)*10-11', '9.05*10-11', '98.1', null);
INSERT INTO `xiang_liao` VALUES ('927', '175.0', '苯酚', '108-95-2', 'Phenol', 'C6H6O', '药草', '(1.00-2.73)*10-10', '2.73*10-10', '94.11', null);
INSERT INTO `xiang_liao` VALUES ('928', '176.0', '间甲酚', '108-39-4', 'm-Cresol', 'C7H8O', '药草', '(1.22-3.82)*10-11', '3.82*10-11', '108.14', null);
INSERT INTO `xiang_liao` VALUES ('929', '177.0', '反-肉桂酸', '140-10-3', 'trans-Cinnamic acid', 'C9H8O2', '膏香', '(5.05-6.88)*10-8', '6.88*10-8', '148.17', null);
INSERT INTO `xiang_liao` VALUES ('930', '178.0', '3-甲基肉桂酸', '3029-79-6', '3-Methylcinnamicacid', 'C10H10O2', '膏香', '(1.41-4.22)*10-9', '4.22*10-9', '161.18', null);
INSERT INTO `xiang_liao` VALUES ('931', '179.0', '4-甲基肉桂酸', '1866-39-3', '4-Methylcinnamic acid', 'C10H10O2', '膏香', '(1.22-2.91)*10-7', '2.91*10-7', '161.18', null);
INSERT INTO `xiang_liao` VALUES ('932', '180.0', '反-4-羟基肉桂酸', '501-98-4', '4-Hydroxycinnamic acid', 'C9H8O3', '膏香', '(1.20-5.32)*10-6', '5.32*10-6', '164.16', null);
INSERT INTO `xiang_liao` VALUES ('933', '181.0', '苯甲酸甲酯', '93-58-3', 'Methyl benzoate', 'C8H8O2', '膏香', '(5.65-9.97)*10-9', '9.97*10-9', '136.15', null);
INSERT INTO `xiang_liao` VALUES ('934', '182.0', '苯甲酸', '65-85-0', 'Benzoic acid', 'C7H6O2', '膏香', '(1.26-3.36)*10-8', '3.36*10-8', '122.12', null);
INSERT INTO `xiang_liao` VALUES ('935', '183.0', '乙酸', '64-19-7', 'Acetic acid glacial', 'C2H4O2', '酸香', '(1.00-2.91)*10-7', '2.91*10-7', '60.05', null);
INSERT INTO `xiang_liao` VALUES ('936', '184.0', '丙酸', '79-09-4', 'Propionic acid', 'C3H6O2', '酸香', '(1.03-3.33)*10-7', '3.33*10-7', '74.0', null);
INSERT INTO `xiang_liao` VALUES ('937', '185.0', '丙烯酸', '79-10-7', 'Acrylic acid', 'C3H4O2', '酸香', '(1.00-4.38)*10-7', '4.38*10-7', '72.06', null);
INSERT INTO `xiang_liao` VALUES ('938', '186.0', '草酸', '144-62-7', 'Oxalic acid', 'C2H2O4', '酸香', '(2.07-4.32)*10-5', '4.32*10-5', '90.04', null);
INSERT INTO `xiang_liao` VALUES ('939', '187.0', '苹果酸', '97-67-6', 'L(-)-Malic acid', 'C4H6O5', '酸香', '(1.06-2.01)*10-5', '2.01*10-5', '134.09', null);
INSERT INTO `xiang_liao` VALUES ('940', '188.0', '柠檬酸', '77-92-9', 'Citric acid', 'C6H8O7', '酸香', '(1.00-2.02)*10-5', '2.02*10-5', '192.14', null);
