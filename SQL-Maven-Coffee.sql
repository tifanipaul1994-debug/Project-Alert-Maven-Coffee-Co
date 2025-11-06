select * from maven_like_coffee_shop;

select count(distinct(store_location)) from maven_like_coffee_shop;


SELECT store_location,round(AVG(total),1) AS avg_transaction_value
FROM maven_like_coffee_shop
GROUP BY store_location
ORDER BY avg_transaction_value DESC;

select store_location,product_category,round(MAX(total),1) as Max_Total from maven_like_coffee_shop
Group by store_location,product_category
order by store_location;


SELECT store_location, round(SUM(total),1) AS total_sales
FROM maven_like_coffee_shop
GROUP BY store_location
ORDER BY total_sales DESC;


SELECT product_category, SUM(quantity) AS units_sold, round(SUM(total),1) AS revenue
FROM maven_like_coffee_shop
GROUP BY product_category
ORDER BY revenue DESC;


SELECT payment_type, COUNT(*) AS num_transactions
FROM maven_like_coffee_shop
GROUP BY payment_type
ORDER BY num_transactions DESC;