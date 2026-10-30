# Power BI — WWI Retail Sales Analytics

## Overview

This folder contains the Power BI reporting layer for the Microsoft Fabric WWI Retail Sales Analytics project.

Power BI Desktop connects to curated Gold SQL views through the Microsoft Fabric Lakehouse SQL Analytics Endpoint using **Import mode**.

## Semantic Model

The report uses a star-schema model consisting of:

- `gold_fact_sales` — Sales fact table
- `gold_dim_customer` — Customer dimension
- `gold_dim_stock_item` — Product dimension
- `gold_dim_date` — Date dimension

Relationships use one-to-many cardinality with single-direction filtering from dimensions to the sales fact table.

## Advanced DAX

The solution includes measures for:

- Net Sales and Total Profit
- Profit Margin %
- Quantity Sold
- Active Customers
- Previous-month comparisons
- Month-over-month growth
- Dynamic KPI indicators and conditional colors

DAX measures are organized into display folders for maintainability.

## Power BI Report Pages

### 1. Executive Sales Overview

Five executive KPIs, monthly performance trends, customer geography, Top 5 customer locations, and Top 5 products by profit.

### 2. Customer & Product Analytics

Monthly revenue and profitability trends, quantity sold by buying group, and sales performance by packaging type.

### 3. Interactive Details

A drillable sales matrix with dynamic Field Parameters, allowing users to switch reporting dimensions.

## Interactive Features

- Year and Month slicers
- State and Buying Group filters
- Packaging type filters
- Dynamic Field Parameters
- Conditional formatting
- Cross-filtering and drill-down

## Business Value

The solution enables users to analyze retail sales performance, customer activity, profitability, geographic distribution, and product-level performance through a centralized analytical model.
