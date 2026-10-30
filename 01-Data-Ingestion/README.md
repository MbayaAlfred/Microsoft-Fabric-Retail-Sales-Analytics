# Data Ingestion — Microsoft Fabric

This folder documents the Bronze-layer ingestion process for the Wide World Importers (WWI) Retail Sales Analytics project.

**Technology:** Microsoft Fabric Data Pipelines, OneLake, and Lakehouse.

**Pipeline:** `pl_wwi_bronze_ingestion`

The pipeline ingests 14 source Parquet files into the Bronze landing area of the Fabric Lakehouse.

**Landing location:** `Files/wwi-raw-data/`

The ingested data is subsequently transformed into curated Silver Delta tables using PySpark.
