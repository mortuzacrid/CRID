CREATE TABLE `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(400) NOT NULL,
  `vacancy` int(5) NOT NULL,
  `applylink` varchar(500) NOT NULL,
  `jobdetails` LONGTEXT NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB;
