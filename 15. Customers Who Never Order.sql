-- Problem: https://www.codingninjas.com/codestudio/problems/customers-who-never-order_2111946?topList=top-100-sql-problems

SELECT customers.NameCust 
AS "Customers"
FROM customers
WHERE customers.id NOT IN
(
    SELECT CustomerId FROM Orders
);
