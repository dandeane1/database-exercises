--  switch to db first

USE codeup_test2_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(50) DEFAULT NULL,
                        record_name  VARCHAR(100) DEFAULT NULL,
                        release_date INT(4) DEFAULT NULL,
                        sales DECIMAL(3,1) DEFAULT NULL,
                        genre CHAR(50) DEFAULT NULL,
                        PRIMARY KEY (id)
);
