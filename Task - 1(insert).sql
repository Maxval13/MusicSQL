insert into musicalgenres (name_genre)
values ('pop'),  ('pank'), ('chanson'), ('Electronic music'),  ('Rock music'),  ('hip hop music'),
 ('metal music'),  ('rock-n-roll');

select * from musicalgenres

insert into performers (nickname)
values ('Ария'), ('Воровайки'), ('Михаил Круг'), ('Руки Вверх!'),('Комбинация'), ('The Offspring'), ('Elvis Presley'), 
('Король и Шут'), ('Bon Jovi'), ('The Cranberries'), ('No Doubt'), ('Linkin Park'), ('Eminem'), ('Victor Crowl'), ('Би-2');

select * from performers

insert into albums (album_title, year_of_release)
values ('Не бойся, я с тобой!', '2001'), ('Будь как дома, Путник...', '1997'), ('Ели мясо мужики Deluxe Edition', '2003'),
('Дышите равномерно', '1997'), ('Bon Jovi Greatest Hits - The Ultimate Collection (Deluxe)', '2010'), 
('Treasure Box: The Complete Sessions 1991-99', '2002'), ('The Singles Collection', '2003'), ('One More Light', '2018'), 
('Music To Be Murdered By-Side B (Deluxe Edition)', '2020'), ('Energy', '2014'), ('Elvis75th', '2010'), 
('Крещение огнем', '2003'), ('Штиль', '2002'), ('Герой асфальта', '1987'), ('Createst Hits', '2005'), ('Мачо', '2003'),
('Владимирский централ', '1999'), ('Легендарные песни', '2004'), ('Горизонт событий @ ВТБ Арена Live', '2018');

select * from albums

insert into collections (name, year_of_release)
values ('Веселуха (Танцуют все!)', '2021'), ('Звезды дискотек №1', '2020'), ('Classic Rock Radio', '2018'),
('Golden Hits', '2020'), ('Greatest Hits', '2019'), ('Sad', '2020'), ('Discover More Hip Hop', '2020'),
('The Payback', '2020'), ('God Save the Good Old Times Chapter One', '2011'), ('Russian Rock Legends Vol.4', '2018'),
('Дискотека русского шансона', '2020'), ('Disco Хиты 80-90-х Ч.2', '2007');

select  * from collections

insert into tracks (track_name, track_duration, album_id)
values ('Думала', '252', '1'), ('Лесник', '191', '2'), ('Лесник', '191', '3'), ('История любви', '235', '4'),
('Livin On A Prayer', '250', '5'), ('Zombie', '307', '6'), ('It"s My Life', '223', '5'), ('Don"t Speak', '262', '7'),
('One More Light', '255', '8'), ('God zilla', '210', '9'), ('Colling out Your Name', '198', '10'),
('Love Me Tender', '162', '11'), ('Колизей', '389', '12'), ('Потерянный рай', '335', '13'), ('Улица роз', '357', '14'),
('The kids Aren"t Alright', '179', '15'), ('Хоп, мусорок', '196', '16'), ('Фраер', '175', '17'), 
('American Boy', '283', '18'), ('Мой рок-н-ролл', '284', '19');

select * from tracks

insert into musgenreperformer (genre_id, performer_id)
values ('1', '4'), ('5', '8'), ('2', '8'), ('1', '4'), ('5', '9'), ('1', '9'), ('1', '10'), ('1', '11'), ('5', '12'),
('6', '13'), ('4', '14'), ('8', '7'), ('7', '1'), ('2', '6'), ('3', '2'), ('3', '3'), ('1', '5'), ('5', '15');

select * from musgenreperformer

insert into albumperformer (performer_id, album_id)
values ('4', '1'), ('8', '2'), ('8', '3'), ('4', '4'), ('9', '5'), ('10', '6'), ('11', '7'), ('12', '8'), ('13', '9'),
('14', '10'), ('7', '11'), ('1', '12'), ('1', '13'), ('1', '14'), ('6', '15'), ('2', '16'), ('3', '17'), ('5', '18'), ('15', '19');

select * from albumperformer

insert into collectiontrack (collection_id, track_id)
values ('1', '1'), ('2', '4'), ('3', '5'), ('4', '5'), ('4', '6'), ('4', '7'), ('5', '8'), ('6', '9'), ('7', '10'),
('8', '11'), ('9', '12'), ('10', '13'), ('10', '14'), ('10', '15'), ('5', '16'), ('11', '17'), ('11', '18'), ('12', '19');








