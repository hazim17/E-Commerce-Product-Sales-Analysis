# E-Commerce Product Sales Analysis

## **Background Project**
Analyze performance of product sales from various sources of dataset.

## **Goals & Objective**
**A. ETL to Create a Data Mart**
The Olist dataset includes several CSV files from various tables (e.g., customer, order_items, order_payments, orders, product) and this dataset also came from many cities in Brazil. To make it more efficient, a data mart will be created:
- Extract, transform, and load multiple olist datasets from CSV to a PostgreSQL database using Psycopg2 and DuckDB.
- The data mart will contain data from specific customer states, in this case, the highest order of customers, which is from São Paulo (SP).


**B. Product Sales analysis**
1. Sales & Order Trend Analysis
  * Sales & Order Growth Rate Yearly (2017 and 2018)
  * Monthly Sales & Order Trend
    
2. Product Performance Analysis
  * Top 10 highest-sold category (2017 and 2018)

3. Average order value (AOV) 2017 and 2018
* AOV for 2017 and 2018
* Top 10 AOV from category product

## **Result**
1. Result ETL
<p align="center">
<img src="/dataset_image/1.result_etl.png" alt="test_1">
</p>

2. Sales & Orders Growth Rate Yearly (2017 and 2018) 
<p align="center">
<img src="/dataset_image/2.sales growth.png" alt="test_1">
</p>

<p align="center">
<img src="/dataset_image/3.order growth.png" alt="test_1">
</p>
3. Monthly Sales & Orders Trend
<p align="center">
<img src="/dataset_image/4.monthly sales.png" alt="test_1">
</p>

<p align="center">
<img src="/dataset_image/5.monthly orders.png" alt="test_1">
</p>

4. Growth of Category Sales and Orders From 2017 to 2018
<p align="center">
<img src="/dataset_image/8.Top 10 sales category Growth.png" alt="test_1">
</p>

<p align="center">
<img src="/dataset_image/11.Top 10 orders category Growth.png" alt="test_1">
</p>

5. Average Order Value (AOV) Comparison
<p align="center">
<img src="/dataset_image/12. AOV yearly.png" alt="test_1">
</p>

<p align="center">
<img src="/dataset_image/16.Growth AOV product.png" alt="test_1">
</p>

## **Conclusion**
- The stability in the top 10 sales categories from 2017 to 2018 indicates that existing customers are becoming more familiar with the platform. This increased brand recognition could facilitate repeat purchases and create opportunities for upselling or cross-selling.
- It is important to assess the impact of these changes on overall profitability. While sales and orders have increased, the decrease in AOV and potential changes in profit margins should be carefully analyzed to ensure that profitability is also on an upward trend.


## **This Repository Organization**
```
_
|── dataset_image                           	       : Contain all the data and image used in this project
├── ETL and Analysis of Product Sales in E-Commerce  : This file is used to ETL and analyze product category sales.
└── README.md                                      	 : Readme File
```

<!-- Shoutout to Grammarly for correcting the grammar.  -->

<!-- Instruction SQL and Data Wrangling https://docs.google.com/document/d/1qeFNL-lqe54XxJoNIzDXQ3zg2lovyZYwv0Q3bY6-p24/preview#heading=h.a7e393npqdkt
 -->

Muhammad Hazim M
