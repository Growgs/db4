INSERT INTO artist
VALUES
(1, 'Fergie'),
(2, 'Rihanna'),
(3, 'Ashniko'),
(4, 'The Beatles'),
(5, 'Aerosmith'),
(6, 'Led Zeppelin'),
(7, 'Eminem'),
(8, 'Bob Dylan'),
(9, 'Major Lazer'),
(10, 'Moby');

INSERT INTO genre 
VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Rap'),
(4, 'Folk'),
(5, 'Electronic'),
(6, 'Ambient');

INSERT INTO album 
VALUES 
(1, 'The Dutchess', 2006),
(2, 'Unapologetic', 2012),
(3, 'Demidevil', 2021),
(4, 'Abbey Road', 1969),
(5, 'Pump', 1989),
(6, 'Coda', 1982),
(7, 'Encore', 2004),
(8, 'Curtain Call', 2005),
(9, 'Oh Mecy', 1989),
(10, 'Know No Better', 2018),
(11, 'Guns Dont Kill People', 2009),
(12, 'Play', 1999),
(13, 'Hotel', 2005);

INSERT INTO track
VALUES
(1, 'Clumsy', 240, 1),
(2, 'Numb', 195, 2),
(3, 'Toxic', 162, 3),
(4, 'Something', 182, 4),
(5, 'My Girl', 190, 5),
(6, 'Darlene', 306, 6),
(7, 'Mosh', 317, 7),
(8, 'Stan', 404, 8),
(9, 'Without Me', 291, 8),
(10, 'Political World', 228, 9),
(11, 'Particula', 204, 10),
(12, 'Zumbie', 240, 11),
(13, 'Bruk Out', 174, 11),
(14, 'Honey', 208, 12),
(15, 'Machete', 217, 12),
(16, 'Beautiful', 191, 13);

INSERT INTO collection 
VALUES
(1, 'R&B BEST'),
(2, 'Beautiful'),
(3, 'Summer Mix'),
(4, 'MyBoost'),
(5, 'Temptation'),
(6, 'Best Hits'),
(7, 'Gym Music'),
(8, 'Hello World');

INSERT INTO genre_artist 
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 10);

INSERT INTO artist_album 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(7, 8),
(8, 9),
(9, 10),
(9, 11),
(10, 12),
(10, 13);

INSERT INTO track_collection 
VALUES
(1, 1),
(1, 6),
(1, 7),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(5, 3),
(6, 2),
(7, 5),
(8, 4),
(8, 6),
(9, 5),
(10, 8),
(11, 3),
(11, 5),
(11, 7),
(12, 3),
(12, 7),
(13, 7),
(14, 4),
(14, 5),
(15, 8),
(16, 2),
(16, 4);

