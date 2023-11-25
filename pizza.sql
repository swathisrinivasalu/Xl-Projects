Use pizza;
select * from pizza_sales;
select sum(total_price) as Total_revenue from pizza_sales;
select sum(total_price)/count(distinct order_id) as Avg_order_value from pizza_sales;
select sum(quantity) as Total_pizza_sold from pizza_sales;
select count(distinct order_id)  as Total_orders from pizza_sales;
select cast(sum(quantity)/count(distinct Order_id) as decimal(10,2)) as Avg_Pizzas_per_order from pizza_sales;
Select hour(order_time) as order_hour,sum(quantity) as total_pizza_sold from pizza_sales group by hour(order_time) 
order by  order_hour; 
Select Week(order_date) as Weeknumber, year(order_date) as Year,count(distinct Order_id) as total_oder
 from pizza_sales 
 group by Week(order_date),Year(order_date) 
order by Year,Weeknumber; 
Select  year(order_date) as Order_year,week(order_date)as weeknumber,count(distinct o) as total_order
from pizza_sales
group by year(order_date),week(order_date)
order by year(order_date),week(order_date);

SELECT
    YEAR(Order_Date) AS OrderYear,
    WEEK(Order_Date) AS OrderWeek,
   count(distinct order_id)  as Total_orders 
FROM
    pizza_sales
GROUP BY
    OrderYear, OrderWeek
ORDER BY
    OrderYear, OrderWeek;

select pizza_category,cast(sum(total_price) as Decimal(10.2)) as total_revenue,
cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) as PCt 
from pizza_sales
group By pizza_category;

select pizza_size,cast(sum(total_price) as Decimal(10,2)) as total_revenue,
cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) as PCt 
from pizza_sales
group By pizza_Size
order by pizza_size;

select pizza_category,sum(Quantity) as Total_quantity_sold 
from pizza_sales
group By pizza_category
order by total_quantity_sold desc;

select pizza_name,sum(total_price) as total_Revenue from pizza_sales
    group by pizza_name
    order by total_revenue desc limit 5;
    
	select pizza_name,sum(total_price) as total_Revenue from pizza_sales
    group by pizza_name
    order by total_revenue asc limit 5;
    
select pizza_name,sum(quantity) as total_Quantity from pizza_sales
    group by pizza_name
    order by total_Quantity desc limit 5;
    
    select pizza_name,sum(quantity) as total_Quantity from pizza_sales
    group by pizza_name
    order by total_Quantity Asc limit 5;
    
    select pizza_name,count(distinct order_id) as total_orders from pizza_sales
    group by pizza_name
    order by total_orders desc limit 5;
    
    select pizza_name,count(distinct order_id) as total_orders from pizza_sales
    group by pizza_name
    order by total_orders Asc limit 5;
    

	