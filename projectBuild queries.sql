drop table if exists department cascade;
drop table if exists product cascade;
drop table if exists employees cascade;
drop table if exists storeroom cascade;
drop table if exists inventory cascade; 
drop table if exists customer cascade;
drop table if exists equiptment cascade;

create table department(
	departmentId int not null unique,
	departName text not null,
	departDesc text,
	primary key (departmentId)
);

create table if not exists product (
	pid  int not null unique,
	pName text not null,
	pDescription text not null,
	pCostToMake numeric (15,2) not null,
	pSellPrice Numeric (15,2) not null,
	primary key (pid)
);

create table if not exists employees(
	eid int not null unique,
	firstName text not null,
	lastName Text not null,
	phoneNumber text not null,
	streetAddress text not null,
	zipCode int not null,
	departmentId int not null references department(departmentId),
	Primary key (eid)
);



create table if not exists storeRoom(
	sid int not null unique,
	sName text not null,
	roomTemp text not null,
	primary key (sid)
);



create table if not exists inventory (
	invId int not null unique,
	prodId int not null unique references product(pid),
	quantity int not null,
	sid int not null references storeRoom(sid),
	primary key (invId)
);



create table if not exists customer(
	cid int not null unique,
	cName text not null,
	cDescription text not null,
	cStreetAddress text not null,
	primary key (cid)
);

create table if not exists equiptment(
	equipId int not null unique,
	eName text not null,
	eCost text not null,
	eEmployeeAssigned int not null references employees(eid),
	eDescription text not null,
	eLocation text not null,
	primary key (equipId)
);

create table if not exists orders(
	ordno int not null,
	cusid int not null references customer (cid),
	eid int not null references employees (eid),
	prodid int not null references product(pid),
	amount int not null,
	price numeric (15,2) not null,
	yearpurchased int not null,
	primary key (ordno)
	
);


-- inserting into customer table
insert into customer
values(001, 'Ayco', 'Secondary Selling Company', '333 South Main Street Saratoga Springs, NY');

insert into customer
values(002, 'Marist College', 'Book Store Selling Company', '3433 North Road Poughkeepsie, NY');

insert into customer
values(003, 'Giacomos By Marist', 'Pizza Distribution Company', '3434 North Road Poughkeepsie, NY');

insert into customer
values(004, 'Toys R Us', 'Secondary Selling Company', '12 North Main Street Albany, NY');

insert into customer
values(005, 'Target', 'Secondary Selling Company', '15 Northmountain Street Denver, CO');

--inserting into product table
insert into product
values(001, 'Baseball', 'Professional Baseball', 7.89, 15.99);

insert into product
values(002, 'Pen', 'Professional Felt tip Pen', 10.49, 25.99);

insert into product
values(003, 'Child Cart', 'Plastic Childrens car', 30.89, 80.99);

insert into product
values(004, 'Loopin Chewie', 'Childs game-loopin chewie', 2.39, 17.99);

insert into product
values(005, 'Rock em Sock em', 'Rock em Sock em Robots Anniversary Edition', 1.89, 19.99);

insert into product
values(006, 'Panasonic TV', 'Panasonic 55 Television', 100.89, 700.99);

insert into product
values(007, 'Toaster', 'Professional style toaster', 9.89, 25.99);

insert into product
values(008, 'Pizza Box', 'Giaccomos Pizza Box 16', 2.89, 4.99);

--inserting into storeroom table
insert into storeroom
values(001, 'Storage Room A', 45);

insert into storeroom
values(002, 'Storage Room B', 30);

insert into storeroom
values(003, 'Storage Room C', 22);

insert into storeroom
values(004, 'Storage Room D', 60);

insert into storeroom
values(005, 'Storage Room AA', 70);

insert into storeroom
values(006, 'Storage Room AB', 20);


--inserting into inventory table
insert into inventory
values(001, 001, 10, 002);

insert into inventory
values(002, 002, 100, 003);

insert into inventory
values(003, 003, 0, 006);

insert into inventory
values(004, 004, 49, 003);

insert into inventory
values(005, 005, 14, 001);

insert into inventory
values(006, 006, 5, 004);

insert into inventory
values(007, 007, 1000, 005);

insert into inventory
values(008, 008, 15, 006);

--inserting into department table
insert into department
values(001, 'Tech Department', 'Technology Department');

insert into department
values(002, 'Accounting Department','Accounting Department');

insert into department
values(003, 'Management Department', 'Managerial Positions');

insert into department
values(004, 'Janitorial Department', 'Cleaning positions');

insert into department
values(005, 'Production Department', 'Manufacturing Production positions');

insert into department
values(006, 'Grounds Department', 'Grounds Management positions');



--inserting random employees
insert into employees 
values (001,'Zach','Miller','5185775933','24 Burton Rd Loudonville NY', 12211, 001);

insert into employees 
values (002,'Andrew','Smith','8455775933','87 Sunset Rd Lagrange NY', 12603, 003);

insert into employees 
values (003,'Pari','Hake','8456738765','86 Sunset Ave Poughkeepsie NY', 12601, 004);

insert into employees 
values (004,'Patrick','Chavez','2034589760','78 Tram Dr Albany NY', 12211, 005);

insert into employees 
values (005,'Kimberly','Heyde','7083589760','24 West Cedar Poughkeepsie NY', 12601, 002);

insert into employees 
values (006,'Peyton','Patota','9142879908','127 Cream Street Albany NY', 12211, 003);

insert into employees 
values (007,'Paul','Orlando','5184589760','65 Sunset Ave Albany NY', 12211, 006);

insert into employees 
values (008,'Kayla','Hello','2034589760','73 Helloitsme Dr Albany NY', 12211, 006);

insert into employees 
values (009,'Sydney','Chardonayee','6794589760','198 Gone Dr Pougkeepsie NY', 12601, 003);

insert into employees 
values (010,'Jessica','Leggio','5674589760','400 Dance Dr Albany NY', 12211, 003);

insert into employees 
values (011,'Nicole','Piccone','2034502760','654 Hello St Albany NY', 12211, 001);

insert into employees 
values (012,'Lauren','Saltz','2034789760','54 Mansion Terr Poughkeepsie NY', 12211, 001);


--inserting into equiptment table
insert into equiptment
values(001, '2 Ton Press', '20,000.00', 012, '2 Ton Press', 'Production Floor');

insert into equiptment
values(002, 'Lawn Mower ZT', '11,000.00', 002, 'Ariens Lawn Mower', 'Garage One');

insert into equiptment
values(003, '2 Ton Press', '20,000.00', 012, '2 Ton Press', 'Production Floor');

insert into equiptment
values(004, 'Company Truck', '9,000.00', 001, '2013 GMC 3500', 'Garage Two');

insert into equiptment
values(005, 'Lenovo Laptop', '1,010.00', 004, 'Travel Laptop', 'Managerial Department');

--inserting into Orders Table
insert into orders
values(001, 003, 001, 004, 10, 179.99, 2016);

insert into orders
values(002, 005, 004, 008,15, 500.98, 2015);

insert into orders
values(003, 003, 001, 008, 150, 60.98, 2016);

insert into orders
values(004, 001, 010, 006, 190, 760.98, 2015);

