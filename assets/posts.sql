CREATE TABLE `crid`.`blogs`(
    `id` INT(11) NOT NULL,
    `title` TINYTEXT NOT NULL,
    `body` LONGTEXT NOT NULL,
    `published` INT(1) NOT NULL,
    `publisher_name` VARCHAR(50) NOT NULL,
    `publishtime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;