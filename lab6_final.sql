--question 1
SELECT name,city

FROM customers

WHERE city in -- subquery returns the top city. Use it to then get the name and city

   (SELECT city FROM

      (SELECT c_inner.city,count(*)

       FROM customers c_inner

       GROUP BY c_inner.city

       ORDER BY count(*) desc,c_inner.city) city_list

    limit 1 ) 

--question 2

SELECT p.name,P.PRICEUSD,(SELECT avg(priceusd) FROM products) as AveragePrice

FROM products p

WHERE priceusd > (SELECT avg(priceusd) FROM products)

ORDER BY p.name DESC

--question 3

SELECT c.name,O.PID,sum(o.dollars) "Total Dollars By Name and PID"

FROM customers c

INNER JOIN orders o ON C.CID = O.CID

GROUP BY c.name,o.pid

ORDER BY sum(dollars) DESC

--question 4

SELECT c.name,coalesce(sum(o.dollars),0) "Total Dollars By Customer"

FROM customers c

LEFT OUTER JOIN orders o ON C.CID = O.CID

GROUP BY c.name

ORDER BY c.name ASC

--question 5

SELECT c.name CustomerName,A.NAME AgentName,P.NAME ProductName

FROM orders o

INNER JOIN agents a ON O.AID = A.AID

INNER JOIN customers c ON O.CID = C.CID

INNER JOIN products p ON O.PID = P.PID

WHERE A.CITY = 'Tokyo'

ORDER BY c.name asc

--question 6

Select *
From (Select o.*, o.qty*p.priceusd*(1-(discount/100)) as truedollars
      from orders o
      inner join products p on o.pid = p.pid
      inner join customers c on o.cid = c.cid) as tmptable
Where dollars != truedollars

--question 7
--A left outer join will produce the rows that are in the left table and not the right table 
--where a right outer join will produce the rows that are in the right table and not the left
