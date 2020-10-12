CREATE PROCEDURE [dbo].[SP_CariBuku_AddCart]
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
	declare @Id bigint

	declare @JudulBuku nvarchar(max)
	set @JudulBuku = (select JudulBuku from DataBuku where IdBook = @IdBook)
	if(@TotalSewa != 0)
	begin
		if not exists((select*from TransaksiPeminjamanBuku where IdBuku = @IdBook and Status < 2 and IdUser_Penyewa = @IdUser_Penyewa))
	begin
		insert into TransaksiPeminjamanBuku
		(IdBuku,SewaDari,Sewasampai,TotalSewa,IdUser_Penyewa,Status)
		values
		(
			@IdBook,@SewaDari,@Sewasampai,@TotalSewa,@IdUser_Penyewa,0
		)

		set @Id = (select Id from TransaksiPeminjamanBuku where Id = SCOPE_IDENTITY())

		set @Title = 'Success'
		set @Message = 'Penambahan Buku '+ @JudulBuku + ' ke List Peminjaman berhasil ditambahkan'
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