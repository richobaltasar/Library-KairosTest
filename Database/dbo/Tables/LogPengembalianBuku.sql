CREATE TABLE [dbo].[LogPengembalianBuku]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1,1), 
    [IdPeminjaman] BIGINT NULL, 
    [IdBook] BIGINT NULL, 
    [TanggalPengembalian] NVARCHAR(MAX) NULL, 
    [UserID] BIGINT NULL
)
