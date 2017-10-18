--a--
INSERT INTO `Authors` (`authorId`,`name`) VALUES
(8, 'Dan Brown'),
(9, 'Stephen King'),
(10, 'Emily Bleeker');

--b--
INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES
(9, 'The Shining', 2012),
(8, 'Origin', 2017),
(10, 'Wreckage', 2015);

--c--
SELECT `Books`.*, `Authors`.`name`
FROM `Books`
INNER JOIN `Authors` ON `Books`.authorId=`Authors`.`authorId`;

--d--
UPDATE `Authors` SET `name`='Bella Forrest' WHERE `authorId`=4;

--e--
--itraukti autoriai be knygu--
SELECT `Authors`.name, COUNT(`Books`.`authorId`)
FROM `Authors`
LEFT JOIN `Books` ON `Authors`.`authorId`=`Books`.`authorId`
GROUP BY `Authors`.`authorId`;

--neitraukti autoriai be knygu--
SELECT `Authors`.`name`, COUNT(`Books`.`authorId`)
FROM `Authors`
INNER JOIN `Books` ON `Authors`.authorId=`Books`.`authorId`
GROUP BY `Authors`.`authorId`;

--f--
DELETE FROM `Authors`
WHERE `authorId` in (8, 9, 10);

--g--
DELETE `Books` FROM `Books`
LEFT JOIN `Authors` ON `Books`.`authorId`=`Authors`.`authorId`
WHERE `Authors`.`authorId` IS NULL;
