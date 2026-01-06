CREATE OR REPLACE TABLE dim_store (
    store_key          INTEGER AUTOINCREMENT PRIMARY KEY,
    store_id           STRING,
    store_name         STRING,
    store_type         STRING,
    country            STRING,
    city               STRING,
    opened_date        DATE
);
-- This table captures the dimensional attributes of stores for analysis purposes.