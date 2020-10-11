CREATE PROCEDURE [dbo].[SP_GetMenuByAkses]
	@IdUser bigint,	
	@IdModule bigint,
	@Posisi bigint
AS
if(@Posisi = 1)
begin
	select*from DataMenu
	where idMenu in
	(
		select idMenu from Role_MenuTree where IdModule = @IdModule and Posisi = @Posisi
		and IdMenu in (
			select distinct case when IdParent = 0 then b.IdMenu else IdParent end as IdMenu
			from Role_MenuTree b
			where b.IdMenu in (select a.IdMenu from GroupData_MenuAkses a where IdRole in (select RoleId from UserData where id = @IdUser))
		)
	)
	and Status =1
end
else if(@Posisi =2)
begin
	select*from DataMenu
	where idMenu in
	(
		select idMenu from Role_MenuTree where Posisi = @Posisi and IdParent = @IdModule
		and IdMenu in (
			select distinct case when IdParent > 0 then b.IdMenu else IdParent end as IdMenu
			from Role_MenuTree b
			where b.IdMenu in (select a.IdMenu from GroupData_MenuAkses a where IdRole in (select RoleId from UserData where id = @IdUser))
		)
	)
	and Status =1
end

