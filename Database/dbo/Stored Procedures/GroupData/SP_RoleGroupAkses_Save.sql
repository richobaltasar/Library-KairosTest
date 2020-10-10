CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_Save]
	@IdRole bigint,
	@NamaGroup nvarchar(max),
	@Status bigint,
	@Desc nvarchar(max)
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if(@IdRole = 0)
begin
	if not exists(select*from GroupData where NamaGroup=@NamaGroup)
	begin
		insert into GroupData 
		(
			NamaGroup,[Status],[Desc]
		)
		values
		(
			@NamaGroup,@Status,@Desc
		)
		
		set @IdRole = (select IdRole from GroupData where IdRole = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Data '+ @NamaGroup + ' berhasil dibuat'
		set @MStatus = 'success'

	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data '+ @NamaGroup+' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @NamaGroup_sebelum nvarchar(max)
	select @NamaGroup_sebelum=NamaGroup from GroupData where IdRole = @IdRole

	if(@NamaGroup = @NamaGroup_sebelum)
	begin
		update GroupData
		set 
			Status = @Status,
			[Desc] = @Desc
		where 
		IdRole = @IdRole

		set @Title = 'Success'
		set @Message = 'Data '+ @NamaGroup + ' berhasil diupdate'
		set @MStatus = 'success'
	end
	else
	begin
		if not exists(select*from GroupData where NamaGroup = @NamaGroup and IdRole not in (@IdRole))
		begin
			update GroupData
			set 
				Status = @Status,
				[Desc] = @Desc
			where 
			IdRole = @IdRole	

			set @Title = 'Success'
			set @Message = 'Data '+ @NamaGroup + ' berhasil diupdate'
			set @MStatus = 'success'
		end
		else
		begin
			set @Title = 'Sorry'
			set @Message = 'Data '+ @NamaGroup+' already exists'
			set @MStatus = 'error'
		end
	end
end

select @Title Title, @Message Message, @MStatus Status, @IdRole Id