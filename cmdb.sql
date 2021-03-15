-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: 172.18.24.254    Database: cmdb
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.9-MariaDB-1:10.5.9+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hosts`
--

DROP TABLE IF EXISTS `hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hosts` (
  `name` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `fqdn` varchar(255) DEFAULT NULL,
  `main_ip` varchar(15) DEFAULT NULL,
  `os_name` varchar(80) DEFAULT NULL,
  `os_version` varchar(40) DEFAULT NULL,
  `system_type` varchar(40) DEFAULT NULL,
  `kernel` varchar(40) DEFAULT NULL,
  `arch_hardware` varchar(12) DEFAULT NULL,
  `arch_userspace` varchar(12) DEFAULT NULL,
  `virt_type` varchar(20) DEFAULT NULL,
  `virt_role` varchar(20) DEFAULT NULL,
  `cpu_type` varchar(60) DEFAULT NULL,
  `vcpus` int(11) DEFAULT NULL,
  `ram` float DEFAULT NULL,
  `disk_total` float DEFAULT NULL,
  `disk_free` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hosts`
--

LOCK TABLES `hosts` WRITE;
/*!40000 ALTER TABLE `hosts` DISABLE KEYS */;
INSERT INTO `hosts` VALUES ('web-01.prod.example.com','production','web-01.prod.example.com','192.168.58.3','Debian','6.0.10','Linux','2.6.32-5-amd64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,0.5,97.5,82.9),('web-01.dev.local','development','web-01.dev.local','192.168.56.2','Debian','6.0.10','Linux','2.6.32-5-amd64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,1.5,283.8,176),('win.dev.local','development','win.dev.local','','Windows','2012','Windows','','x86_64','x86_64','VMware','guest','',0,4,0,0),('queue-01.dev.local','development','queue-01.dev.local','192.168.56.8','CentOS','6.6','Linux','2.6.32-504.el6.x86_64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,1,29,26.9),('web-02.prod.example.com','production','web-02.prod.example.com','192.168.58.2','Debian','6.0.10','Linux','2.6.32-5-amd64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,0.5,97.5,82.9),('web-03.prod.example.com','production','web-03.prod.example.com','192.168.0.10','Ubuntu','14.04','Linux','3.13.0-44-generic','i386','i386','kvm','host','Pentium(R) Dual-Core  CPU      E5300  @ 2.60GHz',2,2.9,290.1,270.8),('queue-01.prod.example.com','production','queue-01.prod.example.com','194.187.79.11','Ubuntu','14.04','Linux','3.16.0-37-generic','x86_64','x86_64','VMware','guest','Intel(R) Xeon(R) CPU E5-2680 0 @ 2.70GHz',2,3.9,121.7,26.9),('queue-02.prod.example.com','production','queue-02.prod.example.com','192.168.0.3','Linuxmint','17','Linux','3.16.1-031601-generic','x86_64','x86_64','kvm','host','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',8,15.6,0,0),('web-01.staging.example.com','staging','web-01.staging.example.com','192.168.57.1','Debian','6.0.10','Linux','2.6.32-5-amd64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,1.5,283.8,176),('web-02.staging.example.com','staging','web-02.staging.example.com','192.168.56.7','Ubuntu','14.04','Linux','3.13.0-32-generic','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,1,77.4,71.8),('web-03.staging.example.com','staging','web-03.staging.example.com','192.168.57.1','Debian','6.0.10','Linux','2.6.32-5-amd64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,1.5,283.8,176),('web-02.dev.local','development','web-02.dev.local','10.0.4.8','Debian','7.8','Linux','2.6.32-19-pve','x86_64','x86_64','openvz','guest','Intel(R) Xeon(R) CPU           W3520  @ 2.67GHz',8,8,40,35.7),('openbsd.dev.local','development','openbsd.dev.local','192.168.12.44','OpenBSD','5.6','OpenBSD','5.6','amd64','','?','?','Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz, 3392.30 MHz',4,4,0,0),('win2k8r2.local','development','win2k8r2.local','192.168.1.94','Microsoft Windows NT 6.1.7601 Service Pack 1','6.1.7601.65536','Windows','','64-bit','','?','?','',0,0,0,0),('sol_host','development','unknown','10.0.2.15','Solaris','10','SunOS','5.10','i386','i386','virtualbox','guest','Intel(r) Core(tm) i7-4712HQ CPU @ 2.30GHz',1,1.5,0,0),('queue-01.staging.example.com','staging','queue-01.staging.example.com','192.168.56.7','Ubuntu','14.04','Linux','3.13.0-32-generic','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,1,77.4,71.8),('queue-03.prod.example.com','production','queue-03.prod.example.com','192.168.58.1','Debian','6.0.10','Linux','2.6.32-5-amd64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,0.5,97.5,82.9),('queue-02.staging.example.com','staging','queue-02.staging.example.com','192.168.57.1','Debian','6.0.10','Linux','2.6.32-5-amd64','x86_64','x86_64','virtualbox','guest','Intel(R) Core(TM) i7-4712HQ CPU @ 2.30GHz',1,1.5,283.8,176);
/*!40000 ALTER TABLE `hosts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 23:21:41