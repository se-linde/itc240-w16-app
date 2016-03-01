# albums-02292016.sql

drop table if exists wn16_Albums;

create table wn16_Albums
( AlbumID int unsigned not null auto_increment primary key,
Title varchar(255),
Artist varchar(255),
Genre varchar(100),
Label varchar(100),
ReleaseYear int(10),
Description text
);

/*
AlbumID
Title
Artist
Genre
Year
Description
Label
*/

insert into wn16_Albums values (NULL,"Dark Side of the Moon","Pink Floyd","Classic Rock","Capitol",1973,"A good album");