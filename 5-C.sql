-- 5
USE TSQLV5;
GO

DECLARE @Context varbinary(10) = CAST ('B' as varbinary);
SET CONTEXT_INFO @Context;
SET LOCK_TIMEOUT -1; 

BEGIN TRAN;
	UPDATE Sales.Customers
	SET companyname = 'NA'
	WHERE custid = 49

	UPDATE Sales.Orders
	SET custid = 1
	WHERE orderid = 10384
ROLLBACK;