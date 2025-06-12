create database sales_db;
use sales_db;
create table sales_data(product_id int auto_increment primary key,
product_name varchar(50),
unit_sold int,
unit_price int,
Total_revenue int
);
INSERT INTO sales_data (product_name, unit_sold, unit_price, total_revenue)
values
('iPhone 14 Pro',2,999,1998),
('Dyson V11 Vacuum',1,499,499),
('Levis Jeans',2,999,1998),
('The Da Vinci',3,49,147),
('Neutrogena Skincare',1,999,999),
('Wilson Evolution Basketball',2,499,998),
('Blueair Classic',2,999,1998),
('Nike Air',5,499,2495); 

select* from sales_data;
SELECT 
    product_name AS product,
    SUM(unit_sold) AS total_qty,
    SUM(total_revenue) AS revenue
FROM sales_data
GROUP BY product_name
