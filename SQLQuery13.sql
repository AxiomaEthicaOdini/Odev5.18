create table Urun
(
	UrunId int identity(1,1),
	BirimFiyat float
)

create table AlimSiparis
(
	SiparisId int identity (1,1),
	Tarid date not null, 
)

create table Alislar
(
	SiparisId int not null,
	UrunId int not null,
	Miktar int not null,
	BirimFiyat float not null,
	Indirim float not null,
)

create table Musteri
(
	MusteriId int identity(1,1),
	IndirimOrani float not null

)

create table Satislar
(
	SiparisId int not null,
	UrunId int not null,
	Miktar int not null,
	BirimFiyat float not null,
	Indirim float not null,
)

create table SatisSiparis
(
	SiparisId int identity(1,1),
	MusteriId int not null,
	Tarih date not null,

)

insert into Musteri ( IndirimOrani ) values ( 0)
insert into Musteri ( IndirimOrani ) values ( 0)
insert into Musteri ( IndirimOrani ) values ( 0)
insert into Musteri ( IndirimOrani ) values ( 0)

insert into Urun ( BirimFiyat ) values (8 )
insert into Urun ( BirimFiyat ) values (14 )
insert into Urun ( BirimFiyat ) values (16.5 )
insert into Urun ( BirimFiyat ) values (7 )
insert into Urun ( BirimFiyat ) values (12 )

select * from Urun
 
insert into AlimSiparis ( Tarid ) values ('20190102' )
insert into AlimSiparis ( Tarid ) values ('20190106' )
insert into AlimSiparis ( Tarid ) values ('20190110' )
insert into AlimSiparis ( Tarid ) values ('20190114' ) 

select * from AlimSiparis
select * from Alislar
insert into Alislar (SiparisId , UrunId, Miktar, BirimFiyat, Indirim) values (1, 1, 4, 9, 0.1)
insert into Alislar (SiparisId , UrunId, Miktar, BirimFiyat, Indirim) values (1, 2, 6, 14, 0)
insert into Alislar (SiparisId , UrunId, Miktar, BirimFiyat, Indirim) values (1, 3, 14, 20, 0.15)
insert into Alislar (SiparisId , UrunId, Miktar, BirimFiyat, Indirim) values (2, 4, 12, 8, 0)
insert into Alislar (SiparisId , UrunId, Miktar, BirimFiyat, Indirim) values (2, 5, 25, 13, 0.1)
insert into Alislar (SiparisId , UrunId, Miktar, BirimFiyat, Indirim) values (3, 2, 15, 15, 0.1)
insert into Alislar (SiparisId , UrunId, Miktar, BirimFiyat, Indirim) values (4, 3, 6, 21, 0.1)

select SiparisId, sum((BirimFiyat-BirimFiyat*Indirim) *Miktar) as Satislar
	from Alislar
	group by SiparisId

select  UrunId , sum((BirimFiyat-BirimFiyat*Indirim) *Miktar) as StokDegeri
	from Alislar
	group by UrunId


select  UrunId , avg((BirimFiyat-BirimFiyat*Indirim) *Miktar / Miktar) as StokDegeri1
	from Alislar
	group by UrunId

select UrunId , sum((BirimFiyat-BirimFiyat*Indirim) *Miktar) as OcakYedi
	from Alislar as a
	Join AlimSiparis as al on (a.SiparisId = al.SiparisId )
	where Tarid <=  '20190107'
	group by UrunId

select UrunId , sum((BirimFiyat-BirimFiyat*Indirim) *Miktar *1.1) as OcakYedi
	from Alislar as a
	Join AlimSiparis as al on (a.SiparisId = al.SiparisId )
	where Tarid <=  '20190107'
	group by UrunId

select  UrunId , avg((BirimFiyat-BirimFiyat*Indirim) *Miktar / Miktar*1.1) as StokDegeri1
	from Alislar as a
	Join AlimSiparis as al on (a.SiparisId = al.SiparisId )
	where Tarid <=  '20190107'
	group by UrunId