CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_GetById]
	@Id bigint
AS
	select*from GroupData
	where IdRole = @Id
