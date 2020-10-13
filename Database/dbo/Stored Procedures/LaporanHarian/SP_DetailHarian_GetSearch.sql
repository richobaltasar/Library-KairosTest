CREATE PROCEDURE [dbo].[SP_DetailHarian_GetSearch]
	@TglTrxFrom nvarchar(max),
	@TglTrxUntil nvarchar(max)
AS

select qq.* from 
(
	select 
	a.SewaDari,a.Sewasampai,c.NamaLengkap NamaPenyewa,
	b.JudulBuku,b.Pengarang,b.JenisBuku,b.HargaSewaPerHari, 
	d.CreateDate TanggalTransaksi,
	a.TotalSewa,d.KasirTerimaUang,d.UangKembalian,
	(select NamaLengkap from UserData where id in (d.IdKasir)) NamaKasir,
	e.TanggalPengembalian 
	from TransaksiPeminjamanBuku a
	left join DataBuku b on b.IdBook = a.IdBuku
	left join UserData c on c.id = a.IdUser_Penyewa
	left join LogConfirmation d on d.IdTrx = a.IdTrx
	left join LogPengembalianBuku e on e.IdPeminjaman = a.Id
	where a.Status = 3
) qq
where --q.TanggalTransaksi 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(qq.TanggalTransaksi ,10),'/','-'), 105), 23),'-','') between 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxFrom,10),'/','-'), 105), 23),'-','') 
	and replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxUntil,10),'/','-'), 105), 23),'-','') 