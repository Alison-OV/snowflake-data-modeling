CREATE OR REPLACE TABLE dim_channel (
    channel_key        INTEGER AUTOINCREMENT PRIMARY KEY,
    channel_name       STRING
);
-- This table captures the dimensional attributes of sales channels for analysis purposes.