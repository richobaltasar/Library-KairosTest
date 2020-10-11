CREATE PROCEDURE [dbo].[SP_GetDateTime]
AS
	SELECT FORMAT(GETDATE() , 'dd/MM/yyyy HH:mm:ss') as tanggal  
