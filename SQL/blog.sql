-- CREATE DATABASE simplon-blog CHARACTER SET 'utf8';
set foreign_key_checks=0;

CREATE TABLE `User` (
    `ID_user` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(30) NOT NULL,
    `user_pw` TEXT NOT NULL,
    `user_mail` TEXT NOT NULL,
    PRIMARY KEY (`ID_user`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE `Post` (
    `ID_post` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `post_title` VARCHAR(50) NOT NULL,
    `post_content` TEXT NOT NULL,
    `post_date` DATETIME NOT NULL,
    `idUser` INT UNSIGNED,
    CONSTRAINT fk_UserPost FOREIGN KEY (idUser) REFERENCES User(ID_user),
    PRIMARY KEY (`ID_post`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE `Comment` (
    `ID_comment` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `comment_content` TEXT NOT NULL,
    `date_comment` DATETIME NOT NULL,
    `idPost` INT UNSIGNED,
    `idUser` INT UNSIGNED,
    CONSTRAINT fk_PostComment FOREIGN KEY (idPost) REFERENCES Post(ID_post),
    CONSTRAINT fk_UserComment FOREIGN KEY (idUser) REFERENCES User(ID_user),
    PRIMARY KEY (`ID_comment`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
