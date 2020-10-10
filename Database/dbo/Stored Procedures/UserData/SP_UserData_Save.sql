CREATE PROCEDURE [dbo].[SP_UserData_Save]
	@id bigint,
	@username nvarchar(max),
	@password nvarchar(max),
	@RoleId bigint,
	@NamaLengkap nvarchar(max),
	@Photo nvarchar(max),
	@Status bigint
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)
	

if(@id=0)
begin
	-- Create
	if not exists(select*from UserData where (username = @username))
	begin
		insert into UserData
		(
			username,
			password,
			RoleId,
			NamaLengkap,
			Photo,
			Status
		)
		values 
		(
			@username,
			EncryptByPassPhrase('key',@password),
			@RoleId,
			@NamaLengkap,
			@Photo,
			@Status
		)

		set @Id = (select id from UserData where id = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Penambahan user '+ @username + ' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'user '+ @username + ' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	-- Modif
	declare @username_sebelum nvarchar(max)
	select @username_sebelum =  username from UserData where id = @id

	if(@username_sebelum = @username)
	begin
		update UserData
		set 
			username=@username,
			password=EncryptByPassPhrase('key',@password),
			NamaLengkap=@NamaLengkap,
			Photo = @Photo,
			RoleId = @RoleId,
			Status=@Status
		where id=@id

		set @Title = 'Success'
		set @Message = 'User '+ @username + ' berhasil diupdate'
		set @MStatus = 'success'
	end
	else
	begin
		--kalo ada perubahan username
		if not exists(select*from UserData where (username = @username) and id not in (@id))
		begin
			update UserData
			set 
				username=@username,
				password=EncryptByPassPhrase('key',@password),
				NamaLengkap=@NamaLengkap,
				Photo = @Photo,
				RoleId = @RoleId,
				Status=@Status
			where id=@id

			set @Title = 'Success'
			set @Message = 'User '+ @username + ' berhasil diupdate'
			set @MStatus = 'success'
		end
		else
		begin
			set @Title = 'Sorry'
			set @Message = 'User / Email already exists, silahkan cari nama lain'
			set @MStatus = 'error'
		end
	end	
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
