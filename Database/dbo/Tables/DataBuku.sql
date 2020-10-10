CREATE TABLE [dbo].[DataBuku]
(
	[IdBook] BIGINT NOT NULL PRIMARY KEY identity(1,1),  
    [JudulBuku] NVARCHAR(MAX) NOT NULL, 
    [Pengarang] NVARCHAR(MAX) NOT NULL, 
    [JenisBuku] NVARCHAR(MAX) NOT NULL, 
    [HargaSewaPerHari] FLOAT NOT NULL, 
    [Img] NVARCHAR(MAX) NULL,
    [Status] BIGINT NULL
)
