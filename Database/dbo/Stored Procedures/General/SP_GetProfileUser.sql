CREATE PROCEDURE [dbo].[SP_GetProfileUser]
	@IdUser bigint
AS
	select
	*, b.NamaGroup RoleName
	from UserData a
	left join GroupData b on b.IdRole = a.RoleId
	where id =@IdUser
