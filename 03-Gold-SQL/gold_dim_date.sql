CREATE VIEW dbo.gold_dim_date AS

SELECT
    [Date],
    DayNumber,
    [Day],
    [Month],
    ShortMonth,

    CalendarMonthNumber,
    CalendarMonthLabel,
    CalendarYear,
    CalendarYearLabel,

    (CalendarYear * 100 + CalendarMonthNumber)
        AS YearMonthKey,

    FiscalMonthNumber,
    FiscalMonthLabel,
    FiscalYear,
    FiscalYearLabel,

    ISOWeekNumber

FROM dbo.silver_dim_date;
