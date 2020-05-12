update mysql.user set plugin = 'mysql_native_password' where User='root';
FLUSH PRIVILEGES;

create database hackberry;
use hackberry;

-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `wifiList`;
CREATE TABLE `wifiList` (
  `idWifiList` int(11) NOT NULL AUTO_INCREMENT,
  `unixTime` varchar(13) NOT NULL,
  `bssid` varchar(17) NOT NULL,
  `ssid` varchar(200) DEFAULT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `gpsAccurancy` int(11) DEFAULT NULL,
  `apCapabilities` varchar(200) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `signalStrength` int(11) DEFAULT NULL,
  PRIMARY KEY (`idWifiList`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- 2020-05-12 20:29:25

exit;

