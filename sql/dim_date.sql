CREATE OR REPLACE TABLE dim_date (
    date_key        INTEGER PRIMARY KEY,
    full_date       DATE,
    year            INTEGER,
    quarter         INTEGER,
    month           INTEGER,
    day             INTEGER,
    day_of_week     INTEGER,
    is_weekend      BOOLEAN
);
-- This table is used to store date dimension data for analytics purposes.