CREATE TABLE `scimag` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `DOI` varchar(200) NOT NULL,
  `DOI2` varchar(100) NOT NULL DEFAULT '',
  `Title` varchar(2000) NOT NULL DEFAULT '',
  `Author` varchar(2000) NOT NULL DEFAULT '',
  `Year` varchar(10) NOT NULL DEFAULT '',
  `Month` varchar(10) NOT NULL DEFAULT '',
  `Day` varchar(10) NOT NULL DEFAULT '',
  `Volume` varchar(45) NOT NULL DEFAULT '',
  `Issue` varchar(95) NOT NULL DEFAULT '',
  `First_page` varchar(45) NOT NULL DEFAULT '',
  `Last_page` varchar(45) NOT NULL DEFAULT '',
  `Journal` varchar(500) NOT NULL DEFAULT '',
  `ISBN` varchar(500) NOT NULL DEFAULT '',
  `ISSNP` varchar(11) NOT NULL DEFAULT '',
  `ISSNE` varchar(10) NOT NULL DEFAULT '',
  `MD5` varchar(32) NOT NULL DEFAULT '',
  `Filesize` int unsigned NOT NULL,
  `TimeAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `JOURNALID` varchar(45) NOT NULL DEFAULT '',
  `AbstractURL` varchar(500) NOT NULL DEFAULT '',
  `Attribute1` varchar(500) NOT NULL DEFAULT '',
  `Attribute2` varchar(1000) NOT NULL DEFAULT '',
  `Attribute3` varchar(2000) NOT NULL DEFAULT '',
  `Attribute4` varchar(5000) DEFAULT '',
  `Attribute5` varchar(256) NOT NULL DEFAULT '',
  `Attribute6` varchar(45) NOT NULL DEFAULT '',
  `visible` char(3) NOT NULL DEFAULT '',
  `PubmedID` varchar(10) NOT NULL DEFAULT '',
  `PMC` varchar(12) NOT NULL DEFAULT '',
  `PII` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `DOIINDEX` (`DOI`),
  KEY `DOIINDEX2` (`DOI2`),
  UNIQUE KEY `DOIUNIQUE` (`DOI`),
  FULLTEXT KEY `FULLTEXT` (`Title`,`Author`),
  KEY `ISSNEINDEX` (`ISSNE`),
  KEY `ISSNPINDEX` (`ISSNP`),
  KEY `ISSUEINDEX` (`Issue`),
  KEY `JOURNALID` (`JOURNALID`),
  KEY `MD5` (`MD5`),
  KEY `PUBMEDINDEX` (`PubmedID`),
  KEY `VISIBLEID` (`visible`,`ID`),
  KEY `VOLUMEINDEX` (`Volume`),
  KEY `YEARINDEX` (`Year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
