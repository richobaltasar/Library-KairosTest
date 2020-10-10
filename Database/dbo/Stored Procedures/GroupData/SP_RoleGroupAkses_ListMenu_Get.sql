CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_ListMenu_Get]
	@id bigint
AS
select q.*from 
(
	select
	b.*
	from GroupData_MenuAkses a
	left join DataMenu b on b.idMenu = a.IdMenu
	where IdRole = @id
) q


