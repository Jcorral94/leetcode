# Write your MySQL query statement below
with sq as (select 
sq.*
,dense_rank() over(partition by sq.season order by sq.total_quantity desc, sq.total_revenue desc, category) rn1
from (select 
case 
    when extract( month from sales.sale_date ) in (12,1,2) then 'Winter'
    when extract( month from sales.sale_date ) in (3,4,5) then 'Spring'
    when extract( month from sales.sale_date ) in (6,7,8) then 'Summer'
    when extract( month from sales.sale_date ) in (9,10,11) then 'Fall'
end season
, products.category
, sum(sales.quantity) total_quantity
, sum(sales.quantity * sales.price) total_revenue
from sales
inner join products on sales.product_id = products.product_id
group by 
case 
    when extract( month from sales.sale_date ) in (12,1,2) then 'Winter'
    when extract( month from sales.sale_date ) in (3,4,5) then 'Spring'
    when extract( month from sales.sale_date ) in (6,7,8) then 'Summer'
    when extract( month from sales.sale_date ) in (9,10,11) then 'Fall'
end
, products.category)sq
order by season,rn1)

select sq.season, sq.category, sq.total_quantity, sq.total_revenue from sq where rn1 = 1
