-- Monthly sales
SELECT
  DATE_TRUNC('month', order_date) AS month,
  SUM(total_amount) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

-- Top products
SELECT
  product_name,
  SUM(total_amount) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC;
