CREATE PROCEDURE [dbo].[SP_UserData_GetSearch]
	@username nvarchar(max)
AS
	select
	a.id,a.username,
	convert(nvarchar(max),DecryptByPassPhrase('key', a.password )) password,
	a.RoleId,a.NamaLengkap,a.Photo,a.Status,b.NamaGroup RoleName
	from UserData a
	left join GroupData b on b.IdRole = a.RoleId
	where REPLACE(RTRIM(LTRIM(username)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@username)),' ','')+'%'