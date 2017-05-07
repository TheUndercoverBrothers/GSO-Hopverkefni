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
lysing varchar(25),
tegund_flytjanda varchar(15),
foreign key (ID_flokkur) references flokkur(ID)
)
Create Table Diskur(
ID Int Primary key auto_increment,
nafn varchar(35),
utgafudagur DATE,
ID_utgefandi INT,
tegund_disks varchar(15),
foreign key(ID_utgefandi) references utgefandi(ID)
)

create table lagid
(
    ID Int Primary key auto_increment,
    nafn varchar(35),
    lengd TIME NOT NULL,
    texti text,
    ID_tegund Int,
    foreign key(ID_tegund) references tegund(ID),
    ID_flytjandi int,
    foreign key(ID_flytjandi) references flytjandi(ID),  
    ID_diskur int,
    foreign key(ID_diskur) references diskur(ID),
	ID_flokkur int,
	foreign key (ID_flokkur) references flokkur(ID)
 )



CREATE TABLE Utgefandi(
    ID Int Primary key auto_increment
    nafn varchar(35)
)

Create Table Tegund(
ID Int primary key auto_increment,
nafn varchar(35)
)