-- Insert data into artists table
INSERT INTO "artists" ("name") VALUES 
('Taylor Swift'),
('Ed Sheeran'),
('Adele'),
('The Weeknd'),
('Drake');

-- Insert data into customers table
INSERT INTO "customers" ("customer_name", "email", "phone_number") VALUES 
('John Doe', 'johndoe@example.com', 1234567890),
('Jane Smith', 'janesmith@example.com', 1234567891),
('Alice Brown', 'alicebrown@example.com', 1234567892),
('Bob Johnson', 'bobjohnson@example.com', 1234567893),
('Charlie Davis', 'charliedavis@example.com', 1234567894);

-- Insert data into albums table
INSERT INTO "albums" ("title", "release_date", "artist_id") VALUES 
('1989', '2014-10-27', 1),
('Divide', '2017-03-03', 2),
('25', '2015-11-20', 3),
('After Hours', '2020-03-20', 4),
('Scorpion', '2018-06-29', 5);

-- Insert data into tracks table
INSERT INTO "tracks" ("album_id", "artist_id", "title", "duration", "file_type", "genre", "file_size", "price") VALUES 
(1, 1, 'Blank Space', 231, 'mp3', 'Pop', '5MB', 1),
(1, 1, 'Style', 230, 'mp3', 'Pop', '5MB', 1),
(2, 2, 'Shape of You', 234, 'mp3', 'Pop', '5MB', 1),
(3, 3, 'Hello', 295, 'mp3', 'Soul', '6MB', 1),
(4, 4, 'Blinding Lights', 200, 'mp3', 'Synthwave', '5MB', 1),
(5, 5, 'In My Feelings', 217, 'mp3', 'Hip Hop', '5MB', 1);

-- Insert data into sales table
INSERT INTO "sales" ("customer_id", "quantity", "sale_date", "price_at_sale") VALUES 
(1, 2, '2024-01-01', 2),
(2, 1, '2024-01-02', 1),
(3, 3, '2024-01-03', 3),
(4, 2, '2024-01-04', 2),
(5, 1, '2024-01-05', 1);
