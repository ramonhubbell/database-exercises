-- Write SELECT statements for:
-- Albums released after 1991.
select name as 'Albums released after 1991', release_date from albums
where release_date > 1991;
-- delete from albums where release_date > 1990;
delete from albums where release_date > 1991;
select name as 'Albums released after 1991', release_date from albums
where release_date > 1991;

-- Albums with the genre 'disco'.
select name as 'Albums that are disco', genre from albums
where genre = 'disco';
-- delete from albums where genre = 'disco';
delete from albums where genre = 'disco';
select name as 'Albums that are disco', genre from albums
where genre = 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice).
select name as 'Albums by Whitney Houston', artist from albums
where artist like '%Whitney Houston%';
-- delete from albums where artist = 'Whitney Houston';
delete from albums where artist like '%Whitney Houston%';
select name as 'Albums by Whitney Houston', artist from albums
where artist like '%Whitney Houston%';


select * from albums;

-- DELETE FROM quotes WHERE id = 3;