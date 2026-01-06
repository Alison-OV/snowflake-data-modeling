# Snowflake Data Modeling

## Overview
This project demonstrates a dimensional data model designed for analytical workloads in Snowflake.

## Star Schema Design
The model follows a star schema pattern with a centralized fact table and multiple dimensions to optimize analytical queries.

## Tables
### Fact Table
- fact_sales: stores transactional sales metrics at product-level granularity.

### Dimension Tables
- dim_customer
- dim_product
- dim_date

## Performance Considerations
- Surrogate keys used for joins
- Snowflake automatic clustering leveraged
- Optimized for aggregations and BI tools

## Modeling Decisions
- Clear grain definition
- Separation of concerns
- Scalable design for future dimensions

## Skills Demonstrated
- Dimensional modeling
- Snowflake SQL
- Analytics optimization
- Data warehouse design
