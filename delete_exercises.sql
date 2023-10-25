USE codeup_test2_db;

select album_name from albums where release_date > 1991;
delete from albums where release_date > 1991;

select album_name from albums where genre = 'Disco';
delete from albums where genre = 'Disco';

select album_name from albums where artist_name = 'Whitney Houston';
delete from albums where artist_name = 'Whitney Houston';