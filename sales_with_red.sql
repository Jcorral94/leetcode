/* Write your PL/SQL query statement below */
with sales_with_red as (
    select 
        distinct salesperson.name 
    from orders
        inner join salesperson on salesperson.sales_id = orders.sales_id
        inner join company on company.com_id = orders.com_id
    where 
        company.name = 'RED'
)

select salesperson.name from salesperson where not exists(select 1 from sales_with_red where salesperson.name = sales_with_red.name);
