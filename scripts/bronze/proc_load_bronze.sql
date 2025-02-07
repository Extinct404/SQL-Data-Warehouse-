
/*
  ============================================================================
  Stored procedure : load bronze layer ( source -> bronze)
  ============================================================================
  Purpose :
      this stored procedure loads data into the 'bronze' schema from external csv files. 
      it does the following:
          - truncate the bronze tables before loading data
          - uses the 'bulk insert' command to load data from csv files to bronze tables


  parameters : 
      none
      this stored procedure does not accept any parameters or return any values

  usage examples : 
      exec bronze.load_bronze;
============================================================================

  */





create or alter procedure bronze.load_bronze as 






begin

	declare @start_time datetime, @end_time datetime;
	declare @start_time_BL datetime, @end_time_BL datetime;

	begin try
		print'=========================================';
		print 'Loading Bronze layer';
		print'=========================================';






		print'----------------------------------------------';
		print 'Loading CRM Tables';
		print'----------------------------------------------';

		set @start_time_BL = getdate();

		set @start_time = getdate();
		print '>> Truncating Table : bronze.crm_cust_info'
		truncate table bronze.crm_cust_info;
		print '>> Inserting Data Into : bronze.crm_cust_info'

		bulk insert bronze.crm_cust_info
		from 'C:\Users\David Castro\Desktop\data warehouse project - DC\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
			with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);

		set @end_time = getdate();
		print '>> Load Duration: '+  cast( Datediff(second,@start_time, @end_time) as nvarchar)+ ' seconds' ;
		print'--------------------';

		--prodcut info 

		set @start_time = getdate();
		print '>> Truncating Table : bronze.crm_prd_info'
		truncate table bronze.crm_prd_info;
		print '>> Inserting Data Into : bronze.crm_prd_info'

		bulk insert bronze.crm_prd_info
		from 'C:\Users\David Castro\Desktop\data warehouse project - DC\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
			with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);

		set @end_time = getdate();
		print '>> Load Duration: '+  cast( Datediff(second,@start_time, @end_time) as nvarchar)+ ' seconds' ;
		print'--------------------';


		-- sales details 

		set @start_time = getdate();
		print '>> Truncating Table : bronze.crm_sales_details'
		truncate table bronze.crm_sales_details;
		print '>> Inserting Data Into : bronze.crm_sales_details'


		bulk insert bronze.crm_sales_details
		from 'C:\Users\David Castro\Desktop\data warehouse project - DC\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
			with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);


		set @end_time = getdate();
		print '>> Load Duration: '+  cast( Datediff(second,@start_time, @end_time) as nvarchar)+ ' seconds' ;
		print'--------------------';

		print'----------------------------------------------';
		print 'Loading ERP Tables';
		print'----------------------------------------------';

		-- local a101

		set @start_time = getdate();
		print '>> Truncating Table : bronze.erp_loc_a101'
		truncate table bronze.erp_loc_a101;
		print '>> Inserting Data Into : bronze.erp_loc_a101'

		bulk insert bronze.erp_loc_a101
		from 'C:\Users\David Castro\Desktop\data warehouse project - DC\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
			with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);

		set @end_time = getdate();
		print '>> Load Duration: '+  cast( Datediff(second,@start_time, @end_time) as nvarchar)+ ' seconds' ;
		print'--------------------';



		-- customer az
		set @start_time = getdate();
		print '>> Truncating Table : bronze.erp_cust_az12'
		truncate table bronze.erp_cust_az12;
		print '>> Inserting Data Into : bronze.erp_cust_az12'


		bulk insert bronze.erp_cust_az12
		from 'C:\Users\David Castro\Desktop\data warehouse project - DC\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
			with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);

		set @end_time = getdate();
		print '>> Load Duration: '+  cast( Datediff(second,@start_time, @end_time) as nvarchar)+ ' seconds' ;
		print'--------------------';


		-- px cat 

		set @start_time = getdate();
		print '>> Truncating Table : bronze.erp_px_cat_g1v2'
		truncate table bronze.erp_px_cat_g1v2;
		print '>> Inserting Data Into : bronze.erp_px_cat_g1v2'

		bulk insert bronze.erp_px_cat_g1v2
		from 'C:\Users\David Castro\Desktop\data warehouse project - DC\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
			with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);

		set @end_time = getdate();
		print '>> Load Duration: '+  cast( Datediff(second,@start_time, @end_time) as nvarchar)+ ' seconds' ;
		print'--------------------';

		print'================================================='
		print 'Loading Bronze Layer is Completed '
		set @end_time_BL = getdate();
		print '>> Total Load Duration: '+  cast( Datediff(second,@start_time_BL, @end_time_BL) as nvarchar)+ ' seconds' ;
		print'================================================='


	end try
	begin catch

		print ' ================================================'
		print ' ERROR OCCURED DURING LOADING BRONZE LAYER'
		print ' ERROR Message' + error_message();
		print ' ERROR Message' + cast( error_number() as nvarchar);
		print ' ERROR Message' + cast( error_state() as nvarchar);
		print ' ================================================'

	end catch
end
