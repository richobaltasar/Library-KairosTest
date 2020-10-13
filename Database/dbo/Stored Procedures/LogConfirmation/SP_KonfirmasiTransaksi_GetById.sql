CREATE PROCEDURE [dbo].[SP_KonfirmasiTransaksi_GetById]
	@Id bigint
AS
	select
	a.*,b.NamaLengkap NamaPenyewa,
	0 KasirTerimaUang, 0 UangKembalian
	from LogConfirmation a
	left join UserData b on b.id = a.IdPenyewa
	where 
	IdTrx = @Id
	

