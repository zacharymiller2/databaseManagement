-- Question 1
SELECT city
FROM agents
WHERE aid IN (SELECT aid
              FROM orders
              WHERE cid = 'c002');
--Question 2
SELECT pid
FROM orders
WHERE aid IN (SELECT aid
                FROM orders 
                WHERE cid IN (SELECT cid
                              FROM customers
                              WHERE city = 'Dallas'))
ORDER BY pid ASC;

--Question 3

SELECT cid
FROM customers
WHERE cid NOT IN (SELECT cid
                  FROM orders
                  WHERE aid = 'a01');
-- Question 4

SELECT cid
FROM customers
WHERE cid IN (SELECT cid
              FROM orders
              WHERE pid = 'p01')
--Question 5

SELECT  pid
FROM orders
WHERE cid NOT IN (SELECT cid
                  FROM orders
                  WHERE aid = 'a07')
ORDER BY pid DESC;

--Question 6

SELECT name, discount
FROM customers
WHERE cid IN (SELECT cid
              FROM orders
              WHERE aid IN (SELECT aid
                            FROM agents
                            WHERE city = 'London'
			     OR city = 'New York')); 

--Question 7 

SELECT name
FROM customers
WHERE discount IN (SELECT discount
                   FROM customers
                   WHERE city = 'Dallas'
                   OR city = 'London');