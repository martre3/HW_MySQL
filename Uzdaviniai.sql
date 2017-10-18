--1--
SELECT MONTH(`UserClicks`.`dateTime`), COUNT(DISTINCT `UserClicks`.`userId`)
FROM `UserClicks`
WHERE YEAR(`UserClicks`.`dateTime`)=YEAR(CURRENT_DATE ())
GROUP BY MONTH(`UserClicks`.`dateTime`);

--2--
SELECT `Clients`.*, TIMESTAMPDIFF(YEAR, `Clients`.`birthDate`, NOW())
FROM `Clients`
WHERE TIMESTAMPDIFF(YEAR, `Clients`.`birthDate`, NOW()) >= 0
AND MONTH(`Clients`.`birthDate`)=MONTH(CURRENT_DATE())
AND DAY(`Clients`.`birthDate`)=DAY(CURRENT_DATE());

--3--
SELECT p.*, m.*
FROM (SELECT * FROM `News` ORDER BY `News`.`date` DESC LIMIT 10) p
INNER JOIN (SELECT `Comments`.`newsId`, MAX(`Comments`.`date`)
FROM `Comments` GROUP BY `Comments`.`newsId`) m
ON m.`newsId` = p.`newsId`;
