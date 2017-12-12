CREATE  TABLE  user(
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  email  VARCHAR(255) ,
  user_name VARCHAR(255),
  password CHAR(32),
  image_url VARCHAR(255),
  gender VARCHAR(255),
  home_town VARCHAR(255),
  about_me TEXT ,
  nick_name VARCHAR(255),
  reg_date DATE NOT NULL
)DEFAULT  CHARACTER SET utf8 ENGINE  =InnoDB;

CREATE TABLE  posts(
  post_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  isPublic BOOLEAN,
  user_id INT ,
  caption TEXT,
  time DATETIME NOT NULL ,
  FOREIGN KEY (user_id) REFERENCES user (user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE TABLE  phone_numbers(
  phone_number CHAR(11)  NOT NULL PRIMARY KEY  ,
  user_id INT ,
  FOREIGN KEY (user_id) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;
CREATE TABLE  notifications (
  notification_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id1 INT,
  user_id2 INT,
  seen BOOLEAN,
  FOREIGN KEY (user_id1) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE,
  FOREIGN KEY (user_id2) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE  friendships (
  user_id1 INT NOT NULL,
  user_id2 INT NOT NULL,
  relationship VARCHAR(255),
  time DATETIME NOT NULL ,
  PRIMARY KEY (user_id1,user_id2),
  FOREIGN KEY (user_id1) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE,
  FOREIGN KEY (user_id2) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE emotions (
  emotion_id VARCHAR(3) NOT NULL PRIMARY KEY ,
  url VARCHAR(255) UNICODE NOT NULL
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE posts_likes (
  post_id INT NOT NULL ,
  user_id INT NOT NULL ,
  PRIMARY KEY (post_id,user_id)
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE pending_firends(
  sender_id INT NOT NULL,
  reciever_id INT NOT NULL,
  FOREIGN KEY (sender_id) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE,
  FOREIGN KEY (reciever_id) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;


CREATE  TABLE  user(
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  email  VARCHAR(255) ,
  user_name VARCHAR(255),
  password CHAR(32),
  image_url VARCHAR(255),
  gender VARCHAR(255),
  home_town VARCHAR(255),
  about_me TEXT ,
  nick_name VARCHAR(255),
  reg_date DATE NOT NULL
)DEFAULT  CHARACTER SET utf8 ENGINE  =InnoDB;

CREATE TABLE  posts(
  post_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  isPublic BOOLEAN,
  user_id INT ,
  caption TEXT,
  time DATETIME NOT NULL ,
  FOREIGN KEY (user_id) REFERENCES user (user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE TABLE  phone_numbers(
  phone_number CHAR(11)  NOT NULL PRIMARY KEY  ,
  user_id INT ,
  FOREIGN KEY (user_id) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;
CREATE TABLE  notifications (
  notification_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id1 INT,
  user_id2 INT,
  seen BOOLEAN,
  FOREIGN KEY (user_id1) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE,
  FOREIGN KEY (user_id2) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE  friendships (
  user_id1 INT NOT NULL,
  user_id2 INT NOT NULL,
  relationship VARCHAR(255),
  time DATETIME NOT NULL ,
  PRIMARY KEY (user_id1,user_id2),
  FOREIGN KEY (user_id1) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE,
  FOREIGN KEY (user_id2) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE emotions (
  emotion_id VARCHAR(3) NOT NULL PRIMARY KEY ,
  url VARCHAR(255) UNICODE NOT NULL
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE posts_likes (
  post_id INT NOT NULL ,
  user_id INT NOT NULL ,
  PRIMARY KEY (post_id,user_id)
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

CREATE  TABLE pending_firends(
  sender_id INT NOT NULL,
  reciever_id INT NOT NULL,
  FOREIGN KEY (sender_id) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE,
  FOREIGN KEY (reciever_id) REFERENCES  user(user_id)
    ON DELETE  CASCADE  ON UPDATE  CASCADE
)DEFAULT CHARACTER SET utf8 ENGINE =InnoDB;

