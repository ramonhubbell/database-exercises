USE codeup_test_db;

-- All albums in your table.
select * from albums;

-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = (sales *10);

-- All albums released before 1980
select * from albums where release_date < 1980;

-- Move all the albums before 1980 back to the 1800s.
update albums
set release_date = release_date - 100
where release_date < 1980;

-- All albums by Michael Jackson.
select * from albums where artist = 'Michael Jackson';

-- Change 'Michael Jackson' to 'Peter Jackson'.
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
