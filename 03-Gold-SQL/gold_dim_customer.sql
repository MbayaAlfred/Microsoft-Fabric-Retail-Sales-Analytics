CREATE VIEW dbo.gold_dim_customer AS

SELECT
    CustomerKey,
    WWICustomerID,

    COALESCE(
        NULLIF(TRIM(Customer), ''),
        'Unknown Customer'
    ) AS CustomerName,

    COALESCE(
        NULLIF(TRIM(Category), ''),
        'Unknown'
    ) AS CustomerCategory,

    COALESCE(
        NULLIF(TRIM(BuyingGroup), ''),
        'Unknown'
    ) AS BuyingGroup,

    COALESCE(
        NULLIF(TRIM(BillToCustomer), ''),
        'Unknown'
    ) AS BillToCustomer,

    PostalCode,

    CASE
        WHEN Category IS NULL
             OR TRIM(Category) = ''
        THEN 'Unclassified'
        ELSE TRIM(Category)
    END AS CustomerSegment

FROM dbo.silver_dim_customer;