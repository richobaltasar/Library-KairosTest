CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_ListMeny_Add]
	@IdRole bigint,
	@IdMenu bigint
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)

	declare @NamaMenu nvarchar(max)
	select @NamaMenu=NamaMenu from DataMenu where idMenu = @IdMenu

	if not exists(select*from GroupData_MenuAkses where IdRole = @IdRole and IdMenu = @IdMenu)
	begin
		insert into GroupData_MenuAkses
		(IdRole,IdMenu)
		values
		(
			@IdRole,@IdMenu
		)
		set @Title = 'Success'
		set @Message = 'Data '+ @NamaMenu + ' berhasil dibuat'
		set @MStatus = 'success'
	end