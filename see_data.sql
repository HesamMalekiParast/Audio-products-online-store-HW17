--1  
SELECT
	albums.album_id,
	albums.title,
	COUNT(tracks.track_id) AS number_of_tracks,  
    AVG(tracks.duration) AS average_duration,  
    SUM(tracks.price) AS total_cost
FROM albums JOIN tracks ON albums.album_id = tracks.album_id
GROUP BY albums.album_id
ORDER BY total_cost DESC;

--2



--3
SELECT artists.name FROM artists JOIN tracks ON artists.artist_id = tracks.artist_id WHERE tracks.genre = 'Pop'
GROUP BY artists.name
HAVING COUNT(tracks.track_id) >= 1;

--4
SELECT 
    customers.customer_name,
    sales.sale_date,
    sales.price_at_sale
FROM customers JOIN sales ON customers.customer_id = sales.customer_id
WHERE 
    sales.sale_date = (
        SELECT MAX(sale_date) FROM sales
        WHERE sales.customer_id = customers.customer_id
    );

--5
SELECT albums.title FROM albums JOIN tracks ON albums.album_id = tracks.album_id JOIN sales ON tracks.track_id = sales.track_id
GROUP BY albums.album_id HAVING SUM(sales.quantity) = 1;

--6
