CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_GetSearch]
	@NamaGroup nvarchar(max)
AS
	select*from GroupData
	where 
	REPLACE(RTRIM(LTRIM(NamaGroup)),' ','') like '%'+ REPLACE(RTRIM(LTRIM(@NamaGroup)),' ','')+'%'
