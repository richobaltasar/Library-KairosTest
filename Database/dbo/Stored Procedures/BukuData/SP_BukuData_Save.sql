CREATE PROCEDURE [dbo].[SP_BukuData_Save]
	@IdBook bigint,
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max),
	@HargaSewaPerHari float,
	@Img nvarchar(max),
	@Status bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if(@IdBook =0)
begin
	if not exists(select*from DataBuku where JudulBuku = @JudulBuku and Pengarang = @Pengarang and JenisBuku=@JenisBuku)
	begin
		insert into DataBuku 
		(JudulBuku,Pengarang,JenisBuku,HargaSewaPerHari,Img,Status)
		values(@JudulBuku,@Pengarang,@JenisBuku,@HargaSewaPerHari,@Img,@Status)

		set @IdBook = (select IdBook from DataBuku where IdBook = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Penambahan Buku '+ @JudulBuku + ' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Buku '+ @JudulBuku + ' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @JudulBuku_s nvarchar(max)

	select @JudulBuku_s=JudulBuku from DataBuku where IdBook = @IdBook

	if(@JudulBuku_s = @JudulBuku)
	begin
		update DataBuku
		set 
			JudulBuku=@JudulBuku,
			Pengarang=@Pengarang,
			JenisBuku=@JenisBuku,
			HargaSewaPerHari=@HargaSewaPerHari,
			Img=@Img,
			Status=@Status
		where IdBook = @IdBook

		set @Title = 'Success'
		set @Message = 'Buku '+ @JudulBuku + ' berhasil diupdate'
		set @MStatus = 'success'
	end
	else
	begin
		if((select count(*) from DataBuku where JudulBuku= @JudulBuku and IdBook not in (@IdBook)) > 0)
		begin
			set @Title = 'Sorry'
			set @Message = 'Buku '+ @JudulBuku + ' already exists, silahkan input Judul lain'
			set @MStatus = 'error'
		end
		else
		begin
			update DataBuku
			set 
				JudulBuku=@JudulBuku,
				Pengarang=@Pengarang,
				JenisBuku=@JenisBuku,
				HargaSewaPerHari=@HargaSewaPerHari,
				Img=@Img,
				Status=@Status
			where IdBook = @IdBook
			
			set @Title = 'Success'
			set @Message = 'Buku '+ @JudulBuku + ' berhasil diupdate'
			set @MStatus = 'success'
		end
	end

end

select @Title Title, @Message Message, @MStatus Status, @IdBook Id