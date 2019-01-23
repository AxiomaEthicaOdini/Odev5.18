create database Odev

create table Marka
(
 Id int identity (1,1),
 Ad varchar (20) not null
)

create table Model
(
 Id int identity (1,1),
 Ad varchar(20) not null
)

create table Fiyat
(
 MarkaId int not null,
 ModelId int not null,
 Fiyat int not null,
)


insert into Marka ( Ad) values ('Pagani')
insert into Marka ( Ad) values ('Koenigsegg')
insert into Marka ( Ad) values ('Lamborghini')
insert into Marka ( Ad) values ('Ferrari')
insert into Marka ( Ad) values ('McLaren')

insert into Model ( Ad) values ( 'Zonda R')
insert into Model ( Ad) values ( 'Huayra')

insert into Model ( Ad) values ( 'Agera')
insert into Model ( Ad) values ( 'Regera')

insert into Model ( Ad) values ( 'Aventador SVJ')
insert into Model ( Ad) values ( 'Huracan Performante')
insert into Model ( Ad) values ( 'Urus')

insert into Model ( Ad) values ( '812 Superfast')
insert into Model ( Ad) values ( 'LaFerrari')
insert into Model ( Ad) values ( '488 GTB')

insert into Model ( Ad) values ( 'Senna')
insert into Model ( Ad) values ( '720S')
insert into Model ( Ad) values ( '675LT')

insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (1, 1, 2800000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (1, 2, 2400000)

insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (2, 1, 2500000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (2, 2, 2000000)

insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (3, 1, 520000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (3, 2, 370000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (3, 3, 200000)

insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (4, 1, 443000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (4, 2, 1420000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (4, 3, 339000)

insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (5, 1, 1200000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (5, 2, 347000)
insert into Fiyat ( MarkaId, ModelId, Fiyat ) values (5, 3, 312000)

select m.Id, m.Ad, avg( f.Fiyat) as Ortalama
	from Marka as m
		join Fiyat as f on ( m.Id = f.MarkaId)
	group by m.Id, m.Ad