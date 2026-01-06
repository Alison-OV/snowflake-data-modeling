CREATE OR REPLACE TABLE dim_customer (
    customer_key       INTEGER AUTOINCREMENT PRIMARY KEY,
    customer_id        STRING,
    first_name         STRING,
    last_name          STRING,
    gender             STRING,
    birth_date         DATE,
    email              STRING,
    loyalty_tier       STRING,
    country            STRING,
    city               STRING,
    signup_date        DATE
);
