alter PROCEDURE [dbo].[SP_KonfirmasiTransaksi_GetSearch]
	@IdTrx nvarchar(max),
	@NamaPenyewa nvarchar(max)
AS
	if(@IdTrx = 0)
	begin
		set @IdTrx = ''
	end

	select
	a.*,b.NamaLengkap NamaPenyewa
	from LogConfirmation a
	left join UserData b on b.id = a.IdPenyewa
	where cast(IdTrx as nvarchar(max)) like '%'+@IdTrx+'%'
	and b.NamaLengkap like '%'+@NamaPenyewa+'%'
	and StatusConfirm = 0
