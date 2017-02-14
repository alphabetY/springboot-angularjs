/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-02-14 14:16:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xiang_liao`
-- ----------------------------
DROP TABLE IF EXISTS `xiang_liao`;
CREATE TABLE `xiang_liao` (
  `Id` int(11) NOT NULL DEFAULT '0',
  `xuhao` int(255) DEFAULT NULL,
  `huahewumingcheng` varchar(255) DEFAULT NULL,
  `cas` varchar(255) DEFAULT NULL,
  `yingwenmingcheng` varchar(255) DEFAULT NULL,
  `fenzishi` varchar(255) DEFAULT NULL,
  `jiegoushi` varchar(255) DEFAULT NULL,
  `fenziliang` varchar(255) DEFAULT NULL,
  `xiangyunleibie` varchar(255) DEFAULT NULL,
  `yuzhifanwei` varchar(255) DEFAULT NULL,
  `zuoyongyuzhi` varchar(255) DEFAULT NULL,
  `hanliang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xiang_liao
-- ----------------------------
INSERT INTO `xiang_liao` VALUES ('2', '1', '甲基环戊烯酮醇', '80-71-7', 'Methyl cyclopentenolone', 'C6H8O2', '', '168.19', '烤甜香', '(6.17-7.01)*10-3', '7.01*10-3', '2');
INSERT INTO `xiang_liao` VALUES ('3', '2', '乙基环戊烯酮醇', ' 21835-01-8', '3-Ethyl-2-hydroxy-2-cyclopenten-1-one', 'C7H10O2', '', '126.15', '烤甜香', '(2.11-2.51)*10-3', '2.51*10-3', '0.0');
INSERT INTO `xiang_liao` VALUES ('4', '3', '麦芽酚', '118-71-8', '3-Hydroxy-2-methyl-4-pyrone', 'C6H6O3', '', '126.11', '烤甜香', '(6.17-8.03)*10-3', '8.03*10-3', '5.31');
INSERT INTO `xiang_liao` VALUES ('5', '4', '乙基麦芽酚', '4940-11-8', 'Ethyl Maltol', 'C7H8O3', '', '140.14', '烤甜香', '6.00-8.02', '8.02', '1.61');
INSERT INTO `xiang_liao` VALUES ('6', '5', '菠萝酮', '3658-77-3', '4-Hydroxy-2,5-dimethyl-3(2H)-furanone', 'C6H8O3', '', '128.13', '烤甜香', '(3.00-6.01)*10-3', '6.01*10-3', '0.0');
INSERT INTO `xiang_liao` VALUES ('7', '6', '葫芦巴内酯', '28664-35-9', '4,5-Dimethyl-3-hydroxy-2,5-dihydrofuran-2-one', 'C6H8O3', '', '128.13', '烤甜香', '(2.54-4.53)*10-9', '4.53*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('8', '7', '乙基葫芦巴内酯', '698-10-2', '3-Hydroxy-4-methyl-5-ethyl-2(5H)furanone', 'C7H10O3', '', '142.15', '烤甜香', '(3.92-7.01)*10-8', '7.01*10-8', '0.0');
INSERT INTO `xiang_liao` VALUES ('9', '8', '3,4-二甲基-1,2-环戊二酮', '13494-06-9', '3,4-Dimethyl-1,2-cyclopentanedione', 'C7H10O2', '', '126.15', '烤甜香', '(5.00-7.02)*10-4', '7.02×10-4', '0.0');
INSERT INTO `xiang_liao` VALUES ('10', '9', '5-羟甲基糠醛', '67-47-0', '5-Hydroxymethylfurfural', 'C6H6O3', '', '126.11', '烤甜香', '(1.80-3.00)*10-5', '3.00*10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('11', '10', '糠醇', '98-00-0', 'Furfuryl alcohol', 'C5H6O2', '', '98.1', '烤甜香', '(1.11-2.26)*10-4', '2.26*10-4', '0.0');
INSERT INTO `xiang_liao` VALUES ('12', '11', '糠醛', '98-01-1', 'Furfural', 'C5H4O2', '', '96.09', '烤甜香', '(4.57-8.06)*10-4', '8.06*10-4', '0.0');
INSERT INTO `xiang_liao` VALUES ('13', '12', '5-甲基糠醛', '620-02-0', '5-methylfurfural', 'C6H6O2', '', '110.11', '烤甜香', '(1.52-2.70)*10-4', '2.70*10-4', '5.37');
INSERT INTO `xiang_liao` VALUES ('14', '13', '反式-2,3-二甲基丙烯酸', '13201-46-2', 'Tiglic acid', 'C5H8O2', '', '100.05', '烤甜香', '(1.20-5.32)*10-5', '5.32*10-5', '2.11');
INSERT INTO `xiang_liao` VALUES ('15', '14', '4-甲基愈创木酚', '93-51-6', '2-Methoxy-4-Methyl Phenol', 'C6H10O2', '', '138.16', '烤甜香', '(1.05-2.70)*10-10', '2.70*10-10', '0.68');
INSERT INTO `xiang_liao` VALUES ('16', '15', 'γ-巴豆酰内酯', '497-23-4', 'γ-Crotonolactone ', 'C4H4O2', '', '84.07', '烤甜香', '(1.52-6.69)*10-10', '6.69*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('17', '16', '2-甲基吡嗪', '109-08-0', ' 2-Methylpyrazine', 'C5H6N2', '', '94.12', '烘焙香', '(1.53-2.74)*10-2', '2.74*10-2', '0.95');
INSERT INTO `xiang_liao` VALUES ('18', '17', '2,3-二甲基吡嗪', '5910-89-/4', ' 2,3-Dimethylpyrazine', 'C6H8N2', '', '108.14', '烘焙香', '(2.00-8.96)*10-5', '8.96*10-5', '1.09');
INSERT INTO `xiang_liao` VALUES ('19', '18', '2,5-二甲基吡嗪', '123-32-0', ' 2,5-Dimethylpyrazine', 'C6H8N2', '', '108.14', '烘焙香', '(1.37-2.42)*10-3', '2.42*10-3', '1.11');
INSERT INTO `xiang_liao` VALUES ('20', '19', '2,6-二甲基吡嗪', '108-50-9', ' 2,6-Dimethylpyrazine', 'C6H8N2', '', '108.14', '烘焙香', '(1.00-2.04)*10-5', '2.04*10-5', '0.63');
INSERT INTO `xiang_liao` VALUES ('21', '20', '2,3,5-三甲基吡嗪', '14667-55-1', '2,3,5-Trimethylpyrazine', 'C7H10N2', '', '122.17', '烘焙香', '(1.03-2.41)*10-4', '2.41*10-4', '2.15');
INSERT INTO `xiang_liao` VALUES ('22', '21', '2-乙基吡嗪', '13925-00-3', '2-Ethylpyrazine', 'C6H8N2', '', '108.14', '烘焙香', '(1.20-4.94)*10-5', '4.94*10-5', '0.58');
INSERT INTO `xiang_liao` VALUES ('23', '22', '2,3-二乙基吡嗪', '15707-24-1', '2,3-Diethylpyrazine', 'C8H12N2', '', '136.19', '烘焙香', '(1.00-2.04)*10-9', '2.04*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('24', '23', '2-乙基-3,4-二甲基吡嗪', '55031-15-7', '2-Ethyl-3,6-dimethylpyrazine', 'C8H12N2', '', '136.2', '烘焙香', '(3.77-6.66)*10-8', '6.66*10-8', '0.0');
INSERT INTO `xiang_liao` VALUES ('25', '24', '2-甲氧基吡嗪', '3149-28-8', '2-Methoxypyrazine', 'C5H6N2O', '', '110.11', '烘焙香', '(2.07-4.79)*10-7', '4.79*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('26', '25', '2-甲氧基-3-甲基吡嗪', '2847-30-5', '2-Methoxy-3-methylpyrazine', 'C6H8N2O', '', '124.14', '烘焙香', '(1.41-2.43)*10-6', '2.43*10-6', '0.0');
INSERT INTO `xiang_liao` VALUES ('27', '26', '2-乙酰基吡嗪', '22047-25-2', '2-Acetylpyrazine', 'C6H6N2O', '', '122.12', '烘焙香', '(2.00-4.02)*10-2', '4.02*10-2', '0.0');
INSERT INTO `xiang_liao` VALUES ('28', '27', '2-甲基吡啶', '109-06-8', '2-Methylpyridine', 'C6H7N', '', '93.13', '烘焙香', '(2.22-3.21)*10-10', '3.21*10-10', '0.14');
INSERT INTO `xiang_liao` VALUES ('29', '28', '3-甲基吡啶', '108-99-6', '3-Methylpyridine', 'C6H7N', '', '93.13', '烘焙香', '(2.02-3.71)*10-5', '3.71*10-5', '3.25');
INSERT INTO `xiang_liao` VALUES ('30', '29', '2-乙基吡啶', '100-71-0', '2-Ethylpyridine', 'C7H9N', '', '107.16', '烘焙香', '(2.40-5.77)*10-8', '5.77*10-8', '3.24');
INSERT INTO `xiang_liao` VALUES ('31', '30', '3-乙基吡啶', '536-78-7', '3-Ethyl pyridine', 'C7H9N', '', '107.16', '烘焙香', '(1.00-4.10)*10-10', '4.10*10-10', '0.69');
INSERT INTO `xiang_liao` VALUES ('32', '31', '4-乙基吡啶', '536-75-4', '4-Ethylpyridine', 'C7H9N', '', '107.16', '烘焙香', '(1.80-3.30)*10-4', '3.30*10-4', '0.97');
INSERT INTO `xiang_liao` VALUES ('33', '32', '2,4-二甲基吡啶', '108-47-4', '2,4-Lutidine', 'C7H9N', '', '107.15', '烘焙香', '(1.77-3.81)*10-7', '3.81*10-7', '0.74');
INSERT INTO `xiang_liao` VALUES ('34', '33', '2,5-二甲基吡啶', ' 589-93-5', '2,5-Dimethylpyridine', 'C7H9N', '', '107.15', '烘焙香', '(1.00-4.43)*10-5', '4.43*10-5', '0.54');
INSERT INTO `xiang_liao` VALUES ('35', '34', '2,6-二甲基吡啶', '108-48-5', '2,6-Lutidine', 'C7H9N', '', '107.15', '烘焙香', '(1.03-1.92)*10-10', '1.92*10-10', '0.39');
INSERT INTO `xiang_liao` VALUES ('36', '35', '2,3,5-三甲基吡啶', '695-98-7', '2,3,5-Collidine', 'C8H11N', '', '121.18', '烘焙香', '(2.38-7.72)*10-3', '7.72*10-3', '0.94');
INSERT INTO `xiang_liao` VALUES ('37', '36', '3,5-二甲基吡啶', '591-22-0', '3,5-Lutidine', 'C7H9N', '', '107.15', '烘焙香', '(1.25-2.25)*10-4', '2.25*10-4', '2.13');
INSERT INTO `xiang_liao` VALUES ('38', '37', '2-乙烯基吡啶', '100-69-6', '2-Vinylpyridine', 'C7H7N', '', '105.14', '烘焙香', '(1.35-3.71)*10-10', '3.71*10-10', '0.1');
INSERT INTO `xiang_liao` VALUES ('39', '38', '3-乙烯基吡啶', '1121-55-7', '3-Vinylpyridine', 'C7H7N', '', '105.14', '烘焙香', '(1.23-4.02)*10-6', '4.02*10-6', '1.68');
INSERT INTO `xiang_liao` VALUES ('40', '39', '5-乙基-2-甲基吡啶', '104-90-5', '5-Ethyl-2-methyl pyridine', 'C8H11N', '', '121.18', '烘焙香', '(1.00-4.41)*10-5', '4.41*10-5', '1.21');
INSERT INTO `xiang_liao` VALUES ('41', '40', '2-乙酰基吡啶', '1122-62-9', '2-Acetylpyridine', 'C7H7NO', '', '121.14', '烘焙香', '(1.00-1.73)*10-2', '1.73*10-2', '0.21');
INSERT INTO `xiang_liao` VALUES ('42', '41', '3-乙酰基吡啶', '350-03-8', '3-Acetylpyridine', 'C7H7NO', '', '121.14', '烘焙香', '(1.89-3.53)*10-6', '3.53*10-6', '2.24');
INSERT INTO `xiang_liao` VALUES ('43', '42', '4-乙酰基吡啶', '1122-54-9', ' 4-Acetylpyridine', 'C7H7NO', '', '121.14', '烘焙香', '(1.20-5.32)*10-5', '5.32*10-5', '2.04');
INSERT INTO `xiang_liao` VALUES ('44', '43', '2-乙酰-4-甲基吡啶', '59576-26-0', '2-Acetyl-4-methylpyridine', 'C8H9NO', '', '135.16', '烘焙香', '(3.10-6.82)*10-6', '6.82*10-6', '0.55');
INSERT INTO `xiang_liao` VALUES ('45', '44', '2,3-环戊烯并吡啶', '583-37-9', '2,3-Cyclopenteno pyridine', 'C8H9N', '', '119.17', '烘焙香', '(1.11-4.51)*10-4', '4.51*10-4', '0.57');
INSERT INTO `xiang_liao` VALUES ('46', '45', '1-甲酰基吡咯烷', '3760-54-1', '1-Formylpyrrolidine', 'C5H9NO', '', '99.13', '烘焙香', '(1.02-1.53)*10-2', '1.53*10-2', '0.0');
INSERT INTO `xiang_liao` VALUES ('47', '46', 'N-甲基-2-乙酰基吡咯', '932-16-1', '2-Acetyl-1-methylpyrrole', 'C7H9NO', '', '123.15', '烘焙香', '(1.83-8.12)*10-7', '8.12*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('48', '47', '3-甲基喹啉', '612-58-8', '3-Methylquinoline', 'C10H9N', '', '143.19', '烘焙香', '(1.41-3.73)*10-10', '3.73*10-10', '0.62');
INSERT INTO `xiang_liao` VALUES ('49', '48', '6-甲基喹啉', '91-62-3', '6-Methyl quinoline', 'C10H9N', '', '143.19', '烘焙香', '(1.01-4.12)*10-4', '4.12*10-4', '2.26');
INSERT INTO `xiang_liao` VALUES ('50', '49', '8-甲基喹啉', '611-32-5', '8-Methylquinoline', 'C10H9N', '', '143.19', '烘焙香', '(1.11-4.51)*10-4', '4.51*10-4', '0.31');
INSERT INTO `xiang_liao` VALUES ('51', '50', '2,6-二甲基喹啉', '877-43-0', '2,6-Dimethylquinoline', 'C11H11N', '', '157.21', '烘焙香', '(1.26-2.34)*10-4', '2.34*10-4', '0.37');
INSERT INTO `xiang_liao` VALUES ('52', '51', '2-乙酰基噻唑', '24295-03-2', ' 2-Acetylthiazole', 'C5H5NOS', '', '127.16', '烘焙香', '(1.00-4.40)*10-7', '4.40*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('53', '52', '异戊醛', '590-86-3', '3-Methyl butanal', 'C5H10O', '', '86.13', '烘焙香', '(1.01-6.63)*10-11', '6.63*10-11', '0.0');
INSERT INTO `xiang_liao` VALUES ('54', '53', '异丁醛', '78-84-2', 'Isobutyraldehyde', 'C4H8O', '', '72.11', '烘焙香', '(1.52-9.97)*10-11', '9.97*10-11', '0.0');
INSERT INTO `xiang_liao` VALUES ('55', '54', '异佛尔酮', '78-59-1', 'Isophorone', 'C9H14O', '', '138.2', '烘焙香', '(2.54-5.97)*10-8', '5.97*10-8', '0.18');
INSERT INTO `xiang_liao` VALUES ('56', '55', '香叶基丙酮', '3796-70-1', 'Geranyl acetone', 'C13H22O', '', '194.32', '（清）青香', '(2.25-4.10)*10-7', '4.10*10-7', '1.59');
INSERT INTO `xiang_liao` VALUES ('57', '56', '乙酸叶醇酯', '3681-71-8', 'cis-3-Hexenyl acetate', 'C8H14O2', '', '142.2', '（清）青香', '(1.20-5.31)*10-8', '5.31*10-8', '0.0');
INSERT INTO `xiang_liao` VALUES ('58', '57', '叶醇', '928-96-1', 'cis-3-Hexen-1-ol', 'C6H12O', '', '100.16', '（清）青香', '(4.41-5.57)*10-11', '5.57*10-11', '0.0');
INSERT INTO `xiang_liao` VALUES ('59', '58', '6-甲基-5-庚烯-2-酮', '206-990-2', '6-Methylcoumarin', 'C8H14O', '', '126.2', '（清）青香', '(1.15-3.37)*10-11', '3.37*10-11', '0.55');
INSERT INTO `xiang_liao` VALUES ('60', '59', 'β-大马酮', '23696-85-7', 'β-Damascenone', 'C10H18O', '', '190.27', '（清）青香', '(3.00-5.30)*10-10', '5.30*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('61', '60', '1-戊烯-3-醇', '616-25-1', '1-Penten-3-ol', 'C5H10O', '', '86.13', '（清）青香', '(1.00-2.71)*10-7', '2.71*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('62', '61', '反-2-己烯醛', '6718-26-3', 'E-2-Hexenal ', 'C6H10O', '', '98.14', '（清）青香', '(1.50-2.71)*10-7', '2.71*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('63', '62', 'β-二氢大马酮', '23726-91-2', '(Z)-β-Damascone', 'C13H20O', '', '192.29', '（清）青香', '(3.37-8.19)*10-11', '8.19*10-11', '1.12');
INSERT INTO `xiang_liao` VALUES ('64', '63', '4-氧代异佛尔酮', '1125-21-9', '4- Ketoisophorone', 'C9H12O2', '', '152.19', '（清）青香', '(1.22-3.06)*10-5', '3.06*10-5', '0.22');
INSERT INTO `xiang_liao` VALUES ('65', '64', '苯甲酸叶醇酯', '25152-85-6', 'cis-3-Hexenyl Benzoate', 'C13H16O2', '', '204.26', '（清）青香', '(1.05-2.01)*10-14', '2.01*10-14', '0.0');
INSERT INTO `xiang_liao` VALUES ('66', '65', '己醛', '66-25-1', 'Capronaldehyde', 'C6H12O', '', '100.16', '（清）青香', '(8.43-9.82)*10-11', '9.82*10-11', '0.0');
INSERT INTO `xiang_liao` VALUES ('67', '66', '2-乙基己醇', '104-76-7', '2-Ethyl hexanol', 'C8H18O', '', '130.23', '（清）青香', '(1.03-1.80)*10-7', '1.80*10-7', '0.06');
INSERT INTO `xiang_liao` VALUES ('68', '67', '香茅醇', '106-22-9', 'Citronellol', 'C10H20O', '', '156.27', '（清）青香', '(1.01-5.64)*10-11', '5.64*10-11', '0.78');
INSERT INTO `xiang_liao` VALUES ('69', '68', '反-2-己烯酸', '13419-69-7', 'hex-2-Enoic acid', 'C6H9O2', '', '113.14', '（清）青香', '(1.37-4.01)*10-6', '4.01*10-6', '0.0');
INSERT INTO `xiang_liao` VALUES ('70', '69', '肉桂酸甲酯', '103-26-4', 'Methyl ester', 'C10H10O2', '', '162.19', '（清）青香', '(1.52-6.75)*10-10', '6.75*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('71', '70', '苯甲酸苄酯', '120-51-4', 'Benzyl benzoate', 'C14H12O2', '', '172.51', '（清）青香', '(1.02-4.39)*10-10', '4.39*10-10', '0.03');
INSERT INTO `xiang_liao` VALUES ('72', '71', '苯乙酸叶醇酯', '42436-07-7', 'cis-3-Hexenyl acetate', 'C14H18O2', '', '142.2', '（清）青香', '(1.01-6.63)*10-10', '6.63*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('73', '72', '3-丁基吡啶', '539-32-2', '3-Butylpyridine', 'C9H13N', '', '325.29', '（清）青香', '(2.01-3.81)*10-5', '3.81*10-5', '1.22');
INSERT INTO `xiang_liao` VALUES ('74', '73', '癸醛', '122-31-2', ' Decanal', 'C10H20O', '', '156.27', '（清）青香', '(1.62-3.06)*10-6', '3.06*10-6', '0.02');
INSERT INTO `xiang_liao` VALUES ('75', '74', '乙酸糠酯', '623-17-6', '2-Acetoxymethylfuran', 'C7H8O3', '', '140.14', '（清）青香', '(1.45-2.62)*10-6', '2.62*10-6', '0.06');
INSERT INTO `xiang_liao` VALUES ('76', '75', '枯茗醛', '122-03-2', 'Cuminaldehyde', 'C10H12O', '', '148.21', '（清）青香', '(1.01-4.09)*10-4', '4.09*10-4', '0.07');
INSERT INTO `xiang_liao` VALUES ('77', '76', '苯甲醛', '100-52-7', 'Benzaldehyde', 'C7H6O', '', '106.12', '果香', '(5.34-9.41)*10-5', '9.41*10-5', '0.08');
INSERT INTO `xiang_liao` VALUES ('78', '77', '(+)-柠檬烯', '5989-27-5', '(+)-Limonene', 'C10H16', '', '136.24', '果香', '(1.41-3.05)*10-6', '3.05*10-6', '0.0');
INSERT INTO `xiang_liao` VALUES ('79', '78', '戊醛', '110-62-3', 'Pentanal', 'C5H10O', '', '86.13', '果香', '(1.41-2.66)*10-11', '2.66*10-11', '0.0');
INSERT INTO `xiang_liao` VALUES ('80', '79', '乙酸乙酯', '141-78-6', 'Ethyl acetate', 'C4H8O2', '', '88.11', '果香', '(2.21-3.71)*10-10', '3.71*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('81', '80', '乙酸丙酯', '109-60-4', 'n-Propyl acetate', 'C5H10O2', '', '102.13', '果香', '(1.01-1.64)*10-8', '1.64*10-8', '0.0');
INSERT INTO `xiang_liao` VALUES ('82', '81', '乙酸丁酯', '123-86-4', 'n-Butyl acetate', 'C6H12O2', '', '116.16', '果香', '(2.57-6.03)*10-9', '6.03*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('83', '82', '戊酸乙酯', '539-82-2', 'Ethyl n-valerate', 'C7H14O2', '', '130.18', '果香', '(2.71-7.04)*10-13', '7.04*10-13', '0.5');
INSERT INTO `xiang_liao` VALUES ('84', '83', '乙酰乙酸乙酯', '141-97-9', 'Ethyl acetoacetate', 'C6H10O3', '', '130.14', '果香', '(1.28-1.78)*10-9', '1.78*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('85', '84', '丙酸乙酯', '105-37-3', 'Ethyl Propionate', 'C5H10O2', '', '102.13', '果香', '(1.52-6.66)*10-9', '6.66*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('86', '85', '异丁酸乙酯', '97-62-1', 'Ethyl isobutyrate', 'C6H12O2', '', '116.16', '果香', '(2.22-3.28)*10-10', '3.28*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('87', '86', '己酸乙酯', '123-66-0', 'Ethyl caproate', 'C8H16O2', '', '144.21', '果香', '(3.21-6.12)*10-4', '6.12*10-4', '0.0');
INSERT INTO `xiang_liao` VALUES ('88', '87', '庚酸乙酯', '106-30-9', 'Ethyl heptanoate', 'C9H18O2', '', '158.24', '果香', '(1.21-3.11)*10-5', '3.11*10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('89', '88', '癸酸乙酯', '110-38-3', 'Ethyl caprate', 'C12H24O2', '', '200.32', '果香', '(1.32-3.61)*10-7', '3.61*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('90', '89', '桂酸乙酯', '103-36-6', 'Ethyl cinnamate', 'C11H12O2', '', '176.21', '果香', '(1.01-6.63)*10-10', '6.63*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('91', '90', '肉桂酸苯乙酯', '103-53-7', ' Phenethyl cinnamate', 'C17H16O2', '', '252.31', '果香', '(1.01-6.63)*10-10', '6.63*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('92', '91', '乳酸乙酯', '97-64-3', ' Ethyl lactate', 'C5H10O3', '', '118.13', '果香', '(1.52-6.71)*10-9', '6.71*10-9', '1.01');
INSERT INTO `xiang_liao` VALUES ('93', '92', '马来酸二丁酯', '105-76-0', 'Maleic acid dibutyl ', 'C12H20O4', '', '228.28', '果香', '(1.20-5.33)*10-9', '5.33*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('94', '93', '乙酸-2-乙基己酯', '103-09-3', '2-Ethylhexyl acetate', 'C10H20O2', '', '172.26', '果香', '(1.07-1.55)*10-10', '1.55*10-11', '0.51');
INSERT INTO `xiang_liao` VALUES ('95', '94', '二氢猕猴桃内酯', '17092-92-1', 'Dihydroactinidiolide', 'C11H16O2', '', '180.24', '果香', '(1.52-6.70)*10-7', '6.70*10-7', '0.29');
INSERT INTO `xiang_liao` VALUES ('96', '95', '糠酸甲酯', '611-13-2', 'Methyl 2-furoate', 'C6H6O3', '', '126.11', '果香', '(1.03-1.89)*10-4', '1.89*10-4', '0.21');
INSERT INTO `xiang_liao` VALUES ('97', '96', '4-甲基苯乙酮', '122-62-3', '4\'-Methylacetophenone', 'C9H10O', '', '134.18', '果香', '(1.30-6.76)*10-4', '6.76*10-4', '4.33');
INSERT INTO `xiang_liao` VALUES ('98', '97', '1-戊烯-3-酮', '1629-58-9', 'Ethyl vinyl ketone', 'C5H8O', '', '84.12', '辛香', '(5.08-8.90)*10-7', '8.90*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('99', '98', '丁香酚', '97-53-0', 'Eugenol', 'C10H12O2', '', '164.2', '辛香', '(1.15-1.39)*10-13', '1.39*10-13', '0.02');
INSERT INTO `xiang_liao` VALUES ('100', '99', '桂醛', '104-55-2', 'trans-Cinnamaldehyde', 'C9H8O', '', '132.16', '辛香', '(1.06-1.33)*10-9', '1.33*10-9', '0.07');
INSERT INTO `xiang_liao` VALUES ('101', '100', '桂酸桂酯', '122-69-0', 'Cinnamyl cinnamate', 'C18H16O2', '', '264.32', '辛香', '(1.02-4.52)*10-12', '4.52*10-12', '0.0');
INSERT INTO `xiang_liao` VALUES ('102', '101', '对二甲氧基苯', '150-78-7', '1,4-Dimethoxybenzene', 'C8H10O2', '', '138.16', '辛香', '(3.60-8.46)*10-10', '8.46*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('103', '102', '紫苏醛', '18031-40-8', 'Perilla aldehyde', 'C10H14O', '', '150.22', '辛香', '（1.00-1.35)*10-9', '1.35*10-9', '0.04');
INSERT INTO `xiang_liao` VALUES ('104', '103', '大茴香醛', '123-11-5', 'Anisic aldehyde', 'C8H8O2', '', '136.15', '辛香', '(3.02-5.37)*10-11', '5.97*10-11', '0.0');
INSERT INTO `xiang_liao` VALUES ('105', '104', '茶香螺烷', '36431-72-8', 'Theaspirane', 'C13H22O', '', '194.31', '木香', '(2.83-4.99)*10-8', '4.99*10-8', '0.0');
INSERT INTO `xiang_liao` VALUES ('106', '105', '乙酸芳樟酯', '115-95-7', 'Linalyl acetate', 'C12H20O2', '', '196.29', '木香', '(1.02-4.53)*10-9', '4.53*10-9', '0.22');
INSERT INTO `xiang_liao` VALUES ('107', '106', '茶香螺酮', '1125-21-9', 'Ketoisophorone', 'C9H12O2', '', '152.19', '木香', '(1.63-7.23)*10-7', '7.23*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('108', '107', '降龙涎香醚', '6790-58-5', 'Ambroxane', 'C16H28O', '', '236.34', '木香', '(1.25-3.37)*10-7', '3.37*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('109', '108', '香紫苏内酯', '564-20-5', 'Sclareolide', 'C16H26O2', '', '250.38', '木香', '(4.57-9.91)*10-9', '9.91*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('110', '109', '金合欢基丙酮', '762-29-8', 'Farnesylacetone', 'C18H30O', '', '262.43', '花香', '(1.00-2.71)*10-9', '2.71*10-9', '1.51');
INSERT INTO `xiang_liao` VALUES ('111', '110', '2-环戊烯-1-酮', '930-30-3', '2-Cyclopentenone', 'C5H6O', '', '152.24', '花香', '(2.74-3.51)*10-3', '3.51*10-3', '0.0');
INSERT INTO `xiang_liao` VALUES ('112', '111', '橙花醇', '106-25-2', 'Nerol', 'C10H18O', '', '154.25', '花香', '(1.50-6.76)*10-6', '6.76*10-6', '0.19');
INSERT INTO `xiang_liao` VALUES ('113', '112', '乙酸苄酯', '140-11-4', 'Benzyl acetate', 'C9H10O2', '', '150.17', '花香', '(7.03-7.89)*10-6', '7.89*10-6', '0.25');
INSERT INTO `xiang_liao` VALUES ('114', '113', '苯甲醇', '100-51-6', 'Benzyl alcohol', 'C7H8O', '', '108.14', '花香', '(1.00-2.26)*10-7', '2.26*10-7', '0.25');
INSERT INTO `xiang_liao` VALUES ('115', '114', '苯乙醛', '122-78-1', 'Phenylacetaldehyde', 'C8H8O', '', '120.15', '花香', '(2.03-9.01)*10-9', '9.01*10-9', '1.21');
INSERT INTO `xiang_liao` VALUES ('116', '115', '二氢-β-紫罗兰酮', '17283-81-7', 'Dihydro-beta-ionone', 'C13H22O', '', '194.31', '花香', '(1.52-7.32)*10-8', '7.32*10-8', '0.33');
INSERT INTO `xiang_liao` VALUES ('117', '116', 'α-紫罗兰酮', '1076-38-6', 'α-Ionone', 'C13H20O', '', '192.3', '花香', '(1.02-1.31)*10-10', '1.31*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('118', '117', 'β-紫罗兰酮', '79-77-6', '4-(2,6,6-Trimethyl-1-cyclohexenyl)-3-buten-2-one', 'C13H20O', '', '192.3', '花香', '(1.06-1.89)*10-10', '1.89*10-10', '0.04');
INSERT INTO `xiang_liao` VALUES ('119', '118', '香叶醇', '106-24-1', 'Geraniol', 'C10H18O', '', '154.25', '花香', '(1.31-2.33)*10-9', '2.33*10-9', '0.45');
INSERT INTO `xiang_liao` VALUES ('120', '119', '芳樟醇', '78-70-6', 'Linalool', 'C10H18O', '', '154.25', '花香', '(3.04-7.14)*10-10', '7.14*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('121', '120', '乙酸对甲酚酯', '140-39-6', 'p-Tolyl acetate', 'C9H10O2', '', '150.17', '花香', '(1.50-6.66)*10-5', '6.66*10-5', '0.04');
INSERT INTO `xiang_liao` VALUES ('122', '121', '苯乙醇', '22258.0', 'Phenethyl alcohol', 'C8H10O', '', '122.16', '花香', '(1.33-1.69)*10-8', '1.69*10-8', '0.46');
INSERT INTO `xiang_liao` VALUES ('123', '122', '薄荷酮', '14073-97-3', 'Cyclohexanone', 'C10H18O', '', '154.25', '药草香', '(1.20-2.61)*10-6', '2.61*10-6', '0.0');
INSERT INTO `xiang_liao` VALUES ('124', '123', '薄荷醇', '2216-51-5 ', 'L-Menthol', 'C10H20O', '', '156.27', '药草香', '(1.03-2.26)*10-7', '2.26*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('125', '124', 'α-当归内酯', '591-12-8', 'alpha-Angelicalactone', 'C5H6O2', '', '98.1', '药草香', '(7.09-9.05)*10-10', '9.05*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('126', '125', '苯酚', '108-95-2', 'Phenol', 'C6H6O', '', '94.11', '药草香', '(2.71-7.39)*10-7', '7.39*10-8', '3.67');
INSERT INTO `xiang_liao` VALUES ('127', '126', '3-甲基苯酚', '108-39-4', 'm-Cresol', 'C7H8O', '', '108.14', '药草香', '(1.01-1.85)*10-9', '1.85*10-9', '1.36');
INSERT INTO `xiang_liao` VALUES ('128', '127', '4-乙基苯甲醛', '4748-78-1', '4-Ethylbenzaldehyde', 'C9H10O', '', '134.18', '药草香', '(1.08-3.51)*10-6', '3.51*10-6', '0.18');
INSERT INTO `xiang_liao` VALUES ('129', '128', '二氢香豆素', '119-84-6', '3,4-Dihydrocoumarin', 'C9H8O2', '', '148.17', '豆香', '(4.55-8.03)*10-10', '8.03*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('130', '129', '6-甲基香豆素', '92-48-8', '6-Methylcoumarin', 'C10H8O2', '', '160.17', '豆香', '(1.42-2.68)*10-4', '2.68*10-4', '0.15');
INSERT INTO `xiang_liao` VALUES ('131', '130', 'γ-己内酯', '695-06-7', 'gamma-Hexalactone', 'C6H10O2', '', '114.14', '豆香', '(1.32-3.42)*10-10', '3.42*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('132', '131', '3-苯丙酸', '501-52-0', '3-Phenylpropionic acid', 'C9H10O2', '', '150.17', '豆香', '(2.12-9.32)*10-7', '9.32*10-7', '7.21');
INSERT INTO `xiang_liao` VALUES ('133', '132', '2,3-二甲基吡啶', '583-61-9', '2,3-Lutidine', 'C7H9N', '', '436.29', '豆香', '(1.11-4.91)*10-5', '4.91*10-5', '2.27');
INSERT INTO `xiang_liao` VALUES ('134', '133', '对甲氧基苯乙酮', '100-06-1', '4\'-Methoxyacetophenone', 'C9H10O2', '', '150.17', '豆香', '(1.52-6.75)*10-10', '6.75*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('135', '134', 'γ-丁内酯', '96-48-0', 'gamma-Butyrolactone', 'C4H6O2', '', '86.09', '奶香', '(2.15-4.06)*10-7', '4.06*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('136', '135', 'γ-戊内酯', '108-29-2', 'gamma-Valerolactone', 'C5H8O2', '', '100.12', '奶香', '(1.02-4.53)*10-8', '4.53*10-8', '0.0');
INSERT INTO `xiang_liao` VALUES ('137', '136', '香兰素', '121-33-5', 'Vanillin', 'C8H8O3', '', '152.15', '奶香', '(2.54-4.53)*10-7', '4.53*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('138', '137', '乙基香兰素', '121-32-4', 'Ethyl vanillin', 'C9H10O3', '', '166.17', '奶香', '(1.02-3.33)*10-7', '3.33*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('139', '138', '丁二酮', '57-71-6', '2,3-Butanedione', 'C4H6O2', '', '86.09', '奶香', '(1.02-4.53)*10-9', '4.53*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('140', '139', '丁二酸', '110-15-6', 'Butanedioic acid', 'C4H6O4', '', '118.09', '奶香', '(1.03-5.87)*10-9', '5.87*10-9', '1.09');
INSERT INTO `xiang_liao` VALUES ('141', '140', '丁酸', '107-92-6', 'Butyric acid', 'C4H8O2', '', '88.11', '奶香', '(1.02-1.89)*10-5', '1.89*10-5', '2.52');
INSERT INTO `xiang_liao` VALUES ('142', '141', '异丁酸', '79-31-2', 'Isobutyric acid', 'C4H8O2', '', '88.11', '奶香', '(4.30-9.75)*10-6', '9.75*10-6', '0.0');
INSERT INTO `xiang_liao` VALUES ('143', '142', '戊酸', '109-52-4', 'Valeric acid', 'C5H10O2', '', '102.13', '奶香', '(1.73-2.02)*10-5', '2.02*10-5', '4.06');
INSERT INTO `xiang_liao` VALUES ('144', '143', '2-甲基丁酸', '116-53-0', ' 2-Methyl butyric acid ', 'C5H10O2', '', '102.13', '奶香', '(1.14-4.61)*10-5', '4.61*10-5', '1.63');
INSERT INTO `xiang_liao` VALUES ('145', '144', '3-甲基丁酸', '72-18-4', ' 3-Methyl butyric acid ', 'C5H10O2', '', '102.13', '奶香', '(1.01-2.51)*10-5', '2.51*10-5', '1.21');
INSERT INTO `xiang_liao` VALUES ('146', '145', '2-甲基-2-丁烯酸', '565-63-9', 'Angelic acid', 'C5H8O2', '', '100.12', '奶香', '(1.50-6.21)*10-5', '6.21*10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('147', '146', '己酸', '142-62-1', 'Hexanoic acid', 'C6H12O2', '', '116.16', '奶香', '(1.23-2.09)*10-5', '2.09*10-5', '1.11');
INSERT INTO `xiang_liao` VALUES ('148', '147', '3-甲基戊酸', '105-43-1', 'DL-3-Methylvaleric acid', 'C6H12O2', '', '116.16', '奶香', '(1.01-2.67)*10-5', '2.67*10-5', '2.48');
INSERT INTO `xiang_liao` VALUES ('149', '148', '4-甲基戊酸', '646-07-1', '4-Methylvaleric acid', 'C6H12O2', '', '116.16', '奶香', '(4.57-9.84)*10-6', '9.84*10-6', '2.08');
INSERT INTO `xiang_liao` VALUES ('150', '149', '2-戊烯酸', '13991-37-2', 'TRANS-2-PENTENOIC ACID', 'C5H8O2', '', '100.12', '奶香', '(1.11-4.91)*10-8', '4.91*10-8', '4.49');
INSERT INTO `xiang_liao` VALUES ('151', '150', '庚酸', '111-14-8', 'Heptanoic acid', 'C7H14O2', '', '130.18', '奶香', '(1.02-2.52)*10-5', '2.52*10-5', '0.81');
INSERT INTO `xiang_liao` VALUES ('152', '151', '7-辛烯酸', '18719-24-9', '7-Octenoic acid', 'C8H14O2', '', '142.2', '奶香', '(1.11-2.53)*10-5', '2.53*10-5', '1.23');
INSERT INTO `xiang_liao` VALUES ('153', '152', '反-肉桂酸', '140-10-3', 'trans-Cinnamic acid', 'C9H8O2', '', '148.17', '膏香', '(5.05-8.88)*10-4', '8.88*10-4', '0.92');
INSERT INTO `xiang_liao` VALUES ('154', '153', '3-甲基肉桂酸', '3029-79-6', '3-Methylcinnamicacid', 'C10H10O2', '', '161.18', '膏香', '(1.41-6.22)*10-9', '6.22*10-9', '0.62');
INSERT INTO `xiang_liao` VALUES ('155', '154', '4-甲基肉桂酸', '1866-39-3', '4-Methylcinnamic acid', 'C10H10O2', '', '161.18', '膏香', '(1.22-2.41)*10-6', '2.41*10-6', '0.25');
INSERT INTO `xiang_liao` VALUES ('156', '155', '反-4-羟基肉桂酸', '501-98-4', '4-Hydroxycinnamic acid', 'C9H8O3', '', '164.16', '膏香', '(1.20-5.32)*10-5', '5.32*10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('157', '156', '苯甲酸甲酯', '93-58-3', 'Methyl benzoate', 'C8H8O2', '', '136.15', '膏香', '(5.65-9.97)*10-10', '9.97*10-10', '0.02');
INSERT INTO `xiang_liao` VALUES ('158', '157', '苯甲酸', '65-85-0', 'Benzoic acid', 'C7H6O2', '', '122.12', '膏香', '(1.26-3.63)*10-7', '3.63*10-7', '3.84');
INSERT INTO `xiang_liao` VALUES ('159', '158', '辛酸', '124-07-2', 'Octanoic acid', 'C8H16O2', '', '144.21', '脂蜡香', '(1.04-1.93)*10-5', '1.93*10-5', '1.52');
INSERT INTO `xiang_liao` VALUES ('160', '159', '壬酸', '112-05-0', 'Nonanoic acid', 'C9H18O2', '', '158.24', '脂蜡香', '(1.03-2.59)*10-7', '2.59*10-7', '2.7');
INSERT INTO `xiang_liao` VALUES ('161', '160', '癸酸', '334-48-5', 'Capric acid', 'C10H20O2', '', '172.26', '脂蜡香', '(1.21-2.73)*10-6', '2.73*10-6', '4.22');
INSERT INTO `xiang_liao` VALUES ('162', '161', '9-癸烯酸', '14436-32-9', '9-DECENOIC ACID', 'C10H18O2', '', '170.25', '脂蜡香', '(1.13-2.81)*10-8', '2.81*10-8', '2.6');
INSERT INTO `xiang_liao` VALUES ('163', '162', '十一酸', '112-37-8', 'Hendecanoic acid', 'C11H22O2', '', '186.29', '脂蜡香', '(1.02-2.51)*10-5', '2.51*10-5', '0.43');
INSERT INTO `xiang_liao` VALUES ('164', '163', '10-十一烯酸', '112-38-9', 'Undecenoic acid', 'C11H20O2', '', '184.28', '脂蜡香', '(1.12-2.03)*10-5', '2.03*10-5', '5.83');
INSERT INTO `xiang_liao` VALUES ('165', '164', '月桂酸', '143-07-7', 'Lauric acid', 'C12H24O2', '', '200.32', '脂蜡香', '(2.90-5.18)*10-4', '5.18*10-4', '4.31');
INSERT INTO `xiang_liao` VALUES ('166', '165', '十三酸', '638-53-9', 'Tridecanoic acid', 'C13H26O2', '', '214.34', '脂蜡香', '(3.70-8.13)*10-5', '8.13*10-5', '1.29');
INSERT INTO `xiang_liao` VALUES ('167', '166', '肉豆蔻酸', '544-63-8', 'Myristic acid', 'C14H28O2', '', '228.37', '脂蜡香', '(1.17-4.11)*10-5', '4.11*10-5', '6.62');
INSERT INTO `xiang_liao` VALUES ('168', '167', '十五酸', '1002-84-2', 'Pentadecanoic acid', 'C15H30O2', '', '242.4', '脂蜡香', '(2.00-8.92)*10-6', '8.92*10-6', '2.48');
INSERT INTO `xiang_liao` VALUES ('169', '168', '棕榈酸', '57-10-3', 'Palmitic acid', 'C16H32O2', '', '256.42', '脂蜡香', '(1.12-3.72)*10-4', '3.72*10-4', '97.86');
INSERT INTO `xiang_liao` VALUES ('170', '169', '十七酸', '506-12-7', 'Heptadecanoid acid', 'C17H34O2', '', '270.45', '脂蜡香', '(1.14-2.98)*10-5', '2.98*10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('171', '170', '十八酸', '541-91-3', 'Stearic acid', 'C18H36O2', '', '284.48', '脂蜡香', '(1.12-4.92)*10-5', '4.92*10-5', '33.97');
INSERT INTO `xiang_liao` VALUES ('172', '171', '油酸', '112-80-1', 'Oleic acid', 'C18H34O2', '', '282.46', '脂蜡香', '(3.40-7.99)*10-6', '7.99*10-6', '30.52');
INSERT INTO `xiang_liao` VALUES ('173', '172', '花生酸', '506-30-9', 'Eicosanoic acid', 'C20H40O2', '', '312.53', '脂蜡香', '(1.01-2.21)*10-5', '2.21*10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('174', '173', '二十二酸', '112-85-6', 'Docosanoic acid', 'C22H44O2', '', '340.58', '脂蜡香', '(1.08-2.09)*10-7', '2.09*10-7', '1.21');
INSERT INTO `xiang_liao` VALUES ('175', '174', '壬酸乙酯', '123-29-5', 'Ethyl nonanoate', 'C11H22O2', '', '186.29', '脂蜡香', '(1.70-3.22)*10-7', '3.22*10-7', '0.0');
INSERT INTO `xiang_liao` VALUES ('176', '175', '壬醛', '124-19-6', '1-Nonanal', 'C9H18O', '', '142.24', '脂蜡香', '(1.08-2.44)*10-6', '2.44*10-6', '2.7');
INSERT INTO `xiang_liao` VALUES ('177', '176', '苯乙酸甲酯', '101-41-7', 'Methyl phenylacetate', 'C9H10O2', '', '150.17', '甜香', '(1.64-4.49)*10-9', '4.49*10-9', '0.0');
INSERT INTO `xiang_liao` VALUES ('178', '177', '苯乙酸乙酯', '101-97-3', 'Ethyl phenylacetate', 'C10H12O2', '', '164.2', '甜香', '(1.01-1.38)*10-10', '1.38*10-10', '0.57');
INSERT INTO `xiang_liao` VALUES ('179', '178', '苯乙酸苄酯', '102-16-9', 'Benzyl phenylacetate', 'C15H14O2', '', '225.26', '甜香', '(1.00-2.31)*10-11', '2.31*10-11', '0.0');
INSERT INTO `xiang_liao` VALUES ('180', '179', '苯乙酸苯乙酯', '102-20-5', 'Phenethyl phenylacetate', 'C16H16O2', '', '240.29', '甜香', '(1.19-2.25)*10-10', '2.25*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('181', '180', '乙酸苯乙酯', '103-45-7', 'Phenethyl acetate', 'C10H12O2', '', '164.2', '甜香', '(2.79-3.74)*10-10', '3.74*10-10', '0.0');
INSERT INTO `xiang_liao` VALUES ('182', '181', 'β-环化柠檬醛', '432-25-7', '23.0', 'C10H16O', '', '152.23', '甜香', '(2.06-9.14)*10-6', '9.14*10-6', '0.11');
INSERT INTO `xiang_liao` VALUES ('183', '182', '苯乙酮', '98-86-2', 'Acetophenone', 'C8H8O', '', '120.15', '甜香', '(1.30-5.39)*10-4', '5.39*10-4', '1.24');
INSERT INTO `xiang_liao` VALUES ('184', '183', '乙酸', '64-19-7', 'Acetic acid glacial', 'C2H4O2', '', '60.05', '酸香', '(1.00-2.11)*10-5', '2.11*10-5', '133.54');
INSERT INTO `xiang_liao` VALUES ('185', '184', '丙酸', '79-09-4', 'Propionic acid', 'C3H6O2', '', '74.0', '酸香', '(1.32-2.33)*10-5', '2.33*10-5', '13.86');
INSERT INTO `xiang_liao` VALUES ('186', '185', '丙烯酸', '79-10-7', 'Acrylic acid', 'C3H4O2', '', '72.06', '酸香', '(1.00-4.38)*10-5', '4.38*10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('187', '186', '草酸', '144-62-7', 'Oxalic acid', 'C2H2O4', '', '90.04', '酸香', '(2.07-4.32)×10-4', '4.32×10-4', '0.0');
INSERT INTO `xiang_liao` VALUES ('188', '187', '苹果酸', '97-67-6', 'L(-)-Malic acid', 'C4H6O5', '', '134.09', '酸香', '(1.06-2.01)×10-5', '2.01×10-5', '0.0');
INSERT INTO `xiang_liao` VALUES ('189', '188', '柠檬酸', '77-92-9', 'Citric acid', 'C6H8O7', '', '192.14', '酸香', '(1.00-2.02)×10-5', '2.02×10-5', '0.0');
