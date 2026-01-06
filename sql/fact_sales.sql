CREATE OR REPLACE TABLE fact_sales (
    sales_key       INTEGER AUTOINCREMENT PRIMARY KEY,
    order_id        STRING,
    customer_key    INTEGER,
    product_key     INTEGER,
    date_key        INTEGER,
    quantity        INTEGER,
    total_amount    NUMBER(12,2),

    CONSTRAINT fk_customer FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    CONSTRAINT fk_product FOREIGN KEY (product_key) REFERENCES dim_product(product_key),
    CONSTRAINT fk_date FOREIGN KEY (date_key) REFERENCES dim_date(date_key)
);
-- This table is used to store sales fact data for analytics purposes.