# Data Engineering — Microsoft Fabric

## Overview

This folder contains the data engineering components of the Wide World Importers (WWI) Retail Sales Analytics solution, implemented using Microsoft Fabric, Apache Spark, PySpark, and Delta Lake.

## Silver Layer — Data Transformation

The Silver layer transforms raw Bronze data into structured, cleansed, and validated Delta tables.

**Technologies**
- Microsoft Fabric Lakehouse
- Apache Spark / PySpark
- Delta Lake
- OneLake

## Silver Delta Tables

| Table | Description |
|---|---|
| `silver_dim_customer` | Customer dimension |
| `silver_dim_city` | City reference dimension |
| `silver_dim_stock_item` | Product dimension |
| `silver_dim_date` | Calendar date dimension |
| `silver_fact_sale` | Sales fact table |

## Data Processing

The transformation process includes:

1. Reading source data from the Bronze Lakehouse landing area.
2. Selecting and standardizing relevant columns.
3. Applying data cleansing and transformations.
4. Creating curated Silver Delta tables.
5. Validating data quality and record counts.

## Data Volumes

| Dataset | Records |
|---|---:|
| Customer | 403 |
| City | 116,295 |
| Stock Item | 672 |
| Date | 1,461 |
| Sales | 228,265 |

## Next Stage

The Silver tables support the Gold SQL reporting views, which are subsequently consumed by Power BI for dimensional modeling and interactive analytics.

The exported Fabric notebooks will be included in the `notebooks/` subfolder.
