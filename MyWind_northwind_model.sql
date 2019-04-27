-- MySQL dump 10.16  Distrib 10.2.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: MyWind_northwind_model
-- ------------------------------------------------------
-- Server version	10.2.22-MariaDB-10.2.22+maria~xenial-log

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
-- Table structure for table `appstring`
--

DROP TABLE IF EXISTS `appstring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appstring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stringData` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appstring`
--

LOCK TABLES `appstring` WRITE;
/*!40000 ALTER TABLE `appstring` DISABLE KEYS */;
INSERT INTO `appstring` VALUES (2,'Northwind Traders'),(3,'Cannot remove posted inventory!'),(4,'Back ordered product filled for Order #|'),(5,'Discounted price below cost!'),(6,'Insufficient inventory.'),(7,'Insufficient inventory. Do you want to create a purchase order?'),(8,'Purchase order were successfully created for | product'),(9,'There are no product below their respective reorder levels'),(10,'Must specify customer name!'),(11,'Restocking will generate purchase order for all product below desired inventory levels.  Do you want to continue?'),(12,'Cannot create purchase order.  No supplier listed for specified product'),(13,'Discounted price is below cost!'),(14,'Do you want to continue?'),(15,'Order is already invoiced. Do you want to print the invoice?'),(16,'Order does not contain any line items'),(17,'Cannot create invoice!  Inventory has not been allocated for each specified product.'),(18,'Sorry, there are no sales in the specified time period'),(19,'Product successfully restocked.'),(21,'Product does not need restocking! Product is already at desired inventory level.'),(22,'Product restocking failed!'),(23,'Invalid login specified!'),(24,'Must first select reported!'),(25,'Changing supplier will remove purchase line items, continue?'),(26,'Purchase order were successfully submitted for | product.  Do you want to view the restocking report?'),(27,'There was an error attempting to restock inventory levels.'),(28,'| product(s) were successfully restocked.  Do you want to view the restocking report?'),(29,'You cannot remove purchase line items already posted to inventory!'),(30,'There was an error removing one or more purchase line items.'),(31,'You cannot modify quantity for purchased product already received or posted to inventory.'),(32,'You cannot modify price for purchased product already received or posted to inventory.'),(33,'Product has been successfully posted to inventory.'),(34,'Sorry, product cannot be successfully posted to inventory.'),(35,'There are order with this product on back order.  Would you like to fill them now?'),(36,'Cannot post product to inventory without specifying received date!'),(37,'Do you want to post received product to inventory?'),(38,'Initialize purchase, order, and inventory data?'),(39,'Must first specify employee name!'),(40,'Specified user must be logged in to approve purchase!'),(41,'Purchase order must contain completed line items before it can be approved'),(42,'Sorry, you do not have permission to approve purchases.'),(43,'Purchase successfully approved'),(44,'Purchase cannot be approved'),(45,'Purchase successfully submitted for approval'),(46,'Purchase cannot be submitted for approval'),(47,'Sorry, purchase order does not contain line items'),(48,'Do you want to cancel this order?'),(49,'Canceling an order will permanently delete the order.  Are you sure you want to cancel?'),(100,'Your order was successfully canceled.'),(101,'Cannot cancel an order that has items received and posted to inventory.'),(102,'There was an error trying to cancel this order.'),(103,'The invoice for this order has not yet been created.'),(104,'Shipping information is not complete.  Please specify all shipping information and try again.'),(105,'Cannot mark as shipped.  Order must first be invoiced!'),(106,'Cannot cancel an order that has already shipped!'),(107,'Must first specify salesperson!'),(108,'Order is now marked closed.'),(109,'Order must first be marked shipped before closing.'),(110,'Must first specify payment information!'),(111,'There was an error attempting to restock inventory levels.  | product(s) were successfully restocked.'),(112,'You must supply a Unit Cost.'),(113,'Fill back ordered product, Order #|'),(114,'Purchase generated based on Order #|');
/*!40000 ALTER TABLE `appstring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `businessPhone` varchar(25) DEFAULT NULL,
  `homePhone` varchar(25) DEFAULT NULL,
  `mobilePhone` varchar(25) DEFAULT NULL,
  `faxNumber` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `stateProvince` varchar(50) DEFAULT NULL,
  `zipPostalCode` varchar(15) DEFAULT NULL,
  `countryRegion` varchar(50) DEFAULT NULL,
  `webPage` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `attachments` longblob DEFAULT NULL,
  `random_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`companyName`),
  KEY `firstName` (`firstName`),
  KEY `lastName` (`lastName`),
  KEY `zipPostalCode` (`zipPostalCode`),
  KEY `stateProvince` (`stateProvince`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Company A','Bedecs','Anna','fankunding@gmail.com','Owner','328.947.5912 x01073','+1.803.497.4885','235.832.6063 x346','316.629.7725 x9165','758 Dach Manor Apt. 224','Seattle','WA','71570','USA','http://ziemann.com/ut-et-ipsum-voluptatibus-consequuntur-error-amet.html','Ut molestias rerum excepturi nisi. Architecto totam cumque dicta quos. Magni molestias assumenda cumque.','Tempore reiciendis omnis et quo veritatis temporibus. Vitae ea sint veniam numquam. Minus aliquid doloremque non magni voluptate quae. Illo est libero et at autem velit.','1990-11-04 00:00:00','1989-05-23 00:00:00','1988-03-28 00:00:00','0000-00-00 00:00:00'),(2,'Company B','Gratacos Solsona','Antonio','kayli30@yahoo.com','Owner','769.418.8331 x464','(780) 372-2854 x17904','(435) 426-7335','1-817-285-2617 x4702','94313 Goyette Streets Apt. 333','Boston','MA','30320-0237','USA','http://reichel.net/error-ut-fugiat-eum-occaecati-aut','Asperiores asperiores dolores mollitia ipsam repudiandae ut. Aut quam nam enim voluptatem. Dolores est exercitationem ad at.','Quo magni dolorem voluptatem. Laudantium corrupti tempora tempora ut tempore ut. Adipisci eos nisi rerum consectetur vel quos et. Ut neque saepe voluptas exercitationem aut.','2012-11-09 00:00:00','2006-07-27 00:00:00','2000-11-01 00:00:00','0000-00-00 00:00:00'),(3,'Company C','Axen','Thomas','block.lillie@hotmail.com','Purchasing Representative','(607) 274-3594 x8967','(581) 620-8562 x7328','+1-595-292-4636','645-607-7925','76304 Vicenta Route Apt. 028','Los Angelas','CA','21134','USA','http://cremin.biz/','Molestiae ab commodi est ipsam. Facilis dolores suscipit sit ea et rem deleniti beatae. Animi sed tempora facilis sed eos rerum quis est. Id officia et aut illo.','Est aut omnis alias quia quis eveniet. Ducimus blanditiis magnam ut blanditiis qui eos debitis corrupti. Sunt ut recusandae magni aut. Aliquam ea ullam iste earum.','1982-09-18 00:00:00','2001-10-18 00:00:00','2007-06-09 00:00:00','0000-00-00 00:00:00'),(4,'Company D','Lee','Christina','desmond.kohler@ohara.com','Purchasing Manager','381.730.0052','+1-346-562-0472','+14698332631','423.218.9693 x9354','9432 Shanie Orchard','New York','NY','15528-6394','USA','http://www.rolfson.com/voluptates-reprehenderit-deleniti-quo-aliquid-esse.html','Modi distinctio quae consequatur nesciunt. Et rerum ipsam quisquam et deserunt rem. Sequi sint debitis unde asperiores autem error eum.','Sint doloribus aut molestiae suscipit. Non explicabo est mollitia eos. Eaque eaque earum vel ut quis vel ducimus aut.','1982-02-17 00:00:00','2014-11-30 00:00:00','2018-02-19 00:00:00','0000-00-00 00:00:00'),(5,'Company E','O’Donnell','Martin','dcronin@kilback.com','Owner','914-610-6790 x8624','(793) 305-7196 x0791','654-427-5723 x5247','+1.976.756.4100','24859 Thiel Meadows','Minneapolis','MN','35291-1858','USA','https://www.lemke.com/odio-cumque-in-dolor','Aut est soluta et maxime et quia modi. Suscipit voluptatem doloremque corporis pariatur deserunt aut et. Iure laboriosam delectus pariatur impedit aut. In distinctio corporis architecto soluta.','Dolor occaecati quibusdam magni consequuntur. Eum aut autem provident dolores vel.','1976-03-14 00:00:00','1997-07-24 00:00:00','2014-01-26 00:00:00','0000-00-00 00:00:00'),(6,'Company F','Pérez-Olaeta','Francisco','bernier.alan@gorczany.com','Purchasing Manager','224-256-6893','+1.538.308.2970','(337) 967-0559 x195','1-414-476-3541','336 Torp Alley','Milwaukee','WI','14303','USA','http://lynch.net/numquam-tenetur-ducimus-consequatur-magnam-illo-culpa-dolorem.html','Deserunt quia a vel odit iste quo. Et officia excepturi omnis consequatur et modi neque. Asperiores totam dolorem voluptas.','Reiciendis aliquam voluptas culpa ullam sapiente nemo. Pariatur odio quos atque quidem. Minima ducimus quam distinctio quis.','2012-08-31 00:00:00','1999-12-20 00:00:00','2015-06-10 00:00:00','0000-00-00 00:00:00'),(7,'Company G','Xie','Ming-Yang','arnulfo.schamberger@rogahn.com','Owner','1-279-641-1636 x83813','1-347-869-9798 x3954','+1-784-823-7302','+1.302.437.2393','705 Violette Shore','Boise','ID','00377','USA','http://www.prohaska.info/facere-rerum-animi-voluptatum-velit-et-commodi-quisquam.html','Accusantium labore distinctio ut laborum eius ipsa qui consequuntur. Sapiente possimus aut temporibus quaerat dolores quia. Magnam quis quae reiciendis non laudantium.','Et natus possimus eligendi modi deserunt. At aliquam praesentium eum hic aut facilis. Et enim magnam omnis minima eveniet quo.','2000-07-28 00:00:00','2011-01-18 00:00:00','1991-06-01 00:00:00','0000-00-00 00:00:00'),(8,'Company H','Andersen','Elizabeth','jannie35@gmail.com','Purchasing Representative','987.937.5704 x330','1-723-547-4827','(934) 697-7488','+1-915-602-4013','96964 Kenny Street Apt. 241','Portland','OR','63375','USA','https://howell.com/ab-distinctio-nobis-delectus-adipisci-ipsum-expedita-iure-et.html','Earum accusamus tempora beatae voluptatem reiciendis. Iure assumenda sed sit autem nam libero. Saepe debitis quia cumque consequatur. Ad facilis amet voluptatibus voluptas.','Recusandae facere modi vitae harum enim et temporibus. Dolor vitae maiores error. Necessitatibus quaerat esse ipsam quia aut.','2016-06-15 00:00:00','1985-11-28 00:00:00','1986-05-16 00:00:00','0000-00-00 00:00:00'),(9,'Company I','Mortensen','Sven','ankunding.kristy@bashirian.com','Purchasing Manager','1-502-842-4087 x6181','+1-519-998-5043','552.973.5939','+1 (778) 230-2424','94076 Powlowski Keys','Salt Lake City','UT','12800','USA','http://www.lemke.com/','Excepturi tempora vero officia ex ipsum. Ut optio velit facere deserunt officiis. Delectus nisi aut adipisci aliquid modi sed rerum. Nesciunt nemo similique possimus repellat sed rem ut voluptatibus.','Facere aperiam consequatur voluptatibus ea fuga in. Repudiandae voluptatem deserunt voluptatem debitis doloribus ut.','1991-08-13 00:00:00','1972-08-30 00:00:00','2011-07-15 00:00:00','0000-00-00 00:00:00'),(10,'Company J','Wacker','Roland','schiller.duncan@miller.com','Purchasing Manager','+1-920-469-7838','1-958-497-5231','+1.509.493.2040','+1-725-557-7025','362 Kiehn Village Suite 712','Chicago','IL','54419-7206','USA','http://lang.com/laudantium-sed-quisquam-culpa-ad-perferendis-illum-fugit-omnis','Porro quisquam labore voluptatem qui eos neque. Ipsum voluptas aut magni aut labore incidunt corporis consectetur. Inventore in explicabo officiis est. Accusamus quia quia iure sed ut et dolorum magni.','Eius nemo veniam voluptatum ut eum ipsum voluptate. Consequuntur autem et eaque sunt unde sit repellendus. Odit molestiae voluptate non nulla sit aliquid sit. Recusandae quas nemo rerum atque dolore veritatis repudiandae.','2010-04-25 00:00:00','1986-09-28 00:00:00','1986-07-17 00:00:00','0000-00-00 00:00:00'),(11,'Company K','Krschne','Peter','zlarson@yahoo.com','Purchasing Manager','1-835-915-5608','+1-945-810-1930','(791) 683-0890 x611','478-965-0856','165 Kilback Station','Miami','FL','62541-1638','USA','http://tromp.com/','Sunt velit voluptas aliquam facilis. Et iure amet facilis est in. Aut quia maiores minima rerum. Impedit officiis id eligendi molestiae odit aliquam aperiam.','Nesciunt sint omnis esse neque praesentium vel eum similique. Vel minus asperiores esse praesentium dolor est id. Vitae nisi quos reprehenderit dolores.','2012-02-09 00:00:00','2009-02-10 00:00:00','2004-06-22 00:00:00','0000-00-00 00:00:00'),(12,'Company L','Edwards','John','mathew.green@graham.com','Purchasing Manager','1-579-297-7574 x6155','(271) 828-0563 x05102','(560) 210-9511','356-202-5656 x691','517 Delia Valleys','Las Vegas','NV','18757','USA','https://jacobs.biz/natus-quam-quia-nulla.html','Architecto dolores consequatur sapiente aperiam dolores reprehenderit praesentium. Id qui aliquid sint et et a omnis.','Eveniet qui assumenda hic. Reprehenderit nisi et est eligendi quia aliquid et. Ipsum et eum cupiditate et corrupti ratione. Corrupti voluptatum iste voluptatibus voluptatem nesciunt.','1980-08-17 00:00:00','1988-08-02 00:00:00','1970-03-28 00:00:00','0000-00-00 00:00:00'),(13,'Company M','Ludick','Andre','bernier.mallie@yahoo.com','Purchasing Representative','+17128968086','1-535-460-1453 x68212','1-493-592-1961 x0479','473-284-4345','442 Herman Track Apt. 010','Memphis','TN','47119','USA','http://www.beahan.com/sit-dolores-qui-tempore-rerum-porro-dolorum-aliquid','Provident iusto omnis architecto ut. In ut totam fugit. Quibusdam voluptatibus nam labore veritatis asperiores et.','Harum ut eligendi eos dolores itaque sed saepe eum. Maxime nihil reiciendis rerum vitae ipsa labore nobis. Beatae incidunt vel non rerum.','1998-05-10 00:00:00','2006-11-07 00:00:00','1999-12-10 00:00:00','0000-00-00 00:00:00'),(14,'Company N','Grilo','Carlos','kshlerin.wilford@hotmail.com','Purchasing Representative','202-588-5647 x68805','691.854.2789 x176','+1 (778) 727-9711','(859) 568-4812 x33182','5458 McClure Rue','Denver','CO','23471-7122','USA','http://www.champlin.info/','Earum omnis consequatur vel et repellat itaque voluptate. Ea quis qui est. Architecto ducimus amet repudiandae tenetur excepturi facilis ut.','Ab illo nihil cumque eaque porro aut. Sint ab sit velit autem voluptas et quo. Voluptatem voluptas modi praesentium vero adipisci assumenda et est. Accusantium dolorem voluptas et quia. Non dolorum hic aut labore maxime corrupti animi aut.','2010-01-12 00:00:00','2010-07-26 00:00:00','1973-02-01 00:00:00','0000-00-00 00:00:00'),(15,'Company O','Kupkova','Helena','robin24@pfeffer.com','Purchasing Manager','913.864.1685','(815) 669-3880 x4735','1-768-502-0647 x29441','702.912.1244','657 Melany Circles Suite 911','Honolulu','HI','00215-7143','USA','http://johns.com/omnis-ut-ducimus-nihil-atque-occaecati-error-et','Est molestias ea laborum sit libero. Dolorem aspernatur dolor est harum illum rem laboriosam. Facere quasi quod quia fugit.','Pariatur ipsum nobis est facere autem. Vel in earum hic veritatis repellat et et id. Ad ut amet voluptates veniam aut. Deserunt vel voluptas voluptates velit et.','1999-11-21 00:00:00','1975-10-22 00:00:00','2011-01-25 00:00:00','0000-00-00 00:00:00'),(16,'Company P','Goldschmidt','Daniel','kbatz@zemlak.com','Purchasing Representative','998-691-0470','1-260-328-4645','1-995-477-8266 x223','1-423-588-0084','4394 Von Parkway Suite 047','San Francisco','CA','04010-0078','USA','http://abbott.info/fugit-veritatis-voluptate-doloremque-velit-mollitia-eaque-aut.html','Alias laudantium consectetur reiciendis rerum sunt. Esse est et tempora incidunt et.','Quis corrupti neque non nostrum aut accusamus sint. Et ut atque alias ullam possimus et. Sint fuga dolores quibusdam et ratione quas sunt.','1979-08-24 00:00:00','1994-11-03 00:00:00','1978-02-01 00:00:00','0000-00-00 00:00:00'),(17,'Company Q','Bagel','Jean Philippe','cordell.crooks@gmail.com','Owner','280.962.6634 x40842','1-718-984-9415','+18543323310','881.982.5712','13013 Breanne Underpass Suite 049','Seattle','WA','12127-1201','USA','http://www.baumbach.com/minima-excepturi-et-asperiores-consequatur','Qui harum perferendis omnis nulla nesciunt eligendi. Deserunt eos asperiores nostrum id perspiciatis. Magnam non provident corrupti praesentium. Soluta aliquam nihil cum perspiciatis quis sunt.','Non tempora pariatur at pariatur et ipsum adipisci laboriosam. Cum voluptatem nostrum facere error velit voluptatem. Ullam sequi maxime aut ducimus accusamus. Voluptatem id consequuntur est culpa voluptatibus cupiditate rerum.','1998-06-30 00:00:00','1999-08-17 00:00:00','2003-08-14 00:00:00','0000-00-00 00:00:00'),(18,'Company R','Autier Miconi','Catherine','jarrod90@windler.com','Purchasing Representative','(479) 857-5646 x68819','+15164817035','(232) 706-2962 x15077','+14289337857','75628 Ferne Canyon Suite 202','Boston','MA','00023','USA','https://www.ortiz.com/quia-animi-culpa-eveniet-commodi-est-est-vitae','Pariatur veniam cupiditate enim recusandae voluptates natus aut. Vitae explicabo sit accusamus qui quas. Dolor reprehenderit temporibus et laborum neque necessitatibus voluptas. Reiciendis reiciendis culpa odio enim vero iure.','Exercitationem enim sit accusamus veniam excepturi. Non ut sit corporis. Aut qui quia cupiditate repellendus voluptatem.','1987-09-25 00:00:00','2005-08-23 00:00:00','1994-04-08 00:00:00','0000-00-00 00:00:00'),(19,'Company S','Eggerer','Alexander','mossie.hickle@cormier.com','Accounting Assistant','307.269.9130 x3688','+14057351447','456-496-4606','976-648-6641 x851','2157 Wintheiser Circles Apt. 244','Los Angelas','CA','68477','USA','https://www.wehner.com/aut-non-placeat-dolores-maxime-sunt-ut-consequatur','Commodi aliquid ipsam ipsum ea perspiciatis voluptatem. Dolores voluptatem dolorum quasi accusamus aut magnam sit. Voluptatibus esse est quibusdam occaecati neque possimus. Qui dolore adipisci incidunt.','Hic voluptatibus neque at sint consequatur. Tenetur ea praesentium tempora dolor.','1993-04-20 00:00:00','1976-01-29 00:00:00','1984-12-01 00:00:00','0000-00-00 00:00:00'),(20,'Company T','Li','George','mekhi94@yahoo.com','Purchasing Manager','1-271-617-5196 x553','854-849-8825 x81935','684.444.3119 x15033','+14799459839','121 Gislason Shoals','New York','NY','92847','USA','http://dickinson.com/officiis-aliquid-est-assumenda-velit-voluptas-quasi','Fuga eos et quos ullam dicta ex. Et natus ipsa beatae animi magnam quam. Numquam magnam libero dolor fugit est sit tempora.','Id laboriosam quis sunt nisi rerum et dolor. Iure quidem sapiente deleniti. Qui autem et voluptatibus autem sapiente placeat tenetur.','1970-04-18 00:00:00','1997-02-03 00:00:00','1986-04-16 00:00:00','0000-00-00 00:00:00'),(21,'Company U','Tham','Bernard','layne.hermann@corkery.net','Accounting Manager','895-722-8271 x0850','+1-762-763-9966','1-203-660-0664 x9080','+1.249.951.1693','7914 Lavon Court Suite 487','Minneapolis','MN','46172','USA','http://schiller.com/ullam-quam-praesentium-voluptates-voluptatem-aut-incidunt-provident','Laborum laborum consequatur soluta quia minima. Rerum deleniti vel voluptatem nemo voluptatem vel. Fuga laudantium enim est saepe cupiditate a perferendis. Aspernatur et cupiditate modi veritatis consequatur velit dolorem facilis.','Distinctio occaecati cum nihil commodi mollitia fugiat rem. Cum omnis quo explicabo atque deleniti deserunt sed quis.','1970-03-15 00:00:00','2003-12-26 00:00:00','2010-04-29 00:00:00','0000-00-00 00:00:00'),(22,'Company V','Ramos','Luciana','grover.medhurst@gmail.com','Purchasing Assistant','476-868-6212','737-510-8742 x4348','468-470-7721 x10219','461.691.0233 x723','40046 Eudora Oval','Milwaukee','WI','95511','USA','http://pacocha.biz/','Cumque consequatur numquam et voluptatem numquam illum consequatur. Maxime id eaque natus ut illo et. Quis illum et praesentium voluptatibus at est.','Quia deserunt accusamus inventore sunt impedit ducimus. Quo ab occaecati dicta animi voluptatem sed corrupti. Autem nam sapiente quo.','1987-06-18 00:00:00','1993-03-27 00:00:00','1977-12-27 00:00:00','0000-00-00 00:00:00'),(23,'Company W','Entin','Michael','cormier.pauline@hotmail.com','Purchasing Manager','+12262755892','707-694-1024','439.241.1260 x316','1-650-699-8462','25129 Nathen Run','Portland','OR','48990','USA','http://champlin.com/quaerat-suscipit-commodi-deserunt-ipsum','Temporibus eius natus dolorem. Repudiandae et quo animi. Eum omnis officia minus exercitationem quibusdam. Totam magnam sint non omnis adipisci vero.','Deleniti laudantium et expedita eaque natus quam unde. Eaque minus dolor error facilis vero cumque. Sit minus laboriosam qui minima temporibus voluptate architecto ipsa. Explicabo harum ipsam ipsum est non.','2002-04-05 00:00:00','2017-10-07 00:00:00','1985-06-07 00:00:00','0000-00-00 00:00:00'),(24,'Company X','Hasselberg','Jonas','zemlak.henriette@gmail.com','Owner','(304) 688-1511','+13073416470','+1-930-212-5244','(570) 477-9030','96284 Rocky Rapid Suite 992','Salt Lake City','UT','95028','USA','http://cremin.org/','Aliquam eaque modi nesciunt sunt deserunt atque debitis. Numquam quod voluptatem voluptatibus est recusandae. Eum rerum vitae odio eaque doloremque. Necessitatibus non amet est alias quaerat.','Quibusdam ratione sed voluptatem porro. Sapiente dolor libero accusantium molestiae sint et culpa. Impedit in omnis sed alias quia. Labore sint laborum iusto sequi sed omnis et officiis.','2011-03-29 00:00:00','2005-02-13 00:00:00','1981-10-02 00:00:00','0000-00-00 00:00:00'),(25,'Company Y','Rodman','John','bella.adams@runte.info','Purchasing Manager','1-540-248-6010 x909','+1-605-324-0495','609-415-7562 x981','1-774-210-6853 x91071','382 Bridie Terrace','Chicago','IL','73840-8322','USA','http://www.murray.com/','Aut possimus asperiores autem dolorem molestiae. Omnis rerum et natus ratione et expedita illum. Sunt velit et velit magnam aperiam. Est id cumque explicabo recusandae error cumque.','Fugiat sequi dolorum expedita. Illum est in dolorem sint corporis. Nihil soluta incidunt occaecati distinctio quidem mollitia.','2010-10-13 00:00:00','2011-04-25 00:00:00','2007-01-12 00:00:00','0000-00-00 00:00:00'),(26,'Company Z','Liu','Run','hegmann.ernest@yahoo.com','Accounting Assistant','(848) 355-4468 x6175','(763) 665-3930','1-789-847-7832','707-747-7121 x4457','62003 Percival Meadow','Miami','FL','17229','USA','http://www.connelly.biz/','Voluptas illo corporis explicabo dolor autem minima. Aliquid quae nobis voluptas necessitatibus. Velit consequatur alias et et quidem pariatur.','Vero necessitatibus ut est. Ipsa incidunt eveniet tempore sunt. Dicta molestias tempore eveniet. Quis inventore excepturi dolore expedita voluptatem quam et.','2014-10-20 00:00:00','2012-12-04 00:00:00','1971-08-28 00:00:00','0000-00-00 00:00:00'),(27,'Company AA','Toh','Karen','francisca34@yahoo.com','Purchasing Manager','245-644-8793 x24819','1-653-219-7920 x196','481-598-6089','681-291-3907','984 Brekke Ramp','Las Vegas','NV','12284-8010','USA','http://koelpin.com/eos-illum-amet-qui-officiis-consequatur.html','Corporis iure officiis ipsum eaque vel. Aut error sint eligendi quia accusamus ad. Quibusdam aut dolor dolor sunt nisi dolores.','Nemo nemo eos pariatur ut est deserunt. Dignissimos dolor nemo temporibus fugiat quia voluptatibus. Soluta labore dolorem consequatur vero quod saepe porro.','1998-01-14 00:00:00','2018-07-25 00:00:00','2016-07-26 00:00:00','0000-00-00 00:00:00'),(28,'Company BB','Raghav','Amritansh','elton.daugherty@gmail.com','Purchasing Manager','1-514-484-7597 x5673','1-470-248-9594 x2546','+1 (802) 608-3131','439.918.0928 x585','316 Russel Mountains','Memphis','TN','07617-9088','USA','http://oreilly.com/odit-perspiciatis-numquam-voluptate-possimus-laboriosam-dolor','Voluptates autem nemo sapiente qui numquam delectus dolor. Molestiae quia aperiam sit odio. Quia voluptate totam ut impedit perspiciatis necessitatibus omnis. Nihil perferendis ex omnis.','Eveniet magnam quia quas est. Sit pariatur et quae voluptas sit qui. Rerum earum laboriosam et earum.','2002-11-06 00:00:00','2009-02-05 00:00:00','1975-07-07 00:00:00','0000-00-00 00:00:00'),(29,'Company CC','Lee','Soo Jung','salma05@halvorson.org','Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 29th Street','Denver','CO','99999','USA',NULL,NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `businessPhone` varchar(25) DEFAULT NULL,
  `homePhone` varchar(25) DEFAULT NULL,
  `mobilePhone` varchar(25) DEFAULT NULL,
  `faxNumber` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `stateProvince` varchar(50) DEFAULT NULL,
  `zipPostalCode` varchar(15) DEFAULT NULL,
  `countryRegion` varchar(50) DEFAULT NULL,
  `webPage` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `attachments` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`company`),
  KEY `firstName` (`firstName`),
  KEY `lastName` (`lastName`),
  KEY `zipPostalCode` (`zipPostalCode`),
  KEY `stateProvince` (`stateProvince`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Northwind Traders','Freehafer','Nancy','nancy@northwindtraders.com','Sales Representative','851.337.6179 x148','285-587-3781','784.648.3943 x8904','(682) 690-0021','74952 Gutmann Summit','Seattle','WA','63952-8958','USA','#http://northwindtraders.com#',NULL,''),(2,'Northwind Traders','Cencini','Andrew','andrew@northwindtraders.com','Vice President, Sales','479.504.3143 x214','+1-391-325-8934','236.606.8378 x47347','762.378.7242','6553 Dax Key','Bellevue','WA','72692','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.',''),(3,'Northwind Traders','Kotas','Jan','jan@northwindtraders.com','Sales Representative','(361) 840-0331 x45712','+12709570096','1-310-433-8166','+1 (717) 241-4646','6687 Franco Walk Suite 332','Redmond','WA','09034','USA','http://northwindtraders.com#http://northwindtraders.com/#','Was hired as a sales associate and was promoted to sales representative.',''),(4,'Northwind Traders','Sergienko','Mariya','mariya@northwindtraders.com','Sales Representative','769-837-1708 x9623','959-669-1330','261-788-9180 x007','349.378.6519 x1967','32653 Mia Views','Kirkland','WA','98321-1654','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,''),(5,'Northwind Traders','Thorpe','Steven','steven@northwindtraders.com','Sales Manager','(876) 509-0067','883.623.8618','473.221.8290 x735','1-403-309-0165','82970 Ivory Rapids Suite 020','Seattle','WA','26376-7099','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative and was promoted to sales manager.  Fluent in French.',''),(6,'Northwind Traders','Neipper','Michael','michael@northwindtraders.com','Sales Representative','(385) 269-6135 x628','(437) 550-7073 x5405','437.279.1240 x92513','1-891-459-8695','5873 Amira Brooks Suite 966','Redmond','WA','95737-6388','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in Japanese and can read and write French, Portuguese, and Spanish.',''),(7,'Northwind Traders','Zare','Robert','robert@northwindtraders.com','Sales Representative','513-985-3041 x92498','+1-574-788-5178','+13074204053','565-325-5186 x529','79499 Hackett Road','Seattle','WA','67109','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,''),(8,'Northwind Traders','Giussani','Laura','laura@northwindtraders.com','Sales Coordinator','245.701.6192','995.238.3901 x040','+1-427-878-2072','+17488973067','536 Claudie Estate Apt. 071','Redmond','WA','72697','USA','http://northwindtraders.com#http://northwindtraders.com/#','Reads and writes French.',''),(9,'Northwind Traders','Hellung-Larsen','Anne','anne@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 9th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in French and German.','');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeePrivilege`
--

DROP TABLE IF EXISTS `employeePrivilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeePrivilege` (
  `employee_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`privilege_id`),
  KEY `employee_id` (`employee_id`),
  KEY `privilege_id` (`privilege_id`),
  CONSTRAINT `fkEmployeePrivilegeEmployees1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkEmployeePrivilegePrivilege1` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeePrivilege`
--

LOCK TABLES `employeePrivilege` WRITE;
/*!40000 ALTER TABLE `employeePrivilege` DISABLE KEYS */;
INSERT INTO `employeePrivilege` VALUES (2,2);
/*!40000 ALTER TABLE `employeePrivilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventoryTransactionType`
--

DROP TABLE IF EXISTS `inventoryTransactionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventoryTransactionType` (
  `id` tinyint(4) NOT NULL,
  `typeName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventoryTransactionType`
--

LOCK TABLES `inventoryTransactionType` WRITE;
/*!40000 ALTER TABLE `inventoryTransactionType` DISABLE KEYS */;
INSERT INTO `inventoryTransactionType` VALUES (1,'Purchased'),(2,'Sold'),(3,'On Hold'),(4,'Waste');
/*!40000 ALTER TABLE `inventoryTransactionType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderDetailStat`
--

DROP TABLE IF EXISTS `orderDetailStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderDetailStat` (
  `id` int(11) NOT NULL,
  `statusName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderDetailStat`
--

LOCK TABLES `orderDetailStat` WRITE;
/*!40000 ALTER TABLE `orderDetailStat` DISABLE KEYS */;
INSERT INTO `orderDetailStat` VALUES (0,'None'),(1,'Allocated'),(2,'Invoiced'),(3,'Shipped'),(4,'On Order'),(5,'No Stock');
/*!40000 ALTER TABLE `orderDetailStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderStat`
--

DROP TABLE IF EXISTS `orderStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderStat` (
  `id` tinyint(4) NOT NULL,
  `statusName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderStat`
--

LOCK TABLES `orderStat` WRITE;
/*!40000 ALTER TABLE `orderStat` DISABLE KEYS */;
INSERT INTO `orderStat` VALUES (0,'New'),(1,'Invoiced'),(2,'Shipped'),(3,'Closed');
/*!40000 ALTER TABLE `orderStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderTaxStat`
--

DROP TABLE IF EXISTS `orderTaxStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderTaxStat` (
  `id` tinyint(4) NOT NULL,
  `taxStatName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderTaxStat`
--

LOCK TABLES `orderTaxStat` WRITE;
/*!40000 ALTER TABLE `orderTaxStat` DISABLE KEYS */;
INSERT INTO `orderTaxStat` VALUES (0,'Tax Exempt'),(1,'Taxable');
/*!40000 ALTER TABLE `orderTaxStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilegeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (2,'Purchase Approvals');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productCode` varchar(25) DEFAULT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `standardCost` decimal(19,4) DEFAULT 0.0000,
  `listPrice` decimal(19,4) NOT NULL DEFAULT 0.0000,
  `reorderLevel` int(11) DEFAULT NULL,
  `targetLevel` int(11) DEFAULT NULL,
  `quantityPerUnit` varchar(50) DEFAULT NULL,
  `discontinued` tinyint(1) NOT NULL DEFAULT 0,
  `minimumReorderQuantity` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `attachments` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productCode` (`productCode`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'NWTB-1','Northwind Traders Chai',NULL,13.5000,18.0000,10,40,'10 boxes x 20 bags',0,10,'Beverages',''),(3,'NWTCO-3','Northwind Traders Syrup',NULL,7.5000,10.0000,25,100,'12 - 550 ml bottles',0,25,'Condiments',''),(4,'NWTCO-4','Northwind Traders Cajun Seasoning',NULL,16.5000,22.0000,10,40,'48 - 6 oz jars',0,10,'Condiments',''),(5,'NWTO-5','Northwind Traders Olive Oil',NULL,16.0125,21.3500,10,40,'36 boxes',0,10,'Oil',''),(6,'NWTJP-6','Northwind Traders Boysenberry Spread',NULL,18.7500,25.0000,25,100,'12 - 8 oz jars',0,25,'Jams, Preserves',''),(7,'NWTDFN-7','Northwind Traders Dried Pears',NULL,22.5000,30.0000,10,40,'12 - 1 lb pkgs.',0,10,'Dried Fruit & Nuts',''),(8,'NWTS-8','Northwind Traders Curry Sauce',NULL,30.0000,40.0000,10,40,'12 - 12 oz jars',0,10,'Sauces',''),(14,'NWTDFN-14','Northwind Traders Walnuts',NULL,17.4375,23.2500,10,40,'40 - 100 g pkgs.',0,10,'Dried Fruit & Nuts',''),(17,'NWTCFV-17','Northwind Traders Fruit Cocktail',NULL,29.2500,39.0000,10,40,'15.25 OZ',0,10,'Canned Fruit & Vegetables',''),(19,'NWTBGM-19','Northwind Traders Chocolate Biscuits Mix',NULL,6.9000,9.2000,5,20,'10 boxes x 12 pieces',0,5,'Baked Goods & Mixes',''),(20,'NWTJP-6','Northwind Traders Marmalade',NULL,60.7500,81.0000,10,40,'30 gift boxes',0,10,'Jams, Preserves',''),(21,'NWTBGM-21','Northwind Traders Scones',NULL,7.5000,10.0000,5,20,'24 pkgs. x 4 pieces',0,5,'Baked Goods & Mixes',''),(34,'NWTB-34','Northwind Traders Beer',NULL,10.5000,14.0000,15,60,'24 - 12 oz bottles',0,15,'Beverages',''),(40,'NWTCM-40','Northwind Traders Crab Meat',NULL,13.8000,18.4000,30,120,'24 - 4 oz tins',0,30,'Canned Meat',''),(41,'NWTSO-41','Northwind Traders Clam Chowder',NULL,7.2375,9.6500,10,40,'12 - 12 oz cans',0,10,'Soups',''),(43,'NWTB-43','Northwind Traders Coffee',NULL,34.5000,46.0000,25,100,'16 - 500 g tins',0,25,'Beverages',''),(48,'NWTCA-48','Northwind Traders Chocolate',NULL,9.5625,12.7500,25,100,'10 pkgs',0,25,'Candy',''),(51,'NWTDFN-51','Northwind Traders Dried Apples',NULL,39.7500,53.0000,10,40,'50 - 300 g pkgs.',0,10,'Dried Fruit & Nuts',''),(52,'NWTG-52','Northwind Traders Long Grain Rice',NULL,5.2500,7.0000,25,100,'16 - 2 kg boxes',0,25,'Grains',''),(56,'NWTP-56','Northwind Traders Gnocchi',NULL,28.5000,38.0000,30,120,'24 - 250 g pkgs.',0,30,'Pasta',''),(57,'NWTP-57','Northwind Traders Ravioli',NULL,14.6250,19.5000,20,80,'24 - 250 g pkgs.',0,20,'Pasta',''),(65,'NWTS-65','Northwind Traders Hot Pepper Sauce',NULL,15.7875,21.0500,10,40,'32 - 8 oz bottles',0,10,'Sauces',''),(66,'NWTS-66','Northwind Traders Tomato Sauce',NULL,12.7500,17.0000,20,80,'24 - 8 oz jars',0,20,'Sauces',''),(72,'NWTD-72','Northwind Traders Mozzarella',NULL,26.1000,34.8000,10,40,'24 - 200 g pkgs.',0,10,'Dairy product',''),(74,'NWTDFN-74','Northwind Traders Almonds',NULL,7.5000,10.0000,5,20,'5 kg pkg.',0,5,'Dried Fruit & Nuts',''),(77,'NWTCO-77','Northwind Traders Mustard',NULL,9.7500,13.0000,15,60,'12 boxes',0,15,'Condiments',''),(80,'NWTDFN-80','Northwind Traders Dried Plums',NULL,3.0000,3.5000,50,75,'1 lb bag',0,25,'Dried Fruit & Nuts',''),(81,'NWTB-81','Northwind Traders Green Tea',NULL,2.0000,2.9900,100,125,'20 bags per box',0,25,'Beverages',''),(82,'NWTC-82','Northwind Traders Granola',NULL,2.0000,4.0000,20,100,NULL,0,NULL,'Cereal',''),(83,'NWTCS-83','Northwind Traders Potato Chips',NULL,0.5000,1.8000,30,200,NULL,0,NULL,'Chips, Snacks',''),(85,'NWTBGM-85','Northwind Traders Brownie Mix',NULL,9.0000,12.4900,10,20,'3 boxes',0,5,'Baked Goods & Mixes',''),(86,'NWTBGM-86','Northwind Traders Cake Mix',NULL,10.5000,15.9900,10,20,'4 boxes',0,5,'Baked Goods & Mixes',''),(87,'NWTB-87','Northwind Traders Tea',NULL,2.0000,4.0000,20,50,'100 count per box',0,NULL,'Beverages',''),(88,'NWTCFV-88','Northwind Traders Pears',NULL,1.0000,1.3000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),(89,'NWTCFV-89','Northwind Traders Peaches',NULL,1.0000,1.5000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),(90,'NWTCFV-90','Northwind Traders Pineapple',NULL,1.0000,1.8000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),(91,'NWTCFV-91','Northwind Traders Cherry Pie Filling',NULL,1.0000,2.0000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),(92,'NWTCFV-92','Northwind Traders Green Beans',NULL,1.0000,1.2000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',''),(93,'NWTCFV-93','Northwind Traders Corn',NULL,1.0000,1.2000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',''),(94,'NWTCFV-94','Northwind Traders Peas',NULL,1.0000,1.5000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',''),(95,'NWTCM-95','Northwind Traders Tuna Fish',NULL,0.5000,2.0000,30,50,'5 oz',0,NULL,'Canned Meat',''),(96,'NWTCM-96','Northwind Traders Smoked Salmon',NULL,2.0000,4.0000,30,50,'5 oz',0,NULL,'Canned Meat',''),(97,'NWTC-82','Northwind Traders Hot Cereal',NULL,3.0000,5.0000,50,200,NULL,0,NULL,'Cereal',''),(98,'NWTSO-98','Northwind Traders Vegetable Soup',NULL,1.0000,1.8900,100,200,NULL,0,NULL,'Soups',''),(99,'NWTSO-99','Northwind Traders Chicken Soup',NULL,1.0000,1.9500,100,200,NULL,0,NULL,'Soups','');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_supplier`
--

DROP TABLE IF EXISTS `product_to_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_supplier` (
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`product_id`,`supplier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_supplier`
--

LOCK TABLES `product_to_supplier` WRITE;
/*!40000 ALTER TABLE `product_to_supplier` DISABLE KEYS */;
INSERT INTO `product_to_supplier` VALUES (1,4,'2019-04-25 07:07:51','2019-04-25 07:07:51'),(3,10,'2019-04-25 07:08:02','2019-04-25 07:08:02'),(4,10,'2019-04-25 07:08:10','2019-04-25 07:08:10'),(5,10,'2019-04-25 07:08:14','2019-04-25 07:08:14'),(6,2,'2019-04-25 07:08:23','2019-04-25 07:08:23'),(6,6,'2019-04-25 07:08:27','2019-04-25 07:08:27'),(7,2,'2019-04-25 07:08:37','2019-04-25 07:08:37'),(8,8,'2019-04-25 07:08:46','2019-04-25 07:08:46'),(17,6,'2019-04-25 07:09:00','2019-04-25 07:09:00'),(19,1,'2019-04-25 07:09:09','2019-04-25 07:09:09'),(21,1,'2019-04-25 07:09:21','2019-04-25 07:09:21'),(34,4,'2019-04-25 07:09:30','2019-04-25 07:09:30'),(40,7,'2019-04-25 07:09:42','2019-04-25 07:09:42'),(41,6,'2019-04-25 07:09:49','2019-04-25 07:09:49'),(48,10,'2019-04-25 07:10:01','2019-04-25 07:10:01'),(51,2,'2019-04-25 07:10:27','2019-04-25 07:10:27'),(52,1,'2019-04-25 07:10:45','2019-04-25 07:10:45'),(56,1,'2019-04-25 07:10:49','2019-04-25 07:10:49'),(57,1,'2019-04-25 07:10:52','2019-04-25 07:10:52'),(65,8,'2019-04-25 07:11:02','2019-04-25 07:11:02'),(66,8,'2019-04-25 07:11:07','2019-04-25 07:11:07'),(72,5,'2019-04-25 07:11:25','2019-04-25 07:11:25'),(77,10,'2019-04-25 07:11:36','2019-04-25 07:11:36'),(80,2,'2019-04-25 07:11:52','2019-04-25 07:11:52'),(81,3,'2019-04-25 07:12:01','2019-04-25 07:12:01'),(82,1,'2019-04-25 07:12:10','2019-04-25 07:12:10'),(83,9,'2019-04-25 07:12:18','2019-04-25 07:12:18'),(85,1,'2019-04-25 07:12:24','2019-04-25 07:12:24'),(86,1,'2019-04-25 07:12:34','2019-04-25 07:12:34'),(87,7,'2019-04-25 07:12:41','2019-04-25 07:12:41'),(88,6,'2019-04-25 07:12:52','2019-04-25 07:12:52'),(89,6,'2019-04-25 07:12:56','2019-04-25 07:12:56'),(90,6,'2019-04-25 07:13:00','2019-04-25 07:13:00'),(91,6,'2019-04-25 07:13:04','2019-04-25 07:13:04'),(92,6,'2019-04-25 07:13:13','2019-04-25 07:13:13'),(93,6,'2019-04-25 07:13:18','2019-04-25 07:13:18'),(94,6,'2019-04-25 07:13:21','2019-04-25 07:13:21'),(95,7,'2019-04-25 07:13:30','2019-04-25 07:13:30'),(96,7,'2019-04-25 07:13:38','2019-04-25 07:13:38'),(97,1,'2019-04-25 07:13:43','2019-04-25 07:13:43'),(98,6,'2019-04-25 07:13:52','2019-04-25 07:13:52'),(99,6,'2019-04-25 07:13:57','2019-04-25 07:13:57'),(20,2,'2019-04-25 07:15:11','2019-04-25 07:15:11'),(20,6,'2019-04-25 07:15:16','2019-04-25 07:15:16'),(43,3,'2019-04-25 07:15:25','2019-04-25 07:15:25'),(43,4,'2019-04-25 07:15:32','2019-04-25 07:15:32'),(74,2,'2019-04-25 07:15:46','2019-04-25 07:15:46'),(74,6,'2019-04-25 07:15:52','2019-04-25 07:15:52');
/*!40000 ALTER TABLE `product_to_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseOrderStat`
--

DROP TABLE IF EXISTS `purchaseOrderStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaseOrderStat` (
  `id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseOrderStat`
--

LOCK TABLES `purchaseOrderStat` WRITE;
/*!40000 ALTER TABLE `purchaseOrderStat` DISABLE KEYS */;
INSERT INTO `purchaseOrderStat` VALUES (0,'New'),(1,'Submitted'),(2,'Approved'),(3,'Closed');
/*!40000 ALTER TABLE `purchaseOrderStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesReport`
--

DROP TABLE IF EXISTS `salesReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesReport` (
  `groupBy` varchar(50) NOT NULL,
  `display` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `filterRowSource` longtext DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`groupBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesReport`
--

LOCK TABLES `salesReport` WRITE;
/*!40000 ALTER TABLE `salesReport` DISABLE KEYS */;
INSERT INTO `salesReport` VALUES ('Category','Category','Sales By Category','SELECT DISTINCT [Category] FROM [product] ORDER BY [Category];',0),('countryRegion','Country/Region','Sales By Country','SELECT DISTINCT [countryRegion] FROM [customer Extended] ORDER BY [countryRegion];',0),('Customer ID','Customer','Sales By Customer','SELECT DISTINCT [Company] FROM [customer Extended] ORDER BY [Company];',0),('employee_id','Employee','Sales By Employee','SELECT DISTINCT [Employee Name] FROM [employee Extended] ORDER BY [Employee Name];',0),('Product ID','Product','Sales by Product','SELECT DISTINCT [Product Name] FROM [product] ORDER BY [Product Name];',1);
/*!40000 ALTER TABLE `salesReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `businessPhone` varchar(25) DEFAULT NULL,
  `homePhone` varchar(25) DEFAULT NULL,
  `mobilePhone` varchar(25) DEFAULT NULL,
  `faxNumber` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `stateProvince` varchar(50) DEFAULT NULL,
  `zipPostalCode` varchar(15) DEFAULT NULL,
  `countryRegion` varchar(50) DEFAULT NULL,
  `webPage` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `attachments` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`company`),
  KEY `firstName` (`firstName`),
  KEY `lastName` (`lastName`),
  KEY `zipPostalCode` (`zipPostalCode`),
  KEY `stateProvince` (`stateProvince`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (1,'Shipping Company A','Schmeler','Dorcas','yundt.roger@hotmail.com','Artillery Crew Member',NULL,'+1-396-867-7824','707-591-8759 x0342','1-587-481-5092 x962','252 Schmitt Street Apt. 338','Memphis','TN','57529','USA','http://wiza.com/sunt-beatae-modi-quae','Vitae dolores blanditiis sunt molestias. Voluptates et quis occaecati illum. Saepe unde molestiae saepe.','Maxime dolor non sed et reprehenderit. Quidem minus rerum neque consequatur. Vel repudiandae in molestiae eum qui aliquam quam consequatur.'),(2,'Shipping Company B','Stark','Sofia','sydni34@yahoo.com','Police Detective',NULL,'+1-607-802-6417','1-217-832-2698','1-819-700-3343 x996','42004 Dare Groves','Memphis','TN','46903','USA','http://www.rolfson.com/sapiente-molestiae-ex-odit-sed-debitis-et','Id dolorem nihil et quod eligendi dolore est. In autem explicabo sed asperiores quia magni fugit sint. Libero doloribus occaecati tempore voluptatum nihil. Aut similique quia facilis architecto pariatur voluptas.','Magnam enim officia eum provident possimus. Molestias temporibus id est et id voluptas. Alias ea quia dolor sequi. Error praesentium quae doloribus. Eaque consequatur aut voluptatem autem.'),(3,'Shipping Company C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123 Any Street','Memphis','TN','99999','USA',NULL,NULL,'');
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `businessPhone` varchar(25) DEFAULT NULL,
  `homePhone` varchar(25) DEFAULT NULL,
  `mobilePhone` varchar(25) DEFAULT NULL,
  `faxNumber` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `stateProvince` varchar(50) DEFAULT NULL,
  `zipPostalCode` varchar(15) DEFAULT NULL,
  `countryRegion` varchar(50) DEFAULT NULL,
  `webPage` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `attachments` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `company` (`company`),
  KEY `firstName` (`firstName`),
  KEY `lastName` (`lastName`),
  KEY `zipPostalCode` (`zipPostalCode`),
  KEY `stateProvince` (`stateProvince`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Supplier A','Reilly','Dessie','minerva93@gmail.com','Sales Manager',NULL,'618.247.2731','608.605.8852 x076','+1 (308) 578-3324','95830 Keely Gateway Suite 647',NULL,NULL,'56454-2256','USA','http://www.jacobson.com/fugit-quia-ratione-excepturi-repellendus-dicta-inventore','Aut incidunt cum soluta deleniti. Dolore reiciendis eaque distinctio qui quas sed autem. Itaque quam facere et distinctio dolores.','Sunt ut natus quia. Quisquam et non quo autem qui. Vero dicta eum quas maiores. Corporis corrupti alias soluta ipsum.'),(2,'Supplier B','Pouros','Maxwell','dibbert.dimitri@koelpin.info','Sales Manager',NULL,'(619) 224-8223','+16987254311','682.307.1127 x0387','220 Donnie Burgs Suite 353',NULL,NULL,'85592','USA','http://www.wiza.com/magnam-assumenda-iusto-consequatur-accusantium-non-eveniet-aut','Quasi architecto libero reiciendis eveniet. Qui sit possimus praesentium voluptatem vel incidunt. Dolores occaecati aut est modi sed.','Perferendis consequatur aut odit beatae. Dolor quo explicabo ut debitis et nam. Quod molestias ipsa dolore ducimus ea sint.'),(3,'Supplier C','Jenkins','Foster','njaskolski@dickinson.com','Sales Representative',NULL,'710-602-9699 x9390','1-965-655-4630','474-783-6053','648 Keshaun Path Suite 915',NULL,NULL,'46407','USA','https://denesik.info/sed-eveniet-aut-aut-id.html','Eos nesciunt eos ullam molestias dicta. Error illum doloribus quis quia repudiandae minima qui. Est possimus omnis consequatur voluptas sequi fugit. Eos nihil maxime doloremque voluptate ipsum amet.','Dolor quia asperiores similique voluptas libero unde. Qui blanditiis dolorum aut quos est.'),(4,'Supplier D','Wiegand','Orlo','benny47@yahoo.com','Marketing Manager',NULL,'995.493.8991','(625) 485-4139 x851','713.661.8395 x44422','70350 Lula Prairie',NULL,NULL,'79231','USA','http://zulauf.org/repellat-tenetur-id-distinctio','Provident quod et sint a expedita omnis et. Asperiores autem similique optio. Est repellat voluptatem qui eum animi. Dolor cum facilis fugit asperiores adipisci.','Vel iste ex facere ipsam vel dignissimos. Officiis quas dolore fuga unde. Officiis nihil voluptatem enim dolore exercitationem recusandae reprehenderit. Odio libero qui aut est rerum inventore.'),(5,'Supplier E','Reynolds','Nicholaus','aidan44@hettinger.com','Sales Manager',NULL,'(607) 596-3446 x4043','(859) 823-5988 x078','(486) 684-8193','4760 Ryder Mount',NULL,NULL,'30311','USA','http://bahringer.com/nihil-ipsum-officiis-quia-explicabo-ab','Ex quae distinctio reiciendis et voluptates consequatur. Dolorum autem ipsa nisi reiciendis. Explicabo nesciunt odio accusamus rerum sit accusamus. Voluptatem veritatis voluptates perferendis doloremque vel voluptate et.','Nemo rerum in qui beatae. Ab sit quia deleniti. Dignissimos quas non in sit accusantium tempora autem.'),(6,'Supplier F','Okuneva','Alvena','emmerich.alexandrea@howell.com','Marketing Assistant',NULL,'1-965-473-0199 x8545','257-992-5018','1-330-308-2481','14109 Terry Ways Suite 557',NULL,NULL,'24987-8230','USA','http://www.kuhic.info/sed-est-aut-ut-mollitia-recusandae-itaque','A voluptas neque aut quis mollitia. Esse cum vel accusantium occaecati. Sequi omnis dolores eligendi quae officia enim. Fuga consequatur facere tenetur.','Quis blanditiis dolorum ad molestias eum. Nihil facere nostrum deleniti. Eum est quos earum autem explicabo et odit. Quaerat sunt rerum omnis dignissimos explicabo.'),(7,'Supplier G','Swaniawski','Lexus','obie76@gmail.com','Marketing Manager',NULL,'552.231.3838','+1-436-493-6387','+1-606-823-1315','8426 Efrain Turnpike Suite 060',NULL,NULL,'41882-1145','USA','http://www.altenwerth.com/','Optio et qui aperiam autem sed temporibus fugiat. Repellendus non atque eum tenetur perspiciatis. Consequuntur saepe qui sit nemo. Consequuntur ut odit sunt esse id ut iste.','Fuga minus veniam dicta veniam. Quam ex minima beatae libero repellat reprehenderit eveniet enim. Dolore ea totam recusandae quod inventore doloribus.'),(8,'Supplier H','O\'Kon','Maxwell','immanuel25@hotmail.com','Sales Representative',NULL,'845-669-8949 x29793','493.399.8265 x456','1-840-726-9682','91619 Jennyfer Stream Suite 533',NULL,NULL,'72126','USA','https://ratke.info/minus-illo-ut-illum-magni-maiores-a-ab.html','Et neque quidem a ad quasi magni est. Dolore et sequi eos nihil et asperiores saepe. Quaerat exercitationem et ut vero asperiores.','Est fugit tempore sunt porro dolorum perspiciatis. Rem ea quam quos possimus mollitia velit. Eum nihil est id facere possimus repellendus veritatis. Esse odio neque ea autem necessitatibus esse.'),(9,'Supplier I','Halvorson','Justine','davis.edwina@hotmail.com','Sales Manager',NULL,'1-242-705-1566 x8826','391.598.2070','+1.504.315.4726','6876 Hagenes Haven Suite 582',NULL,NULL,'93131-8011','USA','http://lynch.net/','Quod rem dolorem ex repellat nostrum quas quidem. Fugit eveniet ullam quas quia a eos aperiam. Reiciendis temporibus animi praesentium neque. Vitae amet illum iste distinctio odio perspiciatis blanditiis.','Hic ipsum voluptate ex. Repudiandae nihil dolorum eos adipisci ea nisi alias. Nesciunt id cum voluptatem qui blanditiis.'),(10,'Supplier J','Sousa','Luis',NULL,'Sales Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'USA',NULL,NULL,'');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-27 18:02:29
