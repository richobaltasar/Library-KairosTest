CREATE PROCEDURE [dbo].[SP_UserData_GetById]
	@Id bigint
AS
	select
	a.id,a.username,
	convert(nvarchar(max),DecryptByPassPhrase('key', a.password )) password,
	a.RoleId,a.NamaLengkap,a.Photo,a.Status,b.NamaGroup RoleName
	from UserData a
	left join GroupData b on b.IdRole = a.RoleId
	where id = @Id