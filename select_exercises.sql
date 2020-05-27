USE codeup_test_db;

-- The name of all albums by Pink Floyd.
-- The Darkside of the Moon, The Wall
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released.
-- 1967
select * from albums where name = "Sgt. Pepper's Lonely Hearts Club Band";

-- The genre for Nevermind.
-- Grunge, Alternative rock
select * from albums where name = 'Nevermind';

-- Which albums were released in the 1990s.
-- The Bodyguard, Jagged Little Pill, Come On Over, Falling into You,
-- Let's Talk About Love, Dangerous, The Immaculate Collection,
-- Titanic: Music from the Motion Picture, Metallica, Nevermind,
-- Supernatural
select * from albums where release_date between 1990 and 1999;

-- Which albums had less than 20 million certified sales.
-- Grease: The Original Soundtrack from the Motion Picture, Bad,
-- Sgt. Pepper's Lonely Hearts Club Band, Dirty Dancing, Let's Talk About Love,
-- Dangerous,  The Immaculate Collection, Abbey Road, Born in the U.S.A.,
-- Brothers in Arms, Titanic: Music from the Motion Picture, Nevermind, The Wall
select * from albums where sales < 20.000;

-- All the albums with a genre of "Rock". Why do these query results not include
--  albums with a genre of "Hard rock" or "Progressive rock"?
-- Sgt. Pepper's Lonely Hearts Club Band, 1,  Abbey Road, Born in the U.S.A.,
-- Supernatural
select * from albums where genre = 'Rock';