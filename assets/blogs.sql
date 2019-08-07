-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2019 at 06:25 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crid`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `body` longtext NOT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `publisher_name` varchar(50) NOT NULL,
  `publishtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `published`, `publisher_name`, `publishtime`) VALUES
(1, 'PIR Sensor with Arduino | How PIR Sensor Works', '<p>In this article, you will see how PIR sensor works and how to connect and use it with Arduino. No more worries, now you can connect and use PIR sensor with Arduino step by step.</p>\r\n\r\n<h2>PIR sensor Working</h2>\r\n\r\n<p>PIR is known as passive infrared. Where it detects heat from moving objects. Usually the PIR sensor module consists of Fresnels lens, which directs the IR rays on to the sensor. We can adjust the sensitivity and delay of the sensor. For complete information about the modes and working of the sensor, watch the video below.</p>\r\n\r\n<h2>Arduino PIR sensor Connections</h2>\r\n\r\n<p><img alt=\"PIR connections with Arduino\" src=\"https://i2.wp.com/electronicsprojectshub.com/wp-content/uploads/2019/03/PIR-with-ARDUINO.png?w=840&amp;ssl=1\" style=\"height:437px; width:646px\" /></p>\r\n\r\n<h2>Interfacing PIR sensor with Arduino</h2>\r\n\r\n<p><iframe height=\"315\" src=\"https://www.youtube.com/embed/B_9jm6C4BMQ\" width=\"560\"></iframe></p>\r\n\r\n<h2>Arduino Code for PIR sensor</h2>\r\n\r\n<ol>\r\n	<li>int led = 13; // the pin that the LED is attached to</li>\r\n	<li>int sensor = 3; // the pin that the sensor is attached to</li>\r\n	<li>int state = LOW; // by default, no motion detected</li>\r\n	<li>int val = 0; // variable to store the sensor status (value)</li>\r\n	<li>&nbsp;</li>\r\n	<li>void setup() {</li>\r\n	<li>pinMode(led, OUTPUT); // initialize LED as an output</li>\r\n	<li>pinMode(sensor, INPUT); // initialize sensor as an input</li>\r\n	<li>Serial.begin(9600); // initialize serial</li>\r\n	<li>}</li>\r\n	<li>&nbsp;</li>\r\n	<li>void loop(){</li>\r\n	<li>val = digitalRead(sensor); // read sensor value</li>\r\n	<li>if (val == HIGH) { // check if the sensor is HIGH</li>\r\n	<li>digitalWrite(led, HIGH); // turn LED ON</li>\r\n	<li>delay(100); // delay 100 milliseconds</li>\r\n	<li>&nbsp;</li>\r\n	<li>if (state == LOW) {</li>\r\n	<li>Serial.println(&quot;Motion detected!&quot;);</li>\r\n	<li>state = HIGH; // update variable state to HIGH</li>\r\n	<li>}</li>\r\n	<li>}</li>\r\n	<li>else {</li>\r\n	<li>digitalWrite(led, LOW); // turn LED OFF</li>\r\n	<li>delay(200); // delay 200 milliseconds</li>\r\n	<li>&nbsp;</li>\r\n	<li>if (state == HIGH){</li>\r\n	<li>Serial.println(&quot;Motion stopped!&quot;);</li>\r\n	<li>state = LOW; // update variable state to LOW</li>\r\n	<li>}</li>\r\n	<li>}</li>\r\n	<li>}</li>\r\n</ol>\r\n\r\n<h2>Download PIR Arduino Code</h2>\r\n\r\n<p><a href=\"https://drive.google.com/open?id=1d5NED-l1abkxc_WZNtwMsriERMjPhTss\">Download</a></p>\r\n', 1, 'Mortuza Hossain', '2019-08-07 10:14:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
