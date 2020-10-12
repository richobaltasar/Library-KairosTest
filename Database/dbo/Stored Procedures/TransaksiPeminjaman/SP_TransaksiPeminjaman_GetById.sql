CREATE PROC [dbo].[SP_TransaksiPeminjaman_GetById]
	@Id bigint
AS
	select
	a.Id,a.IdBuku,b.JudulBuku,b.Pengarang,b.JenisBuku,b.HargaSewaPerHari,b.Img,
	a.SewaDari,a.Sewasampai,a.TotalSewa,a.Status,a.IdUser_Penyewa,c.NamaLengkap Nama_Penyewa
	from TransaksiPeminjamanBuku a
	left join DataBuku b on b.IdBook = a.IdBuku
	left join UserData c on c.id = a.IdUser_Penyewa
	where a.Id = @Id
