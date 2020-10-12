CREATE PROCEDURE [dbo].[SP_TransaksiPeminjaman_Checkout]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)
declare @Total bigint
 set @Total = 0

if exists(select*from UserData where id = @Id)
begin
	if exists(select*from TransaksiPeminjamanBuku where IdUser_Penyewa = @Id and Status = 0)
	begin
		declare @TotalCheckout float
		select @TotalCheckout=sum(TotalSewa) from TransaksiPeminjamanBuku where IdUser_Penyewa = @Id and Status = 0

		update TransaksiPeminjamanBuku
		set Status = 1
		where IdUser_Penyewa = @Id and Status = 0

		set @Title = 'Success'
		set @Message = 'Checkout berhasil silahkan melakukan pembayaran sebesar : '
		set @MStatus = 'success'
		set @Total = cast(@TotalCheckout as bigint)
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'data not exists'
		set @MStatus = 'error'
	end
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end
select @Title Title, @Message Message, @MStatus Status, @Total Id