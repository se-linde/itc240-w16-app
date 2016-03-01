-- Adminer 4.2.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `wn16_Albums`;
CREATE TABLE `wn16_Albums` (
  `AlbumID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Artist` varchar(255) DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Label` varchar(100) DEFAULT NULL,
  `ReleaseYear` int(10) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`AlbumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `wn16_Albums` (`AlbumID`, `Title`, `Artist`, `Genre`, `Label`, `ReleaseYear`, `Description`) VALUES
(1,	'Dark Side of the Moon',	'Pink Floyd',	'Classic Rock',	'Capitol',	1973,	'The Dark Side of the Moon built upon experiments Pink Floyd had attempted in their previous live shows and recordings, but lacks the extended instrumental excursions which, according to critic David Fricke, had become characteristic of the band after founder member Syd Barrett left in 1968. Gilmour, Barrett\'s replacement, later referred to those instrumentals as \"that psychedelic noodling stuff\", and with Waters cited 1971\'s Meddle as a turning-point towards what would be realised on the album. The Dark Side of the Moon\'s lyrical themes include conflict, greed, the passage of time, death, and insanity, the latter inspired in part by Barrett\'s deteriorating mental state; he had been the band\'s principal composer and lyricist.[8] The album is notable for its use of musique concrète[4] and conceptual, philosophical lyrics, as found in much of the band\'s other work.');

-- 2016-03-01 02:54:32
