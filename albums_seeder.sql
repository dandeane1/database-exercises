USE codeup_test2_db;


truncate albums;

INSERT INTO `albums` ( `artist_name`, `album_name`, `release_date`, `genre`, `sales`) VALUES
                                                                                          (	'Michael Jackson',	'Thriller',	1982,	'Pop, post-disco, funk, rock',	51.2),
                                                                                          (	'AC/DC',	'Back in Black',	1980,	'Hard rock',	30.1),
                                                                                          (	'Whitney Houston',	'The Bodyguard',	1992,	'R&B, soul, pop, soundtrack',	28.7),
                                                                                          (	'Pink Floyd',	'The Dark Side of the Moon',	1973,	'Progressive rock',	24.8),
                                                                                          (	'Eagles',	'Their Greatest Hits (1971–1975)',	1976,	'Country rock, soft rock, folk rock',	41.2),
                                                                                          (	'Eagles',	'Hotel California',	1976,	'Soft rock',	31.8),
                                                                                          (	'Shania Twain',	'Come On Over',	1997,	'Country, pop',	30.4),
                                                                                          (	'Fleetwood Mac',	'Rumours',	1977,	'Soft rock',	29.3),
                                                                                          (	'Bee Gees',	'Saturday Night Fever',	1977,	'Disco',	22.1),
                                                                                          (	'Led Zeppelin',	'Led Zeppelin IV',	1971,	'Hard rock, heavy metal, folk rock',	30.4),
                                                                                          (	'Michael Jackson',	'Bad',	1987,	'Pop, rhythm and blues, funk and rock',	21.1),
                                                                                          (	'Meat Loaf',	'Bat Out of Hell',	1977,	'Hard rock, glam rock, progressive rock',	22),
                                                                                          (	'Alanis Morissette',	'Jagged Little Pill',	1995,	'Alternative rock',	25.4),
                                                                                          (	'Celine Dion',	'Falling into You',	1996,	'Pop, soft rock',	21.1),
                                                                                          (	'Adele',	'21',	2011,	'Pop, soul',	27.1),
                                                                                          (	'The Beatles',	'1',	2000,	'Rock',	23.2),
                                                                                          (	'Metallica',	'Metallica',	1991,	'Heavy metal',	22.7),
                                                                                          (	'Celine Dion',	'Let\'s Talk About Love',	1997,	'Pop, soft rock',	19.5),
  (	'Bob Marley & The Wailers',	'Legend: The Best of Bob Marley & The Wailers',	1984,	'Reggae',	22.9),
  (	'Guns N\' Roses',	'Appetite for Destruction',	1987,	'Hard rock',	22.8),
                                                                                          (	'Bruce Springsteen',	'Born in the U.S.A.',	1984,	'Heartland rock',	22),
                                                                                          (	'ABBA',	'Gold: Greatest Hits',	1992,	'Pop, disco',	21.6),
                                                                                          (	'Dire Straits',	'Brothers in Arms',	1985,	'Roots rock, blues rock, soft rock',	21.1),
                                                                                          (	'Santana',	'Supernatural',	1999,	'Latin rock',	20.8),
                                                                                          (	'Madonna',	'The Immaculate Collection',	1990,	'Pop, dance',	19.8),
                                                                                          (	'Pink Floyd',	'The Wall',	1979,	'Progressive rock',	18.9),
                                                                                          (	'The Beatles',	'Sgt. Pepper\'s Lonely Hearts Club Band',	1967,	'Rock',	18.3),
  (	'Michael Jackson',	'Dangerous',	1991,	'New jack swing, R&B and pop',	17),
  (	'The Beatles',	'Abbey Road',	1969,	'Rock',	16.9);