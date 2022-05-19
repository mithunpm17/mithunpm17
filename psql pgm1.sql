use invoice;
desc customer;
create  table cust_update(cust_id int primary key  auto_increment,name varchar(10),address varchar(20),city varchar(20),ph_no bigint);
delimiter //
create trigger cust_update
after update
on customer for each row
begin 
insert into cust_update
set cust_id=old.cust_id,name=old.name,address=old.address,city=old.city,ph_no=old.phone_no;
end
//
delimiter ;
select*from customer;
SET SQL_SAFE_UPDATES=0;
select*from cust_update;
update customer set address='pp house' where name='amal';
select*from customer;
select*from cust_update;


