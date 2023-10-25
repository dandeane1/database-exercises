USE codeup_test2_db;

select album_name from albums where artist_name = 'Pink FLOYD';

select release_date from albums where album_name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

select genre from albums where album_name = 'Bat out of Hell';

select album_name from albums where release_date between 1990 and 1999;

select album_name from albums where sales < 20;

select album_name from albums where genre = 'Rock';