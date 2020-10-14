CREATE PROCEDURE [dbo].[SP_SummaryHarian_GetSearch]
	@TglTrxFrom nvarchar(max),
	@TglTrxUntil nvarchar(max)
AS

select qq.* from 
(
	select b.NamaLengkap NamaPenyewa,a.KasirTerimaUang, 
	(select NamaLengkap from UserData where id in (a.IdKasir)) NamaKasir,
	a.CreateDate TanggalTransaksi,
	a.Qty TotalBuku,
	a.TotalSewa TotalSewa,
	a.UangKembalian UangKembalian
	from LogConfirmation a
	left join UserData b on b.id = a.IdPenyewa
) qq
where --q.TanggalTransaksi 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(qq.TanggalTransaksi ,10),'/','-'), 105), 23),'-','') between 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxFrom,10),'/','-'), 105), 23),'-','') 
	and replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxUntil,10),'/','-'), 105), 23),'-','') 