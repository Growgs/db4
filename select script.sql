--1. количество исполнителей в каждом жанре

SELECT g.genre_name, count(artist_name) FROM artist a 
JOIN genre_artist ga ON a.id = ga.artist_id 
JOIN genre g ON g.id = ga.genre_id  
GROUP BY genre_name;
--2. количество треков, вошедших в альбомы 2019-2020 годов

SELECT count(track_name) FROM track t
JOIN album a ON t.album_id = a.id 
WHERE release_year >= 2019 AND release_year <= 2020;

--3. средняя продолжительность треков по каждому альбому

SELECT album_name, avg(duration) FROM track t 
JOIN album a ON t.album_id = a.id 
GROUP BY a.album_name;

--4. все исполнители, которые не выпустили альбомы в 2020 году

SELECT DISTINCT artist_name FROM artist a 
JOIN artist_album aa ON a.id = aa.artist_id 
JOIN album a2 ON a2.id = aa.album_id 
WHERE a2.release_year != 2020;

--5. названия сборников, в которых присутствует конкретный исполнитель (Eminem)

SELECT DISTINCT collection_name FROM collection c 
JOIN track_collection tc ON c.id = tc.collection_id 
JOIN track t ON t.id = tc.track_id 
JOIN album a ON t.album_id = a.id 
JOIN artist_album aa ON a.id = aa.album_id 
JOIN artist a2 ON a2.id = aa.artist_id 
WHERE a2.artist_name LIKE 'Eminem';

--6. название альбомов, в которых присутствуют исполнители более 1 жанра

SELECT album_name  FROM album a 
JOIN artist_album aa ON a.id = aa.album_id 
JOIN artist a2 ON a2.id = aa.artist_id 
JOIN genre_artist ga ON a2.id = ga.artist_id 
JOIN genre g ON g.id = ga.genre_id 
GROUP BY album_name 
HAVING count(g.id) > 1; 

--7. наименование треков, которые не входят в сборники

SELECT track_name FROM track t 
LEFT JOIN track_collection tc ON t.id = tc.track_id 
WHERE tc.track_id IS NULL;

--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек 
--(теоретически таких треков может быть несколько)

SELECT a.artist_name , t.duration FROM artist a 
JOIN artist_album aa ON a.id = aa.artist_id 
JOIN album a2 ON a2.id = aa.album_id 
JOIN track t ON t.album_id = a2.id
WHERE t.duration = (SELECT min(t.duration) FROM track t)
;

--9. название альбомов, содержащих наименьшее количество треков

SELECT a.album_name, count(t.id)  FROM album a 
JOIN track t ON t.album_id = a.id 
GROUP BY album_name 
HAVING count(t.id) IN (SELECT count(t.id) FROM album a 
    JOIN track t ON t.album_id = a.id 
    GROUP BY a.album_name
    ORDER BY count(t.id) LIMIT 1) 
;












