CREATE PROCEDURE [dbo].[SP_FormPeminjaman_GetById]
	@Id bigint
AS
	select
	*
	from DataBuku
	where IdBook = @Id
