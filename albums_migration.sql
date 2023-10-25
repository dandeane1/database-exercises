--  switch to db first

USE codeup_test2_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id int(11) unsigned NOT NULL AUTO_INCREMENT,
                        artist_name varchar(50) NOT NULL,
                        album_name varchar(50) NOT NULL,
                        release_date int(4) NOT NULL,
                        genre varchar(50) NOT NULL,
                        sales decimal(3, 1) NOT NULL,
                        PRIMARY KEY (id)
);
);

-- what is looks like in  terminal
-- mysql>  DESCRIBE albums;
-- +--------------+--------------+------+-----+---------+----------------+
-- | Field        | Type         | Null | Key | Default | Extra          |
-- +--------------+--------------+------+-----+---------+----------------+
-- | id           | int unsigned | NO   | PRI | NULL    | auto_increment |
-- | artist_name  | varchar(50)  | YES  |     | NULL    |                |
-- | record_name  | varchar(100) | YES  |     | NULL    |                |
-- | release_date | int          | YES  |     | NULL    |                |
-- | sales        | decimal(3,1) | YES  |     | NULL    |                |
-- | genre        | char(50)     | YES  |     | NULL    |                |
-- +--------------+--------------+------+-----+---------+----------------+
-- 6 rows in set (0.00 sec)