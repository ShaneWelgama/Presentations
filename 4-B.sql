-- 4
USE TSQLV5;
GO

BEGIN TRAN;

INSERT INTO OrderItems (OrderID, OrderYear, StockID, Quantity, Discount)
SELECT TOP (100) v.*
	FROM (VALUES (1,2019,1,1,0)) v(a,b,c,d,e)
CROSS JOIN sys.columns c1
CROSS JOIN sys.columns c2;

ROLLBACK;


