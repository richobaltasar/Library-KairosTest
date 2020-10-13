CREATE TABLE [dbo].[LogConfirmation]
(
	[IdTrx] BIGINT NOT NULL PRIMARY KEY Identity(1,1), 
    [CreateDate] NVARCHAR(20) NULL, 
    [IdPenyewa] BIGINT NULL, 
    [Qty] FLOAT NULL, 
    [TotalSewa] FLOAT NULL, 
    [StatusConfirm] BIGINT NULL, 
    [KasirTerimaUang] FLOAT NULL, 
    [UangKembalian] FLOAT NULL, 
    [IdKasir] BIGINT NULL
)
