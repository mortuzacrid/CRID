CREATE TABLE `careers`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `position` VARCHAR(400) NOT NULL,
    `vacancy` INT(5) NOT NULL,
    `applylink` VARCHAR(500) NOT NULL,
    `jobdetails` LONGTEXT NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE = InnoDB;
