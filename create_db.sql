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
