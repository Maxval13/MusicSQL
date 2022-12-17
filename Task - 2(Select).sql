select album_title, year_of_release from albums
where year_of_release = '2018';

select  track_name, track_duration from "tracks"
where "track_duration" = (select max("track_duration") from "tracks"); 

select  "track_name" from "tracks"
where "track_duration" >= '210';

select "name" from collections
where year_of_release >= '2018' and year_of_release <= '2020';

select "name" from collections c 
where year_of_release between '2018' and '2020' 

select nickname from performers
where nickname not like '% %' ;

select track_name from tracks
where track_name ~* '.*my.*' or track_name ~* '.*мой.*';




 