# Business-Performance-Analysis-with-SQL

## Project Overview
Lewis sells office supplies, furnishings, maintenance, housekeeping equipment, and public area items to various properties in different cities throughout the USA. They often struggle to understand the actual business performance due to improper data reporting and visualisation. The project aims to extract information from the database and visualise the business performance for fast decision-making.

## Objectives
By integrating and analysing their dataset, the project will help the company gain insights and uncover strategies to improve its business performance through the following objectives.
1.	Uncover workforce patterns: Gain insights into the sales performance, customer satisfaction trends to guide customer retention strategies.
2.	Enhanced decision-making: Provide accurate and timely information for policy, training, and workforce planning.
3.	Sales performance: Streamline access to HR insights that enhance business performance and strategic alignment.

## Detailed steps:
1.	Restore and retrieve the dataset
2.	Check Table Relationships on the ERD to see relationships between the various tables, primary keys and foreign keys.
3.	Explore the Dataset: Have a full view of the different tables individually and together.
4.	Answer Business Questions
5.	Insight and Recommendations

## Dataset
The dataset used in this project contains historical sales performance data for Lewis Office Stationery and Décor. The dataset includes information such as products, orders and propertyinfo. To facilitate data management and analysis, a SQL database has been created to store the dataset. SQL provides a robust and efficient way to query and manipulate the data. The database schema has been designed to ensure proper organization and ease of use. The structure of the database enables seamless integration with various data visualization tools.

## Data Processing
The database was created and transformed into a suitable format for analysis using PostgreSQL. SQL queries were used to clean, filter, manipulate and transform the data as necessary. This ensures that the data used for the dashboard is accurate and reliable. The table below shows the connection of three different tables to their primary and foreign keys. 

## Tables	Definition
T1	Product
T2	Orders
T3	Propertyinfo

<img width="636" height="669" alt="image" src="https://github.com/user-attachments/assets/7791a5fe-f5e7-44f8-9649-9f7349ac7b1a" />

## Conclusion: 
This project demonstrated the use of SQL in extracting actionable insights from raw business data to support data-driven decision-making. By addressing practical business questions, I implemented advanced SQL concepts such as conditional logic (CASE statements), handling NULL values, aggregate functions, subqueries, and joins to ensure accurate and meaningful results.

## Key findings included:
•	Revenue insights: Revenue was segmented by product category with dynamic discounting rules applied (10% for products > $100, 5% for products $50–$100), enabling management to assess performance more realistically.
•	Data quality handling: Products with missing prices were assigned a default value of $10, ensuring no revenue was lost in reporting due to incomplete data.
•	Operational performance: The number of orders placed in 2015 was extracted to track yearly demand.
•	Top-performing products: The best-selling product (by quantity) in 2015 was identified, along with its category, supporting inventory planning and promotional strategies.
•	Market gaps: Products never ordered were analyzed to determine their average price, highlighting potential mismatches between pricing strategy and customer demand.
Overall, this analysis provided a comprehensive view of business performance, demonstrating the use of SQL to transform raw transactional records into strategic insights for faster and more informed decision-making.




