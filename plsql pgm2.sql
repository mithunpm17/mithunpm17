use invoice;
delimiter //;
create trigger min_price
before insert
on product for each row
begin
if new.price<=5 then set new.price=10;
end if;
end //
delimiter ; //
select*from product;
