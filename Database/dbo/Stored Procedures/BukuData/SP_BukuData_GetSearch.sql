CREATE PROCEDURE [dbo].[SP_BukuData_GetSearch]
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max)
AS
	select*from DataBuku
	where 
	REPLACE(RTRIM(LTRIM(JudulBuku)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@JudulBuku)),' ','')+'%'
	and REPLACE(RTRIM(LTRIM(Pengarang)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@Pengarang)),' ','')+'%'
	and REPLACE(RTRIM(LTRIM(JenisBuku)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@JenisBuku)),' ','')+'%'
