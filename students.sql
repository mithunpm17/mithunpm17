create database invoice;
use invoice;
create table student(id int primary key auto_increment, name varchar(20), age int, city varchar(30));
desc student;
alter table student add dob date;
desc student;
alter table student modify dob year;
desc student;
alter table student drop city;
desc student;
create table CUSTOMER(cust_id int primary key auto_increment,address varchar(30),city varchar(20),phone_no int);
desc CUSTOMER;
create table PRODUCT(p_id int primary key auto_increment,pname varchar(20),price int default '0');
desc PRODUCT;
create table master_invoice(inv_id int primary key auto_increment, cust_id int,constraint cust_id foreign key(cust_id)references CUSTOMER(cust_id),inv_date date );

desc master_invoice;desc 
create table invoice_item(inv_id int,constraint inv_id foreign key(inv_id) references master_invoice(inv_id),p_id int,constraint p_id foreign key(p_id)references PRODUCT(p_id),quntity int);
desc invoice_item;
show tables;
truncate student;
drop table student;
show tables;
