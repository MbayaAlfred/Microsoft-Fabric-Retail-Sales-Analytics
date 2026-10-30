# Gold Layer — SQL Analytics

## Overview

The Gold layer provides curated, business-ready SQL views for the Wide World Importers Retail Sales Analytics solution.

These views are created using the Microsoft Fabric Lakehouse SQL Analytics Endpoint and provide the reporting layer consumed by Power BI Desktop.

## Gold SQL Views

| View | Purpose |
|---|---|
| `dbo.gold_fact_sales` | Sales transactions, revenue, cost, and profit |
| `dbo.gold_dim_customer` | Customer attributes and segmentation |
| `dbo.gold_dim_stock_item` | Product attributes and classifications |
| `dbo.gold_dim_date` | Calendar and fiscal date attributes |

## Architecture

Bronze Parquet Files → Silver Delta Tables → Gold SQL Views → Power BI Import Model

## Data Quality and Validation

The Gold layer was validated against the Silver Delta tables to confirm:

- Sales fact record counts.
- Customer, product, and date key integrity.
- Financial totals for revenue, cost, and profit.
- Consistency between transformed Silver data and Gold reporting views.

## Power BI Integration

Power BI Desktop connects to the Fabric Lakehouse SQL Analytics Endpoint using Import mode.

A local star-schema semantic model provides full control over relationships, advanced DAX measures, time intelligence, and report development.

## SQL Scripts

The SQL definitions for the Gold reporting views will be included in this folder.
