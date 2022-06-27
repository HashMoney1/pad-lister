CREATE DATABASE IF NOT EXISTS padlister_db;
USE padlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id       BIGINT UNSIGNED     NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) UNIQUE  NOT NULL,
  email    VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(100)        NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id     BIGINT UNSIGNED NOT NULL,
  title       VARCHAR(255)    NOT NULL,
  description TEXT            NOT NULL,
  created_at  DATETIME        NOT NULL,
  is_deleted  BOOLEAN         NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
    ON DELETE CASCADE
);

