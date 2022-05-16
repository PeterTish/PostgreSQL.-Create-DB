create table if not exists artist (
	id serial primary key,
	nickname varchar(10) unique not null
);

create table if not exists album (
	id serial primary key,
	name varchar(40) unique not null,
	year_of_release integer,
	id_artist integer references artist(id)
);

create table if not exists track (
	id serial primary key,
	name varchar(20) unique not null,
	time numeric check (time > 0) not null,
	id_album integer references album(id)
);

create table if not exists genre (
	id serial primary key,
	name varchar(20) unique not null,
	id_artist integer references artist(id)
);









	
	

	