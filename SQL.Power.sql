
SELECT * FROM mytable LIMIT 20;
SELECT gender, SUM(purchase_amount) AS revenue
FROM mytable
group by gender;
SELECT customer_id, purchase_amount 
FROM mytable WHERE discount_applied = 'Yes' AND purchase_amount >= (SELECT AVG(purchase_amount) from mytable);
ALTER TABLE mytable MODIFY COLUMN purchase_amount INT;
ALTER TABLE mytable MODIFY COLUMN review_rating INT;

SELECT item_purchased, round(AVG(review_rating ),2) AS "Average Product Rating"
FROM mytable
group by item_purchased
order by avg(review_rating) desc 
limit 5;
select shipping_type, 
ROUND(AVG(purchase_amount),2)
from mytable
where shipping_type in ('Standard','Express')
group by shipping_type;
SELECT subscription_status,
      COUNT(customer_id) AS total_customers,
      ROUND(AVG(purchase_amount),2) AS avg_spend,
	  ROUND(SUM(purchase_amount),2) AS total_revenue
FROM mytable
GROUP BY subscription_status
ORDER BY total_revenue,avg_spend DESC;
SELECT item_purchased,
ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM mytable
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;
ALTER TABLE mytable ADD COLUMN customer_segment VARCHAR(100);
with customer_type as (
SELECT customer_id, previous_purchases,
CASE 
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
   END AS customer_segment FROM mytable)

select customer_segment,count(*) AS "Number of Customers" 
from customer_type 
group by customer_segment;

WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM mytable
    GROUP BY category, item_purchased
    )
#ALTER TABLE mytable ADD COLUMN item_rank INT;
SELECT item_rank,category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;

SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM mytable	
WHERE previous_purchases > 5
GROUP BY subscription_status;

SELECT 
    age_group,
    SUM(purchase_amount) AS total_revenue
FROM mytable
GROUP BY age_group
ORDER BY total_revenue desc;

