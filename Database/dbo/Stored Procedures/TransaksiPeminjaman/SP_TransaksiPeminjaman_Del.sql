CREATE PROCEDURE [dbo].[SP_TransaksiPeminjaman_Del]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from TransaksiPeminjamanBuku where Id = @Id)
begin
	declare @JudulBuku nvarchar(max)

	select @JudulBuku=JudulBuku from DataBuku where IdBook in (select IdBuku  from TransaksiPeminjamanBuku where Id=@Id)
	
	delete from TransaksiPeminjamanBuku where Id=@Id

	set @Title = 'Success'
	set @Message = 'Data '+ @JudulBuku + ' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id