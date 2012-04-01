-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.59-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dbinventory
--

CREATE DATABASE IF NOT EXISTS dbinventory;
USE dbinventory;

--
-- Temporary table structure for view `view_ending_balance`
--
DROP TABLE IF EXISTS `view_ending_balance`;
DROP VIEW IF EXISTS `view_ending_balance`;
CREATE TABLE `view_ending_balance` (
  `item_code` varchar(45),
  `item_qty` double(10,2)
);

--
-- Definition of table `account_receivable`
--

DROP TABLE IF EXISTS `account_receivable`;
CREATE TABLE `account_receivable` (
  `sales_order_no` varchar(45) NOT NULL DEFAULT '0',
  `remarks` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`sales_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_receivable`
--

/*!40000 ALTER TABLE `account_receivable` DISABLE KEYS */;
INSERT INTO `account_receivable` (`sales_order_no`,`remarks`,`date`) VALUES 
 ('SO-0000058','','2011-11-16 11:48:25'),
 ('SO-0000059','','2011-11-16 13:25:28'),
 ('SO-0000060','','2011-11-17 16:50:24'),
 ('SO-0000061','','2011-11-18 13:11:39'),
 ('SO-0000062','','2011-11-18 13:14:29'),
 ('SO-0000063','','2011-11-18 13:32:53'),
 ('SO-0000064','','2011-11-18 13:36:48'),
 ('SO-0000065','','2011-11-18 13:39:36'),
 ('SO-0000066','','2011-11-18 13:41:50'),
 ('SO-0000067','','2011-11-18 21:10:01');
/*!40000 ALTER TABLE `account_receivable` ENABLE KEYS */;


--
-- Definition of table `account_recievable_cart`
--

DROP TABLE IF EXISTS `account_recievable_cart`;
CREATE TABLE `account_recievable_cart` (
  `acount_recievable_cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `customer_type` varchar(45) NOT NULL,
  `acount_recievable_cart_date` datetime NOT NULL,
  `price` double(2,2) NOT NULL,
  `total_price` double(2,2) NOT NULL,
  `discount_amount` double(2,2) NOT NULL,
  PRIMARY KEY (`acount_recievable_cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_recievable_cart`
--

/*!40000 ALTER TABLE `account_recievable_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_recievable_cart` ENABLE KEYS */;


--
-- Definition of table `account_recievable_payments`
--

DROP TABLE IF EXISTS `account_recievable_payments`;
CREATE TABLE `account_recievable_payments` (
  `account_recievable_id` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`account_recievable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_recievable_payments`
--

/*!40000 ALTER TABLE `account_recievable_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_recievable_payments` ENABLE KEYS */;


--
-- Definition of table `account_recievable_to_account_recievable_cart`
--

DROP TABLE IF EXISTS `account_recievable_to_account_recievable_cart`;
CREATE TABLE `account_recievable_to_account_recievable_cart` (
  `account_recievable_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`account_recievable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_recievable_to_account_recievable_cart`
--

/*!40000 ALTER TABLE `account_recievable_to_account_recievable_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_recievable_to_account_recievable_cart` ENABLE KEYS */;


--
-- Definition of table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `agent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`agent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` (`agent_id`,`Name`,`Mobile`,`address`) VALUES 
 (1,'Nic Lomocso','09129720502','Bilar'),
 (2,'Ronilo Lopiseros','09183395029','ad'),
 (3,'Dario Medina','09286321347','adr'),
 (4,'Robert Idulza','09125387404','Bilar'),
 (5,'Jerson Samuya','09494063344','San Isidro');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;


--
-- Definition of table `agent_customers`
--

DROP TABLE IF EXISTS `agent_customers`;
CREATE TABLE `agent_customers` (
  `agent_id` int(10) unsigned DEFAULT NULL,
  `customers_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_customers`
--

/*!40000 ALTER TABLE `agent_customers` DISABLE KEYS */;
INSERT INTO `agent_customers` (`agent_id`,`customers_id`) VALUES 
 (1,24),
 (1,9),
 (2,4),
 (1,5),
 (3,6),
 (1,7),
 (1,8),
 (1,10),
 (1,11),
 (1,12),
 (4,13),
 (1,14),
 (3,15),
 (2,16),
 (1,17),
 (1,18),
 (1,19),
 (1,20),
 (1,21),
 (1,22),
 (1,23),
 (5,25),
 (1,26),
 (1,27),
 (3,28),
 (2,29),
 (1,31),
 (1,32),
 (1,33),
 (1,34),
 (3,35),
 (2,36),
 (1,37),
 (1,38),
 (1,40),
 (1,41),
 (1,42),
 (1,43),
 (1,44),
 (3,45),
 (3,46),
 (5,47),
 (5,48),
 (1,49),
 (1,50),
 (1,51),
 (1,52),
 (1,53),
 (1,54),
 (1,55),
 (5,56),
 (5,57),
 (1,58),
 (1,59),
 (1,60),
 (1,61),
 (1,62),
 (1,63),
 (1,64),
 (1,65),
 (1,66),
 (1,67),
 (1,68),
 (1,69),
 (1,70),
 (1,71),
 (3,72),
 (1,73),
 (3,74),
 (1,75),
 (1,76),
 (1,77),
 (2,78),
 (3,79),
 (1,80),
 (1,81),
 (1,82),
 (1,83),
 (3,84),
 (3,85),
 (3,86),
 (2,87),
 (3,88),
 (5,89),
 (3,90),
 (1,91),
 (1,92),
 (3,93),
 (2,94),
 (1,95),
 (1,96),
 (1,97),
 (3,98),
 (3,99),
 (1,100),
 (3,101),
 (1,102),
 (1,103),
 (3,3),
 (5,39),
 (1,104),
 (1,105);
/*!40000 ALTER TABLE `agent_customers` ENABLE KEYS */;


--
-- Definition of table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `customer_type` varchar(45) NOT NULL,
  `cart_date` datetime NOT NULL,
  `price` double(2,2) NOT NULL,
  `total_price` double(2,2) NOT NULL,
  `discount` varchar(45) NOT NULL,
  `discount_amount` double(2,2) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


--
-- Definition of table `cod`
--

DROP TABLE IF EXISTS `cod`;
CREATE TABLE `cod` (
  `sales_order_no` varchar(45) NOT NULL DEFAULT '0',
  `remarks` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`sales_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cod`
--

/*!40000 ALTER TABLE `cod` DISABLE KEYS */;
/*!40000 ALTER TABLE `cod` ENABLE KEYS */;


--
-- Definition of table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customers_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customers_name` varchar(45) DEFAULT NULL,
  `customers_add` varchar(45) DEFAULT NULL,
  `customers_number` varchar(45) DEFAULT NULL,
  `dealers_type` varchar(45) DEFAULT 'dealer',
  PRIMARY KEY (`customers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customers_id`,`customers_name`,`customers_add`,`customers_number`,`dealers_type`) VALUES 
 (3,'ALVIN CRECENCIO','Talibon','','dealer'),
 (4,'ANDRES ARONG','ubay','','dealer'),
 (5,'ANITA CAñADA ','Tubigon','','dealer'),
 (6,'ANNIE APARRE','Inabanga','','dealer'),
 (7,'ARLENE ABRES','Calape','','dealer'),
 (8,'ASTER GALOLA','Tubigon','','dealer'),
 (9,'BALOY BLANTUCAS','Tubigon','','dealer'),
 (10,'BEBETH BARROSA','Tubigon','','dealer'),
 (11,'BEN GABLINES ','Calape','','dealer'),
 (12,'BENETH RASONABE ','Calape','','dealer'),
 (14,'BISU ','Calape','','consumer'),
 (15,'BOY CAPIO','Inabanga','','dealer'),
 (16,'CABANDOS','Trinidad','','dealer'),
 (17,'CARLITA','Calape','','dealer'),
 (18,'CHE CHE HILARYO','Calape','','dealer'),
 (19,'CHRISTINE SIA','Calape','','consumer'),
 (20,'CITA MELIJOR','Tubigon','','dealer'),
 (21,'CONCHING TAYABAS','Calape','','dealer'),
 (22,'CONSOL ROUTA','Cabilao','','dealer'),
 (23,'CORBITA','Catagbacan','','dealer'),
 (24,'CRESLYN STORE','Clarin','','dealer'),
 (25,'CRISDA AGRIVET','Sagbayan','','dealer'),
 (26,'DADIE','Tubigon','','dealer'),
 (27,'DANSOY','Calape','','dealer'),
 (28,'DEPT. OF AGRI','Talibon','','dealer'),
 (29,'DK ENTERPRISES','Ubay','','dealer'),
 (31,'EDWIN DE VERA','Tubigon','','dealer'),
 (32,'ELSIE REGALADO','Calape','','dealer'),
 (33,'ELY MARIVELES','Tubigon','','dealer'),
 (34,'ELY TANO','Clarin','','dealer'),
 (35,'EMIE JUSOY','Inabanga','','dealer'),
 (36,'ERDY MORENO','Bien unido','','dealer'),
 (37,'ESTER FEEDS','Calape','','dealer'),
 (38,'ESTER GUJIL','Calape','','dealer'),
 (39,'FARMER\'S AGRIVET','sagbayan','','dealer'),
 (40,'FELIMON','Catagbacan','','dealer'),
 (41,'FELING BATAUSA','Tubigon','','dealer'),
 (42,'FELY RASONABE','Calape','','dealer'),
 (43,'FLOR BOLOGA','Tubigon','','dealer'),
 (44,'FLOR DUMALAURON','Tubigon','','dealer'),
 (45,'FOUR N STORE','Inabanga','','dealer'),
 (46,'FRIENDLY AGRIVET','Talibon','','dealer'),
 (47,'GERRY SACO','Sagbayan','','dealer'),
 (48,'GIGIE FAJARDO','Sagbayan','','dealer'),
 (49,'GLORIA MANTE','Tubigon','','dealer'),
 (50,'GMEGS AGRIVET','Calape','','dealer'),
 (51,'Emellia','Tubigon','','dealer'),
 (52,'Rolando Delantar','Clarin','','dealer'),
 (53,'Mascareñas','Tubigon','','dealer'),
 (54,'Marve Tuñacao','Tubigon','','dealer'),
 (55,'Edith Tering-tering','Tubigon','','dealer'),
 (56,'Racoma','Sagbayan','','dealer'),
 (57,'Myrna Añana','Sagbayan','','dealer'),
 (58,'Mark Durango','Tubigon','','dealer'),
 (59,'Hilda Paredes','Calape','','dealer'),
 (60,'Bebeth-Guiwanon','Calape','','dealer'),
 (61,'Cheryl Lafuente','Cantomocad','','dealer'),
 (62,'Jolyns','Catagbacan','','dealer'),
 (63,'Tata Ungab','Catagbacan','','dealer'),
 (64,'Patty Store','Calape','','dealer'),
 (65,'Gina Asumbrado','Cahayag','','dealer'),
 (66,'Shai Store','Calape','','dealer'),
 (67,'Chan','Calape','','dealer'),
 (68,'Reneth','Calape','','dealer'),
 (69,'Myrna Duterte','Cahayag','','dealer'),
 (70,'Arlene Abris','Calape','','dealer'),
 (71,'Uris','Calape','','dealer'),
 (72,'Michael Martorilla','Buenavista','','dealer'),
 (73,'Mila Obguia','Tubigon','','dealer'),
 (74,'Hagutin','Buenavista','','dealer'),
 (75,'Honey Mae','Tubigon','','dealer'),
 (76,'Inday Tig-Tig','Calape','','dealer'),
 (77,'Janet Limocon','Tubigon','','dealer'),
 (78,'JM-Ubay','Ubay','','dealer'),
 (79,'Joepet Borres','Inabanga','','dealer'),
 (80,'Joy Lim','Calape','','dealer'),
 (81,'JVS','Calape','','dealer'),
 (82,'Lilith Mangaron','Catagbacan','','dealer'),
 (83,'Lolita Roloma','Tubigon','','dealer'),
 (84,'Lugod','Jetafe','','dealer'),
 (85,'Lumaban','Inabanga','','dealer'),
 (86,'Margarito','Buenavista','','dealer'),
 (87,'Marineth Fernandez','Trinidad','','dealer'),
 (88,'Marlon Mosqueda','Inabanga','','dealer'),
 (89,'Bebelyn Misador','Sagbayan','','dealer'),
 (90,'Moises Lambohon','Jetafe','','dealer'),
 (91,'Monina de Vera','Tubigon','','dealer'),
 (92,'Naning Maratas','Cabilao','','dealer'),
 (93,'Nemrod Agrivet','Inabanga','','dealer'),
 (94,'Nutrimart Ubay','Ubay','','dealer'),
 (95,'Ondo Cosare','Tubigon','','dealer'),
 (96,'Ondo Enriquez','Cantomocad','','dealer'),
 (97,'Regine Piezas','Clarin','','dealer'),
 (98,'Richard','Inabanga','','dealer'),
 (99,'Ricardo Torreon','Jetafe','','dealer'),
 (100,'Ronnie Cabrera','Calape','','dealer'),
 (101,'Tricool Store','Buenavista','','dealer'),
 (102,'Vidala Reymulta','Tubigon','','dealer'),
 (103,'Joan Cagampang','Cahayag','','dealer'),
 (104,'WALK in CUSTOMER','Calape','','consumer'),
 (105,'Romero','Catagbacan','','dealer');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


--
-- Definition of table `customers_discount`
--

DROP TABLE IF EXISTS `customers_discount`;
CREATE TABLE `customers_discount` (
  `customers_id` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_discount`
--

/*!40000 ALTER TABLE `customers_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_discount` ENABLE KEYS */;


--
-- Definition of table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discount_code` varchar(45) DEFAULT NULL,
  `discount_name` varchar(45) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;


--
-- Definition of table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `beginning_balance` double(10,2) DEFAULT NULL,
  `ending_balance` double(10,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=915 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` (`id`,`item_id`,`item_code`,`beginning_balance`,`ending_balance`,`date`) VALUES 
 (1,1,'CBM',8.00,7.00,'2011-11-18 09:06:40'),
 (2,2,'CSM',3.00,3.00,'2011-11-18 09:06:40'),
 (3,3,'CGM',28.00,28.00,'2011-11-18 09:06:40'),
 (4,4,'CLM',18.00,13.00,'2011-11-18 09:06:40'),
 (5,5,'BSC',10.00,9.00,'2011-11-18 09:06:40'),
 (6,6,'BFC',23.00,20.00,'2011-11-18 09:06:40'),
 (7,7,'Milko Plus',12.00,12.00,'2011-11-18 09:06:40'),
 (8,8,'NSP',99.00,86.00,'2011-11-18 09:06:40'),
 (9,9,'NGP',168.00,33.00,'2011-11-18 09:06:40'),
 (10,10,'NBP',155.00,105.00,'2011-11-18 09:06:40'),
 (11,11,'PSP',79.00,71.00,'2011-11-18 09:06:40'),
 (12,12,'LSP',54.00,47.00,'2011-11-18 09:06:40'),
 (13,13,'PGP',1.00,1.00,'2011-11-18 09:06:40'),
 (14,14,'PGR',3.00,3.00,'2011-11-18 09:06:40'),
 (15,15,'NLB',16.00,16.00,'2011-11-18 09:06:40'),
 (16,16,'NLB-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (17,17,'NLP',40.00,39.00,'2011-11-18 09:06:40'),
 (18,18,'NLP-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (19,19,'HSC',7.00,7.00,'2011-11-18 09:06:40'),
 (20,20,'HGP',20.00,16.00,'2011-11-18 09:06:40'),
 (21,21,'HFP',14.00,14.00,'2011-11-18 09:06:40'),
 (22,22,'PDP (s)',31.00,30.00,'2011-11-18 09:06:40'),
 (23,23,'PDP (o)',34.00,33.00,'2011-11-18 09:06:40'),
 (24,24,'7 Kinds',12.00,12.00,'2011-11-18 09:06:40'),
 (25,25,'Slasher',6.00,6.00,'2011-11-18 09:06:40'),
 (26,26,'C-Corn',32.00,32.00,'2011-11-18 09:06:40'),
 (27,27,'Christine',30.00,66.00,'2011-11-18 09:06:40'),
 (28,28,'RED RICE',22.00,18.00,'2011-11-18 09:06:40'),
 (29,29,'Royal Crown',194.00,192.00,'2011-11-18 09:06:40'),
 (30,30,'Honey ',118.00,115.00,'2011-11-18 09:06:40'),
 (31,31,'THB Booster',9.00,8.00,'2011-11-18 09:06:40'),
 (32,32,'THB Booster-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (33,33,'THB Developer',6.00,5.00,'2011-11-18 09:06:40'),
 (34,34,'THB Developer-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (35,35,'THB Enertone',0.00,0.00,'2011-11-18 09:06:40'),
 (36,36,'THB Enertone-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (37,37,'THB Platinum',6.00,6.00,'2011-11-18 09:06:40'),
 (38,38,'THB Platinum-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (39,39,'THB Hi-Protein',1.00,1.00,'2011-11-18 09:06:40'),
 (40,40,'THB Hi-Protein-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (41,41,'THB Successor',1.00,1.00,'2011-11-18 09:06:40'),
 (42,42,'THB Successor-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (43,43,'THB Multigrain',1.00,0.00,'2011-11-18 09:06:40'),
 (44,44,'THB Multigrain-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (45,45,'THB Hi-Lander',1.00,1.00,'2011-11-18 09:06:40'),
 (46,46,'THB Hi-Lander-pack',1.00,1.00,'2011-11-18 09:06:40'),
 (47,47,'FRYMASH',10.00,10.00,'2011-11-18 09:06:40'),
 (48,48,'PBC',5.00,5.00,'2011-11-18 09:06:40'),
 (49,49,'PBS',0.00,0.00,'2011-11-18 09:06:40'),
 (50,50,'PBG',4.00,0.00,'2011-11-18 09:06:40'),
 (51,51,'PBF',5.00,5.00,'2011-11-18 09:06:40'),
 (52,52,'SBS',23.00,23.00,'2011-11-18 09:06:40'),
 (53,53,'SBG',0.00,0.00,'2011-11-18 09:06:40'),
 (54,54,'SBF',20.00,5.00,'2011-11-18 09:06:40'),
 (55,55,'Apralyte 6g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (56,56,'Apralyte 6g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (57,57,'Bacterid 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (58,58,'Bacterid 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (59,59,'Baxidil SE 6g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (60,60,'Baxidil SE 6g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (61,61,'Baxidil 7g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (62,62,'Baxidil 7g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (63,63,'Bexan SP 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (64,64,'Bexan SP 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (65,65,'Bexan SP 20ml',1.00,1.00,'2011-11-18 09:06:40'),
 (66,66,'Bexan XP 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (67,67,'Bexan XP 20ml',1.00,1.00,'2011-11-18 09:06:40'),
 (68,68,'Bexan XP 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (69,69,'Electrogen D+ 20g x 12',1.00,1.00,'2011-11-18 09:06:40'),
 (70,70,'Electrogen D+ 20g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (71,71,'Jectran Premium 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (72,72,'Jectran Premium 20ml',1.00,1.00,'2011-11-18 09:06:40'),
 (73,73,'Jectran Premium 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (74,74,'Latigo 1000 SD 5g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (75,75,'Latigo 1000 SD 5g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (76,76,'Latigo 1000 MD 10g x 24',1.00,1.00,'2011-11-18 09:06:40'),
 (77,77,'Latigo 1000 MD 10g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (78,78,'Major D 20ml x 30',1.00,1.00,'2011-11-18 09:06:40'),
 (79,79,'Major D 20ml (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (80,80,'Mammavet 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (81,81,'Mammavet 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (82,82,'Sustalin LA 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (83,83,'Sustalin LA 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (84,84,'Vetracin Classic 5g x 48 ',1.00,1.00,'2011-11-18 09:06:40'),
 (85,85,'Vetracin Classic 5g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (86,86,'Vetracin Gold 5g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (87,87,'Vetracin Gold 5g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (88,88,'Vetracin Gold Capsule',1.00,1.00,'2011-11-18 09:06:40'),
 (89,89,'Vetracin Gold Capsule (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (90,90,'Vetracin Premium 5g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (91,91,'Vetracin Premium 5g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (92,92,'Viton-500 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (93,93,'Cecical 200g',1.00,1.00,'2011-11-18 09:06:40'),
 (94,94,'Pidro 2.4g x 50',1.00,1.00,'2011-11-18 09:06:40'),
 (95,95,'Pidro 2.4g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (96,96,'V-22 200g',1.00,1.00,'2011-11-18 09:06:40'),
 (97,97,'V-22 Tablet 100 ',1.00,1.00,'2011-11-18 09:06:40'),
 (98,98,'DCM 50ml',1.00,1.00,'2011-11-18 09:06:40'),
 (99,99,'Redbik 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (100,100,'Redbik 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (101,101,'TMPS Pig Doser 120ml',1.00,1.00,'2011-11-18 09:06:40'),
 (102,102,'Amtyl 500 100s',1.00,1.00,'2011-11-18 09:06:40'),
 (103,103,'Amtyl 500 (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (104,104,'B-50 Forteen 200s',1.00,1.00,'2011-11-18 09:06:40'),
 (105,105,'B-50 Forteen (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (106,106,'Belamyl 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (107,107,'Belamyl 20ml',1.00,1.00,'2011-11-18 09:06:40'),
 (108,108,'Belamyl 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (109,109,'Belamyl 50ml',1.00,1.00,'2011-11-18 09:06:40'),
 (110,110,'Calcium Lactate ',1.00,1.00,'2011-11-18 09:06:40'),
 (111,111,'Calcium Lactate (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (112,112,'Choramphenicol 500g ',1.00,1.00,'2011-11-18 09:06:40'),
 (113,113,'Choramphenicol 500g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (114,114,'Combinex 40g',1.00,1.00,'2011-11-18 09:06:40'),
 (115,115,'Combinex 86g',1.00,1.00,'2011-11-18 09:06:40'),
 (116,116,'Dextrolyte 100ml',1.00,1.00,'2011-11-18 09:06:40'),
 (117,117,'Disposable Syringe 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (118,118,'Disposable Syringe 5ml',1.00,1.00,'2011-11-18 09:06:40'),
 (119,119,'Disposable Syringe 3ml',1.00,1.00,'2011-11-18 09:06:40'),
 (120,120,'Disposable Syringe 2.5ml',1.00,1.00,'2011-11-18 09:06:40'),
 (121,121,'Disposable Syringe 1ml',1.00,1.00,'2011-11-18 09:06:40'),
 (122,122,'Doxylak Forte 7g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (123,123,'Doxylak Forte 7g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (124,124,'Electrolyte Proto-lyte 250ml',1.00,1.00,'2011-11-18 09:06:40'),
 (125,125,'Hammer 200s',1.00,1.00,'2011-11-18 09:06:40'),
 (126,126,'Hammer (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (127,127,'LDI-B12 100s',1.00,1.00,'2011-11-18 09:06:40'),
 (128,128,'LDI-B12 (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (129,129,'Multivitamins',1.00,1.00,'2011-11-18 09:06:40'),
 (130,130,'Multivitamins (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (131,131,'Nutridrench 15ml',1.00,1.00,'2011-11-18 09:06:40'),
 (132,132,'Trisulak 7g x 48',1.00,1.00,'2011-11-18 09:06:40'),
 (133,133,'Trisulak 7g (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (134,134,'Viminolak 100s',1.00,1.00,'2011-11-18 09:06:40'),
 (135,135,'Viminolak (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (136,136,'B-12 AAFEES',1.00,1.00,'2011-11-18 09:06:40'),
 (137,137,'Wormal 100s',1.00,1.00,'2011-11-18 09:06:40'),
 (138,138,'Wormal (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (139,139,'Complexor 3000 10ml',1.00,1.00,'2011-11-18 09:06:40'),
 (140,140,'Pusham 10ml x 30',1.00,1.00,'2011-11-18 09:06:40'),
 (141,141,'Pusham 10ml (pcs)',1.00,1.00,'2011-11-18 09:06:40'),
 (142,142,'Tiki-Tiki',1.00,10.00,'2011-11-18 09:06:40'),
 (143,143,'FCP',1.00,1.00,'2011-11-18 09:06:40'),
 (144,144,'FCC',3.00,3.00,'2011-11-18 09:06:40'),
 (145,145,'KOI',15.00,15.00,'2011-11-18 09:06:40'),
 (146,146,'Fine Corn',6.00,32.00,'2011-11-18 09:06:40'),
 (147,147,'RFG',11.00,0.00,'2011-11-18 09:06:40'),
 (148,148,'FRYBOOSTER',3.00,0.00,'2011-11-18 09:06:40'),
 (149,149,'Slashertone',1.00,2.00,'2011-11-18 09:06:40'),
 (256,1,'CBM',8.00,8.00,'2011-11-18 09:08:55'),
 (257,2,'CSM',3.00,3.00,'2011-11-18 09:08:55'),
 (258,3,'CGM',28.00,28.00,'2011-11-18 09:08:55'),
 (259,4,'CLM',18.00,18.00,'2011-11-18 09:08:55'),
 (260,5,'BSC',10.00,10.00,'2011-11-18 09:08:55'),
 (261,6,'BFC',23.00,23.00,'2011-11-18 09:08:55'),
 (262,7,'Milko Plus',1.00,12.00,'2011-11-18 09:08:55'),
 (263,8,'NSP',99.00,99.00,'2011-11-18 09:08:55'),
 (264,9,'NGP',168.00,168.00,'2011-11-18 09:08:55'),
 (265,10,'NBP',155.00,155.00,'2011-11-18 09:08:55'),
 (266,11,'PSP',79.00,79.00,'2011-11-18 09:08:55'),
 (267,12,'LSP',54.00,54.00,'2011-11-18 09:08:55'),
 (268,13,'PGP',1.00,1.00,'2011-11-18 09:08:55'),
 (269,14,'PGR',3.00,3.00,'2011-11-18 09:08:55'),
 (270,15,'NLB',16.00,16.00,'2011-11-18 09:08:55'),
 (271,16,'NLB-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (272,17,'NLP',40.00,40.00,'2011-11-18 09:08:55'),
 (273,18,'NLP-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (274,19,'HSC',7.00,7.00,'2011-11-18 09:08:55'),
 (275,20,'HGP',20.00,20.00,'2011-11-18 09:08:55'),
 (276,21,'HFP',14.00,14.00,'2011-11-18 09:08:55'),
 (277,22,'PDP (s)',31.00,31.00,'2011-11-18 09:08:55'),
 (278,23,'PDP (o)',34.00,34.00,'2011-11-18 09:08:55'),
 (279,24,'7 Kinds',12.00,12.00,'2011-11-18 09:08:55'),
 (280,25,'Slasher',6.00,6.00,'2011-11-18 09:08:55'),
 (281,26,'C-Corn',32.00,32.00,'2011-11-18 09:08:55'),
 (282,27,'Christine',30.00,30.00,'2011-11-18 09:08:55'),
 (283,28,'RED RICE',22.00,22.00,'2011-11-18 09:08:55'),
 (284,29,'Royal Crown',194.00,194.00,'2011-11-18 09:08:55'),
 (285,30,'Honey ',118.00,118.00,'2011-11-18 09:08:55'),
 (286,31,'THB Booster',1.00,1.00,'2011-11-18 09:08:55'),
 (287,32,'THB Booster-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (288,33,'THB Developer',6.00,6.00,'2011-11-18 09:08:55'),
 (289,34,'THB Developer-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (290,35,'THB Enertone',1.00,1.00,'2011-11-18 09:08:55'),
 (291,36,'THB Enertone-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (292,37,'THB Platinum',6.00,6.00,'2011-11-18 09:08:55'),
 (293,38,'THB Platinum-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (294,39,'THB Hi-Protein',1.00,1.00,'2011-11-18 09:08:55'),
 (295,40,'THB Hi-Protein-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (296,41,'THB Successor',1.00,1.00,'2011-11-18 09:08:55'),
 (297,42,'THB Successor-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (298,43,'THB Multigrain',1.00,1.00,'2011-11-18 09:08:55'),
 (299,44,'THB Multigrain-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (300,45,'THB Hi-Lander',1.00,1.00,'2011-11-18 09:08:55'),
 (301,46,'THB Hi-Lander-pack',1.00,1.00,'2011-11-18 09:08:55'),
 (302,47,'FRYMASH',10.00,10.00,'2011-11-18 09:08:55'),
 (303,48,'PBC',5.00,5.00,'2011-11-18 09:08:55'),
 (304,49,'PBS',1.00,1.00,'2011-11-18 09:08:55'),
 (305,50,'PBG',4.00,4.00,'2011-11-18 09:08:55'),
 (306,51,'PBF',5.00,5.00,'2011-11-18 09:08:55'),
 (307,52,'SBS',23.00,23.00,'2011-11-18 09:08:55'),
 (308,53,'SBG',1.00,1.00,'2011-11-18 09:08:55'),
 (309,54,'SBF',1.00,1.00,'2011-11-18 09:08:55'),
 (310,55,'Apralyte 6g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (311,56,'Apralyte 6g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (312,57,'Bacterid 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (313,58,'Bacterid 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (314,59,'Baxidil SE 6g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (315,60,'Baxidil SE 6g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (316,61,'Baxidil 7g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (317,62,'Baxidil 7g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (318,63,'Bexan SP 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (319,64,'Bexan SP 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (320,65,'Bexan SP 20ml',1.00,1.00,'2011-11-18 09:08:55'),
 (321,66,'Bexan XP 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (322,67,'Bexan XP 20ml',1.00,1.00,'2011-11-18 09:08:55'),
 (323,68,'Bexan XP 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (324,69,'Electrogen D+ 20g x 12',1.00,1.00,'2011-11-18 09:08:55'),
 (325,70,'Electrogen D+ 20g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (326,71,'Jectran Premium 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (327,72,'Jectran Premium 20ml',1.00,1.00,'2011-11-18 09:08:55'),
 (328,73,'Jectran Premium 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (329,74,'Latigo 1000 SD 5g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (330,75,'Latigo 1000 SD 5g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (331,76,'Latigo 1000 MD 10g x 24',1.00,1.00,'2011-11-18 09:08:55'),
 (332,77,'Latigo 1000 MD 10g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (333,78,'Major D 20ml x 30',1.00,1.00,'2011-11-18 09:08:55'),
 (334,79,'Major D 20ml (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (335,80,'Mammavet 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (336,81,'Mammavet 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (337,82,'Sustalin LA 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (338,83,'Sustalin LA 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (339,84,'Vetracin Classic 5g x 48 ',1.00,1.00,'2011-11-18 09:08:55'),
 (340,85,'Vetracin Classic 5g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (341,86,'Vetracin Gold 5g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (342,87,'Vetracin Gold 5g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (343,88,'Vetracin Gold Capsule',1.00,1.00,'2011-11-18 09:08:55'),
 (344,89,'Vetracin Gold Capsule (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (345,90,'Vetracin Premium 5g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (346,91,'Vetracin Premium 5g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (347,92,'Viton-500 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (348,93,'Cecical 200g',1.00,1.00,'2011-11-18 09:08:55'),
 (349,94,'Pidro 2.4g x 50',1.00,1.00,'2011-11-18 09:08:55'),
 (350,95,'Pidro 2.4g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (351,96,'V-22 200g',1.00,1.00,'2011-11-18 09:08:55'),
 (352,97,'V-22 Tablet 100 ',1.00,1.00,'2011-11-18 09:08:55'),
 (353,98,'DCM 50ml',1.00,1.00,'2011-11-18 09:08:55'),
 (354,99,'Redbik 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (355,100,'Redbik 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (356,101,'TMPS Pig Doser 120ml',1.00,1.00,'2011-11-18 09:08:55'),
 (357,102,'Amtyl 500 100s',1.00,1.00,'2011-11-18 09:08:55'),
 (358,103,'Amtyl 500 (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (359,104,'B-50 Forteen 200s',1.00,1.00,'2011-11-18 09:08:55'),
 (360,105,'B-50 Forteen (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (361,106,'Belamyl 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (362,107,'Belamyl 20ml',1.00,1.00,'2011-11-18 09:08:55'),
 (363,108,'Belamyl 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (364,109,'Belamyl 50ml',1.00,1.00,'2011-11-18 09:08:55'),
 (365,110,'Calcium Lactate ',1.00,1.00,'2011-11-18 09:08:55'),
 (366,111,'Calcium Lactate (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (367,112,'Choramphenicol 500g ',1.00,1.00,'2011-11-18 09:08:55'),
 (368,113,'Choramphenicol 500g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (369,114,'Combinex 40g',1.00,1.00,'2011-11-18 09:08:55'),
 (370,115,'Combinex 86g',1.00,1.00,'2011-11-18 09:08:55'),
 (371,116,'Dextrolyte 100ml',1.00,1.00,'2011-11-18 09:08:55'),
 (372,117,'Disposable Syringe 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (373,118,'Disposable Syringe 5ml',1.00,1.00,'2011-11-18 09:08:55'),
 (374,119,'Disposable Syringe 3ml',1.00,1.00,'2011-11-18 09:08:55'),
 (375,120,'Disposable Syringe 2.5ml',1.00,1.00,'2011-11-18 09:08:55'),
 (376,121,'Disposable Syringe 1ml',1.00,1.00,'2011-11-18 09:08:55'),
 (377,122,'Doxylak Forte 7g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (378,123,'Doxylak Forte 7g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (379,124,'Electrolyte Proto-lyte 250ml',1.00,1.00,'2011-11-18 09:08:55'),
 (380,125,'Hammer 200s',1.00,1.00,'2011-11-18 09:08:55'),
 (381,126,'Hammer (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (382,127,'LDI-B12 100s',1.00,1.00,'2011-11-18 09:08:55'),
 (383,128,'LDI-B12 (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (384,129,'Multivitamins',1.00,1.00,'2011-11-18 09:08:55'),
 (385,130,'Multivitamins (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (386,131,'Nutridrench 15ml',1.00,1.00,'2011-11-18 09:08:55'),
 (387,132,'Trisulak 7g x 48',1.00,1.00,'2011-11-18 09:08:55'),
 (388,133,'Trisulak 7g (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (389,134,'Viminolak 100s',1.00,1.00,'2011-11-18 09:08:55'),
 (390,135,'Viminolak (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (391,136,'B-12 AAFEES',1.00,1.00,'2011-11-18 09:08:55'),
 (392,137,'Wormal 100s',1.00,1.00,'2011-11-18 09:08:55'),
 (393,138,'Wormal (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (394,139,'Complexor 3000 10ml',1.00,1.00,'2011-11-18 09:08:55'),
 (395,140,'Pusham 10ml x 30',1.00,1.00,'2011-11-18 09:08:55'),
 (396,141,'Pusham 10ml (pcs)',1.00,1.00,'2011-11-18 09:08:55'),
 (397,142,'Tiki-Tiki',1.00,1.00,'2011-11-18 09:08:55'),
 (398,143,'FCP',1.00,1.00,'2011-11-18 09:08:55'),
 (399,144,'FCC',3.00,3.00,'2011-11-18 09:08:55'),
 (400,145,'KOI',15.00,15.00,'2011-11-18 09:08:55'),
 (401,146,'Fine Corn',6.00,6.00,'2011-11-18 09:08:55'),
 (402,147,'RFG',11.00,11.00,'2011-11-18 09:08:55'),
 (403,148,'FRYBOOSTER',3.00,3.00,'2011-11-18 09:08:55'),
 (404,149,'Slashertone',1.00,1.00,'2011-11-18 09:08:55'),
 (405,1,'CBM',8.00,8.00,'2011-11-18 20:54:07'),
 (406,2,'CSM',3.00,3.00,'2011-11-18 20:54:07'),
 (407,3,'CGM',28.00,28.00,'2011-11-18 20:54:07'),
 (408,4,'CLM',18.00,16.00,'2011-11-18 20:54:07'),
 (409,5,'BSC',10.00,10.00,'2011-11-18 20:54:07'),
 (410,6,'BFC',23.00,20.00,'2011-11-18 20:54:07'),
 (411,7,'Milko Plus',12.00,12.00,'2011-11-18 20:54:07'),
 (412,8,'NSP',99.00,95.00,'2011-11-18 20:54:07'),
 (413,9,'NGP',168.00,153.00,'2011-11-18 20:54:07'),
 (414,10,'NBP',155.00,148.00,'2011-11-18 20:54:07'),
 (415,11,'PSP',79.00,79.00,'2011-11-18 20:54:07'),
 (416,12,'LSP',54.00,54.00,'2011-11-18 20:54:07'),
 (417,13,'PGP',1.00,1.00,'2011-11-18 20:54:07'),
 (418,14,'PGR',3.00,3.00,'2011-11-18 20:54:07'),
 (419,15,'NLB',16.00,16.00,'2011-11-18 20:54:07'),
 (420,16,'NLB-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (421,17,'NLP',40.00,40.00,'2011-11-18 20:54:07'),
 (422,18,'NLP-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (423,19,'HSC',7.00,7.00,'2011-11-18 20:54:07'),
 (424,20,'HGP',20.00,20.00,'2011-11-18 20:54:07'),
 (425,21,'HFP',14.00,14.00,'2011-11-18 20:54:07'),
 (426,22,'PDP (s)',31.00,31.00,'2011-11-18 20:54:07'),
 (427,23,'PDP (o)',34.00,34.00,'2011-11-18 20:54:07'),
 (428,24,'7 Kinds',12.00,12.00,'2011-11-18 20:54:07'),
 (429,25,'Slasher',6.00,6.00,'2011-11-18 20:54:07'),
 (430,26,'C-Corn',32.00,32.00,'2011-11-18 20:54:07'),
 (431,27,'Christine',30.00,15.00,'2011-11-18 20:54:07'),
 (432,28,'RED RICE',22.00,14.00,'2011-11-18 20:54:07'),
 (433,29,'Royal Crown',194.00,194.00,'2011-11-18 20:54:07'),
 (434,30,'Honey ',118.00,116.00,'2011-11-18 20:54:07'),
 (435,31,'THB Booster',1.00,1.00,'2011-11-18 20:54:07'),
 (436,32,'THB Booster-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (437,33,'THB Developer',6.00,6.00,'2011-11-18 20:54:07'),
 (438,34,'THB Developer-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (439,35,'THB Enertone',1.00,1.00,'2011-11-18 20:54:07'),
 (440,36,'THB Enertone-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (441,37,'THB Platinum',6.00,6.00,'2011-11-18 20:54:07'),
 (442,38,'THB Platinum-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (443,39,'THB Hi-Protein',1.00,1.00,'2011-11-18 20:54:07'),
 (444,40,'THB Hi-Protein-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (445,41,'THB Successor',1.00,1.00,'2011-11-18 20:54:07'),
 (446,42,'THB Successor-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (447,43,'THB Multigrain',1.00,1.00,'2011-11-18 20:54:07'),
 (448,44,'THB Multigrain-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (449,45,'THB Hi-Lander',1.00,1.00,'2011-11-18 20:54:07'),
 (450,46,'THB Hi-Lander-pack',1.00,1.00,'2011-11-18 20:54:07'),
 (451,47,'FRYMASH',10.00,10.00,'2011-11-18 20:54:07'),
 (452,48,'PBC',5.00,5.00,'2011-11-18 20:54:07'),
 (453,49,'PBS',1.00,1.00,'2011-11-18 20:54:07'),
 (454,50,'PBG',4.00,4.00,'2011-11-18 20:54:07'),
 (455,51,'PBF',5.00,5.00,'2011-11-18 20:54:07'),
 (456,52,'SBS',23.00,23.00,'2011-11-18 20:54:07'),
 (457,53,'SBG',1.00,1.00,'2011-11-18 20:54:07'),
 (458,54,'SBF',1.00,1.00,'2011-11-18 20:54:07'),
 (459,55,'Apralyte 6g x 48',1.00,1.00,'2011-11-18 20:54:07'),
 (460,56,'Apralyte 6g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (461,57,'Bacterid 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (462,58,'Bacterid 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (463,59,'Baxidil SE 6g x 48',1.00,1.00,'2011-11-18 20:54:07'),
 (464,60,'Baxidil SE 6g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (465,61,'Baxidil 7g x 48',1.00,1.00,'2011-11-18 20:54:07'),
 (466,62,'Baxidil 7g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (467,63,'Bexan SP 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (468,64,'Bexan SP 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (469,65,'Bexan SP 20ml',1.00,1.00,'2011-11-18 20:54:07'),
 (470,66,'Bexan XP 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (471,67,'Bexan XP 20ml',1.00,1.00,'2011-11-18 20:54:07'),
 (472,68,'Bexan XP 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (473,69,'Electrogen D+ 20g x 12',1.00,1.00,'2011-11-18 20:54:07'),
 (474,70,'Electrogen D+ 20g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (475,71,'Jectran Premium 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (476,72,'Jectran Premium 20ml',1.00,1.00,'2011-11-18 20:54:07'),
 (477,73,'Jectran Premium 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (478,74,'Latigo 1000 SD 5g x 48',1.00,1.00,'2011-11-18 20:54:07'),
 (479,75,'Latigo 1000 SD 5g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (480,76,'Latigo 1000 MD 10g x 24',1.00,1.00,'2011-11-18 20:54:07'),
 (481,77,'Latigo 1000 MD 10g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (482,78,'Major D 20ml x 30',1.00,1.00,'2011-11-18 20:54:07'),
 (483,79,'Major D 20ml (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (484,80,'Mammavet 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (485,81,'Mammavet 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (486,82,'Sustalin LA 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (487,83,'Sustalin LA 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (488,84,'Vetracin Classic 5g x 48 ',1.00,1.00,'2011-11-18 20:54:07'),
 (489,85,'Vetracin Classic 5g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (490,86,'Vetracin Gold 5g x 48',1.00,0.00,'2011-11-18 20:54:07'),
 (491,87,'Vetracin Gold 5g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (492,88,'Vetracin Gold Capsule',1.00,1.00,'2011-11-18 20:54:07'),
 (493,89,'Vetracin Gold Capsule (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (494,90,'Vetracin Premium 5g x 48',1.00,1.00,'2011-11-18 20:54:07'),
 (495,91,'Vetracin Premium 5g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (496,92,'Viton-500 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (497,93,'Cecical 200g',1.00,1.00,'2011-11-18 20:54:07'),
 (498,94,'Pidro 2.4g x 50',1.00,1.00,'2011-11-18 20:54:07'),
 (499,95,'Pidro 2.4g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (500,96,'V-22 200g',1.00,1.00,'2011-11-18 20:54:07'),
 (501,97,'V-22 Tablet 100 ',1.00,1.00,'2011-11-18 20:54:07'),
 (502,98,'DCM 50ml',1.00,1.00,'2011-11-18 20:54:07'),
 (503,99,'Redbik 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (504,100,'Redbik 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (505,101,'TMPS Pig Doser 120ml',1.00,1.00,'2011-11-18 20:54:07'),
 (506,102,'Amtyl 500 100s',1.00,1.00,'2011-11-18 20:54:07'),
 (507,103,'Amtyl 500 (pcs)',1.00,-29.00,'2011-11-18 20:54:07'),
 (508,104,'B-50 Forteen 200s',1.00,1.00,'2011-11-18 20:54:07'),
 (509,105,'B-50 Forteen (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (510,106,'Belamyl 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (511,107,'Belamyl 20ml',1.00,1.00,'2011-11-18 20:54:07'),
 (512,108,'Belamyl 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (513,109,'Belamyl 50ml',1.00,1.00,'2011-11-18 20:54:07'),
 (514,110,'Calcium Lactate ',1.00,1.00,'2011-11-18 20:54:07'),
 (515,111,'Calcium Lactate (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (516,112,'Choramphenicol 500g ',1.00,1.00,'2011-11-18 20:54:07'),
 (517,113,'Choramphenicol 500g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (518,114,'Combinex 40g',1.00,1.00,'2011-11-18 20:54:07'),
 (519,115,'Combinex 86g',1.00,1.00,'2011-11-18 20:54:07'),
 (520,116,'Dextrolyte 100ml',1.00,1.00,'2011-11-18 20:54:07'),
 (521,117,'Disposable Syringe 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (522,118,'Disposable Syringe 5ml',1.00,1.00,'2011-11-18 20:54:07'),
 (523,119,'Disposable Syringe 3ml',1.00,1.00,'2011-11-18 20:54:07'),
 (524,120,'Disposable Syringe 2.5ml',1.00,1.00,'2011-11-18 20:54:07'),
 (525,121,'Disposable Syringe 1ml',1.00,1.00,'2011-11-18 20:54:07'),
 (526,122,'Doxylak Forte 7g x 48',1.00,1.00,'2011-11-18 20:54:07'),
 (527,123,'Doxylak Forte 7g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (528,124,'Electrolyte Proto-lyte 250ml',1.00,1.00,'2011-11-18 20:54:07'),
 (529,125,'Hammer 200s',1.00,1.00,'2011-11-18 20:54:07'),
 (530,126,'Hammer (pcs)',1.00,-19.00,'2011-11-18 20:54:07'),
 (531,127,'LDI-B12 100s',1.00,1.00,'2011-11-18 20:54:07'),
 (532,128,'LDI-B12 (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (533,129,'Multivitamins',1.00,1.00,'2011-11-18 20:54:07'),
 (534,130,'Multivitamins (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (535,131,'Nutridrench 15ml',1.00,1.00,'2011-11-18 20:54:07'),
 (536,132,'Trisulak 7g x 48',1.00,1.00,'2011-11-18 20:54:07'),
 (537,133,'Trisulak 7g (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (538,134,'Viminolak 100s',1.00,1.00,'2011-11-18 20:54:07'),
 (539,135,'Viminolak (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (540,136,'B-12 AAFEES',1.00,1.00,'2011-11-18 20:54:07'),
 (541,137,'Wormal 100s',1.00,1.00,'2011-11-18 20:54:07'),
 (542,138,'Wormal (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (543,139,'Complexor 3000 10ml',1.00,1.00,'2011-11-18 20:54:07'),
 (544,140,'Pusham 10ml x 30',1.00,1.00,'2011-11-18 20:54:07'),
 (545,141,'Pusham 10ml (pcs)',1.00,1.00,'2011-11-18 20:54:07'),
 (546,142,'Tiki-Tiki',1.00,-7.00,'2011-11-18 20:54:07'),
 (547,143,'FCP',1.00,1.00,'2011-11-18 20:54:07'),
 (548,144,'FCC',3.00,3.00,'2011-11-18 20:54:07'),
 (549,145,'KOI',15.00,15.00,'2011-11-18 20:54:07'),
 (550,146,'Fine Corn',6.00,6.00,'2011-11-18 20:54:07'),
 (551,147,'RFG',11.00,11.00,'2011-11-18 20:54:07'),
 (552,148,'FRYBOOSTER',3.00,3.00,'2011-11-18 20:54:07'),
 (553,149,'Slashertone',1.00,1.00,'2011-11-18 20:54:07'),
 (660,1,'CBM',8.00,8.00,'2011-11-18 20:54:10'),
 (661,2,'CSM',3.00,3.00,'2011-11-18 20:54:10'),
 (662,3,'CGM',28.00,28.00,'2011-11-18 20:54:10'),
 (663,4,'CLM',16.00,16.00,'2011-11-18 20:54:10'),
 (664,5,'BSC',10.00,10.00,'2011-11-18 20:54:10'),
 (665,6,'BFC',20.00,20.00,'2011-11-18 20:54:10'),
 (666,7,'Milko Plus',12.00,12.00,'2011-11-18 20:54:10'),
 (667,8,'NSP',95.00,95.00,'2011-11-18 20:54:10'),
 (668,9,'NGP',153.00,153.00,'2011-11-18 20:54:10'),
 (669,10,'NBP',148.00,148.00,'2011-11-18 20:54:10'),
 (670,11,'PSP',79.00,79.00,'2011-11-18 20:54:10'),
 (671,12,'LSP',54.00,54.00,'2011-11-18 20:54:10'),
 (672,13,'PGP',1.00,1.00,'2011-11-18 20:54:10'),
 (673,14,'PGR',3.00,3.00,'2011-11-18 20:54:10'),
 (674,15,'NLB',16.00,16.00,'2011-11-18 20:54:10'),
 (675,16,'NLB-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (676,17,'NLP',40.00,40.00,'2011-11-18 20:54:10'),
 (677,18,'NLP-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (678,19,'HSC',7.00,7.00,'2011-11-18 20:54:10'),
 (679,20,'HGP',20.00,20.00,'2011-11-18 20:54:10'),
 (680,21,'HFP',14.00,14.00,'2011-11-18 20:54:10'),
 (681,22,'PDP (s)',31.00,31.00,'2011-11-18 20:54:10'),
 (682,23,'PDP (o)',34.00,34.00,'2011-11-18 20:54:10'),
 (683,24,'7 Kinds',12.00,12.00,'2011-11-18 20:54:10'),
 (684,25,'Slasher',6.00,6.00,'2011-11-18 20:54:10'),
 (685,26,'C-Corn',32.00,32.00,'2011-11-18 20:54:10'),
 (686,27,'Christine',15.00,15.00,'2011-11-18 20:54:10'),
 (687,28,'RED RICE',14.00,14.00,'2011-11-18 20:54:10'),
 (688,29,'Royal Crown',194.00,194.00,'2011-11-18 20:54:10'),
 (689,30,'Honey ',116.00,116.00,'2011-11-18 20:54:10'),
 (690,31,'THB Booster',1.00,1.00,'2011-11-18 20:54:10'),
 (691,32,'THB Booster-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (692,33,'THB Developer',6.00,6.00,'2011-11-18 20:54:10'),
 (693,34,'THB Developer-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (694,35,'THB Enertone',1.00,1.00,'2011-11-18 20:54:10'),
 (695,36,'THB Enertone-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (696,37,'THB Platinum',6.00,6.00,'2011-11-18 20:54:10'),
 (697,38,'THB Platinum-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (698,39,'THB Hi-Protein',1.00,1.00,'2011-11-18 20:54:10'),
 (699,40,'THB Hi-Protein-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (700,41,'THB Successor',1.00,1.00,'2011-11-18 20:54:10'),
 (701,42,'THB Successor-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (702,43,'THB Multigrain',1.00,1.00,'2011-11-18 20:54:10'),
 (703,44,'THB Multigrain-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (704,45,'THB Hi-Lander',1.00,1.00,'2011-11-18 20:54:10'),
 (705,46,'THB Hi-Lander-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (706,47,'FRYMASH',10.00,10.00,'2011-11-18 20:54:10'),
 (707,48,'PBC',5.00,5.00,'2011-11-18 20:54:10'),
 (708,49,'PBS',1.00,1.00,'2011-11-18 20:54:10'),
 (709,50,'PBG',4.00,4.00,'2011-11-18 20:54:10'),
 (710,51,'PBF',5.00,5.00,'2011-11-18 20:54:10'),
 (711,52,'SBS',23.00,23.00,'2011-11-18 20:54:10'),
 (712,53,'SBG',1.00,1.00,'2011-11-18 20:54:10'),
 (713,54,'SBF',1.00,1.00,'2011-11-18 20:54:10'),
 (714,55,'Apralyte 6g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (715,56,'Apralyte 6g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (716,57,'Bacterid 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (717,58,'Bacterid 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (718,59,'Baxidil SE 6g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (719,60,'Baxidil SE 6g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (720,61,'Baxidil 7g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (721,62,'Baxidil 7g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (722,63,'Bexan SP 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (723,64,'Bexan SP 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (724,65,'Bexan SP 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (725,66,'Bexan XP 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (726,67,'Bexan XP 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (727,68,'Bexan XP 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (728,69,'Electrogen D+ 20g x 12',1.00,1.00,'2011-11-18 20:54:10'),
 (729,70,'Electrogen D+ 20g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (730,71,'Jectran Premium 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (731,72,'Jectran Premium 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (732,73,'Jectran Premium 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (733,74,'Latigo 1000 SD 5g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (734,75,'Latigo 1000 SD 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (735,76,'Latigo 1000 MD 10g x 24',1.00,1.00,'2011-11-18 20:54:10'),
 (736,77,'Latigo 1000 MD 10g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (737,78,'Major D 20ml x 30',1.00,1.00,'2011-11-18 20:54:10'),
 (738,79,'Major D 20ml (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (739,80,'Mammavet 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (740,81,'Mammavet 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (741,82,'Sustalin LA 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (742,83,'Sustalin LA 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (743,84,'Vetracin Classic 5g x 48 ',1.00,1.00,'2011-11-18 20:54:10'),
 (744,85,'Vetracin Classic 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (745,86,'Vetracin Gold 5g x 48',0.00,0.00,'2011-11-18 20:54:10'),
 (746,87,'Vetracin Gold 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (747,88,'Vetracin Gold Capsule',1.00,1.00,'2011-11-18 20:54:10'),
 (748,89,'Vetracin Gold Capsule (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (749,90,'Vetracin Premium 5g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (750,91,'Vetracin Premium 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (751,92,'Viton-500 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (752,93,'Cecical 200g',1.00,1.00,'2011-11-18 20:54:10'),
 (753,94,'Pidro 2.4g x 50',1.00,1.00,'2011-11-18 20:54:10'),
 (754,95,'Pidro 2.4g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (755,96,'V-22 200g',1.00,1.00,'2011-11-18 20:54:10'),
 (756,97,'V-22 Tablet 100 ',1.00,1.00,'2011-11-18 20:54:10'),
 (757,98,'DCM 50ml',1.00,1.00,'2011-11-18 20:54:10'),
 (758,99,'Redbik 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (759,100,'Redbik 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (760,101,'TMPS Pig Doser 120ml',1.00,1.00,'2011-11-18 20:54:10'),
 (761,102,'Amtyl 500 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (762,103,'Amtyl 500 (pcs)',-29.00,-29.00,'2011-11-18 20:54:10'),
 (763,104,'B-50 Forteen 200s',1.00,1.00,'2011-11-18 20:54:10'),
 (764,105,'B-50 Forteen (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (765,106,'Belamyl 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (766,107,'Belamyl 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (767,108,'Belamyl 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (768,109,'Belamyl 50ml',1.00,1.00,'2011-11-18 20:54:10'),
 (769,110,'Calcium Lactate ',1.00,1.00,'2011-11-18 20:54:10'),
 (770,111,'Calcium Lactate (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (771,112,'Choramphenicol 500g ',1.00,1.00,'2011-11-18 20:54:10'),
 (772,113,'Choramphenicol 500g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (773,114,'Combinex 40g',1.00,1.00,'2011-11-18 20:54:10'),
 (774,115,'Combinex 86g',1.00,1.00,'2011-11-18 20:54:10'),
 (775,116,'Dextrolyte 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (776,117,'Disposable Syringe 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (777,118,'Disposable Syringe 5ml',1.00,1.00,'2011-11-18 20:54:10'),
 (778,119,'Disposable Syringe 3ml',1.00,1.00,'2011-11-18 20:54:10'),
 (779,120,'Disposable Syringe 2.5ml',1.00,1.00,'2011-11-18 20:54:10'),
 (780,121,'Disposable Syringe 1ml',1.00,1.00,'2011-11-18 20:54:10'),
 (781,122,'Doxylak Forte 7g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (782,123,'Doxylak Forte 7g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (783,124,'Electrolyte Proto-lyte 250ml',1.00,1.00,'2011-11-18 20:54:10'),
 (784,125,'Hammer 200s',1.00,1.00,'2011-11-18 20:54:10'),
 (785,126,'Hammer (pcs)',-19.00,-19.00,'2011-11-18 20:54:10'),
 (786,127,'LDI-B12 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (787,128,'LDI-B12 (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (788,129,'Multivitamins',1.00,1.00,'2011-11-18 20:54:10'),
 (789,130,'Multivitamins (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (790,131,'Nutridrench 15ml',1.00,1.00,'2011-11-18 20:54:10'),
 (791,132,'Trisulak 7g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (792,133,'Trisulak 7g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (793,134,'Viminolak 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (794,135,'Viminolak (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (795,136,'B-12 AAFEES',1.00,1.00,'2011-11-18 20:54:10'),
 (796,137,'Wormal 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (797,138,'Wormal (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (798,139,'Complexor 3000 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (799,140,'Pusham 10ml x 30',1.00,1.00,'2011-11-18 20:54:10'),
 (800,141,'Pusham 10ml (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (801,142,'Tiki-Tiki',-7.00,-7.00,'2011-11-18 20:54:10'),
 (802,143,'FCP',1.00,1.00,'2011-11-18 20:54:10'),
 (803,144,'FCC',3.00,3.00,'2011-11-18 20:54:10'),
 (804,145,'KOI',15.00,15.00,'2011-11-18 20:54:10'),
 (805,146,'Fine Corn',6.00,6.00,'2011-11-18 20:54:10'),
 (806,147,'RFG',11.00,11.00,'2011-11-18 20:54:10'),
 (807,148,'FRYBOOSTER',3.00,3.00,'2011-11-18 20:54:10'),
 (808,149,'Slashertone',1.00,1.00,'2011-11-18 20:54:10');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;


--
-- Definition of table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category` (
  `item_code` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_category`
--

/*!40000 ALTER TABLE `item_category` DISABLE KEYS */;
INSERT INTO `item_category` (`item_code`,`category`) VALUES 
 ('Red Rice','rice'),
 ('CBM','feeds'),
 ('CSM','feeds'),
 ('CGM','feeds'),
 ('CLM','feeds'),
 ('BSC','feeds'),
 ('BFC','feeds'),
 ('Milko Plus','feeds'),
 ('NBP','feeds'),
 ('PSP','feeds'),
 ('LSP','feeds'),
 ('PGP','feeds'),
 ('PGR','feeds'),
 ('NLB','feeds'),
 ('NLB-pack','feeds'),
 ('NLP','feeds'),
 ('NLP-pack','feeds'),
 ('HSC','feeds'),
 ('HGP','feeds'),
 ('HFP','feeds'),
 ('PDP (s)','feeds'),
 ('PDP (o)','feeds'),
 ('7 Kinds','feeds'),
 ('Slasher','feeds'),
 ('C-Corn','feeds'),
 ('Christine','rice'),
 ('Royal Crown','rice'),
 ('Honey ','rice'),
 ('THB Booster','feeds'),
 ('THB Booster-pack','feeds'),
 ('THB Developer','feeds'),
 ('THB Developer-pack','feeds'),
 ('THB Enertone','feeds'),
 ('THB Enertone-pack','feeds'),
 ('THB Platinum','feeds'),
 ('THB Platinum-pack','feeds'),
 ('THB Hi-Protein','feeds'),
 ('THB Successor','feeds'),
 ('THB Successor-pack','feeds'),
 ('THB Multigrain','feeds'),
 ('THB Multigrain-pack','feeds'),
 ('THB Hi-Lander','feeds'),
 ('THB Hi-Lander-pack','feeds'),
 ('THB Hi-Protein-pack','feeds'),
 ('FRYMASH','fish'),
 ('PBC','fish'),
 ('PBS','fish'),
 ('PBG','fish'),
 ('PBF','fish'),
 ('SBS','fish'),
 ('SBG','fish'),
 ('SBF','fish'),
 ('Apralyte 6g x 48','medicine'),
 ('Apralyte 6g (pcs)','medicine'),
 ('Bacterid 100ml','medicine'),
 ('Bacterid 10ml',''),
 ('Baxidil SE 6g x 48','medicine'),
 ('Baxidil SE 6g (pcs)','medicine'),
 ('Baxidil 7g x 48','medicine'),
 ('Baxidil 7g (pcs)','medicine'),
 ('Bexan SP 100ml','medicine'),
 ('Bexan SP 10ml','medicine'),
 ('Bexan SP 20ml','medicine'),
 ('Bexan XP 100ml','medicine'),
 ('Bexan XP 20ml','medicine'),
 ('Bexan XP 10ml','medicine'),
 ('Viton-500 10ml','medicine'),
 ('Redbik 100ml','medicine'),
 ('Redbik 10ml','medicine'),
 ('TMPS Pig Doser 120ml','medicine'),
 ('Amtyl 500 100s','medicine'),
 ('Amtyl 500 (pcs)','medicine'),
 ('B-50 Forteen 200s','medicine'),
 ('B-50 Forteen (pcs)','medicine'),
 ('Belamyl 100ml','medicine'),
 ('Combinex 40g','medicine'),
 ('Electrolyte Proto-lyte 250ml','medicine'),
 ('Dextrolyte 100ml','medicine'),
 ('Electrogen D+ 20g x 12','medicine'),
 ('Electrogen D+ 20g (pcs)','medicine'),
 ('Jectran Premium 100ml','medicine'),
 ('Jectran Premium 20ml','medicine'),
 ('Jectran Premium 10ml','medicine'),
 ('Latigo 1000 SD 5g x 48','medicine'),
 ('Latigo 1000 SD 5g (pcs)','medicine'),
 ('Latigo 1000 MD 10g x 24','medicine'),
 ('Latigo 1000 MD 10g (pcs)','medicine'),
 ('Major D 20ml x 30','medicine'),
 ('Major D 20ml (pcs)','medicine'),
 ('Mammavet 100ml','medicine'),
 ('Mammavet 10ml','medicine'),
 ('Sustalin LA 100ml','medicine'),
 ('Sustalin LA 10ml','medicine'),
 ('Vetracin Classic 5g x 48 ','medicine'),
 ('Vetracin Classic 5g (pcs)','medicine'),
 ('Vetracin Gold 5g x 48','medicine'),
 ('Vetracin Gold 5g (pcs)','medicine'),
 ('Vetracin Gold Capsule','medicine'),
 ('Vetracin Gold Capsule (pcs)','medicine'),
 ('Vetracin Premium 5g x 48','medicine'),
 ('Vetracin Premium 5g (pcs)','medicine'),
 ('Cecical 200g','medicine'),
 ('Pidro 2.4g x 50','medicine'),
 ('Pidro 2.4g (pcs)','medicine'),
 ('V-22 200g','medicine'),
 ('V-22 Tablet 100 ',''),
 ('DCM 50ml','medicine'),
 ('Belamyl 20ml','medicine'),
 ('Belamyl 10ml','medicine'),
 ('Belamyl 50ml','medicine'),
 ('Calcium Lactate ',''),
 ('Calcium Lactate (pcs)','medicine'),
 ('Choramphenicol 500g ','medicine'),
 ('Choramphenicol 500g (pcs)','medicine'),
 ('Combinex 86g','medicine'),
 ('Disposable Syringe 10ml','medicine'),
 ('Disposable Syringe 5ml','medicine'),
 ('Disposable Syringe 3ml','medicine'),
 ('Disposable Syringe 2.5ml','medicine'),
 ('Disposable Syringe 1ml','medicine'),
 ('Doxylak Forte 7g x 48','medicine'),
 ('Doxylak Forte 7g (pcs)','medicine'),
 ('Hammer 200s','medicine'),
 ('Hammer (pcs)','medicine'),
 ('LDI-B12 100s','medicine'),
 ('LDI-B12 (pcs)','medicine'),
 ('Multivitamins','medicine'),
 ('Multivitamins (pcs)','medicine'),
 ('Nutridrench 15ml','medicine'),
 ('Trisulak 7g x 48','medicine'),
 ('Trisulak 7g (pcs)','medicine'),
 ('Viminolak 100s','medicine'),
 ('Viminolak (pcs)','medicine'),
 ('B-12 AAFEES','medicine'),
 ('Wormal 100s','medicine'),
 ('Wormal (pcs)','medicine'),
 ('Complexor 3000 10ml','medicine'),
 ('Pusham 10ml x 30','medicine'),
 ('Pusham 10ml (pcs)','medicine'),
 ('Tiki-Tiki','feeds'),
 ('NSP','feeds'),
 ('NGP','feeds'),
 ('FCP','feeds'),
 ('FCC','feeds'),
 ('KOI','fish'),
 ('Fine Corn','feeds'),
 ('RFG','fish'),
 ('FRYBOOSTER','fish'),
 ('Slashertone','feeds'),
 ('Vermex','medicine'),
 ('Vermex (pcs)','medicine');
/*!40000 ALTER TABLE `item_category` ENABLE KEYS */;


--
-- Definition of table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(45) NOT NULL,
  `item_qty` double(10,2) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `dealers_price` double(10,2) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `manufacturers_id` int(10) unsigned DEFAULT NULL,
  `reorder_point` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`item_id`,`item_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`item_id`,`item_code`,`item_qty`,`item_price`,`dealers_price`,`date_added`,`date_modified`,`manufacturers_id`,`reorder_point`) VALUES 
 (1,'CBM',8.00,670.00,660.00,'2011-11-14','2011-11-14',4,0),
 (2,'CSM',3.00,1190.00,1170.00,'2011-11-14','2011-11-14',4,0),
 (3,'CGM',28.00,1105.00,1085.00,'2011-11-14','2011-11-14',4,0),
 (4,'CLM',16.00,1165.00,1145.00,'2011-11-14','2011-11-14',4,0),
 (5,'BSC',10.00,1260.00,1240.00,'2011-11-14','2011-11-14',4,0),
 (6,'BFC',20.00,1195.00,1175.00,'2011-11-14','2011-11-14',4,0),
 (7,'Milko Plus',12.00,100.00,90.00,'2011-11-14','2011-11-14',4,0),
 (8,'NSP',95.00,1275.00,1255.00,'2011-11-14','2011-11-16',4,0),
 (9,'NGP',152.00,1155.00,1135.00,'2011-11-14','2011-11-16',4,0),
 (10,'NBP',148.00,1095.00,1075.00,'2011-11-14','2011-11-14',4,0),
 (11,'PSP',79.00,1085.00,1065.00,'2011-11-14','2011-11-14',4,0),
 (12,'LSP',54.00,1185.00,1165.00,'2011-11-14','2011-11-14',4,0),
 (13,'PGP',1.00,955.00,935.00,'2011-11-14','2011-11-14',4,0),
 (14,'PGR',3.00,1015.00,995.00,'2011-11-14','2011-11-14',4,0),
 (15,'NLB',16.00,1580.00,1580.00,'2011-11-14','2011-11-14',4,0),
 (16,'NLB-pack',1.00,64.00,63.20,'2011-11-14','2011-11-14',4,0),
 (17,'NLP',40.00,985.00,985.00,'2011-11-14','2011-11-14',4,0),
 (18,'NLP-pack',1.00,40.00,39.40,'2011-11-14','2011-11-14',4,0),
 (19,'HSC',7.00,1055.00,1035.00,'2011-11-14','2011-11-14',4,0),
 (20,'HGP',20.00,1010.00,990.00,'2011-11-14','2011-11-14',4,0),
 (21,'HFP',14.00,985.00,965.00,'2011-11-14','2011-11-14',4,0),
 (22,'PDP (s)',31.00,880.00,860.00,'2011-11-14','2011-11-14',4,0),
 (23,'PDP (o)',34.00,850.00,830.00,'2011-11-14','2011-11-14',4,0),
 (24,'7 Kinds',12.00,655.00,655.00,'2011-11-14','2011-11-14',4,0),
 (25,'Slasher',6.00,745.00,745.00,'2011-11-14','2011-11-14',4,0),
 (26,'C-Corn',32.00,700.00,700.00,'2011-11-14','2011-11-14',4,0),
 (27,'Christine',15.00,1470.00,1470.00,'2011-11-14','2011-11-14',6,0),
 (28,'RED RICE',14.00,1520.00,1520.00,'2011-11-14','2011-11-14',6,0),
 (29,'Royal Crown',194.00,1650.00,1650.00,'2011-11-14','2011-11-14',6,0),
 (30,'Honey ',116.00,1450.00,1450.00,'2011-11-14','2011-11-14',6,0),
 (31,'THB Booster',1.00,835.00,835.00,'2011-11-14','2011-11-14',8,0),
 (32,'THB Booster-pack',1.00,35.00,36.00,'2011-11-14','2011-11-14',8,0),
 (33,'THB Developer',6.00,810.00,810.00,'2011-11-14','2011-11-14',8,0),
 (34,'THB Developer-pack',1.00,35.00,33.75,'2011-11-14','2011-11-14',8,0),
 (35,'THB Enertone',1.00,675.00,675.00,'2011-11-14','2011-11-14',8,0),
 (36,'THB Enertone-pack',1.00,29.00,28.13,'2011-11-14','2011-11-14',8,0),
 (37,'THB Platinum',6.00,1110.00,1110.00,'2011-11-14','2011-11-14',8,0),
 (38,'THB Platinum-pack',1.00,48.00,46.25,'2011-11-14','2011-11-14',8,0),
 (39,'THB Hi-Protein',1.00,985.00,985.00,'2011-11-14','2011-11-14',8,0),
 (40,'THB Hi-Protein-pack',1.00,41.10,31.40,'2011-11-14','2011-11-14',8,0),
 (41,'THB Successor',1.00,740.00,740.00,'2011-11-14','2011-11-14',8,0),
 (42,'THB Successor-pack',1.00,31.50,30.80,'2011-11-14','2011-11-14',8,0),
 (43,'THB Multigrain',1.00,890.00,890.00,'2011-11-14','2011-11-14',8,0),
 (44,'THB Multigrain-pack',1.00,37.50,37.00,'2011-11-14','2011-11-14',8,0),
 (45,'THB Hi-Lander',1.00,595.00,595.00,'2011-11-14','2011-11-14',8,0),
 (46,'THB Hi-Lander-pack',1.00,27.00,24.80,'2011-11-14','2011-11-14',8,0),
 (47,'FRYMASH',10.00,320.00,320.00,'2011-11-14','2011-11-14',7,0),
 (48,'PBC',5.00,615.00,615.00,'2011-11-14','2011-11-14',7,0),
 (49,'PBS',1.00,595.00,595.00,'2011-11-14','2011-11-14',7,0),
 (50,'PBG',4.00,710.00,710.00,'2011-11-14','2011-11-14',7,0),
 (51,'PBF',5.00,705.00,705.00,'2011-11-14','2011-11-14',7,0),
 (52,'SBS',23.00,635.00,635.00,'2011-11-14','2011-11-14',7,0),
 (53,'SBG',1.00,755.00,755.00,'2011-11-14','2011-11-14',7,0),
 (54,'SBF',1.00,745.00,745.00,'2011-11-14','2011-11-14',7,0),
 (55,'Apralyte 6g x 48',1.00,910.00,819.00,'2011-11-14','2011-11-14',5,0),
 (56,'Apralyte 6g (pcs)',1.00,19.00,17.50,'2011-11-14','2011-11-14',5,0),
 (57,'Bacterid 100ml',1.00,850.00,765.00,'2011-11-14','2011-11-14',5,0),
 (58,'Bacterid 10ml',1.00,170.00,153.00,'2011-11-14','2011-11-14',5,0),
 (59,'Baxidil SE 6g x 48',1.00,740.00,666.00,'2011-11-14','2011-11-14',5,0),
 (60,'Baxidil SE 6g (pcs)',1.00,15.50,13.90,'2011-11-14','2011-11-14',5,0),
 (61,'Baxidil 7g x 48',1.00,655.00,589.50,'2011-11-14','2011-11-14',5,0),
 (62,'Baxidil 7g (pcs)',1.00,14.00,12.29,'2011-11-14','2011-11-14',5,0),
 (63,'Bexan SP 100ml',1.00,660.00,594.00,'2011-11-14','2011-11-14',5,0),
 (64,'Bexan SP 10ml',1.00,165.00,148.50,'2011-11-14','2011-11-14',5,0),
 (65,'Bexan SP 20ml',1.00,250.00,225.00,'2011-11-14','2011-11-14',5,0),
 (66,'Bexan XP 100ml',1.00,809.30,728.50,'2011-11-14','2011-11-14',5,0),
 (67,'Bexan XP 20ml',1.00,235.00,211.50,'2011-11-14','2011-11-14',5,0),
 (68,'Bexan XP 10ml',1.00,155.00,139.50,'2011-11-14','2011-11-14',5,0),
 (69,'Electrogen D+ 20g x 12',1.00,168.00,151.50,'2011-11-14','2011-11-15',5,0),
 (70,'Electrogen D+ 20g (pcs)',1.00,14.00,12.62,'2011-11-14','2011-11-15',5,0),
 (71,'Jectran Premium 100ml',1.00,500.00,450.00,'2011-11-14','2011-11-15',5,0),
 (72,'Jectran Premium 20ml',1.00,260.00,234.00,'2011-11-14','2011-11-15',5,0),
 (73,'Jectran Premium 10ml',1.00,185.00,166.50,'2011-11-14','2011-11-15',5,0),
 (74,'Latigo 1000 SD 5g x 48',1.00,252.00,227.00,'2011-11-14','2011-11-15',5,0),
 (75,'Latigo 1000 SD 5g (pcs)',1.00,6.00,4.75,'2011-11-14','2011-11-15',5,0),
 (76,'Latigo 1000 MD 10g x 24',1.00,744.00,669.60,'2011-11-14','2011-11-15',5,0),
 (77,'Latigo 1000 MD 10g (pcs)',1.00,31.00,27.90,'2011-11-14','2011-11-15',5,0),
 (78,'Major D 20ml x 30',1.00,600.00,540.00,'2011-11-14','2011-11-15',5,0),
 (79,'Major D 20ml (pcs)',1.00,20.00,18.00,'2011-11-14','2011-11-15',5,0),
 (80,'Mammavet 100ml',1.00,430.00,387.00,'2011-11-14','2011-11-15',5,0),
 (81,'Mammavet 10ml',1.00,85.00,76.50,'2011-11-14','2011-11-15',5,0),
 (82,'Sustalin LA 100ml',1.00,500.00,450.00,'2011-11-14','2011-11-15',5,0),
 (83,'Sustalin LA 10ml',1.00,130.00,117.00,'2011-11-14','2011-11-15',5,0),
 (84,'Vetracin Classic 5g x 48 ',1.00,576.00,518.50,'2011-11-15','2011-11-15',5,0),
 (85,'Vetracin Classic 5g (pcs)',1.00,12.00,11.00,'2011-11-15','2011-11-15',5,0),
 (86,'Vetracin Gold 5g x 48',0.00,960.00,864.00,'2011-11-15','2011-11-15',5,0),
 (87,'Vetracin Gold 5g (pcs)',1.00,22.00,18.00,'2011-11-15','2011-11-15',5,0),
 (88,'Vetracin Gold Capsule',1.00,700.00,630.00,'2011-11-15','2011-11-15',5,0),
 (89,'Vetracin Gold Capsule (pcs)',1.00,7.00,6.30,'2011-11-15','2011-11-15',5,0),
 (90,'Vetracin Premium 5g x 48',1.00,720.00,648.00,'2011-11-15','2011-11-15',5,0),
 (91,'Vetracin Premium 5g (pcs)',1.00,15.00,13.50,'2011-11-15','2011-11-15',5,0),
 (92,'Viton-500 10ml',1.00,90.00,85.50,'2011-11-15','2011-11-15',10,0),
 (93,'Cecical 200g',1.00,56.00,51.00,'2011-11-15','2011-11-15',9,0),
 (94,'Pidro 2.4g x 50',1.00,300.00,275.00,'2011-11-15','2011-11-15',9,0),
 (95,'Pidro 2.4g (pcs)',1.00,6.00,5.50,'2011-11-15','2011-11-15',9,0),
 (96,'V-22 200g',1.00,54.00,47.00,'2011-11-15','2011-11-15',9,0),
 (97,'V-22 Tablet 100 ',1.00,150.00,135.00,'2011-11-15','2011-11-15',9,0),
 (98,'DCM 50ml',1.00,114.00,103.00,'2011-11-15','2011-11-15',9,0),
 (99,'Redbik 100ml',1.00,467.00,467.00,'2011-11-15','2011-11-15',9,0),
 (100,'Redbik 10ml',1.00,136.00,136.00,'2011-11-15','2011-11-15',9,0),
 (101,'TMPS Pig Doser 120ml',1.00,238.00,238.00,'2011-11-15','2011-11-15',9,0),
 (102,'Amtyl 500 100s',1.00,1400.00,1350.00,'2011-11-15','2011-11-15',11,0),
 (103,'Amtyl 500 (pcs)',-29.00,14.00,13.50,'2011-11-15','2011-11-15',11,0),
 (104,'B-50 Forteen 200s',1.00,1000.00,900.00,'2011-11-15','2011-11-15',12,0),
 (105,'B-50 Forteen (pcs)',1.00,5.00,4.50,'2011-11-15','2011-11-15',12,0),
 (106,'Belamyl 100ml',1.00,1145.00,1100.00,'2011-11-15','2011-11-15',5,0),
 (107,'Belamyl 20ml',1.00,299.00,269.00,'2011-11-15','2011-11-15',5,0),
 (108,'Belamyl 10ml',1.00,208.00,200.00,'2011-11-15','2011-11-15',5,0),
 (109,'Belamyl 50ml',1.00,556.00,500.00,'2011-11-15','2011-11-15',5,0),
 (110,'Calcium Lactate ',1.00,720.00,504.00,'2011-11-15','2011-11-15',5,0),
 (111,'Calcium Lactate (pcs)',1.00,15.00,10.50,'2011-11-15','2011-11-15',5,0),
 (112,'Choramphenicol 500g ',1.00,350.00,300.00,'2011-11-15','2011-11-15',5,0),
 (113,'Choramphenicol 500g (pcs)',1.00,3.50,3.00,'2011-11-15','2011-11-15',5,0),
 (114,'Combinex 40g',1.00,125.00,120.00,'2011-11-15','2011-11-15',5,0),
 (115,'Combinex 86g',1.00,179.50,178.00,'2011-11-15','2011-11-15',5,0),
 (116,'Dextrolyte 100ml',1.00,141.00,127.00,'2011-11-15','2011-11-15',10,0),
 (117,'Disposable Syringe 10ml',1.00,7.00,6.00,'2011-11-15','2011-11-15',5,0),
 (118,'Disposable Syringe 5ml',1.00,7.00,6.00,'2011-11-15','2011-11-15',5,0),
 (119,'Disposable Syringe 3ml',1.00,6.00,5.00,'2011-11-15','2011-11-15',5,0),
 (120,'Disposable Syringe 2.5ml',1.00,6.00,5.00,'2011-11-15','2011-11-15',5,0),
 (121,'Disposable Syringe 1ml',1.00,6.00,5.00,'2011-11-15','2011-11-15',5,0),
 (122,'Doxylak Forte 7g x 48',1.00,744.00,720.00,'2011-11-15','2011-11-15',5,0),
 (123,'Doxylak Forte 7g (pcs)',1.00,15.50,15.00,'2011-11-15','2011-11-15',5,0),
 (124,'Electrolyte Proto-lyte 250ml',1.00,83.00,82.00,'2011-11-15','2011-11-15',10,0),
 (125,'Hammer 200s',1.00,1000.00,900.00,'2011-11-15','2011-11-15',5,0),
 (126,'Hammer (pcs)',-19.00,5.00,4.50,'2011-11-15','2011-11-15',5,0),
 (127,'LDI-B12 100s',1.00,300.00,300.00,'2011-11-15','2011-11-15',5,0),
 (128,'LDI-B12 (pcs)',1.00,3.00,3.00,'2011-11-15','2011-11-15',5,0),
 (129,'Multivitamins',1.00,720.00,504.00,'2011-11-15','2011-11-15',5,0),
 (130,'Multivitamins (pcs)',1.00,15.00,10.50,'2011-11-15','2011-11-15',5,0),
 (131,'Nutridrench 15ml',1.00,170.00,170.00,'2011-11-15','2011-11-15',5,0),
 (132,'Trisulak 7g x 48',1.00,744.00,720.00,'2011-11-15','2011-11-15',5,0),
 (133,'Trisulak 7g (pcs)',1.00,15.50,15.00,'2011-11-15','2011-11-15',5,0),
 (134,'Viminolak 100s',1.00,450.00,350.00,'2011-11-15','2011-11-15',5,0),
 (135,'Viminolak (pcs)',1.00,4.50,3.50,'2011-11-15','2011-11-15',5,0),
 (136,'B-12 AAFEES',1.00,65.00,55.00,'2011-11-15','2011-11-15',5,0),
 (137,'Wormal 100s',1.00,450.00,400.00,'2011-11-15','2011-11-15',5,0),
 (138,'Wormal (pcs)',1.00,4.50,4.00,'2011-11-15','2011-11-15',5,0),
 (139,'Complexor 3000 10ml',1.00,165.00,160.00,'2011-11-15','2011-11-15',12,0),
 (140,'Pusham 10ml x 30',1.00,375.00,337.50,'2011-11-15','2011-11-15',5,0),
 (141,'Pusham 10ml (pcs)',1.00,12.50,11.25,'2011-11-15','2011-11-15',5,0),
 (142,'Tiki-Tiki',-7.00,500.00,500.00,'2011-11-16','2011-11-16',6,0),
 (143,'FCP',1.00,715.00,715.00,'2011-11-18','2011-11-18',4,0),
 (144,'FCC',3.00,665.00,665.00,'2011-11-18','2011-11-18',4,0),
 (145,'KOI',15.00,400.00,400.00,'2011-11-18','2011-11-18',7,0),
 (146,'Fine Corn',6.00,700.00,700.00,'2011-11-18','2011-11-18',4,0),
 (147,'RFG',11.00,500.00,500.00,'2011-11-18','2011-11-18',7,0),
 (148,'FRYBOOSTER',3.00,500.00,500.00,'2011-11-18','2011-11-18',7,0),
 (149,'Slashertone',1.00,500.00,500.00,'2011-11-18','2011-11-18',6,0),
 (150,'Vermex',1.00,350.00,300.00,'2011-11-18','2011-11-18',5,0),
 (151,'Vermex (pcs)',-19.00,3.50,3.00,'2011-11-18','2011-11-18',5,0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


--
-- Definition of table `items_description`
--

DROP TABLE IF EXISTS `items_description`;
CREATE TABLE `items_description` (
  `item_code` varchar(45) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_description` varchar(100) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `unit_of_measure` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_description`
--

/*!40000 ALTER TABLE `items_description` DISABLE KEYS */;
INSERT INTO `items_description` (`item_code`,`item_name`,`item_description`,`image`,`status`,`unit_of_measure`) VALUES 
 ('7 Kinds','7 Kinds','7 Kinds','',1,'BAG'),
 ('Amtyl 500 (pcs)','Amtyl 500 (pcs)','Amtyl 500 (pcs)','',1,'PIECES'),
 ('Amtyl 500 100s','Amtyl 500 100s','Amtyl 500 100s','',1,'BOX'),
 ('Apralyte 6g (pcs)','Apralyte 6g (pcs)','Apralyte 6g (pcs)','',1,'PIECES'),
 ('Apralyte 6g x 48','Apralyte 6g x 48','Apralyte 6g x 48','',1,'BOX'),
 ('B-12 AAFEES','B-12 AAFEES','B-12 AAFEES','',1,'BOTTLE'),
 ('B-50 Forteen (pcs)','B-50 Forteen (pcs)','B-50 Forteen (pcs)','',1,'PIECES'),
 ('B-50 Forteen 200s','B-50 Forteen 200s','B-50 Forteen 200s','',1,'BOX'),
 ('Bacterid 100ml','Bacterid 100ml','Bacterid 100ml','',1,'BOTTLE'),
 ('Bacterid 10ml','Bacterid 10ml','Bacterid 10ml','',1,'BOTTLE'),
 ('Baxidil 7g (pcs)','Baxidil 7g (pcs)','Baxidil 7g (pcs)','',1,'PIECES'),
 ('Baxidil 7g x 48','Baxidil 7g x 48','Baxidil 7g x 48','',1,'BOX'),
 ('Baxidil SE 6g (pcs)','Baxidil SE 6g (pcs)','Baxidil SE 6g (pcs)','',1,'PIECES'),
 ('Baxidil SE 6g x 48','Baxidil SE 6g x 48','Baxidil SE 6g x 48','',1,'BOX'),
 ('Belamyl 100ml','Belamyl 100ml','Belamyl 100ml','',1,'BOTTLE'),
 ('Belamyl 10ml','Belamyl 10ml','Belamyl 10ml','',1,'BOTTLE'),
 ('Belamyl 20ml','Belamyl 20ml','Belamyl 20ml','',1,'BOTTLE'),
 ('Belamyl 50ml','Belamyl 50ml','Belamyl 50ml','',1,'BOTTLE'),
 ('Bexan SP 100ml','Bexan SP 100ml','Bexan SP 100ml','',1,'BOTTLE'),
 ('Bexan SP 10ml','Bexan SP 10ml','Bexan SP 10ml','',1,'BOTTLE'),
 ('Bexan SP 20ml','Bexan SP 20ml','Bexan SP 20ml','',1,'BOTTLE'),
 ('Bexan XP 100ml','Bexan XP 100ml','Bexan XP 100ml','',1,'BOTTLE'),
 ('Bexan XP 10ml','Bexan XP 10ml','Bexan XP 10ml','',1,'BOTTLE'),
 ('Bexan XP 20ml','Bexan XP 20ml','Bexan XP 20ml','',1,'BOTTLE'),
 ('BFC','Broiler Finisher Crumble','Broiler Finisher Crumble','',1,'BAG'),
 ('BSC','Broiler Starter Crumble','Broiler Starter Crumble','',1,'BAG'),
 ('C-Corn','C-Corn','C-Corn','',1,'BAG'),
 ('Calcium Lactate ','Calcium Lactate ','Calcium Lactate ','',1,'BOX'),
 ('Calcium Lactate (pcs)','Calcium Lactate (pcs)','Calcium Lactate (pcs)','',1,'PIECES'),
 ('CBM','Chick Booster Mash','Chick Booster Mash','',1,'BAG'),
 ('Cecical 200g','Cecical 200g','Cecical 200g','',1,'BOX'),
 ('CGM','Chicken Grower Mash','Chicken Grower Mash','',1,'BAG'),
 ('Choramphenicol 500g ','Choramphenicol 500g ','Choramphenicol 500g ','',1,'BOX'),
 ('Choramphenicol 500g (pcs)','Choramphenicol 500g (pcs)','Choramphenicol 500g (pcs)','',1,'PIECES'),
 ('Christine','Christine','Christine','',1,'BAG'),
 ('CLM','Chicken Layer Mash','Chicken Layer Mash','',1,'BAG'),
 ('Combinex 40g','Combinex 40g','Combinex 40g','',1,'BOTTLE'),
 ('Combinex 86g','Combinex 86g','Combinex 86g','',1,'BOTTLE'),
 ('Complexor 3000 10ml','Complexor 3000 10ml','Complexor 3000 10ml','',1,'BOTTLE'),
 ('CSM','Chick Starter Mash','Chick Starter Mash','',1,'BAG'),
 ('DCM 50ml','DCM 50ml','DCM 50ml','',1,'BOTTLE'),
 ('Dextrolyte 100ml','Dextrolyte 100ml','Dextrolyte 100ml','',1,'BOTTLE'),
 ('Disposable Syringe 10ml','Disposable Syringe 10ml','Disposable Syringe 10ml','',1,'PIECES'),
 ('Disposable Syringe 1ml','Disposable Syringe 1ml','Disposable Syringe 1ml','',1,'PIECES'),
 ('Disposable Syringe 2.5ml','Disposable Syringe 2.5ml','Disposable Syringe 2.5ml','',1,'PIECES'),
 ('Disposable Syringe 3ml','Disposable Syringe 3ml','Disposable Syringe 3ml','',1,'PIECES'),
 ('Disposable Syringe 5ml','Disposable Syringe 5ml','Disposable Syringe 5ml','',1,'PIECES'),
 ('Doxylak Forte 7g (pcs)','Doxylak Forte 7g (pcs)','Doxylak Forte 7g (pcs)','',1,'PIECES'),
 ('Doxylak Forte 7g x 48','Doxylak Forte 7g x 48','Doxylak Forte 7g x 48','',1,'BOX'),
 ('Electrogen D+ 20g (pcs)','Electrogen D+ 20g (pcs)','Electrogen D+ 20g (pcs)','',1,'PIECES'),
 ('Electrogen D+ 20g x 12','Electrogen D+ 20g x 12','Electrogen D+ 20g x 12','',1,'BOX'),
 ('Electrolyte Proto-lyte 250ml','Electrolyte Proto-lyte 250ml','Electrolyte Proto-lyte 250ml','',1,'BOTTLE'),
 ('FCC','FCC','FCC','',1,'BAG'),
 ('FCP','FCP','FCP','',1,'BAG'),
 ('Fine Corn','Fine Corn','Fine Corn','',1,'BAG'),
 ('FRYBOOSTER','FRYBOOSTER','FRYBOOSTER','',1,'BAG'),
 ('FRYMASH','FRYMASH','FRYMASH','',1,'BAG'),
 ('Hammer (pcs)','Hammer (pcs)','Hammer (pcs)','',1,'PIECES'),
 ('Hammer 200s','Hammer 200s','Hammer 200s','',1,'BOX'),
 ('HFP','Hog Finisher Pellet','Hog Finisher Pellet','',1,'BAG'),
 ('HGP','Hog Grower Pellet','Hog Grower Pellet','',1,'BAG'),
 ('Honey ','Honey ','Honey ','',1,'BAG'),
 ('HSC','Hog Starter Crumble','Hog Starter Crumble','',1,'BAG'),
 ('Jectran Premium 100ml','Jectran Premium 100ml','Jectran Premium 100ml','',1,'BOTTLE'),
 ('Jectran Premium 10ml','Jectran Premium 10ml','Jectran Premium 10ml','',1,'BOTTLE'),
 ('Jectran Premium 20ml','Jectran Premium 20ml','Jectran Premium 20ml','',1,'BOTTLE'),
 ('KOI','KOI','KOI','',1,'BAG'),
 ('Latigo 1000 MD 10g (pcs)','Latigo 1000 MD 10g (pcs)','Latigo 1000 MD 10g (pcs)','',1,'PIECES'),
 ('Latigo 1000 MD 10g x 24','Latigo 1000 MD 10g x 24','Latigo 1000 MD 10g x 24','',1,'BOX'),
 ('Latigo 1000 SD 5g (pcs)','Latigo 1000 SD 5g (pcs)','Latigo 1000 SD 5g (pcs)','',1,'PIECES'),
 ('Latigo 1000 SD 5g x 48','Latigo 1000 SD 5g x 48','Latigo 1000 SD 5g x 48','',1,'BOX'),
 ('LDI-B12 (pcs)','LDI-B12 (pcs)','LDI-B12 (pcs)','',1,'PIECES'),
 ('LDI-B12 100s','LDI-B12 100s','LDI-B12 100s','',1,'BOX'),
 ('LSP','Litter Saver Pellet','Litter Saver Pellet','',1,'BAG'),
 ('Major D 20ml (pcs)','Major D 20ml (pcs)','Major D 20ml (pcs)','',1,'PIECES'),
 ('Major D 20ml x 30','Major D 20ml x 30','Major D 20ml x 30','',1,'BOX'),
 ('Mammavet 100ml','Mammavet 100ml','Mammavet 100ml','',1,'BOTTLE'),
 ('Mammavet 10ml','Mammavet 10ml','Mammavet 10ml','',1,'BOTTLE'),
 ('Milko Plus','Milko Plus','Milko Plus','',1,'PACK'),
 ('Multivitamins','Multivitamins','Multivitamins','',1,'BOX'),
 ('Multivitamins (pcs)','Multivitamins (pcs)','Multivitamins (pcs)','',1,'PIECES'),
 ('NBP','Nutri Big Pellet','Nutri Big Pellet','',1,'BAG'),
 ('NGP','Nutri Gro Pellet','Nutri Gro Pellet','',1,'BAG'),
 ('NLB','Nutrilac Booster 1kg x 25','Nutrilac Booster 1kg x 25','',1,'BAG'),
 ('NLB-pack','NLB-pack','NLB-pack','',1,'PACK'),
 ('NLP','Nutrilac Pellet 1kg x 25','Nutrilac Pellet 1kg x 25','',1,'BAG'),
 ('NLP-pack','NLP-pack','NLP-pack','',1,'PACK'),
 ('NSP','Nutri Start Pellet','Nutri Start Pellet','',1,'BAG'),
 ('Nutridrench 15ml','Nutridrench 15ml','Nutridrench 15ml','',1,'BOTTLE'),
 ('PBC','Premium Bangus Crumble ','Premium Bangus Crumble ','',1,'BAG'),
 ('PBF','Premium Bangus Finisher','Premium Bangus Finisher','',1,'BAG'),
 ('PBG','Premium Bangus Grower','Premium Bangus Grower','',1,'BAG'),
 ('PBS','Premium Bangus Starter','Premium Bangus Starter','',1,'BAG'),
 ('PDP (o)','Pullet Developer Pellet ordinary','Pullet Developer Pellet ordinary','',1,'BAG'),
 ('PDP (s)','Pullet Developer Pellet (special)','Pullet Developer Pellet (special)','',1,'BAG'),
 ('PGP','Pigeon Pellet','Pigeon Pellet','',1,'BAG'),
 ('PGR','Pigeon Pellet Red','Pigeon Pellet Red','',1,'BAG'),
 ('Pidro 2.4g (pcs)','Pidro 2.4g (pcs)','Pidro 2.4g (pcs)','',1,'PIECES'),
 ('Pidro 2.4g x 50','Pidro 2.4g x 50','Pidro 2.4g x 50','',1,'BOX'),
 ('PSP','Pregsow Pellet','Pregsow Pellet','',1,'BAG'),
 ('Pusham 10ml (pcs)','Pusham 10ml (pcs)','Pusham 10ml (pcs)','',1,'PIECES'),
 ('Pusham 10ml x 30','Pusham 10ml x 30','Pusham 10ml x 30','',1,'BOX'),
 ('RED RICE','Red Rice','Red Rice','',1,'BAG'),
 ('Redbik 100ml','Redbik 100ml','Redbik 100ml','',1,'BOTTLE'),
 ('Redbik 10ml','Redbik 10ml','Redbik 10ml','',1,'BOTTLE'),
 ('RFG','Rabbit Fish Grower','Rabbit Fish Grower','',1,'BAG'),
 ('Royal Crown','Royal Crown','Royal Crown','',1,'BAG'),
 ('SBF','Surfer Bangus Finisher','Surfer Bangus Finisher','',1,'BAG'),
 ('SBG','Surfer Bangus Grower','Surfer Bangus Grower','',1,'BAG'),
 ('SBS','Surfer Bangus Starter','Surfer Bangus Starter','',1,'BAG'),
 ('Slasher','Slasher','Slasher','',1,'BAG'),
 ('Slashertone','Slashertone','Slashertone','',1,'BAG'),
 ('Sustalin LA 100ml','Sustalin LA 100ml','Sustalin LA 100ml','',1,'BOTTLE'),
 ('Sustalin LA 10ml','Sustalin LA 10ml','Sustalin LA 10ml','',1,'BOTTLE'),
 ('THB Booster','THB Booster','THB Booster','',1,'BAG'),
 ('THB Booster-pack','THB Booster-pack','THB Booster-pack','',1,'PACK'),
 ('THB Developer','THB Developer','THB Developer','',1,'BAG'),
 ('THB Developer-pack','THB Developer-pack','THB Developer-pack','',1,'PACK'),
 ('THB Enertone','THB Enertone','THB Enertone','',1,'BAG'),
 ('THB Enertone-pack','THB Enertone-pack','THB Enertone-pack','',1,'PACK'),
 ('THB Hi-Lander','THB Hi-Lander','THB Hi-Lander','',1,'BAG'),
 ('THB Hi-Lander-pack','THB Hi-Lander-pack','THB Hi-Lander-pack','',1,'PACK'),
 ('THB Hi-Protein','THB Hi-Protein','THB Hi-Protein','',1,'BAG'),
 ('THB Hi-Protein-pack','THB Hi-Protein-pack','THB Hi-Protein-pack','',1,'PACK'),
 ('THB Multigrain','THB Multigrain','THB Multigrain','',1,'BAG'),
 ('THB Multigrain-pack','THB Multigrain-pack','THB Multigrain-pack','',1,'PACK'),
 ('THB Platinum','THB Platinum','THB Platinum','',1,'BAG'),
 ('THB Platinum-pack','THB Platinum-pack','THB Platinum-pack','',1,'PACK'),
 ('THB Successor','THB Successor','THB Successor','',1,'BAG'),
 ('THB Successor-pack','THB Successor-pack','THB Successor-pack','',1,'PACK'),
 ('Tiki-Tiki','Tiki-Tiki','Tiki-Tiki','',1,'BAG'),
 ('TMPS Pig Doser 120ml','TMPS Pig Doser 120ml','TMPS Pig Doser 120ml','',1,'BOX'),
 ('Trisulak 7g (pcs)','Trisulak 7g (pcs)','Trisulak 7g (pcs)','',1,'PIECES'),
 ('Trisulak 7g x 48','Trisulak 7g x 48','Trisulak 7g x 48','',1,'BOX'),
 ('V-22 200g','V-22 200g','V-22 200g','',1,'BOX'),
 ('V-22 Tablet 100 ','V-22 Tablet 100 ','V-22 Tablet 100 ','',1,'BOTTLE'),
 ('Vermex','Vermex','Vermex','',1,'BOX'),
 ('Vermex (pcs)','Vermex (pcs)','Vermex (pcs)','',1,'PIECES'),
 ('Vetracin Classic 5g (pcs)','Vetracin Classic 5g (pcs)','Vetracin Classic 5g (pcs)','',1,'PIECES'),
 ('Vetracin Classic 5g x 48 ','Vetracin Classic 5g x 48 ','Vetracin Classic 5g x 48 ','',1,'BOX'),
 ('Vetracin Gold 5g (pcs)','Vetracin Gold 5g (pcs)','Vetracin Gold 5g (pcs)','',1,'PIECES'),
 ('Vetracin Gold 5g x 48','Vetracin Gold 5g x 48','Vetracin Gold 5g x 48','',1,'BOX'),
 ('Vetracin Gold Capsule','Vetracin Gold Capsule','Vetracin Gold Capsule','',1,'BOX'),
 ('Vetracin Gold Capsule (pcs)','Vetracin Gold Capsule (pcs)','Vetracin Gold Capsule (pcs)','',1,'PIECES'),
 ('Vetracin Premium 5g (pcs)','Vetracin Premium 5g (pcs)','Vetracin Premium 5g (pcs)','',1,'PIECES'),
 ('Vetracin Premium 5g x 48','Vetracin Premium 5g x 48','Vetracin Premium 5g x 48','',1,'BOX'),
 ('Viminolak (pcs)','Viminolak (pcs)','Viminolak (pcs)','',1,'PIECES'),
 ('Viminolak 100s','Viminolak 100s','Viminolak 100s','',1,'BOX'),
 ('Viton-500 10ml','Viton-500 10ml','Viton-500 10ml','',1,'BOTTLE'),
 ('Wormal (pcs)','Wormal (pcs)','Wormal (pcs)','',1,'PIECES'),
 ('Wormal 100s','Wormal 100s','Wormal 100s','',1,'BOX');
/*!40000 ALTER TABLE `items_description` ENABLE KEYS */;


--
-- Definition of table `last_inventory`
--

DROP TABLE IF EXISTS `last_inventory`;
CREATE TABLE `last_inventory` (
  `item_id` int(10) unsigned DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `beginning_balance` double(10,2) DEFAULT NULL,
  `ending_balance` double(10,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `last_inventory`
--

/*!40000 ALTER TABLE `last_inventory` DISABLE KEYS */;
INSERT INTO `last_inventory` (`item_id`,`item_code`,`beginning_balance`,`ending_balance`,`date`) VALUES 
 (1,'CBM',8.00,8.00,'2011-11-18 20:54:10'),
 (2,'CSM',3.00,3.00,'2011-11-18 20:54:10'),
 (3,'CGM',28.00,28.00,'2011-11-18 20:54:10'),
 (4,'CLM',16.00,16.00,'2011-11-18 20:54:10'),
 (5,'BSC',10.00,10.00,'2011-11-18 20:54:10'),
 (6,'BFC',20.00,20.00,'2011-11-18 20:54:10'),
 (7,'Milko Plus',12.00,12.00,'2011-11-18 20:54:10'),
 (8,'NSP',95.00,95.00,'2011-11-18 20:54:10'),
 (9,'NGP',153.00,153.00,'2011-11-18 20:54:10'),
 (10,'NBP',148.00,148.00,'2011-11-18 20:54:10'),
 (11,'PSP',79.00,79.00,'2011-11-18 20:54:10'),
 (12,'LSP',54.00,54.00,'2011-11-18 20:54:10'),
 (13,'PGP',1.00,1.00,'2011-11-18 20:54:10'),
 (14,'PGR',3.00,3.00,'2011-11-18 20:54:10'),
 (15,'NLB',16.00,16.00,'2011-11-18 20:54:10'),
 (16,'NLB-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (17,'NLP',40.00,40.00,'2011-11-18 20:54:10'),
 (18,'NLP-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (19,'HSC',7.00,7.00,'2011-11-18 20:54:10'),
 (20,'HGP',20.00,20.00,'2011-11-18 20:54:10'),
 (21,'HFP',14.00,14.00,'2011-11-18 20:54:10'),
 (22,'PDP (s)',31.00,31.00,'2011-11-18 20:54:10'),
 (23,'PDP (o)',34.00,34.00,'2011-11-18 20:54:10'),
 (24,'7 Kinds',12.00,12.00,'2011-11-18 20:54:10'),
 (25,'Slasher',6.00,6.00,'2011-11-18 20:54:10'),
 (26,'C-Corn',32.00,32.00,'2011-11-18 20:54:10'),
 (27,'Christine',15.00,15.00,'2011-11-18 20:54:10'),
 (28,'RED RICE',14.00,14.00,'2011-11-18 20:54:10'),
 (29,'Royal Crown',194.00,194.00,'2011-11-18 20:54:10'),
 (30,'Honey ',116.00,116.00,'2011-11-18 20:54:10'),
 (31,'THB Booster',1.00,1.00,'2011-11-18 20:54:10'),
 (32,'THB Booster-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (33,'THB Developer',6.00,6.00,'2011-11-18 20:54:10'),
 (34,'THB Developer-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (35,'THB Enertone',1.00,1.00,'2011-11-18 20:54:10'),
 (36,'THB Enertone-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (37,'THB Platinum',6.00,6.00,'2011-11-18 20:54:10'),
 (38,'THB Platinum-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (39,'THB Hi-Protein',1.00,1.00,'2011-11-18 20:54:10'),
 (40,'THB Hi-Protein-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (41,'THB Successor',1.00,1.00,'2011-11-18 20:54:10'),
 (42,'THB Successor-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (43,'THB Multigrain',1.00,1.00,'2011-11-18 20:54:10'),
 (44,'THB Multigrain-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (45,'THB Hi-Lander',1.00,1.00,'2011-11-18 20:54:10'),
 (46,'THB Hi-Lander-pack',1.00,1.00,'2011-11-18 20:54:10'),
 (47,'FRYMASH',10.00,10.00,'2011-11-18 20:54:10'),
 (48,'PBC',5.00,5.00,'2011-11-18 20:54:10'),
 (49,'PBS',1.00,1.00,'2011-11-18 20:54:10'),
 (50,'PBG',4.00,4.00,'2011-11-18 20:54:10'),
 (51,'PBF',5.00,5.00,'2011-11-18 20:54:10'),
 (52,'SBS',23.00,23.00,'2011-11-18 20:54:10'),
 (53,'SBG',1.00,1.00,'2011-11-18 20:54:10'),
 (54,'SBF',1.00,1.00,'2011-11-18 20:54:10'),
 (55,'Apralyte 6g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (56,'Apralyte 6g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (57,'Bacterid 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (58,'Bacterid 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (59,'Baxidil SE 6g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (60,'Baxidil SE 6g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (61,'Baxidil 7g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (62,'Baxidil 7g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (63,'Bexan SP 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (64,'Bexan SP 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (65,'Bexan SP 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (66,'Bexan XP 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (67,'Bexan XP 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (68,'Bexan XP 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (69,'Electrogen D+ 20g x 12',1.00,1.00,'2011-11-18 20:54:10'),
 (70,'Electrogen D+ 20g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (71,'Jectran Premium 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (72,'Jectran Premium 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (73,'Jectran Premium 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (74,'Latigo 1000 SD 5g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (75,'Latigo 1000 SD 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (76,'Latigo 1000 MD 10g x 24',1.00,1.00,'2011-11-18 20:54:10'),
 (77,'Latigo 1000 MD 10g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (78,'Major D 20ml x 30',1.00,1.00,'2011-11-18 20:54:10'),
 (79,'Major D 20ml (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (80,'Mammavet 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (81,'Mammavet 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (82,'Sustalin LA 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (83,'Sustalin LA 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (84,'Vetracin Classic 5g x 48 ',1.00,1.00,'2011-11-18 20:54:10'),
 (85,'Vetracin Classic 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (86,'Vetracin Gold 5g x 48',0.00,0.00,'2011-11-18 20:54:10'),
 (87,'Vetracin Gold 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (88,'Vetracin Gold Capsule',1.00,1.00,'2011-11-18 20:54:10'),
 (89,'Vetracin Gold Capsule (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (90,'Vetracin Premium 5g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (91,'Vetracin Premium 5g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (92,'Viton-500 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (93,'Cecical 200g',1.00,1.00,'2011-11-18 20:54:10'),
 (94,'Pidro 2.4g x 50',1.00,1.00,'2011-11-18 20:54:10'),
 (95,'Pidro 2.4g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (96,'V-22 200g',1.00,1.00,'2011-11-18 20:54:10'),
 (97,'V-22 Tablet 100 ',1.00,1.00,'2011-11-18 20:54:10'),
 (98,'DCM 50ml',1.00,1.00,'2011-11-18 20:54:10'),
 (99,'Redbik 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (100,'Redbik 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (101,'TMPS Pig Doser 120ml',1.00,1.00,'2011-11-18 20:54:10'),
 (102,'Amtyl 500 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (103,'Amtyl 500 (pcs)',-29.00,-29.00,'2011-11-18 20:54:10'),
 (104,'B-50 Forteen 200s',1.00,1.00,'2011-11-18 20:54:10'),
 (105,'B-50 Forteen (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (106,'Belamyl 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (107,'Belamyl 20ml',1.00,1.00,'2011-11-18 20:54:10'),
 (108,'Belamyl 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (109,'Belamyl 50ml',1.00,1.00,'2011-11-18 20:54:10'),
 (110,'Calcium Lactate ',1.00,1.00,'2011-11-18 20:54:10'),
 (111,'Calcium Lactate (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (112,'Choramphenicol 500g ',1.00,1.00,'2011-11-18 20:54:10'),
 (113,'Choramphenicol 500g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (114,'Combinex 40g',1.00,1.00,'2011-11-18 20:54:10'),
 (115,'Combinex 86g',1.00,1.00,'2011-11-18 20:54:10'),
 (116,'Dextrolyte 100ml',1.00,1.00,'2011-11-18 20:54:10'),
 (117,'Disposable Syringe 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (118,'Disposable Syringe 5ml',1.00,1.00,'2011-11-18 20:54:10'),
 (119,'Disposable Syringe 3ml',1.00,1.00,'2011-11-18 20:54:10'),
 (120,'Disposable Syringe 2.5ml',1.00,1.00,'2011-11-18 20:54:10'),
 (121,'Disposable Syringe 1ml',1.00,1.00,'2011-11-18 20:54:10'),
 (122,'Doxylak Forte 7g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (123,'Doxylak Forte 7g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (124,'Electrolyte Proto-lyte 250ml',1.00,1.00,'2011-11-18 20:54:10'),
 (125,'Hammer 200s',1.00,1.00,'2011-11-18 20:54:10'),
 (126,'Hammer (pcs)',-19.00,-19.00,'2011-11-18 20:54:10'),
 (127,'LDI-B12 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (128,'LDI-B12 (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (129,'Multivitamins',1.00,1.00,'2011-11-18 20:54:10'),
 (130,'Multivitamins (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (131,'Nutridrench 15ml',1.00,1.00,'2011-11-18 20:54:10'),
 (132,'Trisulak 7g x 48',1.00,1.00,'2011-11-18 20:54:10'),
 (133,'Trisulak 7g (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (134,'Viminolak 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (135,'Viminolak (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (136,'B-12 AAFEES',1.00,1.00,'2011-11-18 20:54:10'),
 (137,'Wormal 100s',1.00,1.00,'2011-11-18 20:54:10'),
 (138,'Wormal (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (139,'Complexor 3000 10ml',1.00,1.00,'2011-11-18 20:54:10'),
 (140,'Pusham 10ml x 30',1.00,1.00,'2011-11-18 20:54:10'),
 (141,'Pusham 10ml (pcs)',1.00,1.00,'2011-11-18 20:54:10'),
 (142,'Tiki-Tiki',-7.00,-7.00,'2011-11-18 20:54:10'),
 (143,'FCP',1.00,1.00,'2011-11-18 20:54:10'),
 (144,'FCC',3.00,3.00,'2011-11-18 20:54:10'),
 (145,'KOI',15.00,15.00,'2011-11-18 20:54:10'),
 (146,'Fine Corn',6.00,6.00,'2011-11-18 20:54:10'),
 (147,'RFG',11.00,11.00,'2011-11-18 20:54:10'),
 (148,'FRYBOOSTER',3.00,3.00,'2011-11-18 20:54:10'),
 (149,'Slashertone',1.00,1.00,'2011-11-18 20:54:10');
/*!40000 ALTER TABLE `last_inventory` ENABLE KEYS */;


--
-- Definition of table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `manufacturers_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(45) NOT NULL,
  `manufacturers_add` varchar(45) NOT NULL,
  `manufacturers_number` varchar(45) NOT NULL,
  PRIMARY KEY (`manufacturers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` (`manufacturers_id`,`manufacturers_name`,`manufacturers_add`,`manufacturers_number`) VALUES 
 (4,'UNIFEEDS','CEBU',''),
 (5,'UNIVET','Mandaluyong City, Philippines',''),
 (6,'STG','',''),
 (7,'TATHE','',''),
 (8,'THB','',''),
 (9,'BELMAN','',''),
 (10,'TRYCO','',''),
 (11,'EXCELLENCE','',''),
 (12,'SAGUPAAN','','');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;


--
-- Definition of table `municipal_agent`
--

DROP TABLE IF EXISTS `municipal_agent`;
CREATE TABLE `municipal_agent` (
  `agent_id` int(10) unsigned DEFAULT NULL,
  `municipal_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `municipal_agent`
--

/*!40000 ALTER TABLE `municipal_agent` DISABLE KEYS */;
INSERT INTO `municipal_agent` (`agent_id`,`municipal_id`) VALUES 
 (1,'1'),
 (1,'2'),
 (1,'3'),
 (1,'4'),
 (3,'9'),
 (3,'10'),
 (3,'11'),
 (3,'12'),
 (5,'6'),
 (2,'5'),
 (2,'7'),
 (2,'8'),
 (2,'14'),
 (4,'13'),
 (4,'15'),
 (4,'16'),
 (4,'17'),
 (5,'21'),
 (5,'20'),
 (5,'22');
/*!40000 ALTER TABLE `municipal_agent` ENABLE KEYS */;


--
-- Definition of table `municipalities`
--

DROP TABLE IF EXISTS `municipalities`;
CREATE TABLE `municipalities` (
  `municipal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `municipal_name` varchar(45) NOT NULL,
  PRIMARY KEY (`municipal_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `municipalities`
--

/*!40000 ALTER TABLE `municipalities` DISABLE KEYS */;
INSERT INTO `municipalities` (`municipal_id`,`municipal_name`) VALUES 
 (1,'CALAPE'),
 (2,'TUBIGON'),
 (3,'CLARIN'),
 (4,'LOON'),
 (5,'UBAY'),
 (6,'SAGBAYAN'),
 (7,'BIEN UNIDO'),
 (8,'TRINIDAD'),
 (9,'TALIBON'),
 (10,'INABANGGA'),
 (11,'BUENAVISTA'),
 (12,'JETAFE'),
 (13,'CARMEN'),
 (14,'SAN MIGUEL'),
 (15,'BILAR'),
 (16,'BATUAN'),
 (17,'DAGOHOY'),
 (18,'S-BULLONES'),
 (19,'SAN ISIDRO'),
 (20,'DANAO'),
 (21,'CATIGBI-AN'),
 (22,'BALILIHAN');
/*!40000 ALTER TABLE `municipalities` ENABLE KEYS */;


--
-- Definition of table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `amount` double(2,2) NOT NULL,
  `date_of_payment` datetime NOT NULL,
  `remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Definition of table `payment_records`
--

DROP TABLE IF EXISTS `payment_records`;
CREATE TABLE `payment_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_order_no` varchar(45) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `balance` double(10,2) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_records`
--

/*!40000 ALTER TABLE `payment_records` DISABLE KEYS */;
INSERT INTO `payment_records` (`id`,`sales_order_no`,`amount`,`balance`,`payment_date`,`remarks`) VALUES 
 (1,'SO-0000058',1470.00,0.00,'2011-11-16 00:00:00','fully paid'),
 (2,'SO-0000059',0.00,21280.00,'2011-11-16 00:00:00',''),
 (3,'SO-0000059',21280.00,0.00,'2011-11-16 00:00:00','fully paid'),
 (4,'SO-0000060',0.00,1075.00,'2011-11-17 00:00:00',''),
 (5,'SO-0000060',0.00,1075.00,'2011-11-17 00:00:00',''),
 (6,'SO-0000062',1470.00,0.00,'2011-11-18 00:00:00','fully paid'),
 (7,'SO-0000061',2940.00,0.00,'2011-11-18 00:00:00','fully paid');
/*!40000 ALTER TABLE `payment_records` ENABLE KEYS */;


--
-- Definition of table `salesorder_responsible`
--

DROP TABLE IF EXISTS `salesorder_responsible`;
CREATE TABLE `salesorder_responsible` (
  `SaleOrder_Responsible_Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Prepared_by` varchar(100) DEFAULT NULL,
  `Checked_by` varchar(100) DEFAULT NULL,
  `Posted_by` varchar(100) DEFAULT NULL,
  `Delivered_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SaleOrder_Responsible_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesorder_responsible`
--

/*!40000 ALTER TABLE `salesorder_responsible` DISABLE KEYS */;
INSERT INTO `salesorder_responsible` (`SaleOrder_Responsible_Id`,`Prepared_by`,`Checked_by`,`Posted_by`,`Delivered_by`) VALUES 
 (3,'Beng','Aris / Arlene','Beng','');
/*!40000 ALTER TABLE `salesorder_responsible` ENABLE KEYS */;


--
-- Definition of table `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
CREATE TABLE `stock_in` (
  `stockin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(45) NOT NULL,
  `qty_in` int(10) unsigned NOT NULL,
  PRIMARY KEY (`stockin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`stockin_id`,`item_id`,`qty_in`) VALUES 
 (1,'8',1),
 (2,'9',5),
 (3,'10',2),
 (4,'11',2),
 (5,'27',4),
 (6,'10',1),
 (7,'22',30),
 (8,'1',7),
 (9,'2',2),
 (10,'3',27),
 (11,'4',17),
 (12,'5',9),
 (13,'6',22),
 (14,'25',5),
 (15,'24',11),
 (16,'14',2),
 (17,'26',31),
 (18,'19',6),
 (19,'20',19),
 (20,'21',13),
 (21,'30',117),
 (22,'33',5),
 (23,'52',22),
 (24,'50',3),
 (25,'51',4),
 (26,'48',4),
 (27,'29',193),
 (28,'47',9),
 (29,'37',5),
 (30,'28',21),
 (31,'27',30),
 (32,'23',33),
 (33,'12',53),
 (34,'11',79),
 (35,'10',155),
 (36,'9',168),
 (37,'8',99),
 (38,'17',39),
 (39,'15',15),
 (40,'7',11);
/*!40000 ALTER TABLE `stock_in` ENABLE KEYS */;


--
-- Definition of table `stock_in_reference`
--

DROP TABLE IF EXISTS `stock_in_reference`;
CREATE TABLE `stock_in_reference` (
  `reference_no` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in_reference`
--

/*!40000 ALTER TABLE `stock_in_reference` DISABLE KEYS */;
INSERT INTO `stock_in_reference` (`reference_no`) VALUES 
 ('5');
/*!40000 ALTER TABLE `stock_in_reference` ENABLE KEYS */;


--
-- Definition of table `stock_in_transaction`
--

DROP TABLE IF EXISTS `stock_in_transaction`;
CREATE TABLE `stock_in_transaction` (
  `stock_in_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(45) NOT NULL,
  `stocked_in_to` varchar(45) DEFAULT NULL,
  `from_supplier` int(10) unsigned DEFAULT NULL,
  `remarks` text,
  `stock_in_date` date DEFAULT NULL,
  `total_number_of_items` int(10) unsigned DEFAULT NULL,
  `total_qty` int(10) unsigned DEFAULT NULL,
  `prepared_by` varchar(45) DEFAULT NULL,
  `approved_by` varchar(45) DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stock_in_transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in_transaction`
--

/*!40000 ALTER TABLE `stock_in_transaction` DISABLE KEYS */;
INSERT INTO `stock_in_transaction` (`stock_in_transaction_id`,`reference_no`,`stocked_in_to`,`from_supplier`,`remarks`,`stock_in_date`,`total_number_of_items`,`total_qty`,`prepared_by`,`approved_by`,`received_by`) VALUES 
 (5,'SI-000001','WH-02 STOCKROOM(BODEGA)',1,'asdsadad','2011-10-09',1,10,'obeng','',''),
 (6,'SI-000001','WH-02 STOCKROOM(BODEGA)',1,'','2011-10-09',1,100,'','',''),
 (7,'SI-000001','WH-02 STOCKROOM(BODEGA)',1,'','2011-10-09',1,100,'','',''),
 (8,'SI-000001','WH-02 STOCKROOM(BODEGA)',1,'','2011-10-09',1,20,'','',''),
 (9,'SI-000001','WH-02 STOCKROOM(BODEGA)',2,'sample','2011-10-09',1,100,'obeng','',''),
 (10,'SI-000001','WH-02 STOCKROOM(BODEGA)',2,'samnple','2011-10-09',1,100,'obeng','',''),
 (11,'SI-000001','WH-02 STOCKROOM(BODEGA)',2,'sample','2011-10-09',1,100,'obeng','',''),
 (12,'SI-000001','WH-02 STOCKROOM(BODEGA)',1,'','2011-10-09',2,1000,'','',''),
 (13,'SI-000002','WH-02 STOCKROOM(BODEGA)',2,'dssd','2011-10-09',1,8,'sdfs','sdfs','sdfs'),
 (14,'SI-000003','WH-02 STOCKROOM(BODEGA)',2,'sdfasdf','2011-10-09',2,14,'asfsdfsa','sdfsda','sdfs'),
 (15,'SI-000004','WH-02 STOCKROOM(BODEGA)',2,'dgd','2011-10-09',1,78,'','',''),
 (16,'SI-000005','WH-02 STOCKROOM(BODEGA)',2,'aasdsdsadd','2011-10-09',1,10,'asdsad','asd',''),
 (17,'SI-000006','WH-02 STOCKROOM(BODEGA)',2,'asdasd','2011-10-09',1,10,'asdasd','',''),
 (18,'SI-000007','WH-02 STOCKROOM(BODEGA)',3,'vbmkgi','2011-10-09',1,50,'','',''),
 (19,'SI-000008','WH-02 STOCKROOM(BODEGA)',3,'','2011-10-09',1,50,'','',''),
 (20,'SI-000009','WH-02 STOCKROOM(BODEGA)',4,'FROM: CEBU / WING VAN  / BOY','2011-10-10',2,4,'BENG','SIR AHOC','RAMBO'),
 (21,'SI-0000010','BODEGA / TINDAHAN',4,'PICK UP CEBU / WING VAN - BOY ','2011-10-10',2,10,'BENG','SIR AHOC','RAMBO'),
 (22,'SI-0000011','WH-02 STOCKROOM(BODEGA)',4,'PICK UP / WING VAN - BOY','2011-10-17',5,2200,'                              BENG','                              SIR AHOC','                                RAMBO'),
 (23,'SI-0000012','WH-02 STOCKROOM(BODEGA)',4,'','2011-10-17',1,200,'','',''),
 (24,'SI-0000013','WH-02 STOCKROOM(BODEGA)',4,'pick up/ wing van - boy','2011-10-23',5,500,'     beng','     sir ahoc','          ramboo'),
 (25,'SI-0000014','WH-01 STOCKROOM(KATUNGAN)',4,'SHIPPED / WING VAN - ANTONIO','2011-10-28',5,320,'                BENG','                 RAMBO','           SIR AHOC'),
 (26,'SI-0000015','WH-02 STOCKROOM(BODEGA)',4,'','2011-11-01',1,10,'obeng','hehe','ahoc'),
 (27,'SI-0000016','WH-02 STOCKROOM(BODEGA)',4,'ok ra ni','2011-11-05',1,500,'ham','jhun','cool'),
 (28,'SI-000001','WH-02 STOCKROOM(BODEGA)',4,'','2011-11-17',5,14,'','',''),
 (29,'SI-000002','WH-02 STOCKROOM(BODEGA)',4,'','2011-11-17',1,1,'','',''),
 (30,'SI-000003','WH-02 STOCKROOM(BODEGA)',4,'forwarded inventory','2011-11-18',33,1255,'','',''),
 (31,'SI-000004','WH-02 STOCKROOM(BODEGA)',4,'','2011-11-18',1,11,'','','');
/*!40000 ALTER TABLE `stock_in_transaction` ENABLE KEYS */;


--
-- Definition of table `stock_in_transaction_to_stock_in_items`
--

DROP TABLE IF EXISTS `stock_in_transaction_to_stock_in_items`;
CREATE TABLE `stock_in_transaction_to_stock_in_items` (
  `stock_in_transaction_id` int(10) unsigned DEFAULT NULL,
  `stock_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in_transaction_to_stock_in_items`
--

/*!40000 ALTER TABLE `stock_in_transaction_to_stock_in_items` DISABLE KEYS */;
INSERT INTO `stock_in_transaction_to_stock_in_items` (`stock_in_transaction_id`,`stock_id`) VALUES 
 (7,0),
 (8,0),
 (10,0),
 (11,9),
 (12,10),
 (12,11),
 (13,12),
 (14,13),
 (14,14),
 (15,15),
 (16,16),
 (17,17),
 (18,18),
 (19,19),
 (20,20),
 (20,21),
 (21,22),
 (21,23),
 (22,24),
 (22,25),
 (22,26),
 (22,27),
 (22,28),
 (23,29),
 (24,30),
 (24,31),
 (24,32),
 (24,33),
 (24,34),
 (25,35),
 (25,36),
 (25,37),
 (25,38),
 (25,39),
 (26,40),
 (27,41),
 (28,1),
 (28,2),
 (28,3),
 (28,4),
 (28,5),
 (29,6),
 (30,7),
 (30,8),
 (30,9),
 (30,10),
 (30,11),
 (30,12),
 (30,13),
 (30,14),
 (30,15),
 (30,16),
 (30,17),
 (30,18),
 (30,19),
 (30,20),
 (30,21),
 (30,22),
 (30,23),
 (30,24),
 (30,25),
 (30,26),
 (30,27),
 (30,28),
 (30,29),
 (30,30),
 (30,31),
 (30,32),
 (30,33),
 (30,34),
 (30,35),
 (30,36),
 (30,37),
 (30,38),
 (30,39),
 (31,40);
/*!40000 ALTER TABLE `stock_in_transaction_to_stock_in_items` ENABLE KEYS */;


--
-- Definition of table `stock_out`
--

DROP TABLE IF EXISTS `stock_out`;
CREATE TABLE `stock_out` (
  `stockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(45) DEFAULT NULL,
  `qty_out` double(10,2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `tracking_price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`stockout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` (`stockout_id`,`item_id`,`qty_out`,`amount`,`discount`,`tracking_price`) VALUES 
 (1,'17',1.00,1580.00,NULL,NULL),
 (2,'17',1.00,1580.00,NULL,NULL),
 (3,'18',1.00,985.00,NULL,NULL),
 (4,'19',1.00,1275.00,NULL,NULL),
 (5,'17',1.00,1580.00,NULL,NULL),
 (6,'18',1.00,985.00,NULL,NULL),
 (7,'19',1.00,1275.00,NULL,NULL),
 (8,'17',1.00,1580.00,NULL,NULL),
 (9,'27',1.00,690.00,NULL,NULL),
 (10,'17',1.00,1580.00,NULL,NULL),
 (11,'27',1.00,690.00,NULL,NULL),
 (12,'21',1.00,1095.00,NULL,NULL),
 (13,'23',1.00,1185.00,NULL,NULL),
 (14,'18',1.00,985.00,0.00,0.00),
 (15,'21',0.50,537.50,0.00,0.00),
 (16,'17',1.00,1560.00,10.00,10.00),
 (17,'18',1.00,965.00,5.00,10.00),
 (18,'17',1.00,1555.00,10.00,5.00),
 (19,'18',1.00,955.00,10.00,5.00),
 (20,'17',1.00,1555.00,10.00,5.00),
 (21,'18',1.00,955.00,10.00,5.00),
 (22,'27',1.00,1470.00,0.00,0.00),
 (23,'8',2.00,2510.00,20.00,0.00),
 (24,'9',6.00,6810.00,60.00,40.00),
 (25,'10',3.00,3195.00,30.00,0.00),
 (26,'11',3.00,3165.00,30.00,0.00),
 (27,'27',4.00,5880.00,0.00,0.00),
 (28,'10',1.00,1095.00,0.00,0.00),
 (29,'27',2.00,2940.00,0.00,0.00),
 (30,'27',1.00,1470.00,0.00,0.00),
 (31,'10',5.00,5225.00,50.00,0.00),
 (32,'28',3.00,4560.00,0.00,0.00),
 (33,'8',3.00,3735.00,30.00,0.00),
 (34,'27',5.00,7350.00,0.00,0.00),
 (35,'9',10.00,10550.00,100.00,0.00),
 (36,'6',2.00,2350.00,20.00,0.00),
 (37,'142',8.00,4000.00,0.00,0.00),
 (38,'4',2.00,2290.00,20.00,0.00),
 (39,'86',1.00,960.00,0.00,0.00),
 (40,'151',20.00,70.00,0.00,0.00),
 (41,'126',20.00,100.00,0.00,0.00),
 (42,'103',30.00,420.00,0.00,0.00),
 (43,'9',1.00,1155.00,0.00,0.00),
 (44,'6',1.00,1195.00,0.00,0.00),
 (45,'30',2.00,2900.00,0.00,0.00),
 (46,'27',1.00,1470.00,0.00,0.00),
 (47,'27',5.00,7350.00,0.00,0.00),
 (48,'28',5.00,7600.00,0.00,0.00),
 (49,'10',2.00,2190.00,0.00,0.00),
 (50,'9',2.00,2310.00,0.00,0.00),
 (51,'8',1.00,1275.00,0.00,0.00),
 (52,'27',1.00,1470.00,0.00,0.00),
 (53,'9',2.00,2310.00,0.00,0.00),
 (54,'9',1.00,1160.00,0.00,5.00);
/*!40000 ALTER TABLE `stock_out` ENABLE KEYS */;


--
-- Definition of table `stock_out_reference`
--

DROP TABLE IF EXISTS `stock_out_reference`;
CREATE TABLE `stock_out_reference` (
  `reference_no` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out_reference`
--

/*!40000 ALTER TABLE `stock_out_reference` DISABLE KEYS */;
INSERT INTO `stock_out_reference` (`reference_no`) VALUES 
 (68);
/*!40000 ALTER TABLE `stock_out_reference` ENABLE KEYS */;


--
-- Definition of table `stock_out_transaction`
--

DROP TABLE IF EXISTS `stock_out_transaction`;
CREATE TABLE `stock_out_transaction` (
  `sales_order_no` varchar(45) NOT NULL,
  `responsible_customer` int(10) unsigned DEFAULT NULL,
  `responsible_agent` int(10) unsigned DEFAULT NULL,
  `discount` double(10,2) NOT NULL,
  `grand_total` double(10,2) NOT NULL,
  `net_total` double(10,2) NOT NULL,
  `tendered_amount` double(10,2) DEFAULT NULL,
  `change` double(10,2) DEFAULT NULL,
  `delivery_date` datetime NOT NULL,
  PRIMARY KEY (`sales_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out_transaction`
--

/*!40000 ALTER TABLE `stock_out_transaction` DISABLE KEYS */;
INSERT INTO `stock_out_transaction` (`sales_order_no`,`responsible_customer`,`responsible_agent`,`discount`,`grand_total`,`net_total`,`tendered_amount`,`change`,`delivery_date`) VALUES 
 ('SO-0000058',103,1,0.00,1470.00,1470.00,0.00,-1470.00,'2011-11-16 11:46:54'),
 ('SO-0000059',32,1,0.00,21280.00,21280.00,0.00,-21280.00,'2011-11-16 13:04:11'),
 ('SO-0000060',47,5,0.00,1075.00,1075.00,0.00,-1075.00,'2011-11-17 16:49:59'),
 ('SO-0000061',105,1,0.00,2940.00,2940.00,0.00,-2940.00,'2011-11-18 13:11:15'),
 ('SO-0000062',62,1,0.00,1470.00,1470.00,0.00,-1470.00,'2011-11-18 13:14:05'),
 ('SO-0000063',82,1,0.00,41039.00,41039.00,0.00,-41039.00,'2011-11-18 13:21:05'),
 ('SO-0000064',23,1,0.00,6680.00,6680.00,0.00,-6680.00,'2011-11-18 13:35:14'),
 ('SO-0000065',40,1,0.00,20625.00,20625.00,0.00,-20625.00,'2011-11-18 13:37:32'),
 ('SO-0000066',61,1,0.00,3740.00,3740.00,0.00,-3740.00,'2011-11-18 13:41:04'),
 ('SO-0000067',40,1,0.00,1140.00,1140.00,0.00,-1140.00,'2011-11-18 21:09:30');
/*!40000 ALTER TABLE `stock_out_transaction` ENABLE KEYS */;


--
-- Definition of table `stock_out_transaction_stock_out_items`
--

DROP TABLE IF EXISTS `stock_out_transaction_stock_out_items`;
CREATE TABLE `stock_out_transaction_stock_out_items` (
  `sales_order_no` varchar(45) DEFAULT NULL,
  `stockout_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out_transaction_stock_out_items`
--

/*!40000 ALTER TABLE `stock_out_transaction_stock_out_items` DISABLE KEYS */;
INSERT INTO `stock_out_transaction_stock_out_items` (`sales_order_no`,`stockout_id`) VALUES 
 ('SO-0000058',22),
 ('SO-0000059',23),
 ('SO-0000059',24),
 ('SO-0000059',25),
 ('SO-0000059',26),
 ('SO-0000059',27),
 ('SO-0000060',28),
 ('SO-0000061',29),
 ('SO-0000062',30),
 ('SO-0000063',31),
 ('SO-0000063',32),
 ('SO-0000063',33),
 ('SO-0000063',34),
 ('SO-0000063',35),
 ('SO-0000063',36),
 ('SO-0000063',37),
 ('SO-0000063',38),
 ('SO-0000063',39),
 ('SO-0000063',40),
 ('SO-0000063',41),
 ('SO-0000063',42),
 ('SO-0000064',43),
 ('SO-0000064',44),
 ('SO-0000064',45),
 ('SO-0000064',46),
 ('SO-0000065',47),
 ('SO-0000065',48),
 ('SO-0000065',49),
 ('SO-0000065',50),
 ('SO-0000065',51),
 ('SO-0000066',52),
 ('SO-0000066',53),
 ('SO-0000067',54);
/*!40000 ALTER TABLE `stock_out_transaction_stock_out_items` ENABLE KEYS */;


--
-- Definition of table `temp`
--

DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `item_id` int(10) unsigned DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `ending_balance` double(10,2) DEFAULT NULL,
  `item_qty` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` (`item_id`,`item_code`,`ending_balance`,`item_qty`) VALUES 
 (1,'CBM',8.00,8.00),
 (2,'CSM',3.00,3.00),
 (3,'CGM',28.00,28.00),
 (4,'CLM',16.00,16.00),
 (5,'BSC',10.00,10.00),
 (6,'BFC',20.00,20.00),
 (7,'Milko Plus',12.00,12.00),
 (8,'NSP',95.00,95.00),
 (9,'NGP',153.00,153.00),
 (10,'NBP',148.00,148.00),
 (11,'PSP',79.00,79.00),
 (12,'LSP',54.00,54.00),
 (13,'PGP',1.00,1.00),
 (14,'PGR',3.00,3.00),
 (15,'NLB',16.00,16.00),
 (16,'NLB-pack',1.00,1.00),
 (17,'NLP',40.00,40.00),
 (18,'NLP-pack',1.00,1.00),
 (19,'HSC',7.00,7.00),
 (20,'HGP',20.00,20.00),
 (21,'HFP',14.00,14.00),
 (22,'PDP (s)',31.00,31.00),
 (23,'PDP (o)',34.00,34.00),
 (24,'7 Kinds',12.00,12.00),
 (25,'Slasher',6.00,6.00),
 (26,'C-Corn',32.00,32.00),
 (27,'Christine',15.00,15.00),
 (28,'RED RICE',14.00,14.00),
 (29,'Royal Crown',194.00,194.00),
 (30,'Honey ',116.00,116.00),
 (31,'THB Booster',1.00,1.00),
 (32,'THB Booster-pack',1.00,1.00),
 (33,'THB Developer',6.00,6.00),
 (34,'THB Developer-pack',1.00,1.00),
 (35,'THB Enertone',1.00,1.00),
 (36,'THB Enertone-pack',1.00,1.00),
 (37,'THB Platinum',6.00,6.00),
 (38,'THB Platinum-pack',1.00,1.00),
 (39,'THB Hi-Protein',1.00,1.00),
 (40,'THB Hi-Protein-pack',1.00,1.00),
 (41,'THB Successor',1.00,1.00),
 (42,'THB Successor-pack',1.00,1.00),
 (43,'THB Multigrain',1.00,1.00),
 (44,'THB Multigrain-pack',1.00,1.00),
 (45,'THB Hi-Lander',1.00,1.00),
 (46,'THB Hi-Lander-pack',1.00,1.00),
 (47,'FRYMASH',10.00,10.00),
 (48,'PBC',5.00,5.00),
 (49,'PBS',1.00,1.00),
 (50,'PBG',4.00,4.00),
 (51,'PBF',5.00,5.00),
 (52,'SBS',23.00,23.00),
 (53,'SBG',1.00,1.00),
 (54,'SBF',1.00,1.00),
 (55,'Apralyte 6g x 48',1.00,1.00),
 (56,'Apralyte 6g (pcs)',1.00,1.00),
 (57,'Bacterid 100ml',1.00,1.00),
 (58,'Bacterid 10ml',1.00,1.00),
 (59,'Baxidil SE 6g x 48',1.00,1.00),
 (60,'Baxidil SE 6g (pcs)',1.00,1.00),
 (61,'Baxidil 7g x 48',1.00,1.00),
 (62,'Baxidil 7g (pcs)',1.00,1.00),
 (63,'Bexan SP 100ml',1.00,1.00),
 (64,'Bexan SP 10ml',1.00,1.00),
 (65,'Bexan SP 20ml',1.00,1.00),
 (66,'Bexan XP 100ml',1.00,1.00),
 (67,'Bexan XP 20ml',1.00,1.00),
 (68,'Bexan XP 10ml',1.00,1.00),
 (69,'Electrogen D+ 20g x 12',1.00,1.00),
 (70,'Electrogen D+ 20g (pcs)',1.00,1.00),
 (71,'Jectran Premium 100ml',1.00,1.00),
 (72,'Jectran Premium 20ml',1.00,1.00),
 (73,'Jectran Premium 10ml',1.00,1.00),
 (74,'Latigo 1000 SD 5g x 48',1.00,1.00),
 (75,'Latigo 1000 SD 5g (pcs)',1.00,1.00),
 (76,'Latigo 1000 MD 10g x 24',1.00,1.00),
 (77,'Latigo 1000 MD 10g (pcs)',1.00,1.00),
 (78,'Major D 20ml x 30',1.00,1.00),
 (79,'Major D 20ml (pcs)',1.00,1.00),
 (80,'Mammavet 100ml',1.00,1.00),
 (81,'Mammavet 10ml',1.00,1.00),
 (82,'Sustalin LA 100ml',1.00,1.00),
 (83,'Sustalin LA 10ml',1.00,1.00),
 (84,'Vetracin Classic 5g x 48 ',1.00,1.00),
 (85,'Vetracin Classic 5g (pcs)',1.00,1.00),
 (86,'Vetracin Gold 5g x 48',0.00,0.00),
 (87,'Vetracin Gold 5g (pcs)',1.00,1.00),
 (88,'Vetracin Gold Capsule',1.00,1.00),
 (89,'Vetracin Gold Capsule (pcs)',1.00,1.00),
 (90,'Vetracin Premium 5g x 48',1.00,1.00),
 (91,'Vetracin Premium 5g (pcs)',1.00,1.00),
 (92,'Viton-500 10ml',1.00,1.00),
 (93,'Cecical 200g',1.00,1.00),
 (94,'Pidro 2.4g x 50',1.00,1.00),
 (95,'Pidro 2.4g (pcs)',1.00,1.00),
 (96,'V-22 200g',1.00,1.00),
 (97,'V-22 Tablet 100 ',1.00,1.00),
 (98,'DCM 50ml',1.00,1.00),
 (99,'Redbik 100ml',1.00,1.00),
 (100,'Redbik 10ml',1.00,1.00),
 (101,'TMPS Pig Doser 120ml',1.00,1.00),
 (102,'Amtyl 500 100s',1.00,1.00),
 (103,'Amtyl 500 (pcs)',-29.00,-29.00),
 (104,'B-50 Forteen 200s',1.00,1.00),
 (105,'B-50 Forteen (pcs)',1.00,1.00),
 (106,'Belamyl 100ml',1.00,1.00),
 (107,'Belamyl 20ml',1.00,1.00),
 (108,'Belamyl 10ml',1.00,1.00),
 (109,'Belamyl 50ml',1.00,1.00),
 (110,'Calcium Lactate ',1.00,1.00),
 (111,'Calcium Lactate (pcs)',1.00,1.00),
 (112,'Choramphenicol 500g ',1.00,1.00),
 (113,'Choramphenicol 500g (pcs)',1.00,1.00),
 (114,'Combinex 40g',1.00,1.00),
 (115,'Combinex 86g',1.00,1.00),
 (116,'Dextrolyte 100ml',1.00,1.00),
 (117,'Disposable Syringe 10ml',1.00,1.00),
 (118,'Disposable Syringe 5ml',1.00,1.00),
 (119,'Disposable Syringe 3ml',1.00,1.00),
 (120,'Disposable Syringe 2.5ml',1.00,1.00),
 (121,'Disposable Syringe 1ml',1.00,1.00),
 (122,'Doxylak Forte 7g x 48',1.00,1.00),
 (123,'Doxylak Forte 7g (pcs)',1.00,1.00),
 (124,'Electrolyte Proto-lyte 250ml',1.00,1.00),
 (125,'Hammer 200s',1.00,1.00),
 (126,'Hammer (pcs)',-19.00,-19.00),
 (127,'LDI-B12 100s',1.00,1.00),
 (128,'LDI-B12 (pcs)',1.00,1.00),
 (129,'Multivitamins',1.00,1.00),
 (130,'Multivitamins (pcs)',1.00,1.00),
 (131,'Nutridrench 15ml',1.00,1.00),
 (132,'Trisulak 7g x 48',1.00,1.00),
 (133,'Trisulak 7g (pcs)',1.00,1.00),
 (134,'Viminolak 100s',1.00,1.00),
 (135,'Viminolak (pcs)',1.00,1.00),
 (136,'B-12 AAFEES',1.00,1.00),
 (137,'Wormal 100s',1.00,1.00),
 (138,'Wormal (pcs)',1.00,1.00),
 (139,'Complexor 3000 10ml',1.00,1.00),
 (140,'Pusham 10ml x 30',1.00,1.00),
 (141,'Pusham 10ml (pcs)',1.00,1.00),
 (142,'Tiki-Tiki',-7.00,-7.00),
 (143,'FCP',1.00,1.00),
 (144,'FCC',3.00,3.00),
 (145,'KOI',15.00,15.00),
 (146,'Fine Corn',6.00,6.00),
 (147,'RFG',11.00,11.00),
 (148,'FRYBOOSTER',3.00,3.00),
 (149,'Slashertone',1.00,1.00);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;


--
-- Definition of table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
CREATE TABLE `useraccount` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccount`
--

/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` (`username`,`password`,`user_type`) VALUES 
 ('admin','21232f297a57a5a743894a0e4a801fc3','admin'),
 ('user','4297f44b13955235245b2497399d7a93','user');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;


--
-- Definition of view `view_ending_balance`
--

DROP TABLE IF EXISTS `view_ending_balance`;
DROP VIEW IF EXISTS `view_ending_balance`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ending_balance` AS select `items`.`item_code` AS `item_code`,`items`.`item_qty` AS `item_qty` from `items`;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
