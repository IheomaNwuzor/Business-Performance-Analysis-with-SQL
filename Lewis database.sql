-- Question 1
-- applying case and when conditions

-- ||How much revenue did we generate from each product category?
-- after considering a 10% discount for products that cost more than $100,
-- and a 5% discount for products that cost between $50 and $100?||

select "ProductCategory",
		sum("Price" * "Quantity") as revenue
from orders
join products on orders. "ProductID" = products. "ProductID"
group by "ProductCategory";

select "ProductCategory",
sum("Price" * "Quantity") as revenue
from orders
join products on orders. "ProductID" = products. "ProductID"
group by "ProductCategory";


-- for question 1 (with indentation)
select "ProductCategory",
		sum(case
		when "Price" > 100 then "Price" * 0.9 * "Quantity" 
		when "Price" between 50 and 100 then "Price" *0.95 * "Quantity" 
		else "Price" * "Quantity" 
		end) as revenue
from orders
join products on orders."ProductID" = products."ProductID"
group by "ProductCategory";


--without indentation
select "ProductCategory",
sum(case
when "Price" > 100 then "Price" * 0.9 * "Quantity" 
when "Price" between 50 and 100 then "Price" *0.95 * "Quantity" 
else "Price" * "Quantity" 
end) as revenue
from orders
join products on orders."ProductID" = products."ProductID"
group by "ProductCategory";



-- Question 2 (Using coalisce)


-- What is the total revenue generated, 
-- considering that products with a NULL price should be treated as having a default price of $10?


select sum(coalesce(products."Price", 10) * orders."Quantity") as "Total revenue"
from orders
join products on orders."ProductID" = products."ProductID";



-- Question 3 (Uses the Cast function)
-- How many orders were placed in the year 2015

select * from orders;

select count(distinct "OrderID")
from orders
where cast("OrderDate" as date) between '2015-01-01' and '2015-12-31';



-- Question 4
-- What is the name and category of the top-selling product (in terms of quantity) in the year 2015?
SELECT products."ProductName", products."ProductCategory", SUM(orders."Quantity") AS "total quantity sold"
FROM orders 
JOIN products ON products."ProductID" = orders."ProductID"
WHERE EXTRACT(YEAR FROM orders."OrderDate") = 2015
GROUP BY products."ProductID", products."ProductName", products."ProductCategory"
ORDER BY "total quantity sold" DESC
LIMIT 1;



-- Question 5
-- What is the average price of products that have never been ordered

SELECT AVG("Price") 
FROM products 
WHERE "ProductID" NOT IN(
    SELECT DISTINCT "ProductID" FROM Orders
	); 

-- the table gave a NULL, to handle the null value, use coalesce

select
	coalesce(
	cast(avg("Price")as text),
	'All products were ordered')
from products
where "ProductID" not in (
	select distinct "ProductID" from orders
);
	
	


