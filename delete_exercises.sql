-- Write SELECT statements for:
-- Albums released after 1991.
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE column_name = 'value';
-- select release_date from albums where release_date > 1990;
select * from albums where release_date > 1991;
-- delete from albums where release_date > 1990;

-- Albums with the genre 'disco'.
select * from albums where genre = 'disco';
-- delete from albums where genre = 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice).
select * from albums where artist = 'Whitney Houston';
-- delete from albums where artist = 'Whitney Houston';