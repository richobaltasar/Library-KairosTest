CREATE PROCEDURE [dbo].[SP_BukuData_Get_ById]
	@Id bigint
AS
	select*from DataBuku
	where IdBook = @Id
