-- 1. Количество исполнителей в каждом жанре;
SELECT 	genre_id, count(*)
FROM 	musgenreperformer
GROUP BY genre_id
ORDER BY count(*) DESC ;
  
--   2. Количество треков, вошедших в альбомы 2019-2020 годов;
SELECT count(album_id)
FROM albums a
WHERE year_of_release 
BETWEEN '2019' and '2020';
	--where year_of_release = '2010'

--   3. Средняя продолжительность треков по каждому альбому;
SELECT 	album_id, avg(track_duration)
FROM tracks t
GROUP BY album_id; 

--   4. Все исполнители, которые не выпустили альбомы в 2020 году;
SELECT DISTINCT nickname, year_of_release  
FROM albumperformer a3 
JOIN albums a2 USING(album_id)
JOIN performers p USING(performer_id)
WHERE year_of_release <> '2020';

--   5. Названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT 	DISTINCT c2."name",	nickname
FROM performers p
JOIN albumperformer a2 USING(performer_id)
JOIN albums a USING(album_id)
JOIN  tracks t USING(album_id)
JOIN collectiontrack c USING(track_id)
JOIN collections c2 USING(collection_id)
WHERE p.nickname = 'Bon Jovi';

--   6. Название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT album_title, nickname
FROM albums a 
JOIN albumperformer USING(album_id)
JOIN performers USING(performer_id)
WHERE nickname = ANY(
	SELECT nickname
	FROM performers p  
	JOIN musgenreperformer m USING(performer_id)
	JOIN musicalgenres m2 USING(genre_id)
	GROUP BY  nickname 
	HAVING count(*) > 1)
GROUP BY album_title, nickname ;

--   7. Наименование треков, которые не входят в сборники;
SELECT distinct track_name, c2."name"
FROM tracks t 
LEFT JOIN collectiontrack c on c.track_id = t.track_id 
LEFT JOIN collections c2 on c2.collection_id = c.collection_id 
WHERE c2."name" is null; 

--   8. Исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT nickname, track_name, track_duration
FROM performers p 
JOIN albumperformer a USING(performer_id)
JOIN albums a2 USING(album_id)
JOIN tracks t USING(album_id)
WHERE track_duration = (
	SELECT min(track_duration) 
	FROM tracks);

--   9. Название альбомов, содержащих наименьшее количество треков.
SELECT album_title
FROM albums a 
JOIN tracks t USING(album_id)
GROUP BY album_title 
HAVING count(track_name) = (
		SELECT count(track_name) AS tn 
		FROM albums a2
		JOIN tracks t2 USING(album_id)
		GROUP BY album_title 
		ORDER BY tn
		LIMIT 1) ;




