CREATE PROCEDURE [dbo].[SP_PengembalianBuku_Submit]
	@Id bigint,
	@IdUser bigint
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)

	if exists (select*from TransaksiPeminjamanBuku where Id = @Id)
	begin
		declare @JudulBuku nvarchar(max)
		declare @IdBook bigint
		
		select @JudulBuku = JudulBuku,@IdBook=IdBook from DataBuku where IdBook in
		(select IdBuku from TransaksiPeminjamanBuku where Id = @Id)

		update TransaksiPeminjamanBuku 
		set Status = 3
		where Id = @Id

		insert into LogPengembalianBuku
		(IdPeminjaman,IdBook,TanggalPengembalian,UserID)
		values
		(@Id,@IdBook,FORMAT(GETDATE() , 'dd/MM/yyyy HH:mm:ss'),@IdUser)

		set @Title = 'Success'
		set @Message = 'Buku "'+ @JudulBuku+'" berhasil dikembalikan'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data tidak Valid'
		set @MStatus = 'error'
	end

	select @Title Title, @Message Message, @MStatus Status, @Id Id