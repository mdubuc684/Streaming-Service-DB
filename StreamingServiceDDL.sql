DROP SCHEMA IF EXISTS `streamServ`;
CREATE SCHEMA IF NOT EXISTS `streamServ` DEFAULT CHARACTER SET utf8 ;
USE `streamServ`;

-- ---------------------------------------
-- ALBUM
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Album`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Album` (
  `albumID` INT NOT NULL AUTO_INCREMENT,
  `albumTitle` VARCHAR(100) NOT NULL,
  `coverArt` BLOB NOT NULL,
  `releaseDate` DATE NOT NULL,
  PRIMARY KEY (`albumID`)
) ENGINE = InnoDB;

-- ---------------------------------------
-- ARTIST
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Artist`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Artist` (
  `artistID` INT NOT NULL AUTO_INCREMENT,
  `artistName` VARCHAR(45) NOT NULL,
  `artistRoyalty` DECIMAL(4,4) NOT NULL,
  `artistDesc` VARCHAR(200) NULL,
  `artistPhone` CHAR(10) NULL,
  `artistEmail` VARCHAR(50) NULL,
  PRIMARY KEY (`artistID`)
) ENGINE = InnoDB;

ALTER TABLE `Artist` 
ADD CONSTRAINT artistConstraint
CHECK (
  `artistPhone` IS NOT NULL OR 
  `artistEmail` IS NOT NULL
);

-- ---------------------------------------
-- LABEL
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Label`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Label` (
  `labelID` INT NOT NULL AUTO_INCREMENT,
  `labelName` VARCHAR(50) NOT NULL,
  `royaltyRate` DECIMAL(4,4) NOT NULL,
  `labelPhone` CHAR(10) NULL,
  `labelEmail` VARCHAR(50) NULL,
  PRIMARY KEY (`labelID`)
) ENGINE = InnoDB;

ALTER TABLE `Label` 
ADD CONSTRAINT labelConstraint
CHECK (
  `labelPhone` IS NOT NULL OR 
  `labelEmail` IS NOT NULL
);

-- ---------------------------------------
-- GENRE
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Genre`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Genre` (
  `genreID` INT NOT NULL AUTO_INCREMENT,
  `genreName` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE = InnoDB;

-- ---------------------------------------
-- SONG
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Song`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Song` (
  `songID` INT NOT NULL AUTO_INCREMENT,
  `songTitle` VARCHAR(100) NOT NULL,
  `audioFile` BLOB NOT NULL,
  `length` INT NOT NULL,
  `artistID` INT NOT NULL,
  `albumID` INT NOT NULL,
  `genreID` INT NOT NULL,
  `labelID` INT NOT NULL,
  PRIMARY KEY (`songID`),
  FOREIGN KEY (`albumID`)
	REFERENCES `streamServ`.`Album` (`albumID`),
  FOREIGN KEY (`artistID`)
    REFERENCES `streamServ`.`Artist` (`artistID`),
  FOREIGN KEY (`labelID`)
    REFERENCES `streamServ`.`Label` (`labelID`),
  FOREIGN KEY (`genreID`)
    REFERENCES `streamServ`.`Genre` (`genreID`)
) ENGINE = InnoDB;

-- ---------------------------------------
-- USER
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`User`;
CREATE TABLE IF NOT EXISTS `streamServ`.`User` (
  `userID` INT NOT NULL AUTO_INCREMENT,
  `userName` VARCHAR(20) NOT NULL,
  `avatar` BLOB NOT NULL,
  `firstName` VARCHAR(30) NOT NULL,
  `lastName` VARCHAR(30) NOT NULL,
  `dateOfBirth` DATE NOT NULL,
  `startDate` DATE NOT NULL,
  `userPhone` CHAR(10) NULL,
  `userEmail` VARCHAR(50) NULL,
  PRIMARY KEY (`userID`)
) ENGINE = InnoDB;

ALTER TABLE `User` 
ADD CONSTRAINT userConstraint
CHECK (
  `userPhone` IS NOT NULL OR 
  `userEmail` IS NOT NULL
);

-- ---------------------------------------
-- PLAYLIST
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Playlist`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Playlist` (
  `playlistID` INT NOT NULL AUTO_INCREMENT,
  `playlistTitle` VARCHAR(100) NOT NULL,
  `playlistAuthorID` INT NOT NULL,
  PRIMARY KEY (`playlistID`),
  FOREIGN KEY (`playlistAuthorID`)
    REFERENCES `streamServ`.`User` (`userID`) ON DELETE CASCADE
) ENGINE = InnoDB;

-- ---------------------------------------
-- SONG_PLAYLIST
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Song_Playlist`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Song_Playlist` (
  `songID` INT NOT NULL,
  `playlistID` INT NOT NULL,
  FOREIGN KEY (`songID`)
    REFERENCES `streamServ`.`Song` (`songID`),
  FOREIGN KEY (`playlistID`)
    REFERENCES `streamServ`.`Playlist` (`playlistID`)
) ENGINE = InnoDB;

-- ---------------------------------------
-- USER_FOLLOWERS
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`User_Followers`;
CREATE TABLE IF NOT EXISTS `streamServ`.`User_Followers` (
  `userID` INT NOT NULL,
  `followerID` INT NOT NULL,
  FOREIGN KEY (`userID`)
    REFERENCES `streamServ`.`User` (`userID`) ON DELETE CASCADE,
  FOREIGN KEY (`followerID`)
    REFERENCES `streamServ`.`User` (`userID`) ON DELETE CASCADE
) ENGINE = InnoDB;

-- ---------------------------------------
-- PLAYLIST_FOLLOWERS
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`PlayList_Followers`;
CREATE TABLE IF NOT EXISTS `streamServ`.`PlayList_Followers` (
  `playlistID` INT NOT NULL,
  `followerID` INT NOT NULL,
  FOREIGN KEY (`followerID`)
    REFERENCES `streamServ`.`User` (`userID`) ON DELETE CASCADE,
  FOREIGN KEY (`playlistID`)
    REFERENCES `streamServ`.`Playlist` (`playlistID`)
) ENGINE = InnoDB;

-- ---------------------------------------
-- ARTIST_FOLLOWERS
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Artist_Followers`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Artist_Followers` (
  `artistID` INT NOT NULL,
  `followerID` INT NOT NULL,
  FOREIGN KEY (`artistID`)
    REFERENCES `streamServ`.`Artist` (`artistID`),
  FOREIGN KEY (`followerID`)
    REFERENCES `streamServ`.`User` (`userID`) ON DELETE CASCADE
) ENGINE = InnoDB;

-- ---------------------------------------
-- USER_PLAYS
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`User_Plays`;
CREATE TABLE IF NOT EXISTS `streamServ`.`User_Plays` (
  `userID` INT NOT NULL,
  `songID` INT NOT NULL,
  FOREIGN KEY (`userID`)
    REFERENCES `streamServ`.`User` (`userID`) ON DELETE CASCADE,
  FOREIGN KEY (`songID`)
    REFERENCES `streamServ`.`Song` (`songID`)
) ENGINE = InnoDB;

-- ---------------------------------------
-- SUBSCRIBER
-- ---------------------------------------
DROP TABLE IF EXISTS `streamServ`.`Subscriber`;
CREATE TABLE IF NOT EXISTS `streamServ`.`Subscriber` (
  `userID` INT NOT NULL,
  `monthlyRate` DECIMAL(3,2) NULL DEFAULT 9.99,
  FOREIGN KEY (`userID`)
    REFERENCES `streamServ`.`User` (`userID`) ON DELETE CASCADE
) ENGINE = InnoDB;