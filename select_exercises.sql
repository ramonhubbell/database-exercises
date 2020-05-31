USE codeup_test_db;

-- The name of all albums by Pink Floyd.
-- The Darkside of the Moon, The Wall
SELECT name as 'All of Pink Floyd''s albums' FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released.
-- 1967
select release_date as 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind.
-- Grunge, Alternative rock
select genre as 'The genre fo Nevermind', name from albums where name = 'Nevermind';

-- Which albums were released in the 1990s.
select name as 'Albums released in the 1990''s', release_date from albums
where release_date between 1990 and 1999;

select * from albums;

-- Which albums had less than 20 million certified sales.
select name as 'Albums with less than 20 million certified sales', sales from albums
where sales < 20.000;

-- All the albums with a genre of "Rock". Why do these query results not include
--  albums with a genre of "Hard rock" or "Progressive rock"?
select name as 'All albums with ''Rock'' genre', genre from albums where genre = 'Rock';