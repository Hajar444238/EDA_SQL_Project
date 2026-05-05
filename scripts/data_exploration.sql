--dataset exploration
-- Explore all objects in the database
select * from INFORMATION_SCHEMA.TABLES 

-- Explore all columns in the database
select * from information_schema.columns
where table_name =  'dim_customers'
