CREATE TABLE [dbo].[GroupData]
(
	[IdRole] BIGINT NOT NULL IDENTITY (1, 1) PRIMARY KEY, 
    [NamaGroup] NVARCHAR(MAX) NULL, 
    [Status] BIGINT NULL, 
    [Desc] NVARCHAR(MAX) NULL
)
