-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: find_job
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add member',7,'add_member'),(20,'Can change member',7,'change_member'),(21,'Can delete member',7,'delete_member'),(22,'Can add member skills',8,'add_memberskills'),(23,'Can change member skills',8,'change_memberskills'),(24,'Can delete member skills',8,'delete_memberskills'),(25,'Can add company',9,'add_company'),(26,'Can change company',9,'change_company'),(27,'Can delete company',9,'delete_company'),(28,'Can add company skills',10,'add_companyskills'),(29,'Can change company skills',10,'change_companyskills'),(30,'Can delete company skills',10,'delete_companyskills');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_company`
--

DROP TABLE IF EXISTS `company_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(20) NOT NULL,
  `companyemail` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_company`
--

LOCK TABLES `company_company` WRITE;
/*!40000 ALTER TABLE `company_company` DISABLE KEYS */;
INSERT INTO `company_company` VALUES (1,'104資訊科技股份有限公司','https://www.104.com.tw/question_admin/reaction.cfm','2018年度研發替代役','軟體設計工程師、Internet程式設計師'),(10,'奇科系統有限公司','products@geego.com.tw','','奇科專精高階電腦教育訓練'),(12,'任開數位媒體行銷股份有限公司','羅先生',' 軟體設計工程師','協助系統開發、程式管理及雲端大數據資料分析'),(13,'荷蘭商萊博智科技股份有限公司台灣分公司',' 王小姐','程式設計師','system software development'),(14,'緯創軟體股份有限公司','賴俊銘','軟體設計工程師','Developing backend services '),(15,'聖僑資訊事業股份有限公司','王先生','python軟體工程師','初期工作須建立資料收集系統, '),(16,'新諾資訊股份有限公司','顏韻育','Python工程師','軟體設計'),(17,'金智洋科技股份有限公司','徐汶宜','python 後端工程師','用python開發HTTP、WebSocket 程式與資料庫程 MySQL/SQLite '),(18,'OK_忠訓國際股份有限公司','','創新科技中心-Python架構師','依據商務需求設計軟體架構及程式開發'),(19,'雋上科技有限公司','hr@js-tech.tw','Python程式設計師','Python程式開發及維護'),(20,'萬寶華企業管理顧問股份有限公司','Liu','Senior Python Developer',' Follow agile development process and have complete code review '),(21,'香港商雅虎資訊股份有限公司','submit your English resume via 104 ','DevOps Engineer','Maintain and support production systems and their associated infrastructure and tools'),(22,'聯成電腦有限公司(聯成電腦/聯成美語)',' hungchih@lccnet.com.tw','Python 程式設計語言講師',' Python教學'),(23,'株式会社センスインタナショナル',' rui.lin@sense-si.com','Python.Perl.Ruby軟體工程師','程式語言撰寫，Python.Perl.Ruby開發為主以及設計 '),(24,'北爾電子暨惠通科技股份有限公司',' 張小姐','Python 工程師','網路程式設計'),(25,'博彥科技有限公司','李晶','Python_Developer','安全性測試(Security test)、軟體程式設計'),(26,'台達電子工業股份有限公司','人資部','Python Web Develope','development of all server-side logic'),(27,'王族遊戲科技有限公司','張先生','python 後端工程師','遊戲伺服器開發維護'),(28,'永豐金融控股股份有限公司',' 莊小姐','python Django Web Developer','managing the interchange of data between the server and the users'),(29,'鴻海科技集團 富盈數據股份有限公司',' joy@breaktime.com.tw',' Python/ PHP Engineer','使用Python接前後端，部分程式碼為PHP視候選人特質協助數據分析部分'),(30,'動力安全資訊股份有限公司',' HR_Kylie Yu','Software Engineer','設計開發自動化及以SDN為基礎的應用軟體系統'),(31,'兆洋資訊股份有限公司',' echeng@pacsoft.com.tw','python爬蟲開發與數據分析師','功能測試(function test)、使用者測試(Usability test)、問題追蹤處理(Bug tracking)、軟體程式設計'),(32,'易普網路股份有限公司','林先生','後端工程師(Python)','將依據專案需要，進行系統分析、資料庫設計及程式開發設計，以及製作網頁爬蟲並提供前端網頁或APP所需的API資料。'),(33,'塞席爾商索特股份有限公司台灣分公司','陳小姐','Python工程師','依據商務需求設計軟體架構及程式開發 , 設計爬蟲策略和防遮罩規則，提升網頁抓取的效率和品質 '),(34,'新光金融控股股份有限公司','人力資源部 莊小姐','數據分析師','負責建置各業務線data mart、資料分析模型及分析環境負責建置各業務線data mart、資料分析模型及分析環境'),(35,'正美企業股份有限公司','eddiep@croxlink.com','網站後台開發工程師','網站系統的設計與開發 ,與產品或專案人員協作，完成軟體專案及服務網站的開發及維護'),(36,' 杰思國際娛樂有限公司',' 林先生','Python開發工程師','Python應用程式開發、維護 '),(37,'碁曄科技股份有限公司','楊景婷','Python 研發工程師 ','從事軟體研發與整合'),(38,'創順科技有限公司','Snow','資深 Python 工程師 ','1.負責團隊相關技術棧中框架和特定技術的選型。  2. 負責較大規模複雜業務的架構設計和攻堅。  3. 負責團隊工程效率的提升，包括團隊工作流程的制定、維護和改進。 '),(39,'鑫利數位科技有限公司','service@sinlytech.com','Python後端工程師 ','1. 遊戲服務器端架構設計、邏輯開發、優化、維護  2. 遊戲服務器端相關運維工具開發、優化、維護  3. 遊戲服務器更新發佈以及故障處理 '),(40,'帝緯系統整合股份有限公司',' 廖先生','Python軟體研發工程師 ','成為人工智慧(AI)軟體研發團隊之一員: 透過機器學習(ML)與深度學習(DL)技術與自然語言處理模型, 發展智慧型客服機器人(Bot)。 '),(41,'易勝資訊股份有限公司','游小姐','Big Data數據平台開發人員','數據分析模型開發、AI 人工智慧、文字探勘、演算法開發、聊天機器人(Chatbot) 開發'),(42,'經貿聯網科技股份有限公司',' HR','JAVA/C#/Python 開發工程師','1. 參與專案開發與維護  2. 了解客戶端新增需求，進行客製化程式撰寫開發、系統測試、系統上線、文件維護等'),(43,'唐吉軻德金融科技股份有限公司','hr@tixguru.co ','資料工程師 / 數據工程師（Python, PHP）','大數據分析各類金融資料 與 開發維護各種網路爬蟲程式與串接第三方API，  讓平台上有更多的金融產品與有各種數據應用，  幫助使用者更容易找到滿意的金融商品。 '),(44,'新加坡商立可人事顧問有限公司台灣分公司','rtemp1@recruitexpress.com.tw','外商系統工程師','安裝、設定、操作及管理伺服器與作業系統，並運行相關服務 '),(45,'醫療財團法人辜公亮基金會和信治癌中心醫院','maxchen@kfsyscc.org 陳主任','Python網頁工程師 ','開發與維護 醫院管理系統 '),(46,'鴻海精密工業股份有限公司','人力資源服務總處','2018年研發替代役】Web前端工程師 ','1.負責資料分析系統數據整合與開發 2.熟悉Web前端框架/標準規範與Javascript/jQuery/HTML/Python等軟體'),(47,' 香港商生活智能科技有限公司台灣分公司','柳小姐','AI 研發工程師','1. 建立AI 開發環境  2. 開發相關演算法  3. 影像串流/辨識/學習等相關經驗尤佳。'),(48,'瑞昱半導體股份有限公司','http://www.realtek.com.tw/employment/ ','資料分析工程師 ','Experience in data collection / feature extraction / data analysis.  '),(49,'夢想動畫有限公司','林先生','網站後端工程師 Software Engineer ( Django ) ','1. 開發與維護 Django-base webservice  2. 支援軟體外掛套件開發'),(50,'資策會_財團法人資訊工業策進會','葉先生','【教研所】跨域數位網路學院_學習管理平台研發工程師 ','學習管理平台前後開發、建置、營運與維護'),(51,'美商_睿科網路科技有限公司',' 董小姐','FrontEnd Web Developer ','FrontEnd Web Developer'),(52,'酷碼科技股份有限公司','','IS- Software Engineer (Web/App) ','Implement Web User Interface Design (UI) for Embedded System/IoT device'),(53,'鴻海精密工業股份有限公司','人力資源處','雲端平台軟體研發(資深)工程師','1. 雲端平台軟體開發 2. IoT 服務整合應用 3. 網路服務整合'),(54,'國立臺中教育大學_理學院','林小姐','資訊博士後研究員 ','1. 執行教育部委辦計畫，與網頁、資料庫程式人員以及使用者溝通並維護專案網站資料庫與前端網頁架構。  2. 提供諮詢並處理使用者使用資料庫的相關問題。 '),(55,'泰沅科技有限公司','郭先生','資深雲端程式設計工程師 ','1. 設計與實作 IoT 應用服務與雲端整合  2. 程式開發、驗證除錯、版本控管維護, 彙整 API / SDK 等函式庫開發與維護 '),(56,'霖資訊有限公司','施先生','醫療資訊系統程式設計師','1.負責醫療資訊網站程式開發  2.協助研發新技術與工具'),(57,'研揚科技股份有限公司','黃先生','雲端軟體工程師 ','開發雲端物聯網平台(CMS)相關應用軟體'),(58,'宏碁股份有限公司','Jolly.Shih@acer.com','【RD】Software Engineer (Android)','- Responsible for the application design, development and maintenance on Android OS platform'),(59,'赫揚科技股份有限公司','richard.kuo@octinc.com.tw','軟/軔體研發工程師 ','熟SoC (Linux系統)，可獨立工作 '),(61,'美商世紀新訊股份有限公司台灣分公司','Yuna Wu小姐','(Senior) Internet Engineer ','Design and implement web service, web application and web user interface.'),(62,'三立電視股份有限公司',' 杜先生','大數據分析師','1.使用者行為、大數據分析  2.規劃、執行與維護公司現有專案  3.協助研發新軟體技術及新應用工具  4.新技術研究與評估'),(63,'物聯智慧股份有限公司','HR','全端軟體工程師 ','負責開發 Web 產品之前後端應用 '),(64,'華芸科技股份有限公司','凃先生','後端工程師 (Web-based Application)','NAS 後端軟體研發 '),(65,'雙子星雲端運算股份有限公司',' 林先生','Senior Cloud Engineer ','To develop management/user portals for service provider products. '),(66,'物聯智慧股份有限公司','HR','VSaaS senior frontend engineer資深軟體工程師 ','1. 開發Website UI，提供良好的使用者體驗  2. 改進網頁效能與開發RWD網頁  3. 維護既有專案，改善專案品質  4. 與UIUX設計師及後端工程師合作'),(67,'創雲數據股份有限公司','徐小姐','雲端平台開發工程師 ','1. 熟悉Python程式語言，於開發過程中善用debug方法  2. 了解並熟悉Open Source運用，並以Open Source開發相關應用系統 '),(68,'理立系統股份有限公司','','資深後端軟體工程師','Participate in system design, architecture decisions'),(69,'雙子星雲端運算股份有限公司','','雲端開發工程師 ','雲端開發'),(70,'日商艾鳴網路遊戲股份有限公司','HR','資深Infra工程師 ','協同日本總公司infra部門執行網路遊戲服務建置、遊戲入口連接、海外遊戲服務拓展等相關的系統環境設計與建置'),(71,'樂活多媒體有限公司','service@lohasstyle.cc','PHP後端工程師 ','1.PHP(WordPress)網站程式開發維護  2.網站工程相關服務之設定(網址註冊、DNS設定、郵件伺服器設定等)'),(72,'數字雲端有限公司','Rinawu','[數字媒體]客戶經理','1、確保專案目標實現、跟蹤進度、協調成員間的合作，領導專案團隊準時且優質地完成工作。  2、與客戶溝通瞭解專案的整體需求，即時回饋階段性的成果和即時更改客戶提出的合理需求。 '),(73,'東宇數位網路有限公司','人資部','DBA (MySQL資料庫管理人員) ','1. 提供MySQL資料庫架構建議。  2. 規劃、執行MySQL資料庫資料備援及回復。 '),(74,'皆凱科技有限公司','HR','MySQL DBA ','1.規劃資料庫，進行資料庫程式設計開發。  2.管理、監控資料庫效能，並適時針對相關參數及SQL進行調校等優化作業 。 '),(75,'尊博科技股份有限公司',' hr@jumbogames.com.tw','資料庫管理師(MySQL) ','依據使用者需求，參與資料庫架構的設計，並針對整體系統架構提供建議，以創建最佳資料庫架構'),(76,' 威許移動股份有限公司','annie@wishmobile.net','PHP + MySQL 網站工程師','PHP + MSQL 軟體工程師 ( 網站後端程式開發 )'),(77,'露天市集國際資訊股份有限公司','陳先生','MySQL資料庫工程師(MIS) ','1.MySQL資料庫維護、管理即時監控及相關除錯。  2.資料庫效率及穩定度提升及維護。  3.異地備援、備份及分散式架構環境。'),(78,'聚碩科技股份有限公司','samuel','MySQL 資料庫工程師【SACG】 ','1.客戶端MySQL 資料庫的管理與維護。  2.MySQL的安裝建置與系統調校。  3.MySQL效能調教。 '),(79,'華碩電腦股份有限公司','人資處招募任用部','Oracle/MySQL資料庫管理員 ','Oracle/MySQL 資料庫管裡'),(80,' 奇科系統有限公司','max@geego.com.tw','HTML/CSS/JavaScript/PHP/MySQL 講師','用自身專業經歷，傳授知識給下一代的年輕人 '),(82,'豐豫投資有限公司',' 許先生','後端開發工程師 (Node.js / MySQL /SQL/ NoSQL) ','協助研發軟體新技術與新工具  負責整體網路架構之維護管理與監控、流量控制、安全規劃及問題協調追蹤與排除  規劃、執行與維護產品 '),(83,'矽品精密工業股份有限公司','陳小姐','工業工程(資深)工程師(具MYSQL、VBA) ','導入生產力提升工具或方法 (CIM、 自動化、模擬)。 導入提升IE工作效率之工具或方法(MOS, Motion Study)'),(84,'泰偉電子股份有限公司','人事','資料庫管理師(MySQL DBA)','支援資料庫運用開發，參與運用程序設計及SQL代碼審核等作業'),(85,'貿易眼國際股份有限公司','朱冠穎','PHP+MYSQL 程式設計師 ','.負責整體網路架構之維護管理與監控、流量控制、安全規劃及問題協調追蹤與排除'),(86,' 吉鴻電子股份有限公司','胡小姐','MIS程式設計工程師/主管','分析管理會計資訊、財務報表分析、規劃檢討會計作業流程、結帳作業與帳務處理、網路程式設計、資料庫系統管理維護'),(87,'惠民實業股份有限公司','leon365@gmail.com','PHP程式設計師 ','進行網路程式的需求分析。'),(88,'恆順升國際有限公司','kevin@hssglobe.com','PHP互動式網站開發工程師 ','PHP互動式網站系統開發 ,資料庫應用(以MySQL為主)'),(89,'安璞資訊科技有限公司','Sandy','資料庫管理師 ','1.Oracle 11g、MySQL 資料庫管理與優化。  2.參與資料庫建置，並對系統架構規劃提供建議。  3.資料庫效能分析，針對相關參數及SQL Tuning 進行調校。 '),(90,'神通資訊科技股份有限公司','白先生','PHP程式設計師','1、平台網站程式開發維護；  2、使用PHP + MySQL 開發網頁應用程式； '),(91,'國立臺中教育大學','tcujems@gmail.com','碩士級系統程式工程師','1. 網站之程式撰寫 : 具備 JAVA, Java Script, HTML5, CSS等開版能力。'),(92,'億科國際股份有限公司','陳小姐','供應鏈數據管理專案助理 ','(1) 產銷運籌數據資料維護  (2) 產銷運籌報表製作  (3) 數據分析平台系統推廣'),(93,' 城邦文化事業股份有限公司',' 李小姐','網頁程式設計師','1.Facebook API。  2.相關活動宣傳程式設計。  3.資料庫管理 MSSql MySQL。  4.前端UI設計。'),(94,'台灣衛爾投資有限公司','hr.galaclothing@gmail.com','網站程式設計師 ','1.撰寫電子商務網站程式  2.開發網站新功能，並優化網站各項功能之運作。 '),(95,'英威康科技股份有限公司','林先生','網頁軟體工程師','建構更完善的跨境健康平台'),(96,'通騰科技股份有限公司','Wendy Ou','NDS Software Engineer','looking for a Sr. Node.JS Developer experienced in JavaScript to join our dynamic NDS Team'),(97,'遠聖管理顧問有限公司','葉小姐','JavaScript工程師 ','與前端工程師協調溝通，維護部分Javascript、CSS和HTML。 *網站產品和網站功能的開發與維護。 '),(98,'奇科系統有限公司',' Ben先生','JavaScript/jQuery/AJAX 講師 ','伺服器網站管理維護、資料庫系統管理維護、資料庫程式設計、資料庫軟體應用'),(99,'藝珂人事顧問股份有限公司','Michelle Chu小姐','JavaScript Engineer','Web client/server架構, Javascript, jQuery, AngularJS, ReactJS 等相關程式設計。 '),(100,'紅檜科技有限公司','hr','Frontend Developer',' collaborate with UI/UX Designers and Back-End Developers to deliver the products '),(101,'艾拓國際系統有限公司','hr@i-teck-global.net','網頁前端工程師 (Front-End Engineer) JAVASCRIPT ','熟悉HTML5、CSS3、javascript等前端網頁技能  使用過 MVVM 框架 (Vue.js, React.js)'),(102,'英特內軟體股份有限公司','HR','JavaScript軟體工程師 ','1. 利用本公司雲端開發平台DreamMaker開發商用軟體。  2. 開發系統使用的程式語言為JavaScript。 '),(103,'美盛醫電股份有限公司','peter.wu@maisense.com','App/Javascript 工程師[國防役] ','網頁前端'),(104,' 法樂數位創意_法樂設計有限公司','楊博欽','HTML/JavaScript/JQuery 互動程式助理','1.HTML/JavaScript/JQuery/FLASH 網站內容互動設計師  2.因應客戶端需求，製作、設計 HTML/JavaScript/JQuery/FLASH 互動程式段落 '),(105,'光曳資訊有限公司','王小姐','Javascript工程師(台北總公司) ','-網站產品和網站功能的開發與維護。  -與前端設計師協調溝通，編寫部分Javascript、CSS和HTML。 '),(106,'奧創資訊股份有限公司 ','Rock','Javascript工程師 ','1.負責網站前端開發工作，優化前端功能設計  2.分析設計前端架構以提升UI質感與UX體驗 '),(107,'邁達思科技有限公司',' pinus@midastech.tw','JavaScript 工程師 ','JavaScript 工程師'),(108,'精英人力資源股份有限公司','mary.tsai@imc.com.tw','Javascript Software Engineer ','Develop websites and customized system'),(109,'群作科技有限公司','chuntsohr@gmail.com','JavaScript 開發工程師 ','線上即時通訊軟體開發及維護  以Node.js為主 '),(110,'鴻華國際科技股份有限公司','DanielChen','JavaScript HTML JQuery 前端工程師 ','• 客服後台網頁撰寫與維護  • 與軟硬體同仁合作，收集並分析客服問題  • 資料庫查詢，Log 查詢 '),(111,'天堂遊戲有限公司','HR','[RD] Javascript網頁前端工程師 ','負責前端網頁各種交換程式代碼（AJAX）之編寫'),(112,'台灣優利系統股份有限公司','Jean','軟體工程師 Trainee (ASP.NET MVC, JavaScript) ','System developer for Call Centre/AML solution. '),(113,'伽瑪科技有限公司',' 陳小姐','軟體設計工程師 (F2E/Javascript) ','＊軟體設計及編寫技術方案。  ＊編寫程式碼及註解。 '),(114,'瑞嘉軟體科技股份有限公司','HR','遊戲程式設計師 ','• Designing, coding, and debugging HTML5 games  • Coding with javascript / html / css '),(115,'法諾科技有限公司','ay','前端研發工程師 (Javascript,Node.js)','1.熟悉 CSS（sass、scss）、HTML5/ XHTML、JavaScript（ES6, ES7） 開發  2.熟悉各種瀏覽器特性、及相容性問題處理 '),(116,'力拓移動國際有限公司','catherine','後端工程師 ','系統架構規劃、系統整合分析、軟體工程系統開發、軟體程式設計、網路程式設計、'),(117,'財團法人資訊工業策進會','吳小姐','【數位所】程式設計師 ','1、API設計、管理與資料庫設計。 2、熟悉Javascript、Node.js、AnguarJS、MVC設計框架、RWD等概念與實作技能。'),(118,'仁寶電腦工業股份有限公司','HR','雲端服務軟體工程師(內湖) ','健康照顧相關的雲端開發需求管理以及網頁前台技術開發'),(119,'新安東京海上產物保險股份有限公司 ',' 黃先生','程式設計師','1. 負責產物保險網站系統分析及程式設計，設計著重於簡化流程與作業自動化。'),(120,'希格斯資訊科技有限公司',' hr@higgstar.com','UX Designer/Researcher ','1. 制定界面風格規範 (UI Style Guide)，提昇界面的一致性與可預期性。包含品牌識別、版型、 配色、字體。  2. Web&APP UI規劃與設計(須能獨立製作UI圖) '),(121,'德義資訊股份有限公司','Livia','Sr. Java Web Engineer ',' Java SE/ Java EE 程式設計與開發 '),(122,'健豪印刷事業股份有限公司','粘小姐','網站維護工程師 ','網站維護'),(123,'福容大飯店股份有限公司','張小姐','資訊組長/專員(總公司) ','1.電腦/網路程式設計:ASP.NET、C#、JavaScript、jQuery  2.電腦/網路資料庫設計:MS SQL'),(124,'樂聲大戲院股份有限公司','呂小姐','PHP Web 工程師 ','1.雲端系統 (Cloud System) 設計產品開發。  2.熟悉 PHP/MySQL/CSS/Javascript/JQuery/DHTML'),(125,'車庫娛樂股份有限公司','呂小姐','PHP Web 工程師 ','1.雲端系統 (Cloud System) 設計產品開發。  2.熟悉 PHP/MySQL/CSS/Javascript/JQuery/DHTML'),(126,'TutorABC_麥奇數位股份有限公司',' HR','工程師(TM) ','HTML, DIV Layout, CSS, JavaScript等互動網頁設計'),(127,'歐博森科技有限公司','顏小姐','資深網站前端工程師','1.負責網站前台程式設計與開發(ASP.net、C#、jQuery、AJAX)  2.使用HTML5、CSS3進行前端程式開發，並研究新互動應用技術與特效 '),(128,'台北市 潘柏家具股份有限公司','xiu312@panbor.com.tw','網頁前端互動設計師','前端設計(Front-End)'),(129,'東南旅行社股份有限公司','魏先生','Senior Web Designer/資深網頁設計師','根據產品規劃，進行EC網站介面與各項行銷相關素材設計製作'),(130,'一宇數位科技股份有限公司','徐先生','資深.NET程式設計師','◆建置與開發網站前後台。  ◆資料庫建置與規劃。  ◆程式開發與維護。 '),(131,'台灣明治食品股份有限公司','MeijiHR@meiji.com.tw ','IT物流相關人員 ','-協助同仁軟硬體故障除錯。  -專案管理, 排程執行。  -專案協商。  -目前公司現有網站系統之維護。');
/*!40000 ALTER TABLE `company_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_companyskills`
--

DROP TABLE IF EXISTS `company_companyskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_companyskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyskill` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_companyskills_company_id_5849f7a3_fk_company_company_id` (`company_id`),
  CONSTRAINT `company_companyskills_company_id_5849f7a3_fk_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_companyskills`
--

LOCK TABLES `company_companyskills` WRITE;
/*!40000 ALTER TABLE `company_companyskills` DISABLE KEYS */;
INSERT INTO `company_companyskills` VALUES (1,'python',1),(3,'python',10),(6,'python',12),(7,'django',12),(8,'javascript',12),(9,'python',13),(10,'mysql',13),(11,'javascript',13),(12,'python',14),(13,'mysql',14),(14,'python',15),(15,'python',16),(16,'javascript',16),(17,'python',17),(18,'mysql',17),(19,'python',18),(20,'python',19),(21,'python',20),(22,'python',21),(23,'python',22),(24,'python',23),(25,'python',24),(26,'django',24),(27,'javascript',24),(28,'jquery',24),(29,'python',25),(30,'python',26),(31,'django',26),(32,'python',27),(33,'mysql',27),(34,'python',28),(35,'django',28),(36,'javascript',28),(37,'python',29),(38,'mysql',29),(39,'jquery',29),(40,'python',30),(41,'python',31),(42,'django',31),(43,'python',32),(44,'mysql',32),(45,'python',33),(46,'mysql',33),(47,'python',34),(48,'python',35),(49,'django',35),(50,'python',36),(51,'python',37),(52,'python',38),(53,'django',38),(54,'javascript',38),(55,'python',39),(56,'django',39),(57,'mysql',39),(58,'python',40),(59,'mysql',40),(60,'javascript',40),(61,'jquery',40),(62,'python',41),(63,'mysql',41),(64,'javascript',41),(65,'python',42),(66,'mysql',42),(67,'javascript',42),(68,'jquery',42),(69,'python',43),(70,'mysql',43),(71,'python',44),(72,'mysql',44),(73,'python',45),(74,'django',45),(75,'mysql',45),(76,'python',46),(77,'django',46),(78,'javascript',46),(79,'jquery',46),(80,'python',47),(81,'python',48),(82,'python',49),(83,'django',49),(84,'python',50),(85,'django',50),(86,'python',51),(87,'javascript',51),(88,'jquery',51),(89,'python',52),(90,'django',52),(91,'mysql',52),(92,'javascript',52),(93,'jquery',52),(94,'python',53),(95,'django',53),(96,'javascript',53),(97,'python',54),(98,'django',54),(99,'javascript',54),(100,'python',55),(101,'django',55),(102,'mysql',55),(103,'javascript',55),(104,'python',56),(105,'django',56),(106,'jquery',56),(107,'python',57),(108,'django',57),(109,'mysql',57),(110,'javascript',57),(111,'jquery',57),(112,'python',58),(113,'django',58),(114,'python',59),(115,'django',59),(116,'javascript',59),(121,'python',61),(122,'django',61),(123,'mysql',61),(124,'jquery',61),(125,'python',62),(126,'django',62),(127,'mysql',62),(128,'javascript',62),(129,'python',63),(130,'django',63),(131,'mysql',63),(132,'javascript',63),(133,'jquery',63),(134,'python',64),(135,'django',64),(136,'mysql',64),(137,'javascript',64),(138,'python',65),(139,'django',65),(140,'mysql',65),(141,'jquery',65),(142,'python',66),(143,'django',66),(144,'javascript',66),(145,'jquery',66),(146,'python',67),(147,'django',67),(148,'mysql',67),(149,'javascript',67),(150,'python',68),(151,'django',68),(152,'mysql',68),(153,'python',69),(154,'django',69),(155,'mysql',69),(156,'mysql',70),(157,'mysql',71),(158,'javascript',71),(159,'jquery',71),(160,'mysql',72),(161,'mysql',73),(162,'mysql',74),(163,'mysql',75),(164,'mysql',76),(165,'python',77),(166,'mysql',77),(167,'mysql',78),(168,'mysql',79),(169,'mysql',80),(170,'javascript',80),(171,'jquery',80),(175,'mysql',82),(176,'mysql',83),(177,'mysql',84),(178,'mysql',85),(179,'mysql',86),(180,'javascript',86),(181,'mysql',87),(182,'jquery',87),(183,'mysql',88),(184,'javascript',88),(185,'mysql',89),(186,'mysql',90),(187,'mysql',91),(188,'javascript',91),(189,'mysql',92),(190,'mysql',93),(191,'javascript',93),(192,'jquery',93),(193,'mysql',94),(194,'jquery',94),(195,'javascript',95),(196,'javascript',96),(197,'mysql',97),(198,'javascript',97),(199,'javascript',98),(200,'jquery',98),(201,'javascript',99),(202,'jquery',99),(203,'mysql',100),(204,'javascript',100),(205,'javascript',101),(206,'mysql',102),(207,'javascript',102),(208,'javascript',103),(209,'javascript',104),(210,'jquery',104),(211,'mysql',105),(212,'javascript',105),(213,'mysql',106),(214,'javascript',106),(215,'javascript',107),(216,'mysql',108),(217,'javascript',108),(218,'javascript',109),(219,'python',110),(220,'javascript',110),(221,'jquery',110),(222,'javascript',111),(223,'mysql',112),(224,'javascript',112),(225,'javascript',113),(226,'jquery',113),(227,'javascript',114),(228,'javascript',115),(229,'python',116),(230,'mysql',116),(231,'javascript',116),(232,'jquery',116),(233,'javascript',117),(234,'javascript',118),(235,'javascript',119),(236,'jquery',119),(237,'jquery',120),(238,'mysql',121),(239,'javascript',121),(240,'jquery',121),(241,'mysql',122),(242,'javascript',122),(243,'jquery',122),(244,'mysql',123),(245,'javascript',123),(246,'jquery',123),(247,'mysql',124),(248,'javascript',124),(249,'jquery',124),(250,'mysql',125),(251,'javascript',125),(252,'jquery',125),(253,'javascript',126),(254,'jquery',126),(255,'javascript',127),(256,'jquery',127),(257,'jquery',128),(258,'jquery',129),(259,'mysql',130),(260,'javascript',130),(261,'jquery',130),(262,'mysql',131),(263,'javascript',131),(264,'jquery',131);
/*!40000 ALTER TABLE `company_companyskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'company','company'),(10,'company','companyskills'),(5,'contenttypes','contenttype'),(7,'member','member'),(8,'member','memberskills'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-01-22 02:26:47.892653'),(2,'auth','0001_initial','2018-01-22 02:26:53.672431'),(3,'admin','0001_initial','2018-01-22 02:26:55.654540'),(4,'admin','0002_logentry_remove_auto_add','2018-01-22 02:26:55.701427'),(5,'contenttypes','0002_remove_content_type_name','2018-01-22 02:26:56.795165'),(6,'auth','0002_alter_permission_name_max_length','2018-01-22 02:26:57.326418'),(7,'auth','0003_alter_user_email_max_length','2018-01-22 02:26:57.857653'),(8,'auth','0004_alter_user_username_opts','2018-01-22 02:26:57.888919'),(9,'auth','0005_alter_user_last_login_null','2018-01-22 02:26:58.295198'),(10,'auth','0006_require_contenttypes_0002','2018-01-22 02:26:58.326449'),(11,'auth','0007_alter_validators_add_error_messages','2018-01-22 02:26:58.373287'),(12,'auth','0008_alter_user_username_max_length','2018-01-22 02:26:59.560792'),(13,'auth','0009_alter_user_last_name_max_length','2018-01-22 02:27:00.076418'),(14,'sessions','0001_initial','2018-01-22 02:27:00.670176'),(15,'member','0001_initial','2018-01-22 08:56:00.465576'),(16,'member','0002_memberskills','2018-01-24 01:50:04.751924'),(17,'company','0001_initial','2018-01-24 06:38:48.418776'),(18,'company','0002_auto_20180124_2119','2018-01-25 01:24:29.424790');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_member`
--

DROP TABLE IF EXISTS `member_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `userbirth` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_member`
--

LOCK TABLES `member_member` WRITE;
/*!40000 ALTER TABLE `member_member` DISABLE KEYS */;
INSERT INTO `member_member` VALUES (3,'abcabc','aaasss','aaa@gmail.cpm','2017-11-30'),(5,'abcabc','aaasss','aaa@gmail.cpm','2017-11-30'),(7,'AIEN0108','aaaddd','aaa@aaa.aaa','2015-10-28'),(8,'bbb','ggghhh','nnn@ggg.hhh','2012-09-28'),(10,'hanna','ghgghhh','hanna@gmail.com','2016-10-29'),(11,'Zack','zzzaaa','Zack@gmail.com','2015-06-28'),(12,'Gina','aaassss','Gina@gmail.com','1992-01-16'),(13,'Kelly','asdfgh','Kelly@gmail.com','2008-05-19'),(14,'Kyle','qwertyu','Kyle@gmail.com','1992-10-17'),(15,'Grace','asdsffff','Grace@gmail.cm','1977-04-22'),(16,'Rita','aaasss','Rita@gmail.com','1980-02-19'),(17,'Semeul','aaasss','Semeul@gmail.com','1982-03-23'),(18,'Keven','aaasss','Keven@gmail.com','1982-06-23'),(19,'Joy','aaasssss','Joy@gmail.com','2001-01-17'),(20,'Ketty','aaasss','ketty@gmail.com','2004-03-24'),(21,'Jerry','aasssa','Jerry@gmail.com','1989-07-27'),(22,'Cindy','aaaddd','Cindy@gmail.com','1980-04-22'),(23,'Martin','aaafff','Martin@gmail.com','1988-09-19'),(24,'Ronnie','aaasss','Ronnie@gmail.com','1980-02-10'),(25,'Sherry','aaaddd','Sherry@gmail.com','1997-01-21'),(26,'Oliver','aaasss','Oliver@gmail.com','1996-07-20'),(27,'Jeen','aaasss','Jeen@gmail.com','1974-06-24'),(28,'May','aaaddd','May@gmail.com','1982-02-18'),(29,'Tom','aaasssddd','Tom@gmail.com','1984-09-27'),(30,'Sam','aaasss','Sam@gmail.com','1983-11-23'),(31,'Irish','aaasss','Irish@gmail.com','1980-08-15'),(32,'Esther','aaasss','Esther@gmail.com','1991-05-25'),(33,'Jane','aaasss','Jane@gmail.com','1990-03-19'),(34,'Ian','asssdddd','Ian@gmail.com','1985-02-22'),(35,'Welsh','asssdddd','Welsh@gmail.com','1982-05-21'),(36,'Fiona','aaasss','Fiona@gmail.com','1989-12-19'),(37,'Allen','aaasss','Allen@gmail.com','1985-06-20'),(38,'William','aaasss','William@gmail.com','1993-08-29'),(39,'Peter','aaasss','Peter@gmail.com','1982-02-22');
/*!40000 ALTER TABLE `member_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_memberskills`
--

DROP TABLE IF EXISTS `member_memberskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_memberskills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skillname` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_memberskills_member_id_edbd9689_fk_member_member_id` (`member_id`),
  CONSTRAINT `member_memberskills_member_id_edbd9689_fk_member_member_id` FOREIGN KEY (`member_id`) REFERENCES `member_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_memberskills`
--

LOCK TABLES `member_memberskills` WRITE;
/*!40000 ALTER TABLE `member_memberskills` DISABLE KEYS */;
INSERT INTO `member_memberskills` VALUES (3,'python',3),(4,'django',3),(7,'python',5),(8,'django',5),(13,'python',7),(14,'django',7),(15,'mysql',7),(16,'python',8),(17,'django',8),(18,'mysql',8),(24,'mysql',10),(25,'javascript',10),(26,'jquery',10),(27,'python',11),(28,'django',11),(29,'python',12),(30,'mysql',12),(31,'javascript',12),(32,'mysql',13),(33,'javascript',13),(34,'jquery',13),(35,'python',14),(36,'django',14),(37,'mysql',15),(38,'javascript',15),(39,'mysql',16),(40,'javascript',16),(41,'jquery',16),(42,'python',17),(43,'django',17),(44,'mysql',17),(45,'javascript',18),(46,'jquery',18),(47,'python',19),(48,'mysql',19),(49,'javascript',20),(50,'jquery',20),(51,'mysql',21),(52,'javascript',21),(53,'javascript',22),(54,'python',23),(55,'mysql',23),(56,'python',24),(57,'javascript',24),(58,'python',25),(59,'django',25),(60,'mysql',26),(61,'javascript',26),(62,'python',27),(63,'mysql',28),(64,'python',29),(65,'django',29),(66,'javascript',29),(67,'jquery',30),(68,'javascript',31),(69,'python',32),(70,'mysql',32),(71,'javascript',33),(72,'django',34),(73,'mysql',35),(74,'mysql',36),(75,'python',37),(76,'mysql',38),(77,'javascript',38),(78,'mysql',39);
/*!40000 ALTER TABLE `member_memberskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `skillid` int(22) NOT NULL,
  `skillname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'python'),(2,'django'),(3,'mysql'),(4,'javascript'),(5,'jquery');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-30 14:43:44
