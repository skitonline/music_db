create table if not exists Genre(
	id serial primary key,
	name varchar(50) not null unique
);

create table if not exists Musician(
	id serial primary key,
	name varchar(100) not null,
	genre_id integer references Genre(id)
);

create table if not exists Album(
	id serial primary key,
	name varchar(100) not null,
	year integer not null check(year > 1850),
	musician_id integer references Musician(id)
);

create table if not exists Music(
	id serial primary key,
	name varchar(100) not null,
	duration varchar(10) not null,
	musician_id integer references Musician(id)
);