CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN
    --SET NOCOUNT ON;  -- Prevents 'rows affected' messages for cleaner output
    --SET XACT_ABORT ON; -- Auto-rollback on error
    
    BEGIN TRY
        /*
        ====================================================================
        SQL FULL DATA LOAD - BRONZE LAYER
        This procedure(in Folder 'Programmability') loads all source data files into bronze layer tables
        using BULK INSERT operations.
        
        Author: DIARRA Danaya
        Created: 03/03/2026
        Last Modified: ../../..
        
        Execution: EXEC bronze.load_bronze
        ====================================================================
        */
        
        -- ====================================================================
        -- START OF LOADING PROCESS
        -- ====================================================================
        PRINT '==============================================================';
        PRINT 'STARTING BRONZE LAYER LOAD PROCESS';
        PRINT '==============================================================';
        PRINT 'Start Time: ' + CONVERT(VARCHAR(30), GETDATE(), 120);
        PRINT '';
        
        -- ====================================================================
        -- CRM TABLES LOADING
        -- ====================================================================
        PRINT '+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +';
        PRINT 'Loading CRM Source Tables';
        PRINT '+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +';
        PRINT '';

        -- --------------------------------------------------------------------
        -- Table: bronze.crm_cust_info
        -- Source: source_crm\cust_info.csv
        -- --------------------------------------------------------------------
        PRINT '---------------------------------------------------------------';
        PRINT 'Table: crm_cust_info';
        PRINT '---------------------------------------------------------------';
        PRINT 'Truncating table...';
        
        TRUNCATE TABLE bronze.crm_cust_info;
        
        PRINT 'Loading data from CSV...';
        BULK INSERT bronze.crm_cust_info
        FROM 'C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_crm\cust_info.csv'
        WITH (
            FIRSTROW = 2,           -- Skip header row
            FIELDTERMINATOR = ',',   -- Comma delimited
            ROWTERMINATOR = '\n',    -- Row terminator
            TABLOCK,                 -- Table locking for performance
            CODEPAGE = '65001'       -- UTF-8 encoding
        );
        
        PRINT 'Table crm_cust_info loaded successfully';
        PRINT 'Rows loaded: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
        PRINT '';

        -- --------------------------------------------------------------------
        -- Table: bronze.crm_prd_info
        -- Source: source_crm\prd_info.csv
        -- --------------------------------------------------------------------
        PRINT '---------------------------------------------------------------';
        PRINT 'Table: crm_prd_info';
        PRINT '---------------------------------------------------------------';
        PRINT 'Truncating table...';
        
        TRUNCATE TABLE bronze.crm_prd_info;
        
        PRINT 'Loading data from CSV...';
        BULK INSERT bronze.crm_prd_info
        FROM 'C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_crm\prd_info.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK,
            CODEPAGE = '65001'
        );
        
        PRINT 'Table crm_prd_info loaded successfully';
        PRINT 'Rows loaded: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
        PRINT '';

        -- --------------------------------------------------------------------
        -- Table: bronze.crm_sales_details
        -- Source: source_crm\sales_details.csv
        -- --------------------------------------------------------------------
        PRINT '---------------------------------------------------------------';
        PRINT 'Table: crm_sales_details';
        PRINT '---------------------------------------------------------------';
        PRINT 'Truncating table...';
        
        TRUNCATE TABLE bronze.crm_sales_details;
        
        PRINT 'Loading data from CSV...';
        BULK INSERT bronze.crm_sales_details
        FROM 'C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_crm\sales_details.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK,
            CODEPAGE = '65001'
        );
        
        PRINT 'Table crm_sales_details loaded successfully';
        PRINT 'Rows loaded: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
        PRINT '';

        -- ====================================================================
        -- ERP TABLES LOADING
        -- ====================================================================
        PRINT '+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +';
        PRINT 'Loading ERP Source Tables';
        PRINT '+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +';
        PRINT '';

        -- --------------------------------------------------------------------
        -- Table: bronze.erp_cust_az12
        -- Source: source_erp\CUST_AZ12.csv
        -- --------------------------------------------------------------------
        PRINT '---------------------------------------------------------------';
        PRINT 'Table: erp_cust_az12';
        PRINT '---------------------------------------------------------------';
        PRINT 'Truncating table...';
        
        TRUNCATE TABLE bronze.erp_cust_az12;
        
        PRINT 'Loading data from CSV...';
        BULK INSERT bronze.erp_cust_az12
        FROM 'C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_erp\CUST_AZ12.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK,
            CODEPAGE = '65001'
        );
        
        PRINT 'Table erp_cust_az12 loaded successfully';
        PRINT 'Rows loaded: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
        PRINT '';

        -- --------------------------------------------------------------------
        -- Table: bronze.erp_loc_a101
        -- Source: source_erp\LOC_A101.csv
        -- --------------------------------------------------------------------
        PRINT '---------------------------------------------------------------';
        PRINT 'Table: erp_loc_a101';
        PRINT '---------------------------------------------------------------';
        PRINT 'Truncating table...';
        
        TRUNCATE TABLE bronze.erp_loc_a101;
        
        PRINT 'Loading data from CSV...';
        BULK INSERT bronze.erp_loc_a101
        FROM 'C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_erp\LOC_A101.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK,
            CODEPAGE = '65001'
        );
        
        PRINT 'Table erp_loc_a101 loaded successfully';
        PRINT 'Rows loaded: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
        PRINT '';

        -- --------------------------------------------------------------------
        -- Table: bronze.erp_px_cat_g1v2
        -- Source: source_erp\PX_CAT_G1V2.csv
        -- --------------------------------------------------------------------
        PRINT '---------------------------------------------------------------';
        PRINT 'Table: erp_px_cat_g1v2';
        PRINT '---------------------------------------------------------------';
        PRINT 'Truncating table...';
        
        TRUNCATE TABLE bronze.erp_px_cat_g1v2;
        
        PRINT 'Loading data from CSV...';
        BULK INSERT bronze.erp_px_cat_g1v2
        FROM 'C:\Applied Project 2026\Data_Warehouse_and_BI\datasets\source_erp\PX_CAT_G1V2.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK,
            CODEPAGE = '65001'
        );
        
        PRINT ' Table erp_px_cat_g1v2 loaded successfully';
        PRINT ' Rows loaded: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
        PRINT '';

        -- ====================================================================
        -- LOADING COMPLETED SUCCESSFULLY
        -- ====================================================================
        PRINT '==============================================================';
        PRINT ' BRONZE LAYER LOAD COMPLETED SUCCESSFULLY';
        PRINT '==============================================================';
        PRINT 'End Time: ' + CONVERT(VARCHAR(30), GETDATE(), 120);
        PRINT '';

    END TRY
    BEGIN CATCH
        -- ====================================================================
        -- ERROR HANDLING
        -- ====================================================================
        PRINT '==============================================================';
        PRINT ' ERROR OCCURRED DURING BRONZE LAYER LOAD';
        PRINT '==============================================================';
        PRINT 'Error Time: ' + CONVERT(VARCHAR(30), GETDATE(), 120);
        PRINT '';
        PRINT 'Error Details:';
        PRINT '---------------------------------------------------------------';
        PRINT 'Error Number   : ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
        PRINT 'Error Severity : ' + CAST(ERROR_SEVERITY() AS VARCHAR(10));
        PRINT 'Error State    : ' + CAST(ERROR_STATE() AS VARCHAR(10));
        PRINT 'Error Line     : ' + CAST(ERROR_LINE() AS VARCHAR(10));
        PRINT 'Error Procedure: ' + ISNULL(ERROR_PROCEDURE(), 'N/A');
        PRINT '';
        PRINT 'Error Message:';
        PRINT '---------------------------------------------------------------';
        PRINT ERROR_MESSAGE();
        PRINT '==============================================================';
        
        -- Re-throw the error for application handling
        THROW;
    END CATCH
END;
GO
