--количество исполнителей в каждом жанре;
SELECT g.name, COUNT(mg.musician_id) FROM musiciangenre mg
	JOIN genre g ON g.id = mg.genre_id
	GROUP BY g.name;
	
--количество треков, вошедших в альбомы 2019-2020 годов;
SELECT COUNT(*) FROM music m
	JOIN album a ON a.id = m.album_id
	WHERE a.year BETWEEN 2019 AND 2020;
	
--средняя продолжительность треков по каждому альбому;
SELECT a.name, AVG(duration) FROM album a
	JOIN music m ON a.id = m.album_id
	GROUP BY a.name;
	
--все исполнители, которые не выпустили альбомы в 2020 году;
SELECT m.name FROM musician m
LEFT JOIN (
	SELECT DISTINCT m.id, m.name FROM musician m
		LEFT JOIN musicianalbum ma ON m.id = ma.musician_id
		LEFT JOIN album a ON a.id = ma.album_id
		WHERE a.year = 2020) t
ON m.id = t.id
WHERE t.id is NULL;

--название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT DISTINCT m.name FROM musician m
JOIN public.musicianalbum ma ON m.id = ma.musician_id
JOIN album a ON a.id = ma.album_id
JOIN public.musiciangenre mg ON mg.musician_id = m.id
JOIN genre g ON g.id = mg.genre_id
GROUP BY (m.name, a.name)
HAVING COUNT(g.name) > 1;
	
--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT c.name FROM collection c
	JOIN collectionmusic cm ON cm.collection_id = c.id
	JOIN music m ON cm.music_id = m.id
	JOIN album a ON m.album_id = a.id
	JOIN musicianalbum ma ON ma.album_id = a.id
	JOIN musician ON musician.id = ma.musician_id
	WHERE musician.name = 'Скриптонит';

--наименование треков, которые не входят в сборники;
SELECT m.name FROM music m
	LEFT JOIN collectionmusic cm ON m.id = cm.music_id
	LEFT JOIN collection c ON c.id = cm.collection_id
	WHERE c.id IS NULL;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT musician.name FROM music m
	JOIN album a ON a.id = m.album_id
	JOIN musicianalbum ma ON ma.album_id = a.id
	JOIN musician ON musician.id = ma.musician_id
	WHERE duration = (
		SELECT MIN(duration) FROM music);

--название альбомов, содержащих наименьшее количество треков.
SELECT name FROM
	(SELECT a.name, COUNT(a.name) FROM music m
		JOIN album a ON m.album_id = a.id
		GROUP BY a.name) t
	WHERE t.count = (
		SELECT MIN(t.count) FROM (
			SELECT a.name, COUNT(a.name) FROM music m
			JOIN album a ON m.album_id = a.id
			GROUP BY a.name) t)
;
