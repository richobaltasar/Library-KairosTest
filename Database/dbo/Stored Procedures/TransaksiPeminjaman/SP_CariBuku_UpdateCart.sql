CREATE PROCEDURE [dbo].[SP_CariBuku_UpdateCart]
	@Id bigint,
	@IdBook bigint,
	@IdUser_Penyewa bigint,
	@HargaSewaPerHari float,
	@SewaDari nvarchar(20),
	@Sewasampai nvarchar(20),
	@TotalSewa float
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)

	declare @JudulBuku nvarchar(max)
	declare @JudulBuku_Sebelum nvarchar(max)
	set @JudulBuku = (select JudulBuku from DataBuku where IdBook = @IdBook)

	set @JudulBuku_Sebelum = (select JudulBuku from DataBuku where IdBook in (select IdBuku  from TransaksiPeminjamanBuku where Id = @Id))

	if(@TotalSewa != 0)
	begin
		if not exists((select*from TransaksiPeminjamanBuku where IdBuku = @IdBook and Status > 0 and IdUser_Penyewa = @IdUser_Penyewa and Id not in (@Id)))
		begin
			update TransaksiPeminjamanBuku
			set IdBuku = @IdBook,
			SewaDari = @SewaDari,
			Sewasampai = @Sewasampai,
			TotalSewa = @TotalSewa,
			IdUser_Penyewa = @IdUser_Penyewa
			where 
			Id = @Id

			set @Title = 'Success'
			set @Message = 'Perubahan dari Buku "'+ @JudulBuku_Sebelum + '" ke "'+@JudulBuku+'" berhasil dilakukan'
			set @MStatus = 'success'
		end
		else
		begin
			set @Title = 'Sorry'
			set @Message = 'Buku '+ @JudulBuku + ' sudah dalam list peminjaman'
			set @MStatus = 'error'
		end
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Silahkan pilih tanggal peminjaman minimal 1 hari peminjaman'
		set @MStatus = 'error'
	end
	select @Title Title, @Message Message, @MStatus Status, @Id Id