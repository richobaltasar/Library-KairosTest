CREATE TABLE [dbo].[LogConfirmation]
(
	[IdTrx] BIGINT NOT NULL PRIMARY KEY Identity(1,1), 
    [CreateDate] NVARCHAR(20) NULL, 
    [IdPenyewa] BIGINT NULL, 
    [Qty] FLOAT NULL, 
    [TotalSewa] FLOAT NULL
)
