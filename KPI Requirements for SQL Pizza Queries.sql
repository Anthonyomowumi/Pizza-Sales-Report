/* KPI Requirements for SQL Pizza Queries */
SELECT * FROM pizza_sales;

--SELECT DISTINCT COUNT(order_id) FROM pizza_sales;
--SELECT COUNT(order_id) FROM pizza_sales;
--SELECT DISTINCT (pizza_category) FROM pizza_sales;
--SELECT DISTINCT (pizza_name) FROM pizza_sales;

--SUM OF TOTAL PRICE OF ALL PIZZA ORDERED...

SELECT SUM(total_price) AS [TOTAL REVENUE] FROM pizza_sales;

SELECT COUNT (DISTINCT order_id) AS [TOTAL NO OF ORDERS] FROM pizza_sales;

--AVERAGE AMOUNT SPENT PER ORDER
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS [AVG ORDER VALUE] FROM pizza_sales;

-- SUM OF THE QUANTITIES OF PIZZAS SOLD
SELECT SUM(quantity) AS [TOTAL PIZZA SOLD] FROM pizza_sales;

--TOTAL NNUMBER OF ORDER PLACED...
SELECT COUNT(DISTINCT order_id) AS [TOTAL ORDER] FROM pizza_sales;

-- AVERAGE PIZZA PER ORDER
SELECT SUM(quantity) / 
COUNT(DISTINCT order_id) AS [AVG PIZZA PER ORDER] FROM pizza_sales; -- Without casting to decimal...


SELECT CAST(SUM(quantity) AS decimal(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS decimal(10,2))  AS [AVG PIZZA PER ORDER] FROM pizza_sales; -- casting the particular columns

SELECT CAST(CAST(SUM(quantity) AS decimal(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS decimal(10,2)) AS DECIMAL (10,2)) AS  [AVG PIZZA PER ORDER] FROM pizza_sales; -- Casting the entire result