-- 4

SELECT 
	request_session_id,
	resource_type,
--	resource_subtype,
	request_mode,
	request_status,
	resource_associated_entity_id
FROM sys.dm_tran_locks
WHERE resource_database_id = db_id(N'TSQLV5')
AND request_session_id = 81

SELECT OBJECT_NAME(66099276, db_id(N'TSQLV5'))