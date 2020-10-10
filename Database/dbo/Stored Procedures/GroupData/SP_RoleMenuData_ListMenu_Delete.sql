CREATE PROCEDURE [dbo].[SP_RoleMenuData_ListMenu_Delete]
	@IdRole bigint,
	@IdMenu bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from GroupData_MenuAkses where IdMenu = @IdMenu and IdRole=@IdRole)
begin
	declare @NamaMenu nvarchar(max)

	select @NamaMenu=NamaMenu  from DataMenu where idMenu=@IdMenu
	
	delete from GroupData_MenuAkses where IdMenu=@IdMenu and IdRole=@IdRole

	set @Title = 'Success'
	set @Message = 'Data '+ @NamaMenu +' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @IdMenu Id