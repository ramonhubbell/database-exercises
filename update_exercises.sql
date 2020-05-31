USE codeup_test_db;

-- All albums in your table.
select name as 'All albums from the table', sales from albums;

-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = (sales *10);

select name as 'All albums from the table', sales from albums;

-- All albums released before 1980
select name as 'All albums released before 1980', release_date from albums
where release_date < 1980;

-- Move all the albums before 1980 back to the 1800s.
update albums
set release_date = release_date - 100
where release_date < 1980;

select name as 'All albums released before 1880', release_date from albums
where release_date < 1880;

-- All albums by Michael Jackson.
select name as 'All albums by Michael Jackson', artist from albums
where artist = 'Michael Jackson';

-- Change 'Michael Jackson' to 'Peter Jackson'.
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select name as 'All albums by Peter Jackson', artist from albums
where artist = 'Peter Jackson';






