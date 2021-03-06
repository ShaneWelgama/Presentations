-- 7
USE TSQLV5;
GO

SET LOCK_TIMEOUT -1;
SET DEADLOCK_PRIORITY HIGH;
  -- NORMAL, HIGH, LOW, -10 to 10

BEGIN TRAN;
	UPDATE Sales.Orders
	SET custid = 1
	WHERE orderid = 10384

	WAITFOR DELAY '00:00:10';

	UPDATE Sales.Customers
	SET companyname = 'NA'
	WHERE custid = 49
ROLLBACK;