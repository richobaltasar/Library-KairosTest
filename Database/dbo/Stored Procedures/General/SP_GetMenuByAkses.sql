CREATE PROCEDURE [dbo].[SP_GetMenuByAkses]
	@IdUser bigint,	
	@IdModule bigint,
	@Posisi bigint
AS
if(@Posisi = 1)
begin
	select*from DataMenu x
	left join Role_MenuTree b on b.IdMenu = x.idMenu
	where x.idMenu in
	(
		select xx.IdMenu from Role_MenuTree xx
		where IdModule = @IdModule and Posisi = @Posisi
		and xx.IdMenu in (
			select distinct case when IdParent = 0 then b.IdMenu else IdParent end as Id
			from Role_MenuTree b
			where b.IdMenu in (select a.IdMenu from GroupData_MenuAkses a where IdRole in (select RoleId from UserData where id = @IdUser))
		)
	)
	and Status =1
	order by b.Urutan asc
end
else if(@Posisi >=2)
begin
	select x.* from DataMenu x
	left join Role_MenuTree b on b.IdMenu = x.idMenu
	where x.idMenu in
	(
		select xx.IdMenu from Role_MenuTree xx
		where Posisi = @Posisi and IdParent = @IdModule
		and xx.IdMenu in (
			select distinct case when IdParent > 0 then b.IdMenu else IdParent end as Id
			from Role_MenuTree b
			where b.IdMenu in (select a.IdMenu from GroupData_MenuAkses a where IdRole in (select RoleId from UserData where id = @IdUser))
		)
	)
	and Status =1
	order by b.Urutan asc
end

