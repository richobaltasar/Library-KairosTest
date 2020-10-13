
--exec SP_KonfirmasiTransaksi_Bayar @IdTrx=5,@CreateDate='13/10/2020 01:19:25',
--@IdPenyewa=1,@NamaPenyewa='Riko Ade Rinanda',@Qty=3,@TotalSewa='220,000',
--@StatusConfirm=0,@KasirTerimaUang='300,000',@UangKembalian='80,000',@IdKasir=1
CREATE PROCEDURE [dbo].[SP_KonfirmasiTransaksi_Bayar]
	@IdTrx bigint,
	@CreateDate nvarchar(max),
	@IdPenyewa bigint,
	@NamaPenyewa nvarchar(max),
	@Qty float,
	@TotalSewa float,
	@StatusConfirm int,
	@KasirTerimaUang float,
	@UangKembalian float,
	@IdKasir bigint
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)
	
	if exists(select*from LogConfirmation where IdTrx = @IdTrx and StatusConfirm = 0)
	begin
		if(@KasirTerimaUang >= @TotalSewa)
		begin
			update LogConfirmation
			set
				StatusConfirm = 1,
				KasirTerimaUang = @KasirTerimaUang,
				UangKembalian = @UangKembalian,
				IdKasir = @IdKasir
			where IdTrx = @IdTrx

			update TransaksiPeminjamanBuku 
			set Status = 2
			where IdTrx = @IdTrx

			set @Title = 'Success'
			set @Message = 'No.ID Transaksi '+cast(@IdTrx as nvarchar(max))+' dengan Nama Penyewa  "'+ @NamaPenyewa+' berhasil melakukan pembayaran'
			set @MStatus = 'success'
		end
		else
		begin
			set @Title = 'Gagal'
			set @Message = 'Uang yang dibayarkan belum cukup'
			set @MStatus = 'error'
		end

	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data not exists'
		set @MStatus = 'error'
	end

	select @Title Title, @Message Message, @MStatus Status, @IdTrx Id