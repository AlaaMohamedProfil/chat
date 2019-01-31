ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySqlRoot123';

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `online` enum('N','Y') NOT NULL,
  `socketid` varchar(20) DEFAULT NULL,
  `photo` LONGBLOB DEFAULT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
 
CREATE TABLE `conversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` varchar(45) DEFAULT NULL,
  `to_user_id` varchar(45) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO `chat`.`users` (`username`, `password`, `online`, `socketid`, `photo`)
VALUES ('chat','chat123', 'Y', '1', null);

INSERT INTO `chat`.`users` (`username`, `password`, `online`, `socketid`, `photo`)
VALUES ('test','test123', 'Y', '2', null);
