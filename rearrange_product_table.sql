/* Write your PL/SQL query statement below */
SELECT 
product_id
, store
, price
FROM products
UNPIVOT (
  price FOR store IN (store1 AS 'store1', store2 AS 'store2', store3 AS 'store3') -- avg_temp is the new value column, month_num is the new name column
);
