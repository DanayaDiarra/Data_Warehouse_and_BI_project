/*
====================================================================
SQL FULL DATA LOAD _ bronze_layer
This script uses BULK INSERT  to load the entire data(file) to the db
====================================================================
*/
TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM "C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_crm\cust_info.csv"
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n', 
	TABLOCK,
	CODEPAGE = '65001' 
);
GO

TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM "C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_crm\prd_info.csv"
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n', 
	TABLOCK,
	CODEPAGE = '65001' 
);
GO

TRUNCATE TABLE bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM "C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_crm\sales_details.csv"
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n', 
	TABLOCK,
	CODEPAGE = '65001' 
);
GO
  
/*
===========================================================================================
===========================================================================================
*/
