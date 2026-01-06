CREATE OR REPLACE TABLE dim_brand (
    brand_key          INTEGER AUTOINCREMENT PRIMARY KEY,
    brand_name         STRING,
    country_of_origin  STRING,
    is_premium         BOOLEAN
);
