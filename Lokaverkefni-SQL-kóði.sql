


CREATE TABLE Flokkur(
ID INT PRIMARY KEY AUTO_INCREMENT ,
Nafn VARCHAR( 35 )
)

CREATE TABLE flytjandi(
ID INT PRIMARY KEY AUTO_INCREMENT ,
Nafn VARCHAR( 35 ) ,
Danardagur DATE,
faedingardagur DATE,
ID_flokkur int,
foreign key (ID_flokkur) references flokkur(ID)
)
Create Table Diskur(
ID Int Primary key auto_increment,
nafn varchar(35),
utgafudagur DATE,
ID_utgefandi INT,
foreign key(ID_utgefandi) references utgefandi(ID)
)

create table Lag
(
    ID Int Primary key auto_increment,
    Nafn varchar(35),
    lengd integer,
    texti text,
    ID_tegund Int,
    foreign key(ID_tegund) references tegund(ID),
    ID_flytjandi int,
    foreign key(ID_flytjandi) references flytjandi(ID),  
    ID_diskur int,
    foreign key(ID_diskur) references diskur(ID)
 )



CREATE TABLE Utgefandi(
    ID Int Primary key auto_increment
    nafn varchar(35)
)

Create Table Tegund(
ID Int primary key auto_increment,
nafn varchar(35)
)






-----------------------------------------------------------------
insert into 
	tegund(ID,name)
values
	('Electro'),
	('Rock'),
	('Hip-Hop'),
	('Punk'),
	('Medievel')
	
insert into 
utgefandi(nafn)
values
	('ACDC'),
	('Deorro'),
	('Imagine Dragons')
	
insert into
flokkur(nafn)
values
	('Sólo'),
	('Hljómsveit'),
	('bakraddir')

insert into
	flytjandi(nafn,faedingardagur,Danardagur,ID_flokkur)
values
	('Dan Reynolds', '1987-07-14','0000-00-00',2),
	('Angus Young', '1955-03-31','0000-00-00',2),
	('Ann Lennox', '1954-12-25','0000-00-00',1),
	('Michael Jackson','1958-8-29','2009-06-25',1),
	('Elvis Presley', '1935-01-16','1977-08-16',3)

	
	
insert into
	diskur(nafn,utgafudagur,ID_utgefandi)
values
	('Highway To Hell','1979-07-27',1),
	('Back In Black','1980-07-25',1),
	('Night Visions','2012-09-04',3),
	('Smoke + Mirrors','2015-02-17',3),
	('Good Evening','2017-03-27',2),
	('LIVE','1992-10-27',1),
	('Black Ice','2008-10-17',1)

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	