--  switch to db first

USE codeup_test2_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(50),
                        record_name  VARCHAR(100) NOT NULL,
                        release_date INT(4),
                        sales DECIMAL(3,1),
                        genre CHAR(50),
                        PRIMARY KEY (id)
);
