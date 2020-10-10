CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_Del]
		@Id bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from GroupData where IdRole = @Id)
begin
	declare @NamaGroup nvarchar(max)

	select @NamaGroup=NamaGroup  from GroupData where IdRole=@Id
	
	delete from GroupData where IdRole=@Id

	set @Title = 'Success'
	set @Message = 'Data '+ @NamaGroup +' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id