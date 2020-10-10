﻿CREATE PROCEDURE sp_FindStringInTable_with_flag
	@stringToFind NVARCHAR(max), 
	@schema sysname, @table sysname
AS
   BEGIN TRY
   DECLARE @sqlCommand varchar(max) = 'SELECT ' 

   SELECT @sqlCommand = @sqlCommand + 'case when [' + COLUMN_NAME + '] LIKE ''' + @stringToFind + ''' then 1 else 0 end as ' + COLUMN_NAME + '_found, ' 
   FROM INFORMATION_SCHEMA.COLUMNS 
   WHERE TABLE_SCHEMA = @schema
   AND TABLE_NAME = @table 
   AND DATA_TYPE IN ('char','nchar','ntext','nvarchar','text','varchar')

   SELECT @sqlCommand = @sqlCommand + ' * FROM [' + @schema + '].[' + @table + '] WHERE '
	   
   SELECT @sqlCommand = @sqlCommand + '[' + COLUMN_NAME + '] LIKE ''' + @stringToFind + ''' OR '
   FROM INFORMATION_SCHEMA.COLUMNS 
   WHERE TABLE_SCHEMA = @schema
   AND TABLE_NAME = @table 
   AND DATA_TYPE IN ('char','nchar','ntext','nvarchar','text','varchar')

   SET @sqlCommand = left(@sqlCommand,len(@sqlCommand)-3)
   EXEC (@sqlCommand)
   PRINT @sqlCommand
END TRY

BEGIN CATCH 
   PRINT 'There was an error. Check to make sure object exists.'
   PRINT error_message()
END CATCH 
