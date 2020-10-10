CREATE PROCEDURE [dbo].[SP_CariBuku_GetSearch]
	@AllText nvarchar(max),
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max)
AS
	if(@JudulBuku ='' and @Pengarang ='' and @JenisBuku='')
	begin
		set @AllText = '%'+@AllText+'%'		
		EXEC sp_FindStringInTable_with_flag @AllText, 'dbo', 'DataBuku' 
	end