/* Write your PL/SQL query statement below */
select
    distinct u.user_id buyer_id
    , to_char(u.join_date, 'YYYY-MM-DD') join_date
    , nvl(
        count(distinct case when extract(year from o.order_date) = '2019' then o.order_id end) over(partition by u.user_id)
        , 0
    ) orders_in_2019
from users u
left join orders o on o.buyer_id = u.user_id
;
