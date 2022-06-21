--UC1
create database AddressBookServiceDB
--UC2
create table AddressBookTable(firstname varchar(100),lastname varchar(100),address varchar(200),city varchar(100),state varchar(100),zip bigint,phoneNumber bigint,email varchar(200));
select * from AddressBookTable;
--UC3
insert into AddressBookTable values('Rahul','Sharma','Wadala','Mumbai','Maharashtra',400037,9504791721,'rahul@gmail.com'),
('Sakshi','Singh','CP','Delhi','Delhi',102458,92000569266,'sakshi@gmail.com'),
('Neha','Yadav','Sector 11','Chandigarh','Punjab',116812,8792568256,'neha12@gmail.com'),
('Priyanka','Kapoor','Mall Road','Amritsar','Punjab',185623,9783426781,'pri@gmail.com'),
('Karan','Sharma','Vashi','Mumbai','Maharashtra',784523,6301602677,'karan@gmail.com');

select * from AddressBookTable
--UC4
update AddressBookTable set address='Bandra' where firstname='Rahul';
update AddressBookTable set email='neha12345@gmail.com' where firstname='Neha' and lastname='Yadav';
--UC5
delete from AddressBookTable where firstname='Sakshi'and lastname='Singh';
select * from AddressBookTable
--UC6
select * from AddressBookTable where city='Mumbai' or state='Maharashtra';
--UC7
select COUNT(*)state,city from AddressBookTable GROUP BY state,city;
--UC8--By default Ascending
select * from AddressBookTable where city='Mumbai'order by firstname;
--UC9
alter table AddressBookTable add AddressBookName varchar(100),Type varchar(100);
update AddressBookTable set AddressBookName='Megha',Type='Friends'where firstname='Sakshi' or firstname='Neha';

update AddressBookTable set AddressBookName='Sameer Uncle',Type='Family'where firstname='Rahul';

update AddressBookTable set AddressBookName='Developer',Type='Profession'where firstname='Priyanka' or firstname='Karan';

--UC10
select Count(*) as NumberOfContacts,Type from AddressBookTable GROUP BY Type;

