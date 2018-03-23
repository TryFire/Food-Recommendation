/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : webfinalwork

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-06-27 20:05:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) DEFAULT NULL,
  `味道` varchar(255) DEFAULT NULL,
  `种类` varchar(255) DEFAULT NULL,
  `类型` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `位置` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('00000000000000000001', '老刘家泡馍', '味道纯厚', '泡馍', null, 'https://pic4.zhimg.com/acc52ca66f8bd3e88f9cc19d04a12aa7_b.jpg', '北广济街');
INSERT INTO `food` VALUES ('00000000000000000002', '马峰小炒牛羊肉泡馍', '酸香扑鼻，量大味重', '泡馍', null, 'https://pic4.zhimg.com/d1f62ad6cb365831d7d18b5c46662253_b.jpg', '北广济街小皮院丁字向北路西(近大皮院广济街)');
INSERT INTO `food` VALUES ('00000000000000000003', '天发芽葫芦头', '略带腥味', '葫芦头', null, 'https://pic3.zhimg.com/9bbf23a0d0ac0232fa9bf9329c946bba_b.jpg', '甜水井');
INSERT INTO `food` VALUES ('00000000000000000004', '朱秀英梆梆肉葫芦头', '汤鲜，味美', '葫芦头', null, 'https://pic2.zhimg.com/12949ee140bc7f4396d0b8c2e2613661_b.jpg', '琉璃街2号');
INSERT INTO `food` VALUES ('00000000000000000005', '于记东关三鲜煮馍馆', '口感很好，橡皮筋道', '煮馍', null, 'https://pic3.zhimg.com/663696539ee985b9d7620ba3f934b99e_b.jpg', '鸡市拐');
INSERT INTO `food` VALUES ('00000000000000000006', '子午路张记肉夹馍', '口感好', '肉夹馍', null, null, '子午路');
INSERT INTO `food` VALUES ('00000000000000000007', '王魁肉夹馍', '口感好，肉略咸', '肉夹馍', null, null, '长乐坊中段');
INSERT INTO `food` VALUES ('00000000000000000008', '赵记腊汁肉', '口感好', '肉夹馍', null, null, '连锁');
INSERT INTO `food` VALUES ('00000000000000000009', '李老四腊牛肉夹馍', '满嘴麦香和肉香', '肉夹馍', null, 'https://pic2.zhimg.com/a193969d76e0effd1d405cb841501401_b.jpg', '公园南路北口');
INSERT INTO `food` VALUES ('00000000000000000010', '赵记笼笼肉夹馍', '色泽红亮，咸辣兼备，米香扑鼻，肉香四溢，瘦而不柴，肥而不腻', '肉夹馍', null, null, '友谊西路边家村');
INSERT INTO `food` VALUES ('00000000000000000011', '老李家粉蒸肉牛羊肉泡馍', '肉香浓郁', '泡馍', null, 'https://pic4.zhimg.com/5a467604d2be02b3e8b1a4b11840037b_b.jpg', '鸡市拐路南');
INSERT INTO `food` VALUES ('00000000000000000012', '石家包子', '用料十足，味道浓郁', '包子', null, 'https://pic1.zhimg.com/8573c53c339b072b52eca88b7ebead98_b.jpg', '大学习巷98号');
INSERT INTO `food` VALUES ('00000000000000000013', '马奎肉丸胡辣汤', '味道咸香', '胡辣汤', null, 'https://pic4.zhimg.com/a1ee03bdcc239cf208baf03f7f5e72b7_b.jpg', '康乐路 ');
INSERT INTO `food` VALUES ('00000000000000000014', '东南亚甑糕', '火候恰到好处，粘度适中', '甑糕', null, 'https://pic4.zhimg.com/4bafc4bca92e1131f61867ca92375363_b.jpg', '西羊市');
INSERT INTO `food` VALUES ('00000000000000000015', '宏顺祥卤汁凉粉', '浓郁的芝麻酱和蒜汁的味道', '凉粉', '', 'https://pic2.zhimg.com/2e831c5d18feff57fd390cc89eedb169_b.jpg', '大皮院丁字路口');
INSERT INTO `food` VALUES ('00000000000000000016', '柳巷面', '口感极佳', '面', null, null, '案板街');
INSERT INTO `food` VALUES ('00000000000000000017', '英子牛肉面', '面吃起来也很劲道', '面', null, 'https://pic3.zhimg.com/50e4bc2aeb872a327a9f39fc53485066_b.jpg', '景观路');
INSERT INTO `food` VALUES ('00000000000000000018', '一碗菠菜面', '色泽鲜艳，臊子量足', '面', null, 'https://pic1.zhimg.com/b0c06449237651cebf382422b6fa9604_b.jpg', '东木头市(秦豫肉夹馍对面) ');
INSERT INTO `food` VALUES ('00000000000000000019', '永丰岐山面', '肉香浓郁，瘦肉不柴，肥肉不腻', '面', null, 'https://pic3.zhimg.com/d5c0213f98f06ac3b8dcfa427a803272_b.jpg', '连锁');
INSERT INTO `food` VALUES ('00000000000000000020', '古法葫芦鸡', '口感极佳', '鸡', null, 'https://pic2.zhimg.com/0d75621c9db64020f9b92187d4ad5311_b.jpg', '长安区 文苑中路1号西安外国语大学校医院南门旁杜回村');
INSERT INTO `food` VALUES ('00000000000000000021', '高家烤肉', '味道较咸', '烤肉', null, 'https://pic4.zhimg.com/1e4ee61603dd39cae54ead25d6c987af_b.jpg', '大皮院5号');
INSERT INTO `food` VALUES ('00000000000000000022', '杨姐烤肉', '糖醋麻辣味', '烤肉', null, 'https://pic4.zhimg.com/e1cdc54fc8160ca2289c4e1883e0f0ef_b.jpg', '丰庆路以南老机场院内');
INSERT INTO `food` VALUES ('00000000000000000023', '户县机场烤肉', '肉质十分鲜嫩，却没有多少膻味', '烤肉', null, 'https://pic1.zhimg.com/1ac295f88a37e619194c7ae41a62ee94_b.jpg', '连锁');
INSERT INTO `food` VALUES ('00000000000000000024', '赵记绿豆馅饼素斋', '入口即化，外皮酥脆', '糕点', null, 'https://pic4.zhimg.com/8c92b41a253a4c7f49434b0d30b7f12f_b.jpg', '竹笆市41号钟楼小区西大门内');
INSERT INTO `food` VALUES ('00000000000000000025', '老李家肉丸胡辣汤', '胡辣汤胡椒味浓郁 肉丸劲道 各式蔬菜也多', '胡辣汤', null, 'https://pic1.zhimg.com/v2-549c11ad510342da9b0ccaf21680a538_b.jpg', '洒金桥');
INSERT INTO `food` VALUES ('00000000000000000026', '云老四擀面皮', '好吃不腻味', '擀面皮', null, null, '城东客运站对面的小巷里');
INSERT INTO `food` VALUES ('00000000000000000027', '马奎胡辣汤', '好喝到炸裂', '胡辣汤', null, null, '康乐路华山中学南200m');
INSERT INTO `food` VALUES ('00000000000000000028', '赵记粉汤羊血', '口味浓郁', '羊血', null, null, '兴庆路和柿园路');
INSERT INTO `food` VALUES ('00000000000000000029', '眼镜张牛肉面', '牛肉炖的较烂，十分入味', '面', null, null, '建国路上，二十六中对面');
INSERT INTO `food` VALUES ('00000000000000000030', '马贤烤肉', '口味极佳', '烤肉', null, null, '三中对面');
INSERT INTO `food` VALUES ('00000000000000000031', '志亮灌汤蒸饺', '皮薄馅大', '蒸饺', null, 'https://pic1.zhimg.com/4c9dc14ab1b71d2e8a5123876f3d62c0_b.jpg', '桥梓口向北几十米');
INSERT INTO `food` VALUES ('00000000000000000032', '李唯一肉丸胡辣汤', '味道浓厚', '胡辣汤', null, 'https://pic2.zhimg.com/b7daf409a610502e049adcc249d02a89_b.jpg', '洒金桥老官庙大牌楼向南十米');
INSERT INTO `food` VALUES ('00000000000000000033', '老白家水盆羊肉', '味道纯正', '羊肉', null, 'https://pic2.zhimg.com/ecb08b79b41f607e5e78795c284dcb05_b.jpg', '北广济街南段');
INSERT INTO `food` VALUES ('00000000000000000034', '盛家凉皮', '较辣', '凉皮', null, 'https://pic3.zhimg.com/d6020f2dfade2e9447ec8b11537f7d1a_b.jpg', '大皮院西口');
INSERT INTO `food` VALUES ('00000000000000000035', '定家小酥肉', '酥脆可口', '酥肉', null, 'https://pic4.zhimg.com/df1ff8ada97444b25972065d4f206e6f_b.jpg', '大皮院西口');
INSERT INTO `food` VALUES ('00000000000000000036', '燕燕炒米', '好吃到哭', '炒米', null, 'https://pic3.zhimg.com/713cac803787138883882de8183461d2_b.jpg', '大皮院');
INSERT INTO `food` VALUES ('00000000000000000037', '花奶奶酸梅汤', '口味纯正', '酸梅汤', null, 'https://pic2.zhimg.com/9555e04ce5059e65b7644130f081a685_b.jpg', '大皮院中段');
INSERT INTO `food` VALUES ('00000000000000000038', '老孙家红柳羊肉', '肉大味鲜', '羊肉', null, 'https://pic2.zhimg.com/2ac1b260cde866e6efe5debd37518f1d_b.jpg', '回民街中段');
INSERT INTO `food` VALUES ('00000000000000000039', '老金家蛋菜夹膜', '荷包蛋微焦不腻', '馍', null, 'https://pic2.zhimg.com/fa4ceb3e4f518b6210e26742c2d31cf5_b.jpg', '洒金桥和庙后街交叉口');
INSERT INTO `food` VALUES ('00000000000000000040', '老乌家小炒泡馍', '比传统的泡馍要干一些，也更有味道', '泡馍', null, 'https://pic4.zhimg.com/v2-5b8a285875f3cf1d66906ed622a77137_b.jpg', '碑林区回民街大皮院91号');
INSERT INTO `food` VALUES ('00000000000000000041', '穆萨砂锅', '牛尾肉肉烂鲜嫩', '砂锅', null, 'https://pic2.zhimg.com/v2-69c779e6e5df5a08b8fff88b2af753f5_b.jpg', '碑林区大皮院中段路北99号');
INSERT INTO `food` VALUES ('00000000000000000042', '樊记腊汁肉夹馍', '肉鲜多汁', '肉夹馍', null, 'https://pic3.zhimg.com/v2-a7878b6104f743deb86879a85a8d2482_b.jpg', '碑林区竹笆市街53号');
INSERT INTO `food` VALUES ('00000000000000000043', '马建山口口香粉蒸肉', '不肥不腻', '粉蒸肉', null, 'https://pic2.zhimg.com/v2-5ef3039ccc9c80f40568fb3017f81d29_b.jpg', '洒金桥清真西寺门口');
INSERT INTO `food` VALUES ('00000000000000000044', '汉中热面皮', '劲道筋滑，辣子超级香', '面', null, 'https://pic4.zhimg.com/v2-968b645159daaa17203e5cc90ffb4fef_b.jpg', '凤城二路路南海红小区公交站牌方便小铁门的岳家热米皮');
INSERT INTO `food` VALUES ('00000000000000000045', '老徐家柿子饼', '外酥里软', '甜食', null, 'https://pic1.zhimg.com/v2-6482b68a881af89de89f3bce207c1164_b.jpg', '北广济街119号');
INSERT INTO `food` VALUES ('00000000000000000046', '赵佳宝甜食', '软糯香甜', '甜食', null, 'https://pic4.zhimg.com/v2-7c9c396cf626ec6fa619cac955965a1b_b.jpg', '西羊市流动摊点(近佳宝甜食)');
INSERT INTO `food` VALUES ('00000000000000000047', '胖子甑糕', '甜度适中', '甜食', null, 'https://pic1.zhimg.com/v2-f63e978f4c5534b25472be503e7ba9e0_b.jpg', '洒金桥北口');
INSERT INTO `food` VALUES ('00000000000000000048', '香掉牙酥饼', '红豆饼不太甜，里面的红豆特别多', '甜食', null, 'https://pic3.zhimg.com/v2-a092c3bfa0064236392f69eee1f5ce7a_b.jpg', '洒金桥中段(清真寺北门)');
INSERT INTO `food` VALUES ('00000000000000000049', '野上麦田', '芋泥肉松的外皮有点油，内里的肉松又有点甜腻', '面包', null, 'https://pic1.zhimg.com/v2-572ee43d1e10daaaa4d041fc9716b48c_b.jpg', '连锁');
INSERT INTO `food` VALUES ('00000000000000000050', '陕拾叁', '豆腐味的清淡可口，微微甜，猕猴桃味吃着就能感觉到是纯正的猕猴桃果汁', '甜食', null, 'https://pic3.zhimg.com/v2-57a51e20c2558c9bda2e9503fd85e24e_b.jpg', '连锁');
INSERT INTO `food` VALUES ('00000000000000000051', '墉城邑', '地道的陕西味', '陕菜', null, 'https://pic1.zhimg.com/c3ca6faf025c242a5fc4c0c20d27a868_b.jpg', '含光门');
INSERT INTO `food` VALUES ('00000000000000000052', '蝦塘322', '个头大，味道也很足', '虾', null, 'https://pic1.zhimg.com/17ea18a1a6e64ae55807818baf6d0bdc_b.png', '含光门内向东一百米');
INSERT INTO `food` VALUES ('00000000000000000053', 'M餐厅', '鸡排和土豆泥都很棒', '西餐', null, 'https://pic2.zhimg.com/c349da270d0e56602cccbef733b89849_b.png', '含光门内向东一百米');
INSERT INTO `food` VALUES ('00000000000000000054', '未末黄酒小馆', '关中什锦浓汤暖锅味道鲜美', '陕菜', null, 'https://pic2.zhimg.com/03d08a82d22a5d82631a26e4e853d321_b.png', '南大街粉巷真爱粉巷里8楼811');
INSERT INTO `food` VALUES ('00000000000000000055', '八百万堂慢食馆', '口感不错', '日料', null, 'https://pic1.zhimg.com/1c41c0f958ed128fed2d452821634910_b.png', '高新区高新路领先时代广场领先心城A座12楼11211');
INSERT INTO `food` VALUES ('00000000000000000056', 'XXC干锅公司', ' 陕味中混合着南方菜的鲜美，分量足', '干锅', null, 'https://pic3.zhimg.com/c00ada204d667e4631e4027119fde572_b.png', '新城区民乐园万达步行街内路口北侧');
INSERT INTO `food` VALUES ('00000000000000000057', '倾城·丽江', '吃完感觉胃里很舒服', '云南菜', null, 'https://pic1.zhimg.com/036f44a8b01e013c8aff4f5d7e4c21f0_b.png', '雁塔区电视塔长延居1号楼2单元22602室');
INSERT INTO `food` VALUES ('00000000000000000058', '韦姐柳州螺狮粉', '口感极佳', '螺蛳粉', null, 'https://pic2.zhimg.com/f4b86c5acfd7fa3e5e206a2c439614bd_b.jpg', '一中往西的小巷子里');
INSERT INTO `food` VALUES ('00000000000000000059', '麦乐迪', '蛋饼炸鸡甜不辣', '炸鸡', null, 'https://pic3.zhimg.com/ca85fbc2e028e02e60ccb6ca2f80b2a2_b.jpg', '高新区糜家桥小区');
INSERT INTO `food` VALUES ('00000000000000000060', '德华卤汁凉粉', '口感特别', '凉粉', null, 'https://pic3.zhimg.com/ec0a67ff5aab0946067650f2ed59c22a_b.jpg', '广济街');
INSERT INTO `food` VALUES ('00000000000000000061', '魏家凉皮', '凉皮儿很劲道，配上独家的麻酱和辣椒，又辣又香非常美味', '凉皮', null, 'https://pic1.zhimg.com/a5c67ff689da1f04bdd9863bbe079204_b.png', '碑林区南大街3号(中大国际对面)');
INSERT INTO `food` VALUES ('00000000000000000062', '盛志望麻酱酿皮铺', '调料“足”，味道“浓”', '凉皮', null, 'https://pic2.zhimg.com/649eeaa39415bba14e790d051f7de379_b.png', '陕西省西安莲湖区大皮院西口225号');
INSERT INTO `food` VALUES ('00000000000000000063', '老米家大雨泡馍', '汤鲜肉烂', '泡馍', null, 'https://pic1.zhimg.com/94eb316e9be1d574abdf5e16df85006c_b.png', '碑林区西羊市127号');
INSERT INTO `food` VALUES ('00000000000000000064', '老孙家牛羊肉泡馍', '味美汤仙', '泡馍', null, 'https://pic1.zhimg.com/5fd0524cfbe6851743e65ec7d3432278_b.png', '西安未央区凤城九路白桦林居东门商业街88号2楼(近市政府)');
INSERT INTO `food` VALUES ('00000000000000000065', '老刘家伊味香肉丸糊辣汤', '汤很浓稠，又带点酸辣', '胡辣汤', null, 'https://pic3.zhimg.com/85c5da0caa977bebe65bb84adb88796a_b.png', '陕西省西安市莲湖区大皮院89号');
INSERT INTO `food` VALUES ('00000000000000000066', '孙家肉丸胡辣汤', '吃罢舌尖发麻，微微冒汗，浑身舒坦', '胡辣汤', null, 'https://pic2.zhimg.com/35332d290922b0f64c8ea85457753f69_b.png', '西安碑林区回民街北院门');
INSERT INTO `food` VALUES ('00000000000000000067', '永丰岐山面', '酸辣的汤汁加上美味的哨子丁，让人回味无穷', '面', null, 'https://pic3.zhimg.com/f66a5092984744b91f56eab265b99082_b.png', '西安市新城区东一路151号');
INSERT INTO `food` VALUES ('00000000000000000068', '永明岐山面', '面薄筋光酸辣香煎稀汪', '面', null, 'https://pic1.zhimg.com/e5cfac2a2277b4d3aadd9d1dea812400_b.png', '西安市碑林区友谊西路128号(近劳动南路)');
INSERT INTO `food` VALUES ('00000000000000000069', '春发生葫芦头泡馍', '味醇汤浓、鲜香可口，馍筋肉嫩，肥而不腻', '泡馍', null, 'https://pic1.zhimg.com/bec81bee69d1d1959e529a2a0d843a50_b.png', '西安市碑林区南院门25号');
INSERT INTO `food` VALUES ('00000000000000000070', '伊古斋黄桂柿子饼', '口感软糯，热乎乎吃下去挺满足的', '糕点', null, 'https://pic2.zhimg.com/e6b70aee0dda8e74e272075044b6035d_b.png', '陕西省西安市莲湖区 北院门119号');
INSERT INTO `food` VALUES ('00000000000000000071', '西安饭庄', '人口即化，松软绵润，芬芳醇香。', '糕点', null, 'https://pic3.zhimg.com/e3c3df400919057f48fb0deb1c4c6742_b.png', '西安碑林区东大街298号路南');
INSERT INTO `food` VALUES ('00000000000000000072', '德懋恭', '小巧玲珑，皮酥馅足，滋润适口，层次分明，油多吃而不腻，糖重入口渗甜', '糕点', null, 'https://pic2.zhimg.com/cecd7911dc022cb215d368b9c1cbcf45_b.png', '碑林区西大街路大学习巷口(都城隍庙)');
INSERT INTO `food` VALUES ('00000000000000000073', 'Tokyo餐厅', '火山拉面入口细腻，辣味十足', '日料', null, null, '高新区科技路26号质检大厦一层');
INSERT INTO `food` VALUES ('00000000000000000074', '手岛寿司', '口味纯正', '日料', null, 'https://pic1.zhimg.com/v2-d1d180016d6d055f6036cc9da9d41678_b.jpg', '钟楼骡马市');
INSERT INTO `food` VALUES ('00000000000000000075', '奈九居酒屋', '橙汁的秘制果酱，浓浓果橙的香甜，绵绵牛油果和岩田米的软糯，淡淡奶香，若隐若现的虾蟹鲜味，四种回味在口中酝酿', '日料', null, 'https://pic1.zhimg.com/v2-fee1279fbd62699da438c71cdde0b6c0_b.jpg', '雁塔区科技路金桥国际广场1层');
INSERT INTO `food` VALUES ('00000000000000000076', '旺角创意餐厅', '三文鱼入口软糯，鲜嫩肥美', '日料', null, 'https://pic1.zhimg.com/v2-343dd211b1001732ee1ab186619981a4_b.jpg', '雁塔区唐延路35号旺座现代城C座1楼');
INSERT INTO `food` VALUES ('00000000000000000077', '青葉日本料理餐厅', '口味丰富', '日料', null, 'https://pic2.zhimg.com/v2-385d39042a48d508a72ed07bc9935ec1_b.jpg', '雁塔区沣惠南路36号');
INSERT INTO `food` VALUES ('00000000000000000078', 'Isola-del-Nord', '十分正宗', '意式', null, null, '北大街凯爱大厦B座11层');
INSERT INTO `food` VALUES ('00000000000000000079', '米屋石锅拌饭', '装修文艺，菜品口感不错', '韩式', null, null, '雁塔区师大路就在外国语对面的一条街');
INSERT INTO `food` VALUES ('00000000000000000080', '京都肉饼王 ', '满满一口肉，超值', '饼', null, null, '雁塔区师大路就在外国语对面的一条街');
INSERT INTO `food` VALUES ('00000000000000000081', '啪啪派', '麦斯林和至尊披萨口感不错', '西式', null, 'https://pic1.zhimg.com/7083246d8d944914bf0688ba62aca280_b.jpg', '小寨赛格七楼');
INSERT INTO `food` VALUES ('00000000000000000082', '绿柚', '韩式烤肉，和酸辣厥根粉超好吃', '烤肉', null, 'https://pic2.zhimg.com/d98e92512ff9270e2d3506f42d2ae1cd_b.jpeg', '大唐西市');
INSERT INTO `food` VALUES ('00000000000000000083', '上海人家', '上海味十足', '上海菜', null, 'https://pic2.zhimg.com/7f154ae863cc255f43924f96b2f9fd0d_b.jpeg', '含光门附近');
INSERT INTO `food` VALUES ('00000000000000000084', '巴黎餐厅', '新西兰帝王鲑用盐和糖腌制24小时，冲洗干净、粘干水分后切片，再以泰国卡菲尔柠檬、青柠、黄柠檬这3种柠檬皮茸、柠檬橄榄油汁调拌均匀。搭配低温慢煮的胡萝卜，以及孜然味的胡萝卜泥，带有冬天的气息', '西餐', null, 'https://pic3.zhimg.com/v2-9cdb3a6c8503c83692303f135b4964e2_b.jpg', '雁塔区海港城9街');
INSERT INTO `food` VALUES ('00000000000000000085', 'April 四月意大利餐厅', '来自澳洲的肉眼牛排，不用腌制，直接上锅煎，撒上晶莹的海盐与清新意式传统香料。简单的调料令牛肉原本的香味倍显突出，扒板煎制十字花纹，搭配脆嫩的广东节瓜与精巧的黄瓜苗，「碳烤肉眼牛排」一上桌就飘散出令人沉醉的焦香。配菜清爽、牛肉香嫩令这道主食口感和谐，入口惊艳\n\n作者：ENJOY 精选美食电商\n链接：https://www.zhihu.com/question/26063200/answer/157007096\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '西餐', null, 'https://pic3.zhimg.com/v2-93e7571943effe16e22e232cae435aae_b.jpg', '万象汇A座');
INSERT INTO `food` VALUES ('00000000000000000086', '里榭法式铁板创意料理 ', '菲力牛排选用牛里脊肉，由于这个部位运动较少，因此肉质精瘦，口感细嫩，「精选菲力牛排」浓郁肉香充满着节日的氛围；加上主厨零距离的展现烹饪过程，看着食材在铁板上由生变熟，香味溢出，最后以法式摆盘精巧呈现。带来视觉、嗅觉、味觉的三重享受', '西餐', null, 'https://pic1.zhimg.com/v2-0ebd1a579d7aebb88d77c0f8acb237c4_b.jpg', '汉神购物广场5楼');
INSERT INTO `food` VALUES ('00000000000000000087', 'y+甜品 ', '「生命树」选用日本进口抹茶粉制作，淡绿色的喷面好像草丛初生的嫩芽，鲜红诱人的草莓点缀其上，树莓夹心藏匿其中，一派春日的生机。淡雅的口感，没有蹙眉的苦涩，而是满口的清新柔软，就好似生命带给你的最初的悸动', '西餐', null, 'https://pic2.zhimg.com/v2-db8d1f6cd4966db84b709a7e57def60d_b.jpg', '曲江池西路1666号');
INSERT INTO `food` VALUES ('00000000000000000088', '西安味道', '无添加，吃完身上没有火锅味儿', '火锅', null, 'https://pic4.zhimg.com/v2-fcef580a145ed6b0bcae50383e41f96b_b.png', '电子正街北山门公交站二楼');
INSERT INTO `food` VALUES ('00000000000000000089', '重庆老家耗儿鱼', '锅里的红油汤淹没了所有的耗儿鱼，鱼的个头比较大，肉质新鲜滑嫩，刺少，微辣的感觉都是很辣的，吃完麻麻辣辣的有种嘴唇都在跳舞的感觉', '鱼', null, null, '碑林区北沙坡路兰蒂斯城');
INSERT INTO `food` VALUES ('00000000000000000090', '麻辣小叁精品干锅', '牛蛙锅蛙肉很嫩，味道是那种酱辣的感觉，微辣口味就已经很辣的，但是吃起来辣口不辣胃', '干锅', null, null, '碑林区朱雀门里上岛咖啡旁边西顺城巷内20米第一户三楼');
INSERT INTO `food` VALUES ('00000000000000000091', '渝风堂', '正宗的重庆风味，眼泪都是要被辣出来的感觉', '重庆菜', null, null, '莲湖区红庙坡十字西南角龙湖星悦荟2楼3楼');
INSERT INTO `food` VALUES ('00000000000000000092', '独一佳湘菜馆', '金钱蛋超级辣，但是是那种辣到劲爆的感觉，吃完很爽', '湘菜', null, null, '碑林区东四道巷(近和平路)，湖南土菜馆里100米');
INSERT INTO `food` VALUES ('00000000000000000093', '黄记煌三汁焖锅', '普遍偏辣', '焖锅', null, null, '新城区万达广场步行街5层549、550号(万达广场3号门5层电梯正对面)');
INSERT INTO `food` VALUES ('00000000000000000094', '陈三娃泡姜鸡', '泡姜鸡真的超级棒，锅底是类似于酸辣肚丝汤的酸辣味道，鸡肉是熟的，煮起来特别嫩也很容剔骨，煮的时间稍稍久一些就不容易夹起来咯，送的鸡汤很清淡但是很鲜，枸杞、萝卜、小香葱等提味，很好喝，辣爽的感觉简直不能更劲爆咯', '鸡', null, null, '莲湖区太白北路279号西北大学综合服务楼1号楼(近鼎珍源)');
INSERT INTO `food` VALUES ('00000000000000000095', '宽口美蛙鱼头', '地道的重庆特色，麻麻辣辣的，开始吃一口的时候没觉得出什么，接着慢慢的感觉嘴唇开始跳舞，咬字慢慢的都变得不清楚咯，吃的简直是停不下里咯', '鱼', null, null, '碑林区振兴路62号(振兴路小学对面)');
INSERT INTO `food` VALUES ('00000000000000000096', '七号小馆', '小龙虾还蛮大个，肉很饱满。麻辣和蒜香都很很入味', '小龙虾', null, 'http://qcloud.dpfile.com/pc/z_7vs67Asg7q7PUG6O7khLEii5AjPzsoIUeSjR-sdp03j5sXu-FGGx6_flgPnOcnTYGVDmosZWTLal1WbWRW3A.jpg', '大雁塔南广场慈恩东路新乐汇酒吧街A2-2号(蓝莲花酒吧楼上)');
INSERT INTO `food` VALUES ('00000000000000000097', '肆玖城时尚烤鸭(赛高店) ', '鸭的外皮烤的油光锃亮的，就是入口有点偏油了，就着凉菜吃还比较去腻，不过蘸酱调的恰到好处，甜咸适中', '烤鸭', null, 'https://img.meituan.net/msmerchant/6d940526f1195d8cb729911f8091618764169.jpg%40249w_249h_0e_1l%7Cwatermark%3D1%26%26r%3D1%26p%3D9%26x%3D2%26y%3D2%26relative%3D1%26o%3D20', '凤城五路十字西段二楼(凤城五路地铁B出口向西150米路南)');
INSERT INTO `food` VALUES ('00000000000000000098', '雀笙QueenSir', '双椒鸡捞面 味道太赞了 一盘都不够吃', '家常菜', null, 'http://qcloud.dpfile.com/pc/7ZORlzqlhO-2xRSNFZtK73dKyqXu4kZa2YhLAyBo_AbX5_btX81C7qRUinOsXnz9uoWgh6flEoCpotrIjLoTeQ.jpg', '五味十字与南广济街交叉口向南100米路东(蕾德曼酒店对面)');
INSERT INTO `food` VALUES ('00000000000000000099', '辣先生', ' 这个味道有些许的长沙小龙虾与西安的结合版 依然没有麻麻辣辣的畅快感 但是香味比较厚重', '川菜', null, 'https://img.meituan.net/msmerchant/2654c431ef5d4ae146696a1dd7467fee2063845.png%40280w_212h_1e_1c_1l%7Cwatermark%3D0', '顺城南路西段9栋(含光门内向西300米)');
INSERT INTO `food` VALUES ('00000000000000000100', '关中记忆主题餐厅', '老长安的味道', '陕菜', null, 'http://p1.meituan.net/msmerchant/189eb5642e01a67154da2373b548ab6f30491.jpeg%40280w_212h_1e_1c_1l%7Cwatermark%3D0', '西华门十字往东100米路南(省政府西门斜对面)');
