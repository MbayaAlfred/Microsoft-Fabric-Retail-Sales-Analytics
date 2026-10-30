CREATE VIEW dbo.gold_fact_sales AS

SELECT
    -- Transaction identifier
    SaleKey,

    -- Dimension relationship keys
    CustomerKey,
    StockItemKey,
    InvoiceDateKey,
    DeliveryDateKey,
    CityKey,

    -- Sales quantities and prices
    Quantity AS QuantitySold,
    UnitPrice AS UnitSellingPrice,

    -- Financial measures
    TotalExcludingTax AS NetSalesAmount,
    TotalIncludingTax AS GrossSalesAmount,
    TaxAmount,
    Profit AS ProfitAmount,

    -- Derived business measure
    TotalExcludingTax - Profit AS CostAmount,

    -- Audit information
    _silver_processed_at

FROM dbo.silver_fact_sale;