use restro;
select * from restaurants;

select distinct(city) from restaurants;
select city, count(*) from restaurants group by city;
select count(distinct(city)) from restaurants;
select city, count(*) from restaurants where city='Abohar';
select * from restaurants where city='Abohar' and rating_count=(select min(rating_count) from restaurants where city = 'Abohar');
select * from restaurants where cost*rating_count= (select max(cost*rating_count) from restaurants);
select * from restaurants where rating > (select avg(rating) from restaurants);
select * from restaurants where city = 'Delhi' and cost*rating_count= (select max(cost*rating_count) from restaurants where city='Delhi')
select name , count(*) from restaurants group by name order by count(*) desc;
select name, sum(cost*rating_count) from restaurants group by name order by sum(cost*rating_count) desc;
select city, count(*) from restaurants group by city order by count(*) desc;
select city, sum(rating_count*cost) from restaurants group by city order by sum(rating_count*cost) desc;
select cuisine,  avg(cost) from restaurants group by cuisine order by avg(cost) asc;
select city, avg(cost), count(*) from restaurants where cuisine = 'Biryani' group by city order by count(*) desc;
select name, sum(cost*rating_count) from restaurants group by name having count(name) = 1 order by sum(cost*rating_count) desc limit 10;

