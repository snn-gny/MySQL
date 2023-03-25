create Database MySQL_Komutlari;

use MySQL_Komutlari;

create table if not exists  personel_liste(
id_no int(10) not null auto_increment,
isim varchar(50),
yas int(10),
email varchar(50),
primary key(id_no) 
);

show tables;
drop table  personel_liste;

select*From personel_liste;
select*from personel_liste where 1 ;

SELECT id_no, email AS e_mail FROM personel_liste;

select*From personel_liste;

INSERT INTO personel_liste (id_no, isim, yas, email) VALUES
(1,"Ali", 39,"ali@mail.com"),
(2,"Sevim", 24,"sevim@mail.com"),
(3,"Gözde", 28,"gözde@mail.com");
SELECT isim, yas, email FROM personel_liste WHERE  yas<35 or isim="ali";
SELECT isim, yas, email FROM personel_liste WHERE isim = "ALI";
SELECT id_no, isim, yas, email FROM personel_liste WHERE email LIKE "s%";

SELECT id_no, isim, yas, email FROM personel_liste WHERE email NOT LIKE "s%";

SELECT isim, yas, email FROM personel_liste
WHERE isim = "Ali" AND yas = "39";
INSERT INTO personel_liste (id_no, isim, yas, email) VALUES
(4,"Veli", 49,"veli@mail.com"),
(5,"Kamil", 19,"kamil@mail.com"),
(6,"Nalan", 22,"nalan@mail.com");
INSERT INTO personel_liste (id_no, isim, yas,  email) VALUES
(7,"Nazim", 50 ),
(8,"Nihat", 50, "nihat@mail.com");



SELECT * FROM personel_liste WHERE id_no = 2 OR id = 3 OR id = 6;

SELECT * FROM personel_liste WHERE id_no IN(2, 3, 6);
SELECT * FROM personel_liste WHERE id_no BETWEEN  2 AND  5;
SELECT * FROM personel_liste WHERE id_no NOT BETWEEN  2 AND  5;



SELECT * FROM personel_liste WHERE email IS NULL;
SELECT * FROM personel_liste WHERE email IS not NULL;

SELECT * FROM personel_liste;

SELECT * FROM personel_liste ORDER BY yas desc, email limit 3,8 ;

create table uyeler(
id int(10) not null auto_increment,
isim varchar(50),
meslek varchar(50),
primary key (id));

INSERT INTO uyeler (id, isim, meslek) VALUES
(1,"Hasan", "Avukat"),
(2,"Merve", "Ögretmen"),
(3,"Nazim", "Ögretmen"),
(4,"Efe", "Polis"),
(5,"Caner", "Polis");


select distinct meslek  from uyeler;
SELECT meslek FROM uyeler GROUP BY meslek;

Select min(yas) from  personel_liste;
Select max(yas) from  personel_liste;
Select sum(yas) from  personel_liste;
Select avg(yas) from  personel_liste;
Select count(id) from  uyeler;

SELECT CONCAT(isim, " ", meslek) FROM uyeler;

create table notlar(
id_notlar int(10),
isim varchar(50),
sinav1 int(10),
sinav2 int(10),
primary key (id_notlar));

INSERT INTO notlar (id_notlar, isim, sinav1, sinav2) VALUES
(1,"Ceren", 40,60),
(2,"Dilek", 50,70),
(3,"Mert", 60,70),
(4,"Murat", 80,90),
(5,"Oguz", 70,80),
(6,"Sevgi", 30,40);

select*from notlar;

Select avg(sinav1) from  notlar;

SELECT isim, sinav1, sinav2,
(40 / 100 * sinav1) + (60 / 100 * sinav2) as final_notu
FROM notlar ORDER BY final_notu DESC;

SELECT isim, sinav1, sinav2,
(40 / 100 * sinav1) + (60 / 100 * sinav2) as final_notu
FROM notlar ORDER BY final_notu;

select*from personel_liste;

UPDATE personel_liste SET yas = 45 WHERE isim = "Ali";
SELECT yas FROM personel_liste WHERE isim = "Ali";

UPDATE personel_liste SET email = "nazim@gmail.com" WHERE isim = "NAzim";
select*from personel_liste;

UPDATE personel_liste SET yas = 40, email = "ali@yenimail.com" WHERE id_no = 1;

UPDATE personel_liste SET yas = yas + 1 WHERE isim = "Ali";
select*from personel_liste; 










 




