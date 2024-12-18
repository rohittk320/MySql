CREATE DATABASE PROJECT;
use project;
-- Q1: Who is the senior most employee based on job title?
select * from project.employee;
select concat(first_name," ",last_name) as senior_most_employee from practice.employee where employee_id limit 1;

-- Q2: Which countries have the most Invoices?
select * from project.invoice;
select billing_country,count(billing_country) as total from practice.invoice group by billing_country order by count(billing_country) desc limit 1;

-- Q3: What are top 3 values of total invoice? 
select sum(total) from practice.invoice group by billing_country order by sum(total) desc limit 3;

/* Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals.? */
select billing_city ,sum(total) from invoice group by billing_city order by sum(total) desc limit 1;

-- Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
-- Write a query that returns the person who has spent the most money.? 
select * from customer;
select * from invoice join customer on invoice.customer_id = customer.customer_id;
select t2.customer_id, concat(t2.first_name," ",t2.last_name) as customer_name,  sum(t1.total) from practice.invoice as t1 join practice.customer as t2 on t1.customer_id = t2.customer_id group by customer_name,t2.customer_id order by sum(t1.total) desc limit 1;

-- 	LEVEL 2 QUESTION
/* Q1: Write query to return the email, first name, last name, & Genre of all Rock Music listeners. 
Return your list ordered alphabetically by email starting with A.? */
select * from customer;
select * from invoice;
select * from invoice_line;
select * from track;
select * from genre;
select customer.email,customer.first_name,customer.last_name, genre.name from customer join invoice on customer.customer_id = invoice.customer_id 
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
join track on invoice_line.track_id = track.track_id
join genre on track.genre_id = genre.genre_id 
where genre.name = "Rock" order by email;

/* Q2: Let's invite the artists who have written the most rock music in our dataset. 
Write a query that returns the Artist name and total track count of the top 10 rock bands.? */
 select * from artist;
 select * from album;
 select * from track;
 select * from genre;
 select artist.artist_id,artist.name,count(artist.artist_id),genre.name from artist join album on artist.artist_id = album.artist_id
 join track on album.album_id = track.album_id
 join genre on track.genre_id = genre.genre_id 
 where genre.name = "Rock" group by artist.artist_id,artist.name,genre.name order by count(artist.artist_id) desc;
 
/* Q3: Return all the track names that have a song length longer than the average song length. 
Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first? */
select track.name from track where milliseconds > 'avg(milliseconds)' order by milliseconds ;
select track.name,milliseconds from track where milliseconds > 'avg(milliseconds)' order by milliseconds desc;
select track.name,milliseconds from track where milliseconds > (select avg(milliseconds) from track) order by milliseconds desc;


