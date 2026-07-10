# Write your MySQL query statement below
select customer_id from (
select 
distinct c.customer_id,
(select count(distinct customer_transactions.transaction_id) from customer_transactions where customer_transactions.transaction_type = 'purchase' and c.customer_id = customer_transactions.customer_id) purchase_transactions,
(select count(distinct customer_transactions.transaction_id) from customer_transactions where customer_transactions.transaction_type = 'refund' and c.customer_id = customer_transactions.customer_id) refund_transaction,
datediff(
    (select max(transaction_date) from customer_transactions where c.customer_id = customer_transactions.customer_id ),
    (select min(transaction_date) from customer_transactions where c.customer_id = customer_transactions.customer_id )
) active_dates
from customer_transactions c
) d
where d.purchase_transactions >= 3
and d.active_dates >= 30
and (d.refund_transaction/d.purchase_transactions) <= 0.2;
