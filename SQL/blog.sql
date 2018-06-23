CREATE TABLE `User` (
    `ID_user` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(30) NOT NULL,
    `pw` TEXT NOT NULL,
    `mail` TEXT NOT NULL,
    PRIMARY KEY (`id_user`)
);

CREATE TABLE `Post` (
    `ID_post` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    `post` TEXT NOT NULL,
    `date_post` DATETIME NOT NULL,
    `author_post` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`id_post`)
);

CREATE TABLE `Comment` (
    `ID_comment` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `comment` TEXT NOT NULL,
    `post_id` INT,
    `date_comment` DATETIME NOT NULL,
    `author_comment` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`id_comment`)
);

ALTER TABLE `Post` ADD CONSTRAINT FOREIGN KEY (`author_post`) REFERENCES `User`(`ID_user`);
ALTER TABLE `Comment` ADD CONSTRAINT FOREIGN KEY (`author_comment`) REFERENCES `User`(`ID_user`);
ALTER TABLE `Comment` ADD CONSTRAINT FOREIGN KEY (`post_id`) REFERENCES `Post`(`ID_post`);
