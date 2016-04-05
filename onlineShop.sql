DROP DATABASE IF EXISTS onlineStore;
CREATE DATABASE IF NOT EXISTS onlineStore;
USE onlineStore;

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `colour` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `season` varchar(45) DEFAULT NULL,
  `description` blob,
  `price` varchar(256) DEFAULT NULL,
  `pic` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ARSENAL HOME SHIRT','Nike','Red','Male','2013/14','The latest home kit for the upcoming season for all gooners','£60','arsenal-away-shirt-2012-13.jpg'),
(2,'ARSENAL AWAY SHIRT','Nike','Blue/Black','Male','2013/14','Another disappointing season, another disappointing kit','£60','arsenal-away-shirt-2012-13.jpg'),
(3,'ASTON VILLA HOME SHIRT','Marcon','Maroon','Male','2013/14', 'Nice kit, crap team','£58','aston-villa-home-shirt-2013-14.jpg'),
(4, 'ASTON VILLA AWAY SHIRT', 'Marcon','White/Maroon','Male','2013/14','Nice kit, crap team','£60', 'aston-villa-away-shirt-2013-14.jpg'),
(5,'CHELSEA HOME SHIRT','Adidas','Blue','Male','2013/14','The latest rip off from the rich londoners ','£70','chelsea-home-shirt-2013-14.jpg'),
(6, 'CHELSEA AWAY SHIRT', 'Adidas','White','Male','2013/14', 'The latest rip off from the rich londoners','£70', 'chelsea-away-shirt-2013-14.jpg'),
(7,'LIVERPOOL  HOME SHIRT','Warrior','Red','Male','2013/14','Liverpool fans have a nice new kit for another anti-climatic season','£65','liverpool-home-shirt-2013-14.jpg'),
(8, 'LIVERPOOL  AWAY SHIRT', 'Warrior','White','Male','2013/14', 'Liverpool fans have a nice new kit for another anticlimaxtic season ','£65', 'liverpool-away-shirt-2013-14.jpg'),
(9,'MANCHESTER CITY HOME SHIRT','Nike','Sky Blue','Male','2013/14','Waste your money on this new piece of material','£100','man-city-home-shirt-2013-14.jpg'),
(10, 'MANCHESTER CITY AWAY SHIRT','Nike','Maroon','Male','2012/13','Last seasons away kit available on sale now','£85', 'man-city-away-shirt-2012-13.jpg'),
(11,'MANCHESTER UNITED HOME SHIRT','Nike','Red','Male','2013/14','The first of five new home kits for the first month of the new season','£70','man-utd-home-shirt-2013-14.jpg'),
(12, 'MANCHESTER UNITED AWAY SHIRT','Nike','White','Male','2012/13','Last seasons away shirt reduced to clear','£3', 'man-utd-away-shirt-2012-13.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;