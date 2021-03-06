-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: blogtest
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `post` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'В чем секрет успеха Стива Джобса?','Выдающийся американский инженер, ученый и предприниматель, чьи заслуги навсегда закрепились в истории, до конца жизни оставался простым пареньком из Сан-Франциско.'),(2,'Стив Джобс. Что осталось «за кадром»?','Жизнь его нельзя назвать легкой. Постоянные взлеты и падения сказались на формировании личности Стивена. Близкие люди не раз утверждали, что у него был непростой характер. Возможно, именно хладнокровность позволила Джобсу добиться таких высот.'),(3,'«Оставайтесь голодными. Оставайтесь безрассудными» (С) Стив Джобс','Первые деньги еще молодой парень зарабатывал далеко не на продаже новых технологий. В колледже ему приходилось сдавать бутылки из-под «Coca-Cola», чтобы иметь хоть какие-то средства. Комнаты в общежитии у Стива не было, так как обучение в колледже он прекратил. Поэтому ночевал на полу у друзей.'),(4,'ПК месяца (март 2018)','Три конфигурации, три ценовые категории, три лучших варианта потратить деньги на покупку ПК. Мы предлагаем начальные платформы, ориентируясь на которые, можно собрать хорошо сбалансированные игровые системы, дополнив их в соответствии со своими требованиями, возможностями и предпочтениями.'),(5,'Peugeot 308 SW GT Line: блюдо для гурмана, но не для массовых продаж','Встречайте обновленный Peugeot 308, да еще и в уникальной форме – универсал, спорт-версия GT Line, 120-сильный дизель BlueHDI. Ранее в статьях уже рассказывали о хэтчбеке Peugeot 308 и универсале Peugeot 308 SW, но теперь пришел черед изучить обновленную модель, попробовать версию GT Line, и – наконец – разобраться в рецепте этого блюда.'),(6,'Тест-драйв Nissan LEAF 2018 в Украине: мощный двигатель и цена $35 тыс','Новый Nissan LEAF 2018 уже приехал в Украину! Что представляет собой второе поколение самого популярного электромобиля в мире? Как едет новинка, в чем стала лучше или хуже?'),(7,'Не забывайте о безопасности своего смартфона','Пользователи сегодня хранят на своих смартфонах огромные объемы персональных данных, потеря которых сама по себе может стать проблемой. А тем более, когда они попадают в руки посторонних и вроде бы даже не по вашей вине. Но именно, что «вроде бы», потому что каждый из нас самостоятельно несёт ответственность за сохранность своей информации. Можете даже не сомневаться, ни наше государство, ни частные компании не будут о ней заботиться так, как вы.'),(8,'Ok Google: Как я создаю «умный дом» на основе колонки Google Home','Безусловно, все мы смотрели фильмы, в которых главным героям на помощь приходит голосовой помощник, а также показан ультрасовременный умный дом. '),(9,'Как Samsung пытается спрятать телевизор в интерьере и первый взгляд на The Wall','В последние несколько лет производители телевизоров начали уделять больше внимания дизайну, делая более тонкие, изящные модели, которые пытаются вписаться в интерьер. Но не всегда хорошо, когда они уж слишком выделяются в нём. Поэтому в Samsung последние два года работают над решениями, которые позволять телевизорам буквально слиться с интерьером. Во время презентации моделей QLED 2018 года компания Samsung как раз показала свои новые разработки в этой области.'),(10,'null','null'),(11,'null','null'),(12,'null','null'),(13,'Первый взгляд на QLED телевизоры Samsung 2018 года','Компания Samsung провела в Нью-Йорке презентацию новой линейки телевизоров QLED c разрешением 4К. От прошлогодних моделей новинки отличаются улучшенной функциональностью, а также способностью подключаться к системе умного дома. Давайте посмотрим, какие нововведения удалось реализовать Samsung.\r\n\r\n'),(14,'Дизельная дуель: Mazda CX-5 против SEAT Ateca','В прошлом кроссоверы Mazda CX-5 и SEAT Ateca уже были героями публикаций, но теперь пришла очередь дизельных версий. Поэтому позвольте мне немного отойти в описания всех деталей автомобилей (обещаю, буду давать нужные ссылки по тексту) и максимально сосредоточиться на главном – дизельных моторах, а также их влияние на суть автомобилей.'),(15,'Миле Кунис приписали третью беременность','Слухи о грядущем пополнении в звездном семействе подтвердил инсайдер. Также сама Мила Кунис якобы поведала о беременности подруге.\r\nГолливудская актриса Мила Кунис по слухам третий раз беременна. Об этом пишет Gossip Cop.\r\n\r\nПо информации издания, в последнее время актриса стала появляться в нарядах бесформенного свободного кроя. Кроме того, предположения о беременности подтвердил инсайдер.\r\n\r\nСообщается, что радостную новость о грядущем пополнении актриса якобы поведала своей подруге.'),(16,'Под Николаевом автобус с 19 пассажирами застрял в яме со льдом','Авария произошла на улице Вокзальной в Вознесенке рано утром в понедельник. Автобус ехал по маршруту Херсон-Москва. Жертв и пострадавших нет.\r\nВ Вознесенске Николаевской области спасатели отбуксировали пассажирский автобус, который застрял в яме со льдом. Информация о ЧП на улице Вокзальной поступила в 5.05 понедельника, 26 марта, сообщили в пресс-служба ГСЧС.\r\n\r\n\"Поступило сообщение о том, что автобус Mercedes сообщением Херсон-Москва, в котором находилось 19 пассажиров, застрял задним колесом в замерзшей выбоине на дороге\", – говорится в сообщении.'),(17,'dsfffdsf','sffdsfdsfsdf'),(18,'аыываваыа','аываыавыавыа'),(19,'новая статья','здесь текст'),(20,'Еще одна статья','какой-то текст'),(21,'И еще одна...','Еще текст...'),(22,'',''),(23,'',''),(24,'',''),(25,'',''),(26,'',''),(27,'',''),(28,'',''),(29,'',''),(30,'',''),(31,'',''),(32,'12',''),(33,'',''),(34,'Название','Статья\r\n'),(35,'',''),(36,'вппвп','ваппвпа'),(37,'ffs','sfdfs'),(38,'gdgd','gdfgdg'),(39,'',''),(40,'fsfds','sdfsf'),(41,'sfsf','sdff'),(42,'dggfgd','null'),(43,'fsf','sdfdf'),(44,'cbb','cb'),(45,'sfdf','sdfsdfds'),(46,'',''),(47,'d',''),(48,'','s'),(49,'',''),(50,'',''),(51,'','df'),(52,'d',''),(53,'',''),(54,'fdf','sfdf');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-26 17:21:20
