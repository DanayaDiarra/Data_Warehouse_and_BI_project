CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	/*
	====================================================================
	SQL FULL DATA LOAD _ bronze_layer
	This script uses BULK INSERT  to load the entire data(file) to the db.
	This script is saved as a 'PROCEDURE'in Folder 'Programmability'. 
	
	To automatically run it, use: "EXECUTE bronze.load_bronze"
	====================================================================
	*/
	PRINT '==============================================================';
	PRINT 'LOADING bronze layer';
	PRINT '==============================================================';
	
	PRINT'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++';
	PRINT '>>Loading CRM Tables';
	PRINT'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++';

	PRINT'---------------------------------------------------------------';
	PRINT'Truncated and Loaded data to table:crm_cust_info ';
	PRINT'---------------------------------------------------------------';

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
	PRINT'---------------------------------------------------------------';
	PRINT'Truncated and Loaded data to table:crm_prd_info ';
	PRINT'---------------------------------------------------------------';

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
	PRINT'---------------------------------------------------------------';
	PRINT'Truncated and Loaded data to table:crm_sales_details ';
	PRINT'---------------------------------------------------------------';

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

	PRINT'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++';
	PRINT '>>Loading ERP Tables';
	PRINT'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++';
	
	PRINT'---------------------------------------------------------------';
	PRINT'Truncated and Loaded data to table:erp_cust_az12 ';
	PRINT'---------------------------------------------------------------';

	TRUNCATE TABLE bronze.erp_cust_az12;
	BULK INSERT bronze.erp_cust_az12
	FROM "C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_erp\CUST_AZ12.csv"
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n', 
		TABLOCK,
		CODEPAGE = '65001' 
	);

	PRINT'---------------------------------------------------------------';
	PRINT'Truncated and Loaded data to table:erp_loc_a101 ';
	PRINT'---------------------------------------------------------------';

	TRUNCATE TABLE bronze.erp_loc_a101;
	BULK INSERT bronze.erp_loc_a101
	FROM "C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_erp\LOC_A101.csv"
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n', 
		TABLOCK,
		CODEPAGE = '65001' 
	);

	PRINT'---------------------------------------------------------------';
	PRINT'Truncated and Loaded data to table:erp_px_cat_g1v2 ';
	PRINT'---------------------------------------------------------------';

	TRUNCATE TABLE bronze.erp_px_cat_g1v2;
	BULK INSERT bronze.erp_px_cat_g1v2
	FROM "C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_erp\PX_CAT_G1V2.csv"
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n', 
		TABLOCK,
		CODEPAGE = '65001' 
	);
END

