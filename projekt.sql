-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: projekt
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `ID_autor` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(32) DEFAULT NULL,
  `nazwisko` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Andrzej','Sapkowski'),(2,'Brandon','Mull'),(3,'Terry','Pratchett'),(4,'Friedrich','Nietzsche'),(5,'Gall','Anonim'),(6,'Rene','Goscinny'),(7,'John','Flannagan'),(8,'Henryk','Sienkiewicz'),(9,'Adam','Mickiewicz'),(10,'Witold','Gombrowicz'),(11,'Neil','Gaiman'),(12,'Dmitrij','Gluchowski'),(13,'J.K.','Rowling'),(14,'Marek','Aureliusz'),(15,'Platon',''),(16,'Stephen','Hawking'),(17,'Stephen','King'),(18,'George','Martin'),(19,'Chris','Bradford'),(20,'Tite','Kubo');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `czytelnik`
--

DROP TABLE IF EXISTS `czytelnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `czytelnik` (
  `ID_czytelnik` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(32) DEFAULT NULL,
  `Nazwisko` varchar(32) DEFAULT NULL,
  `Email` varchar(32) DEFAULT NULL,
  `Numer_Telefonu` varchar(11) DEFAULT NULL,
  `Wypozyczenie` tinyint(1) DEFAULT NULL,
  `id_wypozyczenie` int DEFAULT NULL,
  PRIMARY KEY (`ID_czytelnik`),
  KEY `id_wypozyczenie` (`id_wypozyczenie`),
  CONSTRAINT `czytelnik_ibfk_1` FOREIGN KEY (`id_wypozyczenie`) REFERENCES `wypozyczenie` (`ID_wypozyczenie`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czytelnik`
--

LOCK TABLES `czytelnik` WRITE;
/*!40000 ALTER TABLE `czytelnik` DISABLE KEYS */;
INSERT INTO `czytelnik` VALUES (1,'Mikolaj','Holdakowski','mik.hol@gmail.com','732777416',1,19),(2,'Krzysztof','Szymczyk','krz.szym@gmail.com','795227735',1,2),(3,'Michal','Brodacki','mich.Brod@gmail.com','854367905',1,7),(4,'Jakub','Augustyniak','jak.augu@gmail.com','645342789',1,20),(5,'Dominik','Nowak','dom.now@gmail.com','324564786',0,NULL),(6,'Natalia','Kinalska','nata.kin@gmail.com','908437954',1,6),(7,'Adam','Bielski','adam.b@gmail.com','168429576',1,3),(8,'Wojciech','Lula','woj.lula@gmail.com','349286107',1,1),(9,'Julia','Wieclawska','jul.wiec@gmail.com','951385267',1,11),(10,'Kamil','Lesniewski','kam.les@gmail.com','480719259',1,4),(11,'Maciej','Kalucki','mac.kalu@gmail.com','659134761',0,NULL),(12,'Magdalena','Piatak','mag.piat@gmail.com','468134925',1,14),(13,'Marta','Fijorek','mar.fij@gmail.com','951357258',0,NULL),(14,'Mikolaj','Pretki','mik.pret@gmail.com','654258159',1,9),(15,'Dawid','Parol','daw.paro@gmail.com','190345839',1,10),(16,'Patrycja','Golan','pat.gol@gmail.com','671973249',0,NULL),(17,'Agnieszka','Bandyk','aga.ban@gmail.com','439076046',1,12),(18,'Milosz','Majewski','mil.maj@gmail.com','613486285',1,15),(19,'Weronika','Bandyk','wer.ban@gmail.com','302371013',1,8),(20,'Kinga','Zebrowska','kin.zeb@gmail.com','687342890',0,NULL),(21,'Kamil','Slimak','kam.sil@gmail.com','951127258',1,16),(22,'Zbigniew','Kopyta','zbi.kop@gmail.com','687342890',1,17),(23,'Miroslaw','Zelent','mir.zel@gmail.com','687318936',1,18),(24,'Aleksandra','Jakubowicz','ale.jak@gmail.com','659134941',0,NULL),(25,'Rey','Enigma','enigma@gmail.com','659152961',1,5),(26,'Zbigniew','Ziobro','zbi.zib@gmail.com','688029312',1,13);
/*!40000 ALTER TABLE `czytelnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoria`
--

DROP TABLE IF EXISTS `kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategoria` (
  `ID_kategoria` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(16) DEFAULT NULL,
  `opis` varchar(64) DEFAULT NULL,
  `ocena` float(2,1) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_kategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES (1,'fantasy','magiczne i nadprzyrodzone motywy',9.2),(2,'horror','klimat grozy, niepokoju lub obrzydzenia i szoku',8.7),(3,'obyczajowa','ksiażki o codzienności zwyklych ludzi',3.1),(4,'piekna','dziela literackie o charakterze artystycznym',7.0),(5,'klasyka','dziela sztuki i literatury z różnych okresow historycznych',5.5),(6,'manga','japonski komiks',9.9),(7,'dla dzieci','powiesci skierowane do najmlodszych',0.5),(8,'historia','piramidy, starocie i duzo wojen',6.9),(9,'filozofia','wymysly \"madrzejszych\" ludzi',8.3),(10,'poezja','dziela niepisane proza',8.3),(11,'rozrywka','przy tym sie zabawisz',3.3),(12,'przygodowa','duzo przygod i wychodzenia z opresji',8.7),(13,'romans','milosc dwojga ludzi',9.3),(14,'kryminal','kiedy ktos zrobil cos bardzo zlego',4.8),(15,'science-fiction','fantastyka naukowa',3.6),(16,'thriller','wzbudzaja dreszcze i wiele emocji',7.0),(17,'astronomia','kiedy jednak nie jestes jedyna gwiazda',2.6),(18,'poradniki','i tak to wygooglujesz',9.8),(19,'informatyka','nie wiem co sie dzieje i ty tez nie bedziesz',1.3),(20,'inne','nie wiem',0.0);
/*!40000 ALTER TABLE `kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ksiazka`
--

DROP TABLE IF EXISTS `ksiazka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ksiazka` (
  `ID_ksiazka` int NOT NULL AUTO_INCREMENT,
  `Tytul` varchar(32) DEFAULT NULL,
  `Opis` varchar(96) DEFAULT NULL,
  `Jezyk` varchar(16) DEFAULT NULL,
  `Data_Wydania` date DEFAULT NULL,
  `Stan` tinyint(1) DEFAULT NULL,
  `id_autor` int DEFAULT NULL,
  `id_kategoria` int DEFAULT NULL,
  `id_wypozyczenie` int DEFAULT NULL,
  PRIMARY KEY (`ID_ksiazka`),
  KEY `id_kategoria` (`id_kategoria`),
  KEY `id_wypozyczenie` (`id_wypozyczenie`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `ksiazka_ibfk_1` FOREIGN KEY (`id_kategoria`) REFERENCES `kategoria` (`ID_kategoria`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `ksiazka_ibfk_2` FOREIGN KEY (`id_wypozyczenie`) REFERENCES `wypozyczenie` (`ID_wypozyczenie`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `ksiazka_ibfk_3` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`ID_autor`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksiazka`
--

LOCK TABLES `ksiazka` WRITE;
/*!40000 ALTER TABLE `ksiazka` DISABLE KEYS */;
INSERT INTO `ksiazka` VALUES (1,'Mlody Samuraj','Ksiazka o podrozy mlodego samuraja','Polski','2008-01-06',1,19,12,4),(2,'Ostatnie Zyczenie','Poczatek serii przygod Wiedzmina Geralta','Polski','1993-09-03',1,1,1,9),(3,'Ostatnie Zyczenie','Poczatek serii przygod Wiedzmina Geralta','Polski','1993-09-03',1,1,1,10),(4,'Miecz Przeznaczenia','Druga czesc serii przygod Wiedzmina Geralta','Polski','1992-05-22',1,1,1,15),(5,'Miecz Przeznaczenia','Druga czesc serii przygod Wiedzmina Geralta','Polski','1992-05-22',1,1,1,2),(6,'Miecz Przeznaczenia','Druga czesc serii przygod Wiedzmina Geralta','Polski','1992-05-22',1,1,1,19),(7,'Krew Elfow','Trzecia czesc serii przygod Wiedzmina Geralta','Polski','1994-01-15',1,1,1,11),(8,'Metro 2033','Rosyjska ksiazka o zyciu w metrze','Rosyjski','2003-12-01',1,12,16,20),(9,'Metro 2033','Rosyjska ksiazka o zyciu w metrze','Rosyjski','2003-12-01',1,12,16,12),(10,'Metro 2033','Rosyjska ksiazka o zyciu w metrze','Rosyjski','2003-12-01',1,12,16,17),(11,'Krotka Historia Czasu','Ksiazka przyblizajaca dokonania nauki z 1988','Angielski','1988-04-30',1,16,8,18),(12,'Harry Potter:Kamien Filozoficzny','Poczatek serii przygod Harryego Pottera','Angielski','1997-06-26',1,13,7,6),(13,'Harry Potter:Kamien Filozoficzny','Poczatek serii przygod Harryego Pottera','Angielski','1997-06-26',1,13,7,13),(14,'Harry Potter:Kamien Filozoficzny','Poczatek serii przygod Harryego Pottera','Angielski','1997-06-26',1,13,7,14),(15,'Bleach Chapter 108-130','Ichigo otrzymuje pomoc od zanpaktou i wlaczy z Kenpachim','Japonski','2013-05-07',1,20,6,16),(16,'Panstwo','Historia o filozofii Platona','Polski','2011-05-05',1,15,8,7),(17,'To','Historia o Klaunie ze sciekow','Angielski','1986-10-23',1,17,2,8),(18,'Ferdydurke','Lektura w szkole sredniej, postrach maturzystow','Polski','1937-10-15',1,10,5,3),(19,'W Pustyni i w Puszczy','Historia o porwaniu Stasia i Neli','Polski','1911-02-10',1,9,5,5),(20,'Swiat Dysku','Przezabawna komedia z innego swiata','Angielski','1983-11-11',1,3,1,1),(21,'Koralina','Koralina zapoznaje sie ze wspomnienia nowego domu','Angielski','2002-08-04',0,11,16,NULL),(22,'Rozmyslania','Filozofia Marka Aureliusza','Polski','2014-03-26',0,14,9,NULL),(23,'Ruiny Gorlanu','Pierwsza ksiega z serii Zwiadowcy','Polski','2004-11-01',0,7,12,NULL),(24,'Ruiny Gorlanu','Pierwsza ksiega z serii Zwiadowcy','Polski','2004-11-01',0,7,12,NULL),(25,'Ruiny Gorlanu','Pierwsza ksiega z serii Zwiadowcy','Polski','2004-11-01',0,7,12,NULL),(26,'Okup za Eraka','Siodma ksiega z serii Zwiadowcy','Polski','2007-11-01',0,7,12,NULL),(27,'Mikolajek','Przezabawna historia o niesfornym Mikolajku','Francuski','1959-03-30',0,6,7,NULL),(28,'Mikolajek','Przezabawna historia o niesfornym Mikolajku','Francuski','1959-03-30',0,6,7,NULL),(29,'Wiedza Radosna','Dzielo kluczowe dla calej filozofii Nietzschego, Bog jest martwy','Niemiecki','2003-10-24',0,4,9,NULL),(30,'Wiedza Radosna','Dzielo kluczowe dla calej filozofii Nietzschego, Bog jest martwy','Niemiecki','2003-10-24',0,4,9,NULL),(31,'Gra o Tron','Pierwszy tom sagi Piesn Lodu i Ognia','Angielski','1996-08-06',0,18,12,NULL);
/*!40000 ALTER TABLE `ksiazka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownik`
--

DROP TABLE IF EXISTS `pracownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownik` (
  `ID_pracownik` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(32) DEFAULT NULL,
  `nazwisko` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `numer_telefonu` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID_pracownik`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownik`
--

LOCK TABLES `pracownik` WRITE;
/*!40000 ALTER TABLE `pracownik` DISABLE KEYS */;
INSERT INTO `pracownik` VALUES (1,'Bozena','Kwiatkowska','boz.kwi@gmail.com','918273645'),(2,'Michal','Wislicki','mic.wis@gmail.com','892167435'),(3,'Wiktor','Andrzejowski','wik.and@gmail.com','519462947'),(4,'Adam','Ferenc','ada.fer@gmail.com','742259293'),(5,'Dawid','Palamasz','daw.pal@gmail.com','542935642'),(6,'Mikolaj','Holdakowski','mik.hol@gmail.com','732777416'),(7,'Krzysztof','Szymczyk','krz.szym@gmail.com','795227735'),(8,'Wojciech','Lula','woj.lula@gmail.com','349286107'),(9,'Dawid','Orzechowski','daw.orz@gmail.com','562804828'),(10,'Jedrzej','Cituk','jed.cit@gmail.com','749751928'),(11,'Patryk','Siudzik','pat.siu@gmail.com','752615482'),(12,'Marek','Pyszko','mar.pysz@gmail.com','677402038'),(13,'Aureliusz','Casterville','casterville@gmail.com','609747515'),(14,'Magnus','Carlsen','chess@gmail.com','700650763'),(15,'Levy','Rozman','gotham@gmail.com','876274103'),(16,'Eric','Rosen','imrosen@gmail.com','938809298'),(17,'Maciej','Baczek','mac.bonk@gmail.com','868593267'),(18,'Kamila','Ralno','kam.ral@gmail.com','438441172'),(19,'Magda','Nezik','mag.nez@gmail.com','604092669'),(20,'Karolina','Zelazniak','kar.zel@gmail.com','977304500');
/*!40000 ALTER TABLE `pracownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wypozyczenie`
--

DROP TABLE IF EXISTS `wypozyczenie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wypozyczenie` (
  `ID_wypozyczenie` int NOT NULL AUTO_INCREMENT,
  `poczatek` date DEFAULT NULL,
  `koniec` date DEFAULT NULL,
  `id_ksiazka` int DEFAULT NULL,
  `id_czytelnik` int DEFAULT NULL,
  `id_pracownik` int DEFAULT NULL,
  PRIMARY KEY (`ID_wypozyczenie`),
  KEY `id_ksiazka` (`id_ksiazka`),
  KEY `id_czytelnik` (`id_czytelnik`),
  KEY `id_pracownik` (`id_pracownik`),
  CONSTRAINT `wypozyczenie_ibfk_1` FOREIGN KEY (`id_ksiazka`) REFERENCES `ksiazka` (`ID_ksiazka`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `wypozyczenie_ibfk_2` FOREIGN KEY (`id_czytelnik`) REFERENCES `czytelnik` (`ID_czytelnik`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `wypozyczenie_ibfk_3` FOREIGN KEY (`id_pracownik`) REFERENCES `pracownik` (`ID_pracownik`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wypozyczenie`
--

LOCK TABLES `wypozyczenie` WRITE;
/*!40000 ALTER TABLE `wypozyczenie` DISABLE KEYS */;
INSERT INTO `wypozyczenie` VALUES (1,'2021-12-03','2022-01-03',20,1,9),(2,'2022-01-06','2022-02-06',5,2,11),(3,'2021-11-26','2021-12-26',18,26,7),(4,'2022-01-10','2022-02-10',1,4,14),(5,'2021-10-30','2021-11-30',19,7,8),(6,'2021-09-15','2021-10-15',12,15,13),(7,'2022-01-07','2022-02-07',16,3,4),(8,'2021-10-29','2021-12-29',17,21,12),(9,'2021-08-25','2021-09-25',2,20,10),(10,'2021-10-26','2021-11-26',3,14,19),(11,'2021-10-29','2021-11-29',7,6,20),(12,'2022-01-07','2022-02-07',9,24,18),(13,'2022-01-10','2022-02-10',13,25,6),(14,'2021-10-30','2021-11-30',14,23,17),(15,'2021-10-04','2021-11-04',4,17,2),(16,'2022-01-09','2022-02-09',15,3,1),(17,'2021-08-23','2021-09-23',10,22,15),(18,'2022-01-05','2022-02-05',11,21,5),(19,'2021-12-06','2022-01-06',6,12,3),(20,'2021-11-30','2021-12-30',8,26,16);
/*!40000 ALTER TABLE `wypozyczenie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zamowienie`
--

DROP TABLE IF EXISTS `zamowienie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zamowienie` (
  `ID_zamowienie` int NOT NULL AUTO_INCREMENT,
  `cena` decimal(5,2) DEFAULT NULL,
  `realizacja` tinyint(1) DEFAULT NULL,
  `termin_dostawy` timestamp NULL DEFAULT NULL,
  `id_ksiazka` int DEFAULT NULL,
  PRIMARY KEY (`ID_zamowienie`),
  KEY `id_ksiazka` (`id_ksiazka`),
  CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`id_ksiazka`) REFERENCES `ksiazka` (`ID_ksiazka`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienie`
--

LOCK TABLES `zamowienie` WRITE;
/*!40000 ALTER TABLE `zamowienie` DISABLE KEYS */;
INSERT INTO `zamowienie` VALUES (1,39.99,1,'2022-01-01 08:00:00',3),(2,59.99,1,'2022-01-01 08:00:00',2),(3,59.99,1,'2022-01-01 08:00:00',1),(4,64.99,1,'2022-01-01 08:00:00',5),(5,64.99,1,'2022-01-01 08:00:00',4),(6,64.99,1,'2022-01-01 08:00:00',6),(7,69.99,1,'2022-01-01 08:00:00',8),(8,89.99,1,'2021-12-23 07:00:00',7),(9,89.99,1,'2021-12-23 07:00:00',9),(10,89.99,1,'2021-12-23 07:00:00',10),(11,29.99,1,'2021-12-15 18:00:00',11),(12,49.99,1,'2022-01-04 09:00:00',14),(13,49.99,1,'2022-01-04 09:00:00',12),(14,49.99,1,'2022-01-04 09:00:00',13),(15,49.99,1,'2021-12-01 07:00:00',15),(16,54.99,1,'2021-12-01 07:00:00',19),(17,69.99,1,'2021-12-01 07:00:00',18),(18,69.99,1,'2021-12-01 07:00:00',16),(19,69.99,1,'2021-12-01 07:00:00',17),(20,59.99,1,'2021-01-04 09:00:00',20);
/*!40000 ALTER TABLE `zamowienie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 18:26:42
