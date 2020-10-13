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
		declare @CountItem bigint
		select @TotalCheckout=sum(TotalSewa) from TransaksiPeminjamanBuku where IdUser_Penyewa = @Id and Status = 0
		select @CountItem=count(Id) from TransaksiPeminjamanBuku where IdUser_Penyewa = @Id and Status = 0

		insert into LogConfirmation 
		(
			CreateDate,IdPenyewa,Qty,TotalSewa,StatusConfirm
		)
		values
		(
			FORMAT(GETDATE() , 'dd/MM/yyyy HH:mm:ss'),@Id,@CountItem,@TotalCheckout,0
		)
		declare @IdTRX bigint
		set @IdTRX = (select IdTrx from LogConfirmation where IdTrx = SCOPE_IDENTITY())

		update TransaksiPeminjamanBuku
		set Status = 1,IdTrx = @IdTRX
		where IdUser_Penyewa = @Id and Status = 0

		set @Title = 'Success'
		set @Message = 'Checkout Dengan No.ID : '+cast(@IdTRX as nvarchar(max))+' berhasil dilakukan <br/> Silahkan tunjukan ID checkout kepada kasir dan lakukan pembayaran sebesar : '
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