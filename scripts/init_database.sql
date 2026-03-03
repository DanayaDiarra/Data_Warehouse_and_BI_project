/*
======================================================================
Create DataBase and Schemas
======================================================================

SCRIPT PURPOSE:
	This script creates a new db named "DATAwarehouseBI" after checking if it already exists.
	If the db exists, it's dropped and recreated. Additionally, the script sets up three schemas within
	the database: "bronze", "silver", "golden".

WARNING:
	Running tis script will drop the entire 'DATAwarehouseBI' db if it exists.
	All data in the db will be permanently deleted. Proceed with caution and ensure you have 
	proper backups before running this script!
*/


USE master;
GO

--Drop and recreate the 'DATAwarehouseBI' db
IF EXISTS(SELECT 1 FROM sys.databases WHERE name= 'DATAwarehouseBI')
BEGIN
	ALTER DATABASE DATAwarehouseBI SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DATAwarehouseBI;
END;
GO

-- Create the 'DATAwarehouseBI' db
CREATE DATABASE DATAwarehouseBI;
GO

USE DATAwarehouseBI;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA golden;
GO
