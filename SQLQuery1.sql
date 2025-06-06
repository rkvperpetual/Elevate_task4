CREATE TABLE SalesData (
    InvoiceNo VARCHAR(50),
    StockCode VARCHAR(50),
    Description NVARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice FLOAT,
    CustomerID INT NULL,
    Country NVARCHAR(100)
);

BULK INSERT SalesData
FROM 'C:\Users\Raj Kumar\Desktop\Projects\Elevate Projects\Task4\data.csv' 
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2, -- Skip the header
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = 'ACP', -- Handles Latin-1 encoding
    TABLOCK
);

select * from SalesData

select * from SalesData
where Quantity > 100
order by Quantity


SELECT Country, SUM(Quantity) AS TotalQuantity
FROM SalesData
WHERE UnitPrice > 1.0
GROUP BY Country
ORDER BY TotalQuantity DESC;

