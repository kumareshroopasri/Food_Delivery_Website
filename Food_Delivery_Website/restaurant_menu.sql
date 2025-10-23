CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menuId` int NOT NULL AUTO_INCREMENT,
  `restaurantId` int DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `isAvailable` varchar(45) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menuId`),
  KEY `restaurantId_idx` (`restaurantId`),
  CONSTRAINT `restaurantId` FOREIGN KEY (`restaurantId`) REFERENCES `restaurant` (`restaurantId`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (291,1,'Dhokla','Soft steamed gram flour snack',60,'yes',4.5,'https://th.bing.com/th/id/OIP.I8b9lb4qxYZuLx3Oy3eMPgHaLH?'),(292,1,'Thepla','Spiced flatbread made from wheat and fenugreek',35,'yes',4.2,'images/thepla.jpg'),(293,1,'Undhiyu','Mixed vegetable curry with spices',120,'yes',4.7,'images/Undhiyu.jpg'),(294,1,'Khandvi','Rolled gram flour snack with seasoning',50,'yes',4.3,'images/khandvi.jpeg'),(295,1,'Gujarati Kadhi','Curd-based curry with spices',70,'yes',4.4,'images/Gujarati-Kadhi.jpg'),(296,1,'Fafda Jalebi','Crispy snack served with sweet jalebi',80,'yes',4.6,'images/fafdaJalebi.jpg'),(297,1,'Sev Tameta','Tomato curry with crispy sev topping',90,'yes',4.1,'images/sev-tameta.jpg'),(298,1,'Bhakri','Thick Gujarati flatbread',20,'yes',4,'images/bhakri.jpg'),(299,1,'Shrikhand','Sweet dessert made of strained yogurt',75,'yes',4.5,'images/shrikhand.jpg'),(300,1,'Handvo','Baked savory cake made with lentils',65,'yes',4.2,'images/handvo.jpg'),(301,2,'Schezwan Noodles','Spicy stir-fry noodles',140,'Yes',4.5,'images/schezwan-noodles.jpg'),(302,2,'Manchurian Balls','Veg dumplings in sauce',120,'Yes',4.4,'images/manchurian.jpg'),(303,2,'Spring Rolls','Crispy veg rolls',100,'Yes',4.3,'images/spring-roll.jpg'),(304,2,'Fried Rice','Stir-fried rice',130,'Yes',4.5,'images/friend-rice.jpeg'),(305,2,'Hot & Sour Soup','Spicy soup',90,'Yes',4.2,'images/soup.jpeg'),(306,2,'Kung Pao Paneer','Spicy stir-fry paneer',160,'Yes',4.3,'images/kung-pao.jpg'),(307,2,'Hakka Noodles','Soft noodles',130,'Yes',4.5,'images/hakka-noodles.jpg'),(308,2,'Chilli Potato','Fried potato in sauce',110,'Yes',4.4,'images/chilli-potato.jpg'),(309,2,'Crispy Corn','Fried corn snack',100,'Yes',4.3,'images/crispy-corn.jpg'),(310,2,'Gobi 65','Spicy cauliflower bites',120,'Yes',4.2,'images/gopi65.jpg'),(311,3,'Hyderabadi Biryani','Spicy layered rice',200,'Yes',4.7,'images/hyderabadi-biryani.jpg'),(312,3,'Egg Biryani','Rice with boiled eggs',180,'Yes',4.5,'images/eggBiryani.jpg'),(313,3,'Veg Biryani','Veg rice layers',160,'Yes',4.4,'images/vegBiryani.jpg'),(314,3,'Chicken Biryani','Spicy chicken biryani',220,'Yes',4.8,'images/chickenBiryani.jpg'),(315,3,'Mutton Biryani','Tender mutton rice',250,'Yes',4.7,'images/muttonBiryani.jpeg'),(316,3,'Paneer 65','Spicy fried paneer',120,'Yes',4.3,'images/paneer 65.jpg'),(317,3,'Chicken 65','Spicy fried chicken',140,'Yes',4.4,'images/chicken65.jpg'),(318,3,'Raita','Yogurt with veggies',40,'Yes',4.2,'images/raita.jpg'),(319,3,'Gulab Jamun','Indian dessert',50,'Yes',4.5,'images/gulabJamun.jpg'),(320,3,'Mirchi Ka Salan','Spicy chili curry',70,'Yes',4.3,'images/mirchiKaSalan.jpg'),(321,8,'Andhra Chicken Biryani','Spicy Andhra-style rice',210,'Yes',4.7,'images/andhraChicken.jpg'),(322,8,'Mutton Fry','Spicy dry mutton dish',250,'Yes',4.6,'images/Mutton-Fry.jpg'),(323,8,'Kodi Vepudu','Andhra chicken fry',180,'Yes',4.5,'images/kodiVepudu.jpeg'),(324,8,'Gongura Chicken','Chicken with sorrel leaves',190,'Yes',4.6,'images/gonguraChicken.jpg'),(325,8,'Natu Kodi Pulusu','Country chicken curry',200,'Yes',4.5,'images/natuKodi.jpg'),(326,8,'Andhra Fish Curry','Tangy fish curry',220,'Yes',4.5,'images/andhraFish.jpg'),(327,8,'Prawn Fry','Crispy prawn fry',240,'Yes',4.4,'images/prawnFry.png'),(328,8,'Ulava Charu','Horse gram stew',80,'Yes',4.3,'images/Ulavacharu.jpeg'),(329,8,'Mirapakaya Bajji','Stuffed chilli fritters',50,'Yes',4.2,'images/Mirapakaya-bajji.JPG'),(330,8,'Bobbatlu','Sweet Andhra flatbread',60,'Yes',4.4,'images/bhobatlu.jpg'),(331,7,'Mini Tiffin','Assorted South Indian items',90,'Yes',4.7,'images/miniTiffin.jpg'),(332,7,'Rava Kesari','Semolina sweet',50,'Yes',4.4,'images/Rava-Kesari.jpg'),(333,7,'Poori Masala','Fried bread & curry',70,'Yes',4.5,'images/pooriMasala.jpg'),(334,7,'Sambar Idli','Idli soaked in sambar',60,'Yes',4.6,'images/idli.jpeg'),(335,7,'Vegetable Biryani','Spiced rice with veg',120,'Yes',4.4,'images/vegetableBiryani.jpg'),(336,7,'Vada','Fried savoury snack',40,'Yes',4.3,'images/vada.jpg'),(337,7,'Chutney Varieties','Variety of chutneys',30,'Yes',4.5,'images/chutney.jpg'),(338,7,'Rava Dosa','Crispy dosa variant',70,'Yes',4.4,'images/raavaDosa.jpg'),(339,7,'Puliogare','Tamarind rice',60,'Yes',4.5,'images/puliogare.jpeg'),(340,7,'Sweet Pongal','Sweet rice dish',50,'Yes',4.6,'images/sweetPongal.jpg'),(341,6,'Idli Sambar','Steamed rice cakes',40,'Yes',4.6,'images/idliSambar.jpg'),(342,6,'Medu Vada','Fried lentil donuts',50,'Yes',4.5,'images/meduVada.jpg'),(343,6,'Dosa','Crispy rice pancake',60,'Yes',4.7,'images/doosa.jpg'),(344,6,'Pongal','Rice-lentil dish',70,'Yes',4.4,'images/pongal.jpg'),(345,6,'Rasam','Spicy soup',30,'Yes',4.3,'images/rasam.jpg'),(346,6,'Sambar Rice','Rice with lentil curry',80,'Yes',4.5,'images/sambarRice.jpg'),(347,6,'Curd Rice','Rice with yogurt',50,'Yes',4.4,'images/curdRice.jpeg'),(348,6,'Lemon Rice','Tangy rice dish',60,'Yes',4.3,'images/lemonRice.jpg'),(349,6,'Filter Coffee','Strong south coffee',30,'Yes',4.7,'images/filterCoffee.jpg'),(350,6,'Mysore Pak','South Indian sweet',40,'Yes',4.6,'images/mysorePak.jpg'),(351,5,'Sarson Da Saag','Mustard greens curry',120,'Yes',4.6,'images/sarsonDaSaag.jpg'),(352,5,'Makki Di Roti','Corn flour flatbread',40,'Yes',4.5,'images/makkiDiRoti.jpg'),(353,5,'Chole Bhature','Chickpeas with fried bread',90,'Yes',4.7,'images/choleBhature.jpg'),(354,5,'Paneer Butter Masala','Paneer in creamy gravy',140,'Yes',4.8,'images/paneerButterMasala.jpg'),(355,5,'Dal Makhani','Black lentils curry',110,'Yes',4.5,'images/dalMakhani2.jpg'),(356,5,'Amritsari Kulcha','Stuffed bread',50,'Yes',4.4,'images/amritsariKulcha.jpg'),(357,5,'Rajma Chawal','Kidney beans with rice',80,'Yes',4.3,'images/rajmaChawal.jpg'),(358,5,'Lassi','Sweet yogurt drink',60,'Yes',4.6,'images/lassi.jpg'),(359,5,'Pinni','Punjabi sweet',70,'Yes',4.4,'images/pinni.jpg'),(360,5,'Paratha Platter','Assorted stuffed parathas',120,'Yes',4.5,'images/parathaPlatter.jpg'),(361,4,'Alfredo Pasta','Creamy white sauce pasta',160,'Yes',4.5,'images/alfredoPasta.jpg'),(362,4,'Arrabbiata Pasta','Spicy red sauce pasta',150,'Yes',4.4,'images/arrabbiataPasta.jpg'),(363,4,'Lasagna','Layered pasta bake',200,'Yes',4.6,'images/lasagna.jpg'),(364,4,'Pesto Pasta','Basil sauce pasta',170,'Yes',4.5,'images/pestroPasta.jpg'),(365,4,'Penne Pomodoro','Tomato pasta',140,'Yes',4.3,'images/pennePomodoro.jpg'),(366,4,'Garlic Bread','Baked bread with garlic',60,'Yes',4.4,'images/garlicBread.jpg'),(367,4,'Spaghetti Carbonara','Creamy spaghetti',190,'Yes',4.5,'images/spaghetti.jpg'),(368,4,'Ravioli','Stuffed pasta pockets',210,'Yes',4.4,'images/ravioli.jpeg'),(369,4,'Bruschetta','Tomato basil toast',70,'Yes',4.2,'images/bruschetta.jpg'),(370,4,'Tiramisu','Coffee-flavoured dessert',120,'Yes',4.6,'images/tiramisu.jpg');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-07 14:04:09
