-- dimensions explorations
-- explore all countries our customers come from 
select distinct country from gold.dim_customers

--explore all categories "The major divisions"
select distinct category, subcategory ,product_name from gold.dim_products
order by 1,2,3
 
--date exploration(type of dimensions)
--the date o the first and the last order
select min(order_date) as first_order_date,
max(order_date) as last_order_date, 
datediff(year, min(order_date), max(order_date)) as order_range_years
from gold.fact_sales

--find the youngest and oldest customer
select max(birthdate) as youngest_customer,
datediff(year, max(birthdate), getdate()) as youngest_age,
min(birthdate) as oldest_customer,
datediff(year,min(birthdate), getdate()) as oldest_age
from gold.dim_customers
