CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_ListMenu_Get_NotInList]
	@id bigint
AS
	
	select*from DataMenu 
	where idMenu not in
	(
		select
		IdMenu
		from GroupData_MenuAkses
		where IdRole = @id
	)
	and Action != '0'
