CREATE OR REPLACE TABLE dim_customer (
    customer_key       INTEGER AUTOINCREMENT PRIMARY KEY,
    customer_id        STRING,
    customer_name      STRING,
    email              STRING,
    country            STRING,
    segment            STRING,
    created_at         TIMESTAMP
);
-- This table is used to store customer dimension data for analytics purposes.