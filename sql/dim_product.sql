CREATE OR REPLACE TABLE dim_product (
    product_key        INTEGER AUTOINCREMENT PRIMARY KEY,
    product_id         STRING,
    product_name       STRING,
    category           STRING,
    subcategory        STRING,
    size               STRING,
    price              NUMBER(10,2),
    brand_key          INTEGER
);
