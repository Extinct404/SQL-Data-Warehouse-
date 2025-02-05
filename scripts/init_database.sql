/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' , the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
*/

USE master;
Create DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schemas ' the three medallions ' 
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
