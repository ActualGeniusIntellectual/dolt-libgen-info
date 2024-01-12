CREATE TABLE `fiction_description` (
  `MD5` char(32) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Descr` mediumtext,
  `TimeLastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin
