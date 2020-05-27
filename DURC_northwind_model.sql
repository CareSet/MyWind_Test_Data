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
INSERT INTO `customer` VALUES (1,'Company A','Bedecs','Anna','arno58@kling.net','Owner','1-531-235-2682 x90827','(336) 213-1998','604.962.6819 x89222','1-728-918-4968','80854 Gregorio Lights','Seattle','WA','41639','USA','http://erdman.biz/sint-laboriosam-est-in-quidem.html','Illum commodi maxime itaque qui. Accusantium asperiores est perferendis magnam. Quo dolores voluptate autem est dolores perferendis aut. Qui asperiores quia dignissimos.','Quia et distinctio quaerat quae veritatis ipsa adipisci. Numquam quia dicta vel deleniti. Sit ducimus excepturi mollitia hic blanditiis quam et. Alias suscipit non at est cumque est.','1987-08-29 00:00:00','1995-12-07 00:00:00','2007-02-02 00:00:00','0000-00-00 00:00:00'),(2,'Company B','Gratacos Solsona','Antonio','trisha.schmeler@gmail.com','Owner','(847) 371-1849 x458','+1-928-612-0329','470.335.2168','902.647.3397','89793 Loy Coves Suite 209','Boston','MA','42231','USA','https://www.williamson.com/unde-repudiandae-explicabo-asperiores-voluptatem-excepturi','Esse architecto nemo provident qui praesentium qui. Sapiente rerum eveniet animi aut vel dolores. Nihil ex soluta modi rem non est ut. Dolorem quia dolore hic est sequi qui. Aut sint ratione ad non impedit.','Ipsam mollitia temporibus ut quasi rem. Animi quibusdam occaecati nostrum dignissimos hic accusantium. A quia at dolores beatae. Expedita omnis reiciendis corporis id et.','2002-07-03 00:00:00','1992-10-26 00:00:00','1976-08-05 00:00:00','0000-00-00 00:00:00'),(3,'Company C','Axen','Thomas','kunze.santiago@wolff.com','Purchasing Representative','+1 (449) 495-3045','(905) 386-1696','1-779-219-1845','417.315.1584','428 Bode Mission Apt. 085','Los Angelas','CA','60837','USA','https://legros.com/vel-consectetur-est-voluptatum-deserunt-nisi-voluptas-quae-laboriosam.html','Accusamus occaecati ipsam nihil cupiditate quia modi. Ad nostrum est sit impedit dolor. Ut consequatur deleniti illum voluptatem ut commodi minima magnam. Rerum maxime nulla est occaecati.','Ut fugit impedit modi corrupti deleniti quis officiis. Velit similique et accusantium consequatur iste.','1971-12-27 00:00:00','2011-09-18 00:00:00','2017-02-06 00:00:00','0000-00-00 00:00:00'),(4,'Company D','Lee','Christina','maggio.carrie@weimann.com','Purchasing Manager','272-409-4726 x922','710.924.9039 x980','+1-613-438-8740','535.483.9412','89956 Mosciski Burg Apt. 726','New York','NY','89376-4119','USA','http://www.jacobson.com/autem-ullam-quod-porro-id-praesentium.html','Repellat voluptatem et et dolor fuga officiis. Rerum qui voluptatem sunt laudantium. Consequatur est consequatur explicabo quos adipisci.','Magni eum recusandae impedit odio. Eveniet asperiores perspiciatis aliquid vitae commodi. Voluptatem error nobis ut sunt. Non laborum aut ut sit numquam.','1987-09-09 00:00:00','1971-07-29 00:00:00','1982-04-21 00:00:00','0000-00-00 00:00:00'),(5,'Company E','O’Donnell','Martin','bogisich.lorenz@sauer.info','Owner','685-488-6025 x6486','846.437.7261 x970','913-547-5237','218.598.2433','357 Marks Spur','Minneapolis','MN','61371-3828','USA','http://www.abernathy.com/earum-qui-beatae-consequatur-sunt.html','At quis qui vitae vel. Sit impedit cum voluptate vitae optio commodi harum. Architecto neque aperiam corporis magni non quo. Et cum ipsum impedit. Similique nobis sapiente accusantium beatae.','Hic vel quas ut et. Odit occaecati impedit nulla non quae. Sit quis velit adipisci aut voluptatum qui itaque. Corrupti sit ex nobis tempora nostrum qui aut. Cumque hic rem numquam blanditiis dolorem et fugiat.','1976-04-05 00:00:00','1987-05-01 00:00:00','2008-03-28 00:00:00','0000-00-00 00:00:00'),(6,'Company F','Pérez-Olaeta','Francisco','brekke.lee@hotmail.com','Purchasing Manager','1-726-231-2128 x92997','+1-231-858-2748','329-319-0716 x925','+1.996.943.8459','3934 Renner Bridge Suite 319','Milwaukee','WI','96107-8862','USA','http://morar.biz/quos-quod-officia-dolor','Et qui blanditiis ut laboriosam. Amet ducimus optio blanditiis repellendus doloribus et. Enim sunt in ea.','Voluptatem id illo molestiae quo quae a nisi nihil. Aut et omnis ut et sit. Dolore ea quia perspiciatis qui qui maiores odio. Quia culpa laudantium voluptatem eaque harum velit.','1971-05-12 00:00:00','1995-11-15 00:00:00','1993-06-23 00:00:00','0000-00-00 00:00:00'),(7,'Company G','Xie','Ming-Yang','emard.brice@bednar.com','Owner','+1 (786) 442-6161','774-362-5188 x44735','(658) 253-5112','+1 (282) 233-1682','50815 Frances Track','Boise','ID','80849','USA','http://treutel.com/','Consequatur amet possimus nemo ipsa. Doloremque corrupti voluptates voluptatum voluptas provident architecto minus odit. Placeat omnis ea minus in optio pariatur.','Nemo dolor occaecati aut. Hic officia beatae id harum exercitationem quia nulla. Incidunt sunt similique rem quisquam vel quibusdam praesentium. Dolorem dolorum reprehenderit reprehenderit totam. Iusto in fugit quis officia ut.','1973-03-13 00:00:00','2017-12-11 00:00:00','1985-05-25 00:00:00','0000-00-00 00:00:00'),(8,'Company H','Andersen','Elizabeth','ruben.schinner@damore.com','Purchasing Representative','1-653-508-5724','514.746.9164 x0376','283-428-3730 x6408','(878) 763-5436 x64638','6542 Anne Ridge','Portland','OR','52872-2869','USA','http://schamberger.com/dolorem-hic-dolore-ipsam-et-voluptatem-nostrum-repellat','Non est itaque est qui sint mollitia cupiditate. Repellendus et ut voluptatem quia. Dolor quisquam nulla quidem magni quod beatae modi. Sit eos magnam ea omnis saepe est omnis esse.','Laudantium aut et non vero non delectus non aspernatur. Culpa iste consequatur est. Sit alias enim non ut totam est fugiat.','1987-06-07 00:00:00','1982-06-03 00:00:00','1983-10-22 00:00:00','0000-00-00 00:00:00'),(9,'Company I','Mortensen','Sven','omer.walter@rempel.com','Purchasing Manager','+1 (958) 953-1531','+1-428-800-0498','(209) 319-7480','716.575.0272','94672 Olson Camp Apt. 531','Salt Lake City','UT','17253-7786','USA','http://gulgowski.com/eaque-quia-ut-omnis-est-modi-corrupti-quo.html','Molestiae aut quaerat quo nam at est architecto. Incidunt itaque reprehenderit recusandae nulla. Aut accusamus praesentium sit in.','Adipisci nesciunt ratione veritatis officia sequi odio nihil. Aliquid dolorem est quas et beatae dignissimos placeat facere. Ducimus ad omnis at quia placeat.','1974-05-26 00:00:00','1993-11-06 00:00:00','1982-12-07 00:00:00','0000-00-00 00:00:00'),(10,'Company J','Wacker','Roland','thora62@hand.info','Purchasing Manager','+1.934.856.3093','1-387-871-3849 x615','+1.902.803.5492','(907) 569-6910 x0569','5680 Kerluke Mews Suite 640','Chicago','IL','77769','USA','http://www.reichert.com/tempore-itaque-ut-qui-doloremque-quod','Aliquid cupiditate odio commodi ex quis. Occaecati ut deserunt qui expedita. Quis quas cumque totam autem sapiente.','Nostrum officia veritatis est nihil tempore repellat qui. Atque omnis vitae beatae natus numquam veritatis harum. Nam officiis repellat qui. Deleniti esse voluptas distinctio odit beatae sunt earum.','1971-06-04 00:00:00','2002-05-04 00:00:00','1985-12-11 00:00:00','0000-00-00 00:00:00'),(11,'Company K','Krschne','Peter','aherzog@hotmail.com','Purchasing Manager','816-371-9900 x2660','950.391.7781','(871) 886-4706 x970','(725) 246-6949 x231','9712 Rath Highway Apt. 280','Miami','FL','34845-1200','USA','http://johnston.net/ut-qui-voluptas-distinctio-culpa-esse','Voluptatem sed in omnis eveniet. Reiciendis debitis molestias quasi aspernatur eum et saepe.','Accusamus repellendus sit tempore. Voluptatem odio vel neque aut architecto quibusdam. Voluptas earum iste distinctio iste voluptatem beatae iste.','2007-01-07 00:00:00','2019-02-19 00:00:00','1975-05-25 00:00:00','0000-00-00 00:00:00'),(12,'Company L','Edwards','John','whilpert@dickinson.info','Purchasing Manager','+1-753-246-9323','259-900-2154 x0330','1-331-378-8234 x4989','531-394-6206','72927 Jabari Coves Apt. 309','Las Vegas','NV','76891','USA','http://www.bernier.org/est-officiis-quaerat-ratione-officia-occaecati','Qui impedit temporibus porro exercitationem. Vero similique repellendus incidunt alias. In libero corporis autem nam doloribus natus.','Ex excepturi error ipsa sit. Aut accusantium et et est maxime. Impedit eos rem nihil eum.','1986-06-02 00:00:00','2014-07-24 00:00:00','1977-03-04 00:00:00','0000-00-00 00:00:00'),(13,'Company M','Ludick','Andre','zane.morissette@yahoo.com','Purchasing Representative','+1 (417) 537-2852','968-991-5681','1-973-792-3185 x824','824-765-4038 x448','52073 O\'Hara Pines','Memphis','TN','89371','USA','https://rutherford.com/ratione-voluptatem-vero-dolores-quidem-aperiam-excepturi-tempora.html','At ut non quia soluta a. Eius itaque ea eligendi voluptas quo sint et.','Itaque aliquid voluptates velit et quia aut. Pariatur quibusdam est occaecati velit in rerum ducimus. Doloremque aliquid veritatis nostrum eveniet. Quia eos repudiandae est officia.','2013-05-06 00:00:00','1988-05-16 00:00:00','1999-09-05 00:00:00','0000-00-00 00:00:00'),(14,'Company N','Grilo','Carlos','earl.fisher@yahoo.com','Purchasing Representative','+19486796953','(972) 974-7688','(987) 209-1693 x06476','719.844.2204 x8710','4463 Padberg Brooks','Denver','CO','74550-9328','USA','http://quigley.com/aperiam-aut-ut-doloribus-tempore-perspiciatis-laudantium-natus-enim','Distinctio omnis possimus aut amet nostrum architecto. Perferendis consectetur omnis officia excepturi molestiae. Nam aut corporis esse sunt possimus. Nulla molestiae sed debitis cumque vel voluptas fugit deserunt. Dolores qui cumque vel ipsam voluptatum esse.','Sit ad tenetur aspernatur veritatis quidem numquam saepe. In hic reiciendis illum quae et. Doloribus magni quia tempore commodi rerum. Saepe hic recusandae assumenda mollitia itaque qui.','2018-05-14 00:00:00','2015-05-03 00:00:00','1995-03-30 00:00:00','0000-00-00 00:00:00'),(15,'Company O','Kupkova','Helena','sofia90@gmail.com','Purchasing Manager','(518) 297-7511 x3965','746.942.8575','1-607-570-2066 x12567','908.576.4366','99172 Conner Walks','Honolulu','HI','48656','USA','http://www.gislason.net/occaecati-ullam-quas-iste-voluptas-numquam-facilis.html','Sapiente et eum laborum temporibus. Quo officiis enim magnam quasi. Sit ad nulla id voluptatem earum.','Nihil aut repellat est veniam eius. Quia omnis deleniti modi cum. Adipisci sed suscipit odit ab.','1987-09-18 00:00:00','1991-07-26 00:00:00','1994-03-13 00:00:00','0000-00-00 00:00:00'),(16,'Company P','Goldschmidt','Daniel','sibyl97@gmail.com','Purchasing Representative','818-233-0410 x32509','+1.943.974.0373','546-863-4520','+1.219.876.6531','6060 Helga Neck','San Francisco','CA','43692','USA','http://gerhold.com/qui-nostrum-eos-libero-sint-repellat-qui-nihil','Numquam facere et quisquam. Nisi et ea eaque sequi. Libero quo at fuga qui voluptatem debitis pariatur. Animi nobis aut quas tempora odit nostrum.','Quo dolore voluptatem quidem repudiandae aut enim sit asperiores. Libero a in id. Aut et est assumenda aut. Sunt commodi dignissimos atque in explicabo cupiditate consequatur.','2003-03-30 00:00:00','1986-02-26 00:00:00','1991-10-05 00:00:00','0000-00-00 00:00:00'),(17,'Company Q','Bagel','Jean Philippe','krystina17@waters.org','Owner','1-646-981-1703 x1243','242.687.7510 x1488','393-252-5317 x0175','535.263.6045 x996','757 Wolf Row Suite 819','Seattle','WA','84959','USA','https://www.langosh.biz/omnis-sapiente-nulla-porro-debitis-ab-distinctio-asperiores','Sed omnis dolor neque voluptate reiciendis sunt aut odio. Et doloremque minus corrupti vel. Tempora aut iusto quae velit reiciendis.','Similique qui sed facere reprehenderit. Qui velit excepturi dolor omnis autem sunt illum. Rerum quibusdam recusandae recusandae non laboriosam qui.','2003-12-17 00:00:00','2009-07-13 00:00:00','2008-01-21 00:00:00','0000-00-00 00:00:00'),(18,'Company R','Autier Miconi','Catherine','bgerhold@gmail.com','Purchasing Representative','715-721-6156','(462) 915-1255','401-771-6106 x8525','285.525.0836 x76947','1301 Georgianna Route','Boston','MA','41423-2434','USA','http://www.eichmann.com/tempore-soluta-aut-doloremque-quos.html','Vitae velit quos eos a vel assumenda eum autem. Vel dicta praesentium at voluptatem architecto non iure. Sed ex voluptate eligendi ad. Sed molestias aut provident.','Sed doloremque laborum earum nulla perspiciatis cupiditate ratione. Quis quia enim excepturi molestiae harum tenetur. Sit quia sequi quas quo. Aut et quibusdam officiis iusto unde nobis enim.','1999-09-21 00:00:00','1987-11-18 00:00:00','1995-03-01 00:00:00','0000-00-00 00:00:00'),(19,'Company S','Eggerer','Alexander','lucius.white@yahoo.com','Accounting Assistant','519.579.7290','481.515.6493','1-852-961-2305 x23303','+18625567114','1052 Wilfred Field','Los Angelas','CA','98105-1922','USA','http://labadie.com/','Nam quia harum placeat. Aperiam vel voluptas et aut ullam ut. Nisi sit quae beatae necessitatibus repellendus ex adipisci. Tenetur at qui voluptatem atque doloribus porro.','Ea itaque qui quo aut vero quisquam eos. Doloribus sunt est voluptatibus.','1988-11-27 00:00:00','1975-03-24 00:00:00','1984-11-15 00:00:00','0000-00-00 00:00:00'),(20,'Company T','Li','George','jacobs.letitia@reichel.org','Purchasing Manager','437.660.2382','(885) 469-3986 x4659','+1 (275) 900-3506','+1.856.925.3211','69255 Robel Trail Apt. 814','New York','NY','31846','USA','http://www.veum.org/qui-qui-esse-et-molestiae-quae-aspernatur-consequuntur-cum','Aut nobis itaque suscipit aut enim modi. Rerum atque voluptas sit accusantium. Eveniet cumque voluptatem tenetur unde perspiciatis. Libero facilis sed autem iusto sit.','Minus dolor odio est vel. Nihil est cupiditate quam et. Dolores aut vel enim amet aut magnam. Sed consequatur nam sed facere.','2017-02-20 00:00:00','1991-10-13 00:00:00','1974-08-30 00:00:00','0000-00-00 00:00:00'),(21,'Company U','Tham','Bernard','ethyl00@ward.com','Accounting Manager','956-736-3284 x63600','1-743-381-4155 x014','1-963-987-9567 x1810','541.999.4271 x810','7728 Lakin Skyway','Minneapolis','MN','38050','USA','https://hirthe.org/id-nobis-quos-eos-at.html','Aliquam dolores hic et dolor nostrum. Est est asperiores eos ut est. Eum architecto rerum dolor eos voluptatibus.','Quam non aut quae quae omnis dicta harum. Impedit nam odio dolores quae quaerat nesciunt. Error aut accusantium molestiae autem. Esse consequatur fuga et eos.','2000-11-07 00:00:00','1978-09-12 00:00:00','1981-04-10 00:00:00','0000-00-00 00:00:00'),(22,'Company V','Ramos','Luciana','tiffany.ullrich@yahoo.com','Purchasing Assistant','+1.827.933.7572','+1-940-474-7110','+1.641.869.0009','+1-732-301-7154','89875 Leuschke Trail','Milwaukee','WI','63330','USA','http://www.zieme.info/','Magni ducimus eius et et sit ut aut. Et nostrum qui et facere explicabo odit. Quos quod numquam vero optio.','Sapiente aut et doloribus. Nihil nisi esse consequatur fugiat enim earum. Non dolores velit voluptate sed fuga.','2013-05-16 00:00:00','2008-07-26 00:00:00','1989-02-10 00:00:00','0000-00-00 00:00:00'),(23,'Company W','Entin','Michael','imani.leannon@hotmail.com','Purchasing Manager','657.845.1014','1-428-379-9047 x3688','+1-630-990-4217','(401) 804-2325 x624','7323 Margie Crescent','Portland','OR','27998','USA','http://www.emard.net/','Ducimus dolor ut voluptatem eius. Provident soluta sunt soluta velit placeat sint.','Unde iure quam tenetur consequatur asperiores nostrum. Accusamus totam sit hic dolore. Accusamus nobis odio labore quaerat mollitia dolorum.','1986-04-21 00:00:00','1971-07-16 00:00:00','2010-09-21 00:00:00','0000-00-00 00:00:00'),(24,'Company X','Hasselberg','Jonas','prohaska.heaven@gmail.com','Owner','+1.283.351.4415','+1.204.952.2631','794.289.6936','1-841-641-0146','280 Gislason Center Apt. 769','Salt Lake City','UT','94631-0997','USA','http://www.lang.info/','Minima quasi ipsam rerum velit. Voluptatem est sit occaecati.','Est nulla deserunt voluptatem veritatis porro et. Cum quam facere nemo enim mollitia nihil dolores qui. Consequuntur qui sit doloribus totam minus. Est eum quidem sed perspiciatis.','1977-08-03 00:00:00','2018-08-26 00:00:00','2003-07-03 00:00:00','0000-00-00 00:00:00'),(25,'Company Y','Rodman','John','kihn.teresa@hotmail.com','Purchasing Manager','650-516-1117','470-408-4539 x280','(882) 280-5022 x88044','324.376.3149','2866 Bode Views','Chicago','IL','54234','USA','https://brakus.info/aut-tempora-voluptas-nemo-reprehenderit-qui-est.html','Facere aliquid voluptatem sequi voluptas quis atque et. Alias aut dolor optio culpa iste quos qui. Praesentium inventore quo aliquid officiis dolorum corporis itaque. A ex laudantium minus corrupti minus aperiam ullam.','Quibusdam et et ipsam aut molestiae nobis ducimus. Eum et sunt autem aut repellat molestias ad. Est voluptatum magnam aut tempora. Quia eligendi corrupti eum ipsam soluta ipsum est autem. Non eos officiis iste temporibus eos omnis et consequuntur.','1979-01-02 00:00:00','1994-07-13 00:00:00','2006-07-31 00:00:00','0000-00-00 00:00:00'),(26,'Company Z','Liu','Run','liana74@hotmail.com','Accounting Assistant','237-887-9163 x8036','+1-671-739-5604','714-912-6468 x42485','(307) 470-0610','896 Cruickshank Vista','Miami','FL','61157-0241','USA','https://www.schumm.biz/et-et-accusantium-nesciunt','Ut suscipit molestias velit et a. Et numquam doloremque possimus cumque. Ad laboriosam fugit maxime iusto necessitatibus dicta. Quisquam perferendis ut quibusdam. Asperiores explicabo iure vel hic quos similique.','Fugit laborum porro at quis qui atque perspiciatis. Optio at sed nesciunt magni quisquam tempora. Incidunt doloribus nihil culpa quia.','1985-11-04 00:00:00','1977-03-02 00:00:00','2016-07-31 00:00:00','0000-00-00 00:00:00'),(27,'Company AA','Toh','Karen','zulauf.landen@corkery.net','Purchasing Manager','(259) 527-7882 x388','(529) 967-1991','212.537.1016','(685) 970-9931 x5067','89595 Marietta Ridge','Las Vegas','NV','70391','USA','http://www.swaniawski.net/perferendis-fugit-vero-laudantium-vel-velit-neque-neque','Nesciunt non libero et. Facilis magni facere aliquid quas sed ducimus. Nesciunt ipsum eius quo et. Vel reprehenderit omnis ea autem porro.','Impedit fuga placeat eos aut nesciunt. Repudiandae sit sapiente mollitia cupiditate qui. Non quibusdam dolorem aliquid iure quod.','1975-11-09 00:00:00','1990-01-27 00:00:00','1976-02-22 00:00:00','0000-00-00 00:00:00'),(28,'Company BB','Raghav','Amritansh','diamond.auer@douglas.com','Purchasing Manager','1-652-893-8163 x4020','(702) 871-9280','(371) 700-1430 x3006','1-396-947-4855','45293 Lehner Heights','Memphis','TN','21543-8079','USA','http://www.grady.com/','Qui omnis voluptas quos laudantium. Quaerat ut officia aut ut corporis. Consequuntur fugiat ab consectetur neque. Exercitationem provident sed nisi iure enim nostrum consectetur optio.','Et deserunt omnis aut. Ea ipsa fuga corrupti voluptates. Illo sed molestiae eius qui. Officia quia necessitatibus ducimus ipsum omnis esse error.','1978-01-30 00:00:00','2015-10-30 00:00:00','1981-02-10 00:00:00','0000-00-00 00:00:00'),(29,'Company CC','Lee','Soo Jung','rowland04@ankunding.com','Purchasing Manager','1-362-900-5491 x8094','(796) 985-0644','1-878-314-0625','+19167107797','51657 Wuckert Bypass Apt. 237','Denver','CO','38086','USA','http://marvin.info/libero-error-dicta-itaque-quis-est-quibusdam','Sint in vel veritatis voluptate reprehenderit cum. Veritatis possimus totam est perspiciatis itaque facere. Necessitatibus et est in fugit velit.','Culpa sunt sit aut minima. Voluptatibus asperiores et eaque voluptatem. Ut hic qui vel. Quo ipsam ut voluptas blanditiis et.','1977-07-16 00:00:00','1983-10-28 00:00:00','2005-07-07 00:00:00','0000-00-00 00:00:00');
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
INSERT INTO `employee` VALUES (1,'Northwind Traders','Freehafer','Nancy','nancy@northwindtraders.com','Sales Representative','+16585338332','258-610-4242 x5835','795.757.5227','(446) 513-3085 x3574','894 Jerry Green','Seattle','WA','38071','USA','#http://northwindtraders.com#',NULL,''),(2,'Northwind Traders','Cencini','Andrew','andrew@northwindtraders.com','Vice President, Sales','(871) 966-4392 x22359','314-405-0560','685.887.5767 x610','1-328-717-6879 x06656','99643 Grant Spur','Bellevue','WA','23780','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.',''),(3,'Northwind Traders','Kotas','Jan','jan@northwindtraders.com','Sales Representative','+1-581-365-5965','(935) 822-3528 x15730','501-545-1573 x57232','+1.441.661.0358','374 Susan Square','Redmond','WA','79725-2132','USA','http://northwindtraders.com#http://northwindtraders.com/#','Was hired as a sales associate and was promoted to sales representative.',''),(4,'Northwind Traders','Sergienko','Mariya','mariya@northwindtraders.com','Sales Representative','(559) 698-4000 x83674','1-789-582-7593 x906','1-916-598-7819 x8804','(305) 568-8398','168 Caitlyn Locks Apt. 168','Kirkland','WA','27545-0316','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,''),(5,'Northwind Traders','Thorpe','Steven','steven@northwindtraders.com','Sales Manager','253.541.4166','1-202-755-6830','617.709.3801','+1.903.553.3751','327 Carroll Creek Apt. 455','Seattle','WA','33663-5131','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative and was promoted to sales manager.  Fluent in French.',''),(6,'Northwind Traders','Neipper','Michael','michael@northwindtraders.com','Sales Representative','1-583-339-9411 x478','(406) 590-6664','(269) 493-0526','+1-683-408-5589','693 Lesch Ports Apt. 340','Redmond','WA','18999-4929','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in Japanese and can read and write French, Portuguese, and Spanish.',''),(7,'Northwind Traders','Zare','Robert','robert@northwindtraders.com','Sales Representative','789.558.1890','449-273-4856','282-496-0677 x298','618.425.1979 x566','22065 Margarita Meadow Apt. 964','Seattle','WA','96978','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,''),(8,'Northwind Traders','Giussani','Laura','laura@northwindtraders.com','Sales Coordinator','(207) 881-5382','1-219-980-8962 x966','(460) 692-7836 x3324','1-901-617-1705','8308 Kreiger Causeway Suite 013','Redmond','WA','42934-8165','USA','http://northwindtraders.com#http://northwindtraders.com/#','Reads and writes French.',''),(9,'Northwind Traders','Hellung-Larsen','Anne','anne@northwindtraders.com','Sales Representative','+12767667545','390-656-1776 x828','774-850-8464 x936','492.831.8530 x61594','457 Chauncey Passage','Seattle','WA','74434-1477','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in French and German.','');
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
INSERT INTO `shipper` VALUES (1,'Shipping Company A','Langworth','Hershel','maximillia41@turcotte.info','Sculptor',NULL,'(487) 614-9049','852-641-7367 x51987','445.246.0678 x055','90956 Titus Lakes Suite 523','Memphis','TN','02483-3287','USA','http://bailey.info/officiis-veritatis-vero-totam-exercitationem-sint','Et reprehenderit nesciunt ut. Sequi pariatur hic quae ut quos consequatur dolores. Est consequuntur facilis vel laborum non saepe amet.','Nam facere cupiditate omnis optio ducimus delectus voluptas. Aut ad quia molestiae accusantium iure quia. Autem assumenda aliquam nam aspernatur voluptatem. Eligendi est non vitae fugit nisi magni provident.'),(2,'Shipping Company B','Gutmann','Leopoldo','jaquan78@hotmail.com','Event Planner',NULL,'556-589-5885 x14096','(249) 405-3070 x73206','805-833-3534 x87020','8217 Veda Plain Suite 607','Memphis','TN','39422-2034','USA','http://boyer.com/aut-dignissimos-sed-illo-et-fugit-libero','Et illo hic vero non. Laboriosam eos fugit velit. Facilis nulla deleniti occaecati hic explicabo. Adipisci molestias fuga assumenda qui.','A adipisci ipsam sed in officia sit omnis. Ea non aperiam aperiam aut. Nulla cupiditate quia est explicabo aperiam.'),(3,'Shipping Company C','Kunde','Madie','keven31@gmail.com','Landscape Artist',NULL,'682-303-8827 x01527','(495) 662-1627 x037','(831) 246-3723 x985','778 Kuhlman Green Suite 172','Memphis','TN','24003-4353','USA','http://www.west.info/aut-rerum-minus-rerum-omnis-repellendus','Fugit quia aut ut enim. Quia minima aliquam eum. Et voluptas adipisci perferendis. Vel ut ipsum voluptatem repellat magnam itaque.','Nisi adipisci officia aperiam. Accusantium similique est et nihil mollitia. Ratione cupiditate voluptatibus in ut aut sit molestiae.');
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
INSERT INTO `supplier` VALUES (1,'Supplier A','Leannon','Uriel','kelsi.stiedemann@hotmail.com','Sales Manager',NULL,'1-515-329-5407','593.582.9207','515.578.4312','73459 Oma Hills',NULL,NULL,'98807','USA','http://www.hauck.info/quos-nihil-omnis-et-magni-enim-numquam','Molestiae aut perspiciatis rerum quo nemo. Fuga nemo possimus libero molestiae. Cupiditate qui nisi odio architecto. Ea et incidunt atque.','Possimus consectetur rerum natus saepe magnam exercitationem quia et. Nulla accusantium et ipsam modi optio qui laboriosam. Iste enim quo amet nemo.'),(2,'Supplier B','Dooley','Brendon','sigrid.toy@gmail.com','Sales Manager',NULL,'1-376-723-0862 x9551','(286) 418-1675','953-744-1298 x59464','74510 Malcolm Forge',NULL,NULL,'85025-7222','USA','http://johns.com/soluta-aliquid-quos-ea-est-quasi-est','Architecto dolores provident qui voluptatem sint autem et. Nam officiis iure placeat tempora.','Laboriosam facere aut nulla praesentium. Illum quisquam odio vel et maiores maxime odio. Quis vero sit et. Laboriosam non impedit aut unde illo fuga.'),(3,'Supplier C','Nitzsche','Boyd','wkessler@gmail.com','Sales Representative',NULL,'+13687029621','+1-896-300-2417','(816) 980-2338','8394 Paucek Heights',NULL,NULL,'93314-1190','USA','http://cruickshank.com/','Tempore beatae doloremque quia mollitia. Nemo ex inventore eum quod consectetur. Eligendi et doloremque vel totam.','Dolores qui magni ut et quo rem aut. Quia labore quis quam ipsam asperiores asperiores. Consectetur nulla qui reprehenderit. Quo fugiat natus atque id. Rerum eaque omnis qui enim nulla eveniet.'),(4,'Supplier D','Haag','Berniece','gfunk@gmail.com','Marketing Manager',NULL,'+1-735-766-4762','459-875-9409 x23422','1-514-430-0001 x6467','38553 Halle Ridges',NULL,NULL,'22908','USA','http://www.goodwin.com/est-quia-veniam-et-itaque-est-reiciendis-fuga-rerum.html','Quam repellendus consectetur in amet quidem omnis quia. Pariatur modi dolore molestiae sed praesentium eos. Vero vel corporis architecto eos quo.','Maxime atque dicta nihil consectetur autem. Deserunt ut sunt ut earum rem et aut iusto. Quod odit et ut. Autem dignissimos nostrum recusandae cum. Aut id necessitatibus quidem quos deserunt qui.'),(5,'Supplier E','Prohaska','Arjun','imelda.weber@yahoo.com','Sales Manager',NULL,'1-979-899-9436','(242) 992-6952 x15631','998-853-2192 x182','112 Ashtyn Mews',NULL,NULL,'52138-6662','USA','http://gibson.com/','Ut odio repudiandae est dolores dolorum delectus quasi eveniet. Enim et voluptatem cum quis vero. Et quam nam ratione quisquam voluptatibus et qui.','Cupiditate dolor minus in alias ut. Occaecati et voluptas eligendi voluptatibus in consequuntur molestiae.'),(6,'Supplier F','Kuphal','Brock','abraun@hotmail.com','Marketing Assistant',NULL,'(396) 635-4325 x8589','(615) 642-5180','+1 (463) 680-2651','41389 Kamryn Parkway',NULL,NULL,'03451','USA','http://keeling.net/molestiae-quasi-sed-ducimus-voluptas-fuga-culpa','Saepe sit sint et eum possimus. Exercitationem voluptatem autem accusantium iste animi voluptas. At voluptas sit quam qui in. Rem ut qui culpa accusantium doloribus animi recusandae.','Vel a dolorem at porro consectetur. Quia dolores omnis dicta dolorum. Aperiam aut optio nostrum ut consequatur sed.'),(7,'Supplier G','Feeney','Earl','zbeier@gmail.com','Marketing Manager',NULL,'+1 (598) 796-0947','(631) 689-0276','579.754.4718 x9871','2574 Ned Springs',NULL,NULL,'42063','USA','https://mills.biz/veniam-distinctio-dolores-sed-exercitationem-adipisci.html','Ut ut eligendi dolorum doloribus aperiam. Sit debitis sit dolor quia ducimus. Tempora possimus id qui possimus ratione maiores suscipit. Voluptates et eligendi aliquid quas qui.','Dolor quasi ab repellendus sit doloremque. Vel quibusdam impedit dolores enim. Quaerat sunt sunt maxime quas. Eum natus et consequatur. Perspiciatis reiciendis voluptate voluptatem voluptatem amet molestiae quas.'),(8,'Supplier H','Gislason','Ethyl','chet.morar@greenfelder.com','Sales Representative',NULL,'(496) 772-0255 x80798','941.531.1339','624.445.0960 x8983','38203 Friesen Park',NULL,NULL,'73844','USA','http://homenick.net/dicta-ipsum-animi-esse-quas-molestias','Ea atque voluptatem et id aut nam commodi. Quia nisi harum laborum nesciunt culpa omnis. Atque exercitationem ut cupiditate et quas cumque.','Repudiandae nostrum praesentium sit nam iste. Beatae voluptatum porro voluptas laudantium voluptas. Nihil veritatis autem dolore sunt et et velit. Ipsa quia et nulla ea adipisci quia.'),(9,'Supplier I','Hilpert','Wyatt','fherzog@gmail.com','Sales Manager',NULL,'(620) 625-6329 x811','(354) 745-1125 x4204','506.676.5539 x847','418 Harley Mountains',NULL,NULL,'87843','USA','http://harber.net/odio-distinctio-quibusdam-perferendis-voluptate.html','Unde quo iure fugiat hic quos tempore. Quidem aut omnis incidunt et rem pariatur. Et facere omnis voluptatem nesciunt.','Et consequatur consequatur non. Nesciunt suscipit impedit tempore voluptatibus amet quos. Quaerat aut quia sit doloremque incidunt voluptatem qui. Quod expedita eos tempora nostrum impedit aut perspiciatis.'),(10,'Supplier J','Corwin','Robert','dayana16@gmail.com','Sales Manager',NULL,'(453) 641-0240','(494) 359-8471','912.814.6729','689 Tremblay Skyway Suite 885',NULL,NULL,'30940','USA','https://hermiston.com/facere-quo-beatae-consequatur-et-ex-et.html','Doloribus et dolore laborum perspiciatis velit aliquam. Dolores assumenda qui est voluptatem incidunt beatae nostrum. Ut eius quae amet quis in.','Sit est magni optio eius consequatur quis. In ab vel assumenda accusantium esse ipsa. Qui beatae natus libero eos blanditiis. Voluptatibus aut voluptatem repudiandae veniam aut quo.');
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

-- Dump completed on 2019-04-27 18:04:46
