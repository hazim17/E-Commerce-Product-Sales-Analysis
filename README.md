# E-Commerce Product Sales Analysis

## **Background Project**
Analyze performance of product sales from various sources of dataset.

## **Goals & Objective**
 **1. ETL to Create a Data Mart**
- Extract, transform, and load multiple olist datasets from CSV to a PostgreSQL database using Psycopg2 and DuckDB to create a data mart.
- The data mart contains data from specific customer states, in this case, the highest order of customers, which is from SP (Sao Paulo).

**2. Product Sales analysis**
- Yearly and Monthly Trend Sales Analysis
  - Revenue (Line Chart)
- Top and Bottom Product Sales 
  - Top 10 highest-sold products (Bar chart)
  - Top 10 lowest-sold products (Bar chart)
- Average order value (AOV)
- Product Category bought together


## **Result**
1. Result ETL
The data that needed for analysis is completed to load to a table
<p align="center">
<img src="/dataset_image/etl_result.png" alt="test_1">
</p>

2. Yearly and Monthly Trend Sales Analysis:
<p> Yearly Trend Sales Analysis </p>
<p align="center">
<img src="/dataset_image/yearly_revenue.png" alt="test_1">
</p>

<p> Monthly Trend Sales Analysis </p>
<p align="center">
<img src="/dataset_image/monthly revenue.png" alt="test_1">
</p>


We can conclude that sales from the current year is increasing compared to previous year.

3. Top and Bottom Product Sales:
<p> Top 10 Product Sales</p>
<p align="center">
<img src="/dataset_image/top_10_product.png" alt="test_1">
</p>

<p>Bottom 10 Product Sales</p>
<p align="center">
<img src="/dataset_image/bottom_10_product.png" alt="test_1">
</p>

We can conclude that most of the customer bought our product about bath, beauty health and sport. And the least is about childrem cloth, music and games.

4. Average order value
<p align="center">
<img src="/dataset_image/aov.png" alt="test_1">
</p>
Average order value of customer from Jan 2017 to Aug 2018 is around $140 - $160 

5. Product Bought Together
<p align="center">
<img src="/dataset_image/prod_bundling.png" alt="test_1">
</p>
Most product of bath bed table and health beauty is bought more than 2.


## **This Repository Organization**
```
_
|── dataset_image                            : Contain all the data and image used in this project
├── ETL and Analysis of Product Sales.ipynb  : This file is used to create ETL and analyze product category based on order and sales.
└── README.md                  	             : Readme File
```

<!-- Shoutout to Grammarly for correcting the grammar.  -->

<!-- Instruction SQL and Data Wrangling https://docs.google.com/document/d/1qeFNL-lqe54XxJoNIzDXQ3zg2lovyZYwv0Q3bY6-p24/preview#heading=h.a7e393npqdkt
 -->

Muhammad Hazim M

Pacmann - Analystics & Data Science
Batch 14

