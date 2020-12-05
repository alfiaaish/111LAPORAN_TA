CREATE DATABASE RS2
ON PRIMARY 
(  
NAME = RS2, 
FILENAME = 'D:\UAY\SEMESTER 5\MAGANG\DatabaseMagang\RS2.mdf' 
) 
use RS2

create table Pengguna
( 
id_pengguna char(5) primary key, 
password varchar (30) not null ,
username varchar (30) 
) 

create table Ruangan
(
id_ruangan char(5) primary key,
id_detail_ruangan char(5)foreign key REFERENCES Detail_ruangan (id_detail_ruangan) ,
nama_ruangan varchar (50)
)

create table Detail_ruangan
(
id_detail_ruangan char(5) primary key,
nama_detail_ruangan varchar (50)
)

create table Form
(
id_form char(5) primary key,
id_pengguna char(5) foreign key REFERENCES Pengguna (id_pengguna),
nama_ruangan varchar (50),
keluhan varchar(100),
kategori 
foto image
)

create table Admin
(
id_admin char(5) primary key,
id_pengguna char(5) foreign key REFERENCES Pengguna (id_pengguna),
id_ruangan char(5)foreign key REFERENCES Ruangan (id_ruangan) ,
id_form char(5)foreign key REFERENCES Form (id_form) ,
)



drop table Detail_ruangan
drop table Ruangan
drop table Pengguna
