-- ------------------------------------------------------------------------------------------------------------------------
# Create Star Schema for the Project 
-- ------------------------------------------------------------------------------------------------------------------------

-- Step 1 : Create a Database and use that

CREATE DATABASE sales_project;
USE sales_project;

-- ------------------------------------------------------------------------------------------------------------------------
-- Step 2 : Create a Dimension table
# A) dim_customer
CREATE TABLE dim_customer (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(255),
    segment VARCHAR(50)
);

# B) dim_product 
CREATE TABLE dim_product (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    sub_category VARCHAR(100)
);


# C) dim_date
CREATE TABLE dim_date (
    order_date DATE PRIMARY KEY,
    year INT,
    month INT,
    quarter INT
);

-- ------------------------------------------------------------------------------------------------------------------------
-- Step 3 : Create a fact table 
# fact_sales
CREATE TABLE fact_sales (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    customer_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    sales FLOAT, 
    quantity INT,
    discount FLOAT,
    profit FLOAT,

    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (order_date) REFERENCES dim_date(order_date)
);

-- ------------------------------------------------------------------------------------------------------------------------
# Step 4 : load data in Mysql by Table Data Import Wizard

select * from dim_customer;
select * from dim_date;
select * from dim_product;

# in dim_product table column product_name have , between the words which causes problem while importing data from wizard 
# so for importing data in dim_product use sqlalchemy library here
drop table dim_product;
drop table fact_sales;
select * from dim_product ;

DESCRIBE dim_product;

CREATE TABLE dim_product_clean AS
SELECT 
    product_id,
    MAX(product_name) AS product_name,
    MAX(category) AS category,
    MAX(sub_category) AS sub_category
FROM dim_product
GROUP BY product_id;

ALTER TABLE dim_product_clean
MODIFY product_id VARCHAR(50),
ADD PRIMARY KEY (product_id);

DROP TABLE dim_product;

RENAME TABLE dim_product_clean TO dim_product;
select * from dim_product;

describe dim_product;

select * from fact_sales;

-- ------------------------------------------------------------------------------------------------------------------------