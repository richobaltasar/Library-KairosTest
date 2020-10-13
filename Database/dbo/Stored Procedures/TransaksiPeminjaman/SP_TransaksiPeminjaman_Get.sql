CREATE PROCEDURE [dbo].[SP_TransaksiPeminjaman_Get]
AS
	select
		a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
		c.NamaLengkap Nama_Penyewa
		from TransaksiPeminjamanBuku a
		left join DataBuku b on b.IdBook = a.IdBuku
		left join UserData c on c.id = a.IdUser_Penyewa