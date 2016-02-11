--question 1
select ordno, dollars from orders;
--question 2
select name, city from agents where name = 'Smith';
--question 3
select pid, name, priceUSD from products where quantity > 208000;
--question 4
select name, city from customers where city = 'Dallas';
--question 5
select name from agents where city not in ('New York', 'Tokyo');
-- question 6
select * from products where city not in ('Dallas','Duluth') and priceUSD >= 1;
--question 7
select * from orders where mon = 'jan' or mon = 'mar';
--question 8
select * from orders where mon = 'feb' and dollars <500;
--question 9
select * from orders where cid = 'c005';
