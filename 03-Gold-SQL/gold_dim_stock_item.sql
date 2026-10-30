CREATE VIEW dbo.gold_dim_stock_item AS

SELECT
    StockItemKey,
    WWIStockItemID,

    COALESCE(
        NULLIF(TRIM(StockItem), ''),
        'Unknown Product'
    ) AS ProductName,

    COALESCE(
        NULLIF(TRIM(Brand), ''),
        'Unbranded'
    ) AS Brand,

    COALESCE(
        NULLIF(TRIM(Color), ''),
        'Not Specified'
    ) AS Color,

    COALESCE(
        NULLIF(TRIM(Size), ''),
        'Not Specified'
    ) AS Size,

    SellingPackage,
    BuyingPackage,

    UnitPrice AS ListUnitPrice,
    RecommendedRetailPrice,

    IsChillerStock

FROM dbo.silver_dim_stock_item;
