-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2020 at 01:37 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wells_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favthings`
--

DROP TABLE IF EXISTS `tbl_favthings`;
CREATE TABLE IF NOT EXISTS `tbl_favthings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Image` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_favthings`
--

INSERT INTO `tbl_favthings` (`ID`, `Name`, `Image`, `Description`) VALUES
(1, 'Horror Movies', 'horror.jpg', 'I have loved horror movies my whole life. I have seen pretty much every classic horror movie that is out there and I am an avid fan of the self-aware horror movie genre. I have a collection of horror movies ranging from all of the \"Scream\" movies to a factory sealed VHS tape of \"The Ring\". I also have a collection of Chucky dolls because it was one of the first horror movies I ever watched, at the age of 4. Horror is one of the biggest passions I have and it is definitely one of my favourite things.'),
(2, 'Cats', 'cats.jpg', 'I LOVE CATS. I have a soft spot for all animals however, there is something just so cuddly and cute about cats that I really love. I have a 2-year-old cat named Georgie. She used to be a feral cat that was living presumably in a shed beside my house. When I found her she was VERY pregnant and underweight. I took her to a shelter and after she gave birth to her babies, I adopted her. I named her Georgie after the character in the movie \"It\". She really loved looking down sewers and drains and because of my love of horror I wanted to name her after something related. She is my little fur baby and I love her soooo much.'),
(3, 'Coffee', 'coffee.jpg', 'Coffee is not only one of my favourite things but one of the things I could never give up. It is just so comforting to wake up in the morning and grad a warm delicious cup of coffee. The smell is so comforting and it tastes even better. I am a black coffee drinker because I don\'t like sweet drinks and I also don\'t drink milk. In my opinion, people who drink coffee with stuff in it are ruining the taste but hey, you do you. I usually drink about 2-5 cups of coffee a day and really could not function without it.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
