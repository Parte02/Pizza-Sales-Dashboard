use pizza;
Select*from pizza_sales;

#Total Revenue
Select SUM(total_price) as Total_Revenue from pizza_sales;

#Average Order Values
Select Sum(total_price)/count(distinct order_id) as Avg_Order_Values from pizza_sales;

#Total Pizza Sold
Select Sum(quantity)as Total_Pizza_Sold from pizza_sales;

#Total Orders
Select count(distinct order_id) as Total_Orders from pizza_sales;

#Average Pizza Per Order
Select Cast(Sum(quantity) as Decimal(10,2))/count(distinct order_id)as Avg_Pizza_Sales from pizza_sales;

#Charts Requirment 
#Daily trend for Orders
SELECT MONTHNAME(order_date) AS order_month, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales 
GROUP BY MONTH(order_date), MONTHNAME(order_date) 
ORDER BY MONTH(order_date);

#Hourly Trend for Total Order
SELECT HOUR(order_time) AS order_hour, COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales GROUP BY HOUR(order_time) ORDER BY HOUR(order_time);

#Percentage of sales by pizza category
Select pizza_category, Sum(total_price)*100 / (Select sum(total_price) from pizza_sales)as PCT from pizza_sales 
group by pizza_category

#Percentage of sales by pizza Size
Select pizza_size, Sum(total_price)*100 / 
(Select sum(total_price) from pizza_sales)as PCT 
from pizza_sales 
group by pizza_size

#Total Pizza sold by Pizza Category
select pizza_category , sum(quantity) as Total_Pizza_Sold from pizza_sales 
group by pizza_category

#Top 5 Best Seller by Pizaa
select pizza_name , sum(quantity) as Total_Pizzas_Sold from pizza_sales
Group by pizza_name
order by sum(quantity) Desc
Limit 5

#Bottom 5 Best Seller by Pizaa
select pizza_name , sum(quantity) as Total_Pizzas_Sold from pizza_sales
Group by pizza_name
order by sum(quantity) 
Limit 5







