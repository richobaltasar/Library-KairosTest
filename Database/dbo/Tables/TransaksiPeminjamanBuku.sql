CREATE TABLE [dbo].[TransaksiPeminjamanBuku]
(
	[Id] BIGINT NOT NULL PRIMARY KEY identity(1,1), 
    [IdBuku] BIGINT NULL, 
    [SewaDari] NVARCHAR(MAX) NULL, 
    [Sewasampai] NVARCHAR(MAX) NULL, 
    [TotalSewa] NCHAR(10) NULL, 
    [Status] BIGINT NULL, 
    [IdUser_Penyewa] BIGINT NULL
)
