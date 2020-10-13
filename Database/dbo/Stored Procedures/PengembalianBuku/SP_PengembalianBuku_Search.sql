CREATE PROCEDURE [dbo].[SP_PengembalianBuku_Search]
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max),
	@Nama_Penyewa nvarchar(max)
AS
	select
		a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
		c.NamaLengkap Nama_Penyewa
		from TransaksiPeminjamanBuku a
		left join DataBuku b on b.IdBook = a.IdBuku
		left join UserData c on c.id = a.IdUser_Penyewa
	where 
	a.Status =2
	and b.JudulBuku like '%'+@JudulBuku+'%'
	and b.Pengarang like '%'+@Pengarang+'%'
	and b.JenisBuku like '%'+@JenisBuku+'%'
	and c.NamaLengkap like '%'+@Nama_Penyewa+'%'