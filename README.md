# Snowflake Data Modeling – Beauty Retail

## Overview
This project demonstrates a real-world dimensional data model designed for analytical workloads using Snowflake.  
The model represents a **beauty retail company** operating across **physical stores and digital channels**, following industry best practices in **star schema design** to support scalable and high-performance analytics.

The focus of this project is **data modeling**, not ingestion or ETL, highlighting senior-level understanding of analytics-oriented data warehouse design.

---

## Business Context
**Company:** GlowBeauty Retail (fictional)  
**Industry:** Beauty & Cosmetics Retail  
**Sales Channels:**
- Physical retail stores
- E-commerce
- Mobile application

**Primary analytical goals:**
- Sales and revenue analysis
- Customer behavior and loyalty
- Brand and category performance
- Channel effectiveness
- Discount and pricing impact

---

## Grain Definition
The grain of the fact table is defined as:

> **One row per product sold, per transaction, per day, per sales channel**

This clear grain definition ensures consistency across all analytical queries and supports scalable BI use cases.

---

## Star Schema Architecture

The data model follows a classic **star schema**, with a centralized fact table surrounded by denormalized dimensions optimized for analytics.

### Fact Table
- **fact_sales**  
  Stores transactional sales metrics such as quantity, pricing, discounts, and total revenue.

### Dimension Tables
- **dim_customer** – Customer demographics and loyalty attributes  
- **dim_product** – Product details and categorization  
- **dim_brand** – Brand attributes (premium vs mass market)  
- **dim_store** – Physical store metadata  
- **dim_channel** – Sales channels (online, retail, mobile)  
- **dim_date** – Calendar attributes for time-based analysis

---

## Tables Description

### fact_sales
Stores measurable business events related to sales transactions.

Key metrics:
- Quantity sold
- Unit price
- Discount amount
- Total revenue

Foreign keys link the fact table to all relevant dimensions.

---

### dim_customer
Supports customer segmentation and loyalty analysis.

Attributes include:
- Demographics
- Location
- Loyalty tier
- Signup date

---

### dim_product
Represents sellable beauty products.

Attributes include:
- Category and subcategory
- Product size
- Pricing
- Associated brand

---

### dim_brand
Allows brand-level performance analysis.

Attributes include:
- Brand origin
- Premium classification

---

### dim_store
Represents physical retail locations.

Attributes include:
- Store type
- Geographic location
- Opening date

---

### dim_channel
Identifies the sales channel used in each transaction.

Examples:
- Online
- Retail Store
- Mobile App

---

### dim_date
Standard calendar dimension enabling efficient time-based analysis.

Attributes include:
- Year, quarter, month, day
- Weekend indicator

---

## Performance Considerations
- Use of **surrogate keys** for efficient joins
- Denormalized dimensions optimized for BI tools
- Snowflake automatic micro-partitioning leveraged
- Designed for aggregation-heavy analytical queries

---

## Example Analytical Queries
Typical use cases enabled by this model include:
- Revenue by category and channel
- Premium vs non-premium brand performance
- Customer loyalty impact on sales
- Store and regional sales trends
- Discount effectiveness analysis

---

## Modeling Decisions
- Clear separation between facts and dimensions
- Business-driven grain definition
- Scalable design allowing new dimensions without refactoring
- Optimized for consumption by BI and analytics tools such as Tableau, Power BI, or Looker

---

## Technology Stack
- Snowflake (Cloud Data Warehouse)
- SQL
- Mermaid (Data modeling visualization)
- Git & GitHub
- Visual Studio Code

---
