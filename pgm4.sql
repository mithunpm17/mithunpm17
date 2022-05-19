select pname,price from product where pname!='soap';
select min(price),max(price),avg(price) from product;
select city,count(city) as count from customer group by city;
select city,count(city) as count from customer group by city having count(city)>3;
alter table customer add name varchar(20);
desc customer;
select * from customer;
update customer set name='sijo' where cust_id='4';
select concat(name,'lives in',city)as 'who, where'from customer;
