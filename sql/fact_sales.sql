CREATE OR REPLACE TABLE fact_sales (
    sales_key        INTEGER AUTOINCREMENT PRIMARY KEY,
    transaction_id  STRING,
    date_key        INTEGER,
    customer_key    INTEGER,
    product_key     INTEGER,
    brand_key       INTEGER,
    store_key       INTEGER,
    channel_key     INTEGER,
    quantity        INTEGER,
    unit_price      NUMBER(10,2),
    discount_amount NUMBER(10,2),
    total_amount    NUMBER(12,2),

    CONSTRAINT fk_date    FOREIGN KEY (date_key) REFERENCES dim_date(date_key),
    CONSTRAINT fk_customer FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    CONSTRAINT fk_product FOREIGN KEY (product_key) REFERENCES dim_product(product_key),
    CONSTRAINT fk_brand   FOREIGN KEY (brand_key) REFERENCES dim_brand(brand_key),
    CONSTRAINT fk_store   FOREIGN KEY (store_key) REFERENCES dim_store(store_key),
    CONSTRAINT fk_channel FOREIGN KEY (channel_key) REFERENCES dim_channel(channel_key)
);
-- This table captures the sales transactions and links to various dimension tables for analysis purposes.
/* Revenue

Discounts

Basket analysis

Channel performance */