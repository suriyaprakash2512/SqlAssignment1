create database OurExerciseDb
on primary
(Name= 'OurExerciseDb_Data', FileName='C:\phase 3\day1\Exercise-1\OurExerciseDb.mdf',
size=24MB, Maxsize=40MB, Filegrowth= 8MB)
log on 
(Name= 'OurExerciseDb_Log', FileName='C:\phase 3\day1\Exercise-1\OurExerciseDb.ldf',
size=8MB, Maxsize=40MB, Filegrowth= 8MB)
COLLATE SQL_Latin1_General_CP1_CI_AS

drop database OurExerciseDb

create database OurExerciseDb
on primary
(Name= 'OurExerciseDb_Data', FileName='C:\phase 3\day1\Exercise-1\OurExerciseDb.mdf',
size=24MB, Maxsize=40MB, Filegrowth= 8MB)
log on 
(Name= 'OurExerciseDb_Log', FileName='C:\phase 3\day1\Exercise-1\OurExerciseDb_log.ldf',
size=8MB, Maxsize=40MB, Filegrowth= 8MB)
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb

create table Product (
PId int primary key identity(50,1),
PName nvarchar(50) not null,
PPrice float check(PPrice>=50 and PPrice<=100000) ,
PCompany nvarchar(50)check(PCompany in('SamSung', 'Apple','Redmi','HTC')),
PQty int check(PQty>=1) default 1
)
select * from Product

insert into Product (PName,PPrice,PCompany,PQty) values ('TV',15000.90,'SamSung',2)
insert into Product (PName,PPrice,PCompany) values ('Watch',5500.90,'Apple')
insert into Product (PName,PPrice,PCompany) values ('Phone',30000.90,'Redmi')
insert into Product (PName,PPrice,PCompany) values ('AC',17000.90,'HTC')
insert into Product (PName,PPrice,PCompany) values ('Phone',80000.90,'Apple')



