ALTER TABLE `Authors`
  MODIFY `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `Books` DROP COLUMN `authorId`;
ALTER TABLE `Books` ADD COLUMN `genre` varchar(50);
ALTER TABLE `Books`
  MODIFY `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `Books` CHARACTER SET utf8, COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `Books_Authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 ;

DELETE FROM `Authors`;
DELETE FROM `Books`;
DELETE FROM `Books_Authors`;

INSERT INTO `Authors` (`authorId`, `name`) VALUES
(1, 'Chris Smith'),
(2, 'Steven Levithan'),
(3, ' Jan Goyvaerts'),
(4, 'Ryan Benedetti'),
(5, ' Al Anderson'),
(6, 'Clay Breshears'),
(7, 'Kevlin Henney'),
(8, 'Dan Brown'),
(9, 'Stephen King'),
(10, 'Emily Bleeker');

INSERT INTO `Books` (`bookId`, `title`, `genre`, `year`) VALUES
(1, 'Programming F# 3.0, 2nd Edition', 'Science', 2012),
(2, 'Regular Expressions Cookbook, 2nd Edition', 'Science', 2012),
(3, 'Head First Networking', 'Science', 2009),
(4, 'The Art of Concurrency', 'Science', 2009),
(5, '97 Things Every Programmer Should Know', 'Science', 2010),
(6, 'McCullough and Berglund on Mastering Advanced Git', 'Science', NULL),
(7, 'Version Control with Git, 2nd Edition', 'Science', 2012),
(8, 'Learning Python, 4th Edition', 'Science', 2009),
(9, 'The Shining', 'Horror', 2012),
(10, 'Origin', 'Thriller', 2017),
(11, 'Wreckage', 'Fiction', 2015);

INSERT INTO `Books_Authors` (`bookId`, `authorId`) VALUES
(1, 1),
(2, 2),
(3, 4),
(3, 5),
(3, 6),
(4, 6),
(5, 7),
(6, NULL),
(7, NULL),
(8, NULL),
(9, 9),
(10, 8),
(11, 10);