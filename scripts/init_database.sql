--Create DataBase 'DataWarehouse'

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
