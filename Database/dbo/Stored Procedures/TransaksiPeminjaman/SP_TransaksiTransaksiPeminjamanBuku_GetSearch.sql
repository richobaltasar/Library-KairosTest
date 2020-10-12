CREATE PROCEDURE SP_TransaksiTransaksiPeminjamanBuku_GetSearch
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max),
	@IdUser_Penyewa bigint,
	@Status bigint
AS
	declare @RoleGroup bigint
	declare @sStatus nvarchar(max)
	select @RoleGroup = RoleId from UserData where id = @IdUser_Penyewa

	if(@Status = 4)
	begin
		set @sStatus = ''
	end
	else
	begin
		set @sStatus = cast(@Status as nvarchar(max))
	end

	if(@RoleGroup =1)
	begin
		select
			a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
			c.NamaLengkap Nama_Penyewa
			from TransaksiPeminjamanBuku a
			left join DataBuku b on b.IdBook = a.IdBuku
			left join UserData c on c.id = a.IdUser_Penyewa
		where 
		a.Status like '%'+@sStatus+'%'
		and b.JudulBuku like '%'+@JudulBuku+'%'
		and b.Pengarang like '%'+@Pengarang+'%'
		and b.JenisBuku like '%'+@JenisBuku+'%'
	end
	else
	begin
		select
			a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
			c.NamaLengkap Nama_Penyewa
			from TransaksiPeminjamanBuku a
			left join DataBuku b on b.IdBook = a.IdBuku
			left join UserData c on c.id = a.IdUser_Penyewa
		where a.IdUser_Penyewa = @IdUser_Penyewa 
		and a.Status like '%'+@sStatus+'%'
	end