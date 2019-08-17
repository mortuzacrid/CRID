-- phpMyAdmin SQL Dump
    -- version 4.9.0.1
    -- https://www.phpmyadmin.net/
    --

    -- Host: 127.0.0.1
    -- Generation Time: Aug 07, 2019 at 06:25 AM
    -- Server version: 10.3.16-MariaDB
    -- PHP Version: 7.2.20
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
    AUTOCOMMIT = 0;
START TRANSACTION
    ;
SET
    time_zone = "+00:00";
    /*!40101
SET
    @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
    /*!40101
SET
    @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
    /*!40101
SET
    @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
    /*!40101
SET NAMES
    utf8mb4 */;
    --

    -- Database: `crid`
    --

    -- --------------------------------------------------------
    --

    -- Table structure for table `blogs`
    --

CREATE TABLE `blogs`(
    `id` INT(11) NOT NULL,
    `title` TINYTEXT NOT NULL,
    `body` LONGTEXT NOT NULL,
    `published` INT(1) NOT NULL DEFAULT 1,
    `publisher_name` VARCHAR(50) NOT NULL,
    `publishtime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP()) ENGINE = InnoDB DEFAULT CHARSET = latin1;
    --

    -- Indexes for table `blogs`
    --

    ALTER TABLE
        `blogs` ADD PRIMARY KEY(`id`);
        --

        -- AUTO_INCREMENT for dumped tables
        --

        --

        -- AUTO_INCREMENT for table `blogs`
        --

    ALTER TABLE
        `blogs` MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT,
        AUTO_INCREMENT = 0;
    COMMIT
        ;
        /*!40101
    SET
        CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
        /*!40101
    SET
        CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
        /*!40101
    SET
        COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;