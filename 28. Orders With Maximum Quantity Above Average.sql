-- Problem: https://www.codingninjas.com/codestudio/problems/orders-with-maximum-quantity-above-average_2188776?topList=top-100-sql-problems

SELECT order_id
               FROM OrdersDetails
               GROUP BY order_id
               HAVING MAX(quantity) > ALL(SELECT AVG(quantity)
                                                 FROM OrdersDetails
                                                 GROUP BY order_id
                                                  );
