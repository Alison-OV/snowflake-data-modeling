CREATE OR REPLACE TABLE dim_product (
    product_key    INTEGER AUTOINCREMENT PRIMARY KEY,
    product_id     STRING,
    product_name   STRING,
    category       STRING,
    price          NUMBER(10,2)
);
-- This table is used to store product dimension data for analytics purposes.