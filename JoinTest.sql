create database JoinTest

create table TableA
(
ID Int ,
Col1 varchar(10) ,
Col2 varchar(20)

)

insert into TableA values(1,'AA','aa')
insert into TableA values(2,'BB','bb')
insert into TableA values(3,'CC','cc')
insert into TableA values(4,'DD','dd')
insert into TableA values(5,'EE','ee')
insert into TableA values(6,'FF','ff')

create table TableB
(
MyID char(1) ,
AID int,
Col3 varchar(20)

)


insert into TableB values ('A',1,'abc')
insert into TableB values ('B',1,'abcd')
insert into TableB values ('C',1,'abe')
insert into TableB values ('D',2,'abf')
insert into TableB values ('E',2,'abg')
insert into TableB values ('F',3,'abm')



CREATE TABLE Address
(
ID char(5) NOT NULL
Constraint pk_Address_ID
Primary Key(ID),
Township varchar(30) NOT NULL
)

INSERT INTO Address
values('D-001','Hledan'),('D-002','Latha'),('D-003','Ahlone'),
('D-004','Lanmadaw'),('D-005','Dagon'),('D-006','Kyauktada'),
('D-007','Tarkayta')

CREATE TABLE Course
(
Cid char(3) NOT NULL
CONSTRAINT pk_Course1_Cid
Primary Key(Cid),
Cname varchar(40) NOT NULL,
CFee money NOT NULL
)

INSERT INTO Course
values('AN','ASP.Net',170000),('DDD','Database',150000),
('DN','C#.Net',120000),('PF','Programming Fundamental',90000),
('SSJ','Java',150000),('WJ','Web Java',170000)


CREATE TABLE Section
(
Secid char(5) NOT NULL
CONSTRAINT pk_Section_Secid
Primary Key(Secid),
Time varchar(10) NOT NULL,
Secday varchar(15) NOT NULL,
Startdate date NOT NULL,
Cid char(3) NOT NULL
CONSTRAINT fk_Section_Cid
Foreign Key(Cid)
References Course(Cid)
)

INSERT INTO Section values('S-001','7-9','Sat-Sun','12/3/2016','PF')
INSERT INTO Section values('S-002','1-4','Sat-Sun','12/3/2016','PF')
INSERT INTO Section values('S-003','5-7','Sat-Sun','12/4/2016','SSJ')
INSERT INTO Section values('S-004','7-9','Sat-Sun','1/13/2016','DDD')
INSERT INTO Section values('S-005','1-4','Tue-Fri','4/11/2016','AN')
INSERT INTO Section values('S-006','9-12','Tue-Fri','1/6/2016','WJ')
insert into Section values ('S-007','7-9','Sat-Sun','1/5/2016','PF')
insert into Section values ('S-008','7-9','Tue-Fri','10/5/2016','PF')
insert into Section values ('S-009','7-9','Sat-Sun','11/5/2016','SSJ')
insert into Section values ('S-010','7-9','Sat-Sun','1/5/2016','PF')
insert into Section values ('S-011','1-4','Tue-Fri','5/21/2016','WJ')
insert into Section values ('S-012','1-4','Tue-Fri','4/11/2016','AN')
insert into Section values ('S-013','9-12','Tue-Fri','1/6/2020','WJ')
insert into Section values ('S-014','5-7','Tue-Fri','2/2/2020','SSJ')
insert into Section values ('S-015','5-7','Sat-Sun','2/29/2020','WJ')




CREATE TABLE Student
(
ID int NOT NULL
Constraint pk_Student_ID
Primary Key(ID),
Name varchar(30) NOT NULL,
Gender char NOT NULL,
Age int NOT NULL,
Ph varchar(30) NULL,
AdiD char(5) NOT NULL
CONSTRAINT fk_Student_AdiD
FOREIGN KEY (AdiD)
References Address (ID),
Email varchar(30) NOT NULL
)

INSERT INTO Student
values(1,'Zayar Min','M',30,'503711','D-001','zym@gmail.com'),
	  (2,'Mar Lar','F',31,'211234','D-005','ml@gmail.com'),	
	  (3,'Khine Zin Thant','F',40,'234567','D-002','kzt@gmail.com')
INSERT INTO Student(ID,Name,Gender,Age,AdiD,Email)
values(4,'Kyaw Swar Thein','M',30,'D-001','kst@gmail.com')
INSERT INTO Student values(5,'San Mya Win','F',25,'229876','D-002','smw@gmail.com'),
	  (6,'Nway Thadar','F',45,'09-86-28806','D-003','ntd@gmail.com')	
INSERT INTO Student(ID,Name,Gender,Age,AdiD,Email)
values(7,'Yunn Wadi','F',29,'D-002','yunn@gmail.com')
INSERT INTO Student
values(8,'Phyu Pyar','F',27,'563456','D-001','phyu@gmail.com')
INSERT INTO Student(ID,Name,Gender,Age,AdiD,Email)
values(9,'Aung Kaung Myat','M',23,'D-002','aung@gmail.com'),	
  	  (10,'Kyaw Swar Win Htike','M',21,'D-003','winhtike@gmail.com')
INSERT INTO Student
values(11,'Cho Mar Wai','F',39,'09-44-9001236','D-001','cmw@gmail.com')
INSERT INTO Student(ID,Name,Gender,Age,AdiD,Email)
values(12,'Khin Hnin Yu','F',32,'D-007','khy@gmail.com')
INSERT INTO Student
values(13,'Moh Moh Khin','F',38,'216754','D-007','mmk@gmail.com'),
      (14,'Kyi Pyar Nway','F',35,'09-44-500-1234','D-005','kpn@gmail.com')
INSERT INTO Student(ID,Name,Gender,Age,AdiD,Email)
values(15,'Aung Kyaw Soe','M',21,'D-007','aks@gmail.com'),
	  (16,'Hein Sithu','M',24,'D-005','hs@gmail.com')


CREATE TABLE StudentSection
(
Stuid int NOT NULL
CONSTRAINT fk_StudentSection_Stuid
FOREIGN KEY(Stuid)
REFERENCES Student(ID),

Sectionid char(5) NOT NULL
CONSTRAINT fk_StudentSection_Sectionid
FOREIGN KEY(Sectionid)
REFERENCES Section(Secid),
CONSTRAINT pk_StudentSection_StuSecid
Primary Key (Stuid,Sectionid),
)

INSERT INTO StudentSection values (1,'S-001')
INSERT INTO StudentSection values (1,'S-003')

INSERT INTO StudentSection values (2,'S-002')
insert into StudentSection values (2,'S-006')
INSERT INTO StudentSection values (2,'S-001')

INSERT INTO StudentSection values (3,'S-004')
insert into StudentSection values (3,'S-010')
INSERT INTO StudentSection values (3,'S-001')

INSERT INTO StudentSection values (4,'S-004')
insert into StudentSection values (4,'S-009')

INSERT INTO StudentSection values (5,'S-004')
insert into StudentSection values (5,'S-010')
insert into StudentSection values (5,'S-009')

INSERT INTO StudentSection values (6,'S-004')
insert into StudentSection values (6,'S-011')
insert into StudentSection values (6,'S-012')

INSERT INTO StudentSection values (7,'S-005')

insert into StudentSection values (14,'S-011')
INSERT INTO StudentSection values (14,'S-002')

INSERT INTO StudentSection values (15,'S-003')
insert into StudentSection values (15,'S-002')
insert into StudentSection values (15,'S-005')
insert into StudentSection values (15,'S-006')

INSERT INTO StudentSection values (16,'S-004')


select TableA.ID,TableB.MyID,TableA.Col1,TableA.Col2,TableB.Col3
from TableA
inner join 
TableB

on TableA.ID=TableB.AID


--TableA left outer join TableB
--TableB left outer join TableA

--TableA right outer join TableB
--TableB right outer join TableA

select * from TableA
select * from TableB

select TableA.ID, TableB.MyID, TableA.Col1, TableA.Col2, TableB.Col3
from TableA
left outer join
TableB

on TableA.ID=TableB.AID



select TableA.ID, TableB.MyID, TableA.Col1, TableA.Col2, TableB.Col3
from TableA
right outer join
TableB

on TableA.ID=TableB.AID


SELECT Student.Name, Student.Ph, Student.Email, Address.Township
FROM Student
left outer join
Address 
on Student.AdiD = Address.ID
order by township

---------------

select * from Course
Select * from Section

select Course.Cname, Section.Time, Section.secday, Section.Startdate, Course.Cid
from Section
left outer join
Course
on Section.Cid=Course.Cid


select Course.Cname, count(Section.Cid) as Totalcount
from Course
left outer join 
Section
on Section.Cid=Course.Cid
group by Course.Cname
order by count(Section.Cid) desc


select Course.Cname, Student.Name
from Course
left outer join
Section
on Course.Cid=Section.Cid
left outer join 
StudentSection
on Section.Secid=StudentSection.Sectionid
left outer join 
Student
on StudentSection.Stuid=Student.ID
where Course.Cid='PF'
order by Student.Name



select Student.Name, Student.Ph, Address.Township, Course.Cname
from Address
right outer join
Student
on Address.ID=Student.AdiD
left outer join
StudentSection
on Student.ID=StudentSection.Stuid
left outer join
Section
on StudentSection.Sectionid=Section.Secid
left outer join
Course
on Section.Cid=Course.Cid
where Student.Ph is not null
order by Student.Name


select Student.Name, count(Section.Secid) as SectionCount
from Student
left outer join
StudentSection
on Student.ID=StudentSection.Stuid
left outer join
Section
on StudentSection.Sectionid=Section.Secid
group by Student.Name
order by count(Section.Secid) desc


select Section.Secid, count(StudentSection.Stuid) as TotalStudent
from Section
left outer join
StudentSection
on Section.SecID=StudentSection.Sectionid
group by Section.Secid
order by count(StudentSection.Stuid) desc


select * from Student

select top(7) * from Student

select top(5) * from Student
order by Age


select top(3) Name,Gender,Ph from Student
order by Name