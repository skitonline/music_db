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