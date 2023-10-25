# recreate the quotes table

# switch to db first
USE codeup_test2_db;

drop table if exists quotes;

CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        author_first_name VARCHAR(50) DEFAULT 'NONE',
                        author_last_name  VARCHAR(100) NOT NULL,
                        content TEXT NOT NULL,
                        PRIMARY KEY (id)
);