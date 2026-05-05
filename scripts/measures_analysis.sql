--Measures exploration 

--find the total sales
select sum(sales_amount) as total_sales from gold.fact_sales

--find how many items are sold 
select sum(quantity) as total_items_sold from gold.fact_sales

--find the average selling price
select avg(price) as avg_price from gold.fact_sales

--find the total number of orders
select count(distinct order_number) as total_orders from gold.fact_sales

--find the total number of products
select count(distinct product_number) as total_products from gold.dim_products

--find the total number of customers
select count(customer_number) as total_customers from gold.dim_customers
  
--find the total number of customers that has placed an order
select count( distinct customer_number) as total_customers 
from gold.dim_customers cu
left join gold.fact_sales sa 
on cu.customer_key = sa.customer_key

--Generate a report that shows all key metrics of the business 
select 'Total sales' as measure_name, sum(sales_amount) as measure_value from gold.fact_sales
union all 
select 'Total quantity' as measure_name, sum(quantity) as measure_value from gold.fact_sales
union all 
select 'Avg price' as measure_name, avg(price) as measure_value from gold.fact_sales
union all 
select 'Total orders' as measure_name, count(distinct order_number) as measure_value from gold.fact_sales
union all 
select 'Total products' as measure_name, count(distinct product_number) as measure_value from gold.dim_products
union all 
select 'Total customers' as measure_name, count(distinct customer_number) as measure_value from gold.dim_customers
