create table if not exists MusicalGenres (
		genre_id SERIAL primary key,
		name_genre VARCHAR(80) not null	unique
);

create table if not exists Performers (
		performer_id SERIAL primary key,
		nickname VARCHAR(80) not null unique	
);

create table if not exists Collections (
		collection_id SERIAL primary key,
		name VARCHAR(80) not null,
		year_of_release integer not null
);

create table if not exists Albums (
		album_id SERIAL primary key,
		album_title VARCHAR(80) not null,
		year_of_release integer not null
);

create table if not exists Tracks (
		track_id SERIAL primary key,
		track_name VARCHAR(80) not null,
		track_duration integer,
		album_id integer not null references Albums(album_id)
);

create table MusGenrePerformer (
		genre_performer_id SERIAL primary key,
		genre_id integer references MusicalGenres(genre_id),
		performer_id integer references Performers(performer_id)
);


create table AlbumPerformer (
		album_performer_id SERIAL primary key,
		performer_id integer references Performers(performer_id),
		album_id integer references Albums(album_id)
);

create table CollectionTrack (
		collection_track_id SERIAL primary key,
		collection_id integer references Collections(Collection_id),
		track_id integer references Tracks(track_id)
);





