CREATE PROCEDURE SP_GetListDataMaster
	@Data nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	if exists(select*from dbo.Master_ListItem where ListName = @Data)
	begin
		select*from dbo.Master_ListItem where ListName = @Data
		order by Urutan asc
	end
	else
	begin
		if(@Data ='ListMasterModule')
		begin
            select*from 
			(
				select '' Text, 0 Value
				union all
				select NamaModule Text, IdModul Value from DataModule where Status = 1
			) q
			order by q.Text
		end
		
        else if(@Data = 'ListPlatform')
		begin
			
			select*from 
			(
				select '' Text, '' Value
				union all
                select distinct Platform Text, Platform Value from DataMenu
			) q
			where Text is not null
			order by q.Text
		end
        else if(@Data ='ListMasterModuleFilter')
		begin
            select*from 
			(
				select '' Text, '' Value
				union all
				select NamaModule Text, NamaModule Value from DataModule where Status = 1
			) q
			order by q.Text
		end
        else if(@Data ='ListMainMenu')
		begin
            select*from 
			(
				select '' Text, '' Value
				union all
				select NamaMenu Text, NamaMenu Value from DataMenu where idMenu IN
				(
					select IdMenu from Role_MenuTree where IdRole in
					(select IdParent from Role_MenuTree where IdParent != 0)
				)
			) q
			order by q.Text
		end
		
		else if(@Data ='ListModule')
		begin
            select*from 
			(
				select '' Text, 0 Value
				union all

				select
				NamaModule Text,IdModul Value
				from DataModule

			) q
			order by q.Text
		end
		else if(@Data ='ListMenu')
		begin
            select*from 
			(
				select '' Text, 0 Value
				union all

				select
				NamaMenu Text,idMenu Value
				from DataMenu

			) q
			order by q.Text
		end
		else if(@Data ='RoleAkses')
		begin
            select*from 
			(
				select '' Text, 0 Value
				union all
				select
				NamaGroup Text,IdRole Value
				from GroupData

			) q
			order by q.Text
		end
		
	end
END