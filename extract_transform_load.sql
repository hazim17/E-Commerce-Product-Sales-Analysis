
-- C:\Users\HP\Documents\1.Pacmann_Analytics Data Science\projek sql data wrangling\dataset\

/* Import Data */
-- Create each tables needed
-- Import data from csv using pgadmin4 to each table
-- create table customer
CREATE TABLE customers (
	customer_id varchar (50) NOT NULL PRIMARY KEY,
	customer_unique_id varchar(50),
	customer_zip_code int,
	customer_city varchar (50),
	customer_state varchar (50)
	);

-- Create table geolocation
CREATE TABLE geolocation
	(geolocation_zip_code_prefix int,
	 geolocation_lat float,
	 geolocation_Ing float,
	 geolocation_city varchar (50),
	 geolocation_state varchar (10)
	);
	
-- Create table orders
CREATE TABLE orders (
	order_id VARCHAR(100) PRIMARY KEY,
	customer_id VARCHAR(100),
	order_status VARCHAR(50),
	order_purchase_timestamp TIMESTAMP,
	order_approved_at TIMESTAMP,
	order_delivered_carrier_date TIMESTAMP,
	order_delivered_customer_date TIMESTAMP,
	order_estimated_delivery_date TIMESTAMP,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
	);

-- Create table products
CREATE TABLE products (
	no int,
	product_id varchar(50) NOT NULL PRIMARY KEY,
	product_category_name VARCHAR(70),
	product_name_length numeric,
	product_description_length numeric,
	product_photos_qty numeric,
	product_weight_g numeric,
	product_length_cm numeric,
	product_height_cm numeric,
	product_width_cm numeric);

-- Create table sellers
CREATE TABLE sellers
	(seller_id varchar(50) NOT NULL PRIMARY KEY,
	seller_zip_code_prefix varchar(10),
	seller_city varchar (100) ,
	seller_state varchar(15)
	);

-- Create table order_items
CREATE TABLE order_items (
	order_id varchar NOT NULL,
	order_item_id varchar (50),
	product_id varchar (50),
	seller_id varchar (50),
	shipping_limit_date timestamp,
	price float,
	freight_value float,
	FOREIGN KEY(order_id) REFERENCES orders(order_id),
	FOREIGN KEY(product_id) REFERENCES products(product_id),
	FOREIGN KEY(seller_id) REFERENCES sellers(seller_id)
);

-- Create table order_payments
CREATE TABLE order_payments (
	order_id varchar(50), 
	payment_sequential int, 
	payment_type varchar(50), 
	payment_installments int, 
	payment_value numeric,
	FOREIGN KEY(order_id) REFERENCES orders(order_id));

-- Create table reviews
CREATE TABLE reviews
	 (review_id varchar (50) NOT NULL,
	 order_id varchar (50), 
	 review_score int, 
	 review_comment_title varchar (50), 
	 review_comment_message varchar (500), 
	 review_creation_date timestamp, 
	 review_answer_timestamp timestamp);

SELECT * FROM reviews limit 5;

-- DROP TABLE products

/*Data Validation*/
-- Table customers
SELECT 
	count(*) as "Total_Row",
	count(distinct customer_id) as "Total_Customer_ID"
FROM customers;

-- Table orders
SELECT 
	count(*) as "Total_Row",
 	count(distinct order_id) as "Total_order_ID"
FROM orders;

-- Table products
SELECT 
 	count(*) as "Total_Row",
  	count(distinct product_id) as "Total_product_ID",
	count(distinct product_category_name) as "Total_Product_category"	
FROM products;

-- Table order_items
SELECT 
	count(*) as "Total_Row",
 	count(distinct order_item_id) as "Total_order_item_ID",
	count(distinct order_id) as "Total_order_ID",
	count(distinct product_id) as "Total_product_ID"
FROM order_items;

/*Create Data Mart*/
-- Create Table for Product Sales Analysis
CREATE TABLE product_sales AS
SELECT
	ord.order_id,
	ord.order_status,
	ord.customer_id,
	ord.order_purchase_timestamp,
	ordit.product_id,
	prod.product_category_name,
	ordit.price,
	ordit.freight_value
FROM orders as ord
INNER JOIN order_items as ordit ON ord.order_id = ordit.order_id
INNER JOIN products as prod ON ordit.product_id = prod.product_id
;

-- DROP TABLE product_sales;

/*Data Validation*/
-- Table product_sales
-- Check total row with ids
SELECT 
	count(*) as "Total_Row",
  	count(distinct product_id) as "Total_product_ID",
	count(distinct order_id) as "Total_order_ID"	
FROM product_sales;

-- Check null values
SELECT
	*
FROM product_sales
-- WHERE order_id is NULL
WHERE product_category_name is NULL;