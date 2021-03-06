DROP TABLE IF EXISTS album, collection, collectionmusic, genre, music, musician, musicianalbum, musiciangenre CASCADE; 

create table if not exists Genre(
	id serial primary key,
	name varchar(50) not null unique
);

create table if not exists Musician(
	id serial primary key,
	name varchar(100) not null
);

create table if not exists MusicianGenre(
	id serial primary key,
	musician_id integer not null references Musician(id),
	genre_id integer not null references Genre(id)
);

create table if not exists Album(
	id serial primary key,
	name varchar(100) not null,
	year integer not null check(year > 1850)
);

create table if not exists MusicianAlbum(
	id serial primary key,
	musician_id integer not null references Musician(id),
	album_id integer not null references Album(id)
);

create table if not exists Music(
	id serial primary key,
	name varchar(100) not null,
	duration integer not null,
	album_id integer not null references Album(id)
);

create table if not exists Collection(
	id serial primary key,
	name varchar(100) not null,
	year integer not null check(year > 1850)
);

create table if not exists CollectionMusic(
	id serial primary key,
	collection_id integer not null references Collection(id),
	music_id integer not null references Music(id)
);

INSERT INTO Musician(name)
	VALUES('Скриптонит');
INSERT INTO Musician(name)
	VALUES('Басков');
INSERT INTO Musician(name)
	VALUES('Киркоров');
INSERT INTO Musician(name)
	VALUES('Руки Вверх');
INSERT INTO Musician(name)
	VALUES('Thomas Mrvz');
INSERT INTO Musician(name)
	VALUES('Пугачева');
INSERT INTO Musician(name)
	VALUES('Элджей');
INSERT INTO Musician(name)
	VALUES('Город 312');
	
INSERT INTO Genre(name)
	VALUES('реп');
INSERT INTO Genre(name)
	VALUES('поп');
INSERT INTO Genre(name)
	VALUES('рок');
INSERT INTO Genre(name)
	VALUES('классика');
INSERT INTO Genre(name)
	VALUES('джаз');
	
INSERT INTO Album(name, year)
	VALUES('Дом с нормальными явлениями', 2016);
INSERT INTO Album(name, year)
	VALUES('Киркоров жжет №1', 2018);
INSERT INTO Album(name, year)
	VALUES('Киркоров жжет №2', 2019);
INSERT INTO Album(name, year)
	VALUES('Киркоров жжет №3', 2020);
INSERT INTO Album(name, year)
	VALUES('Ричард III', 2018);
INSERT INTO Album(name, year)
	VALUES('Я устала №1', 2005);
INSERT INTO Album(name, year)
	VALUES('Я устала №2', 2008);
INSERT INTO Album(name, year)
	VALUES('Sayonara Boy X', 2018);
	
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(1, 1);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(2, 2);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(3, 1);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(3, 3);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(4, 2);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(5, 1);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(5, 2);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(6, 2);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(7, 1);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(7, 2);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(8, 2);
INSERT INTO musiciangenre(musician_id, genre_id)
	VALUES(8, 3);
	
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(1, 1);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(1, 6);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(3, 2);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(3, 3);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(3, 4);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(3, 7);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(5, 5);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(6, 6);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(6, 7);
INSERT INTO musicianalbum(musician_id, album_id)
	VALUES(7, 8);

INSERT INTO music(name, duration, album_id)
	VALUES('Дома', 212, 1);
INSERT INTO music(name, duration, album_id)
	VALUES('Оставь это нам', 90, 1);
INSERT INTO music(name, duration, album_id)
	VALUES('Танцуй сама', 276, 1);
INSERT INTO music(name, duration, album_id)
	VALUES('Мой ангел', 256, 2);
INSERT INTO music(name, duration, album_id)
	VALUES('Мой ангелочек', 277, 2);
INSERT INTO music(name, duration, album_id)
	VALUES('Мой зайчик', 125, 3);
INSERT INTO music(name, duration, album_id)
	VALUES('Я король №1', 212, 3);
INSERT INTO music(name, duration, album_id)
	VALUES('Я король №2', 99, 4);
INSERT INTO music(name, duration, album_id)
	VALUES('Роняю тренды', 111, 4);
INSERT INTO music(name, duration, album_id)
	VALUES('My heart', 184, 4);
INSERT INTO music(name, duration, album_id)
	VALUES('Ричард III', 170, 5);
INSERT INTO music(name, duration, album_id)
	VALUES('Молодость', 212, 6);
INSERT INTO music(name, duration, album_id)
	VALUES('Старость', 233, 7);
INSERT INTO music(name, duration, album_id)
	VALUES('Минимал', 122, 8);
INSERT INTO music(name, duration, album_id)
	VALUES('Мой путь', 157, 8);
	
INSERT INTO collection(name, year)
	VALUES('Грустная музыка', 2020);
INSERT INTO collection(name, year)
	VALUES('Веселая музыка', 2020);
INSERT INTO collection(name, year)
	VALUES('Врубать в машине', 2021);
INSERT INTO collection(name, year)
	VALUES('Моя вечеринка', 2021);
INSERT INTO collection(name, year)
	VALUES('Жесть, слушать без смс и регистрации', 2021);
	
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(1, 3);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(1, 4);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(1, 10);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(2, 1);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(2, 2);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(3, 1);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(3, 2);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(3, 15);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(4, 4);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(4, 5);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(4, 6);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(4, 10);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(5, 13);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(5, 14);
INSERT INTO collectionmusic(collection_id, music_id)
	VALUES(5, 15);
	
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
