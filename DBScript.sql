USE [TestKairos]
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_UserData_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_UserData_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_UserData_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_UserData_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_UserData_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiTransaksiPeminjamanBuku_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_TransaksiTransaksiPeminjamanBuku_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_TransaksiPeminjaman_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_TransaksiPeminjaman_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_TransaksiPeminjaman_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_Checkout]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_TransaksiPeminjaman_Checkout]
GO
/****** Object:  StoredProcedure [dbo].[SP_SummaryHarian_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_SummaryHarian_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleMenuData_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_ListMenu_Delete]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleMenuData_ListMenu_Delete]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleMenuData_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleMenuData_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleMenuData_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleMenuData_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_ListMeny_Add]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_ListMeny_Add]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_ListMenu_Get_NotInList]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_ListMenu_Get_NotInList]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_ListMenu_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_ListMenu_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_RoleGroupAkses_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_PengembalianBuku_Submit]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_PengembalianBuku_Submit]
GO
/****** Object:  StoredProcedure [dbo].[SP_PengembalianBuku_Search]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_PengembalianBuku_Search]
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ModuleData_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ModuleData_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Get_ById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ModuleData_Get_ById]
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ModuleData_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ModuleData_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_MenuData_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_MenuData_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_GetParent]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_MenuData_GetParent]
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_GetMenuByIdModule]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_MenuData_GetMenuByIdModule]
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Get_ById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_MenuData_Get_ById]
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_MenuData_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_MenuData_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginProc_GetID]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_LoginProc_GetID]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginProc]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_LoginProc]
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ListItemData_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ListItemData_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ListItemData_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ListItemData_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_ListItemData_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_KonfirmasiTransaksi_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_KonfirmasiTransaksi_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_DetailGet]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_KonfirmasiTransaksi_DetailGet]
GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_Bayar]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_KonfirmasiTransaksi_Bayar]
GO
/****** Object:  StoredProcedure [dbo].[SP_GroupData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GroupData_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserDataMaster]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GetUserDataMaster]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProfileUser]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GetProfileUser]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetModulByAkses]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GetModulByAkses]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMenuByAkses]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GetMenuByAkses]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetListDataMaster]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GetListDataMaster]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetDiffDays]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GetDiffDays]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetDateTime]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_GetDateTime]
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Module]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_Get_Module]
GO
/****** Object:  StoredProcedure [dbo].[SP_FormPeminjaman_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_FormPeminjaman_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_FormData_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_FormData_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_FormData_GetById]
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_FormData_Get]
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_FormData_Del]
GO
/****** Object:  StoredProcedure [dbo].[SP_DetailHarian_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_DetailHarian_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_CariBuku_UpdateCart]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_CariBuku_UpdateCart]
GO
/****** Object:  StoredProcedure [dbo].[SP_CariBuku_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_CariBuku_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_CariBuku_AddCart]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_CariBuku_AddCart]
GO
/****** Object:  StoredProcedure [dbo].[SP_BukuData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_BukuData_Save]
GO
/****** Object:  StoredProcedure [dbo].[SP_BukuData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_BukuData_GetSearch]
GO
/****** Object:  StoredProcedure [dbo].[SP_BukuData_Get_ById]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP PROCEDURE [dbo].[SP_BukuData_Get_ById]
GO
ALTER TABLE [dbo].[Role_MenuTree] DROP CONSTRAINT [DF_Role_MenuTree_Urutan]
GO
ALTER TABLE [dbo].[Role_MenuTree] DROP CONSTRAINT [DF_Role_MenuTree_IdParent]
GO
ALTER TABLE [dbo].[Master_Form] DROP CONSTRAINT [DF_Master_Form_FilterBy]
GO
ALTER TABLE [dbo].[Master_Form] DROP CONSTRAINT [DF__Master_Fo__Uruta__2C3393D0]
GO
ALTER TABLE [dbo].[DataMenu] DROP CONSTRAINT [DF_DataMenu_Status]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[UserData]
GO
/****** Object:  Table [dbo].[TransaksiPeminjamanBuku]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[TransaksiPeminjamanBuku]
GO
/****** Object:  Table [dbo].[Role_MenuTree]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[Role_MenuTree]
GO
/****** Object:  Table [dbo].[Master_ListItem]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[Master_ListItem]
GO
/****** Object:  Table [dbo].[Master_Form]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[Master_Form]
GO
/****** Object:  Table [dbo].[LogPengembalianBuku]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[LogPengembalianBuku]
GO
/****** Object:  Table [dbo].[LogErrorMessage]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[LogErrorMessage]
GO
/****** Object:  Table [dbo].[LogConfirmation]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[LogConfirmation]
GO
/****** Object:  Table [dbo].[LogActivityUser]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[LogActivityUser]
GO
/****** Object:  Table [dbo].[GroupData_MenuAkses]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[GroupData_MenuAkses]
GO
/****** Object:  Table [dbo].[GroupData]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[GroupData]
GO
/****** Object:  Table [dbo].[DataModule]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[DataModule]
GO
/****** Object:  Table [dbo].[DataMenu]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[DataMenu]
GO
/****** Object:  Table [dbo].[DataBuku]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP TABLE [dbo].[DataBuku]
GO
/****** Object:  UserDefinedFunction [dbo].[TRIM]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP FUNCTION [dbo].[TRIM]
GO
/****** Object:  UserDefinedFunction [dbo].[Roman]    Script Date: 10/20/2020 11:13:38 AM ******/
DROP FUNCTION [dbo].[Roman]
GO
/****** Object:  UserDefinedFunction [dbo].[Roman]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Roman] (
  @arabic int
) returns varchar(30) as begin
  if @arabic > 10000 return '*'
  declare @roman varchar(30)
  set @roman = replicate('M',@arabic/1000)
  set @arabic = @arabic%1000
  set @roman = @roman + replicate('C',@arabic/100)
  set @arabic = @arabic%100
  set @roman = @roman + replicate('X',@arabic/10)
  set @arabic = @arabic%10
  set @roman = @roman + replicate('I',@arabic)

  set @roman = replace(@roman,replicate('C',9),'CM')
  set @roman = replace(@roman,replicate('X',9),'XC')
  set @roman = replace(@roman,replicate('I',9),'IX')

  set @roman = replace(@roman,replicate('C',5),'D')
  set @roman = replace(@roman,replicate('X',5),'L')
  set @roman = replace(@roman,replicate('I',5),'V')

  set @roman = replace(@roman,replicate('C',4),'CD')
  set @roman = replace(@roman,replicate('X',4),'XL')
  set @roman = replace(@roman,replicate('I',4),'IV')

  return @roman
end
GO
/****** Object:  UserDefinedFunction [dbo].[TRIM]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TRIM](@String VARCHAR(MAX))
RETURNS VARCHAR(MAX)
BEGIN
    RETURN LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@String,CHAR(10),'[]'),CHAR(13),'[]'),char(9),'[]'),CHAR(32),'[]'),'][',''),'[]',CHAR(32))));
END
GO
/****** Object:  Table [dbo].[DataBuku]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataBuku](
	[IdBook] [bigint] IDENTITY(1,1) NOT NULL,
	[JudulBuku] [nvarchar](max) NOT NULL,
	[Pengarang] [nvarchar](max) NOT NULL,
	[JenisBuku] [nvarchar](max) NOT NULL,
	[HargaSewaPerHari] [float] NOT NULL,
	[Img] [nvarchar](max) NULL,
	[Status] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataMenu]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataMenu](
	[idMenu] [bigint] IDENTITY(1,1) NOT NULL,
	[NamaMenu] [nvarchar](max) NULL,
	[Action] [nvarchar](max) NULL,
	[Controller] [nvarchar](max) NULL,
	[Platform] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Status] [bigint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataModule]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataModule](
	[IdModul] [bigint] IDENTITY(1,1) NOT NULL,
	[NamaModule] [nvarchar](max) NULL,
	[Action] [nvarchar](max) NULL,
	[Controller] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupData]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupData](
	[IdRole] [bigint] IDENTITY(1,1) NOT NULL,
	[NamaGroup] [nvarchar](max) NULL,
	[Status] [bigint] NULL,
	[Desc] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupData_MenuAkses]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupData_MenuAkses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [bigint] NULL,
	[IdMenu] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogActivityUser]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogActivityUser](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NamaTable] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[IdRow] [bigint] NULL,
	[Action] [nvarchar](max) NULL,
	[UserBy] [nvarchar](max) NULL,
	[Datetime] [nvarchar](max) NULL,
 CONSTRAINT [PK_LogActivityUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogConfirmation]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogConfirmation](
	[IdTrx] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateDate] [nvarchar](20) NULL,
	[IdPenyewa] [bigint] NULL,
	[Qty] [float] NULL,
	[TotalSewa] [float] NULL,
	[StatusConfirm] [bigint] NULL,
	[KasirTerimaUang] [float] NULL,
	[UangKembalian] [float] NULL,
	[IdKasir] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTrx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogErrorMessage]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogErrorMessage](
	[logId] [bigint] IDENTITY(1,1) NOT NULL,
	[MessageError] [nvarchar](max) NULL,
	[FunctionName] [nvarchar](max) NULL,
	[Parameter] [nvarchar](max) NULL,
	[Datetime] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogPengembalianBuku]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogPengembalianBuku](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPeminjaman] [bigint] NULL,
	[IdBook] [bigint] NULL,
	[TanggalPengembalian] [nvarchar](max) NULL,
	[UserID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Form]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Form](
	[idLog] [bigint] IDENTITY(1,1) NOT NULL,
	[NamaForm] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Id] [nvarchar](max) NULL,
	[TextLabel] [nvarchar](max) NULL,
	[Action] [nvarchar](max) NULL,
	[Controller] [nvarchar](max) NULL,
	[ValueInput] [nvarchar](max) NULL,
	[ListModel] [nvarchar](max) NULL,
	[Urutan] [int] NOT NULL,
	[ShowHide] [nvarchar](max) NULL,
	[ReadOnly] [nvarchar](max) NULL,
	[Enable] [nvarchar](max) NULL,
	[Mandatory] [nvarchar](max) NULL,
	[IsNumber] [int] NULL,
	[FilterBy] [int] NOT NULL,
 CONSTRAINT [PK_Master_Form] PRIMARY KEY CLUSTERED 
(
	[idLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_ListItem]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_ListItem](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ListName] [nvarchar](max) NOT NULL,
	[Urutan] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_MenuTree]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_MenuTree](
	[IdRole] [bigint] IDENTITY(1,1) NOT NULL,
	[IdModule] [bigint] NOT NULL,
	[Posisi] [bigint] NOT NULL,
	[IdParent] [bigint] NOT NULL,
	[Urutan] [bigint] NOT NULL,
	[IdMenu] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransaksiPeminjamanBuku]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransaksiPeminjamanBuku](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdBuku] [bigint] NULL,
	[SewaDari] [nvarchar](max) NULL,
	[Sewasampai] [nvarchar](max) NULL,
	[TotalSewa] [float] NULL,
	[Status] [bigint] NULL,
	[IdUser_Penyewa] [bigint] NULL,
	[IdTrx] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [varbinary](200) NULL,
	[RoleId] [bigint] NULL,
	[NamaLengkap] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[Status] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DataBuku] ON 

INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (1, N'Harry Potter and the Chamber of Secrets', N'J. K. Rowling', N'Novel', 10000, N'FileBuku//1.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (2, N'Churchill: Walking with Destiny', N'Andrew Roberts, Stephen Thorne', N'Biografi', 100000, N'FileBuku//2.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (3, N'Zero: The Biography of a Dangerous Idea', N'Charles Seife ', N'Biografi', 10000, N'FileBuku//3.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (4, N'Harry Potter and the Goblet of Fire: The Illustrated Edition', N'J. K. Rowling and Jim Kay', N'Novel', 1000, N'FileBuku//4.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (5, N'Harry Potter and the Philosopher''s Stone', N'JK Rowling', N'Novel', 10000, N'FileBuku//5.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (6, N'Harry Potter and the Deathly Hallows', N'J.K. ROWLING', N'Novel', 10000, N'FileBuku//6.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (7, N'Harry Potter and the Order of the Phoenix', N'J. K. Rowling ', N'Novel', 10000, N'FileBuku//7.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (8, N'Harry Potter And The Goblet Of Fire', N'J. K. Rowling ', N'Novel', 10000, N'FileBuku//8.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (9, N'Harry Potter and the Prisoner of Azkaban', N'J.K. Rowling', N'Novel', 10000, N'FileBuku//9.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (10, N'Alkitab dalam bahasa Indonesia sehari-hari', N'Lembaga Alkitab Indonesia', N'Agama', 10000, N'FileBuku//10.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (11, N'An English Translation of the Holy Quran', N'Abdullah Yusuf Ali', N'Agama', 10000, N'FileBuku//11.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (12, N'Tipitaka Kitab Suci Agama Buddha', N'Pitaka Majjhima Nikaya V', N'Agama', 10000, N'FileBuku//12.jpg', 0)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (13, N'Naruto Official Animation Book', N'Hiden - Shippu Emaki Masashi Kishimoto', N'Komik', 10000, N'FileBuku//13.jpg', 1)
INSERT [dbo].[DataBuku] ([IdBook], [JudulBuku], [Pengarang], [JenisBuku], [HargaSewaPerHari], [Img], [Status]) VALUES (14, N'Dragon Ball Super', N'ToyoTarou', N'Komik', 10000, N'FileBuku//14.jpg', 1)
SET IDENTITY_INSERT [dbo].[DataBuku] OFF
SET IDENTITY_INSERT [dbo].[DataMenu] ON 

INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90166, N'RoleGroupAkses', N'RoleGroupAkses', N'Master', N'WEB', N'FileMenu//90166.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90167, N'Data Master', N'0', N'0', N'WEB', N'FileMenu//90167.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90169, N'Cari Buku', N'CariBuku', N'Sewa', N'WEB', N'FileMenu//90169.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90170, N'Transaksi', N'0', N'0', N'WEB', N'FileMenu//90170.jpeg', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90176, N'Detail Harian', N'DetailHarian', N'Laporan', N'WEB', N'FileMenu//90176.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90160, N'Module Data', N'ModuleData', N'Master', N'WEB', N'FileMenu//90160.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90157, N'Registrasi User', N'UserData', N'User', N'WEB', N'FileMenu//90157.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90158, N'Buku Master', N'Bukudata', N'Master', N'WEB', N'FileMenu//90158.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90159, N'Peminjaman Buku', N'TransaksiPeminjaman', N'Sewa', N'WEB', N'FileMenu//90159.jpeg', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90161, N'Menu Data', N'MenuData', N'Master', N'WEB', N'FileMenu//90161.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90162, N'Form Data', N'FormData', N'Master', N'WEB', N'FileMenu//90162.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90163, N'List Item Data', N'ListItemData', N'Master', N'WEB', N'FileMenu//90163.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90164, N'Role Menu Data', N'RoleMenuData', N'Master', N'WEB', N'FileMenu//90164.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90165, N'Setting', N'0', N'0', N'WEB', N'FileMenu//90165.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90171, N'Konfirmasi', N'KonfirmasiTransaksi', N'Sewa', N'WEB', N'FileMenu//90171.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90172, N'Laporan', N'Laporan', N'Sewa', N'WEB', N'FileMenu//90172.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90173, N'Pengembalian Buku', N'PengembalianBuku', N'Sewa', N'WEB', N'FileMenu//90173.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90174, N'Laporan Harian', N'LaporanHarian', N'Laporan', N'WEB', N'FileMenu//90174.png', 1)
INSERT [dbo].[DataMenu] ([idMenu], [NamaMenu], [Action], [Controller], [Platform], [Img], [Status]) VALUES (90175, N'Summary Harian', N'SummaryHarian', N'Laporan', N'WEB', N'FileMenu//90175.png', 1)
SET IDENTITY_INSERT [dbo].[DataMenu] OFF
SET IDENTITY_INSERT [dbo].[DataModule] ON 

INSERT [dbo].[DataModule] ([IdModul], [NamaModule], [Action], [Controller], [Img], [Status]) VALUES (1, N'Library', N'Index', N'Library', N'FileMaster//1.png', 1)
SET IDENTITY_INSERT [dbo].[DataModule] OFF
SET IDENTITY_INSERT [dbo].[GroupData] ON 

INSERT [dbo].[GroupData] ([IdRole], [NamaGroup], [Status], [Desc]) VALUES (1, N'Admin', 1, N'Administrator')
INSERT [dbo].[GroupData] ([IdRole], [NamaGroup], [Status], [Desc]) VALUES (2, N'Penyewa', 1, N'Group untuk penyewa
')
SET IDENTITY_INSERT [dbo].[GroupData] OFF
SET IDENTITY_INSERT [dbo].[GroupData_MenuAkses] ON 

INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (14, 1, 90160)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (15, 1, 90161)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (16, 1, 90162)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (17, 1, 90163)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (18, 1, 90164)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (19, 2, 90159)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (23, 1, 90158)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1003, 1, 90166)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1004, 1, 90157)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1006, 1, 90168)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1007, 1, 90169)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1008, 2, 90169)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1009, 2, 90170)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1010, 1, 90159)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1011, 1, 90170)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1012, 1, 90171)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1013, 1, 90172)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1014, 1, 90173)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1015, 1, 90174)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1016, 1, 90175)
INSERT [dbo].[GroupData_MenuAkses] ([Id], [IdRole], [IdMenu]) VALUES (1017, 1, 90176)
SET IDENTITY_INSERT [dbo].[GroupData_MenuAkses] OFF
SET IDENTITY_INSERT [dbo].[LogConfirmation] ON 

INSERT [dbo].[LogConfirmation] ([IdTrx], [CreateDate], [IdPenyewa], [Qty], [TotalSewa], [StatusConfirm], [KasirTerimaUang], [UangKembalian], [IdKasir]) VALUES (8, N'14/10/2020 07:01:49', 2, 2, 60000, 1, 100000, 40000, 1)
INSERT [dbo].[LogConfirmation] ([IdTrx], [CreateDate], [IdPenyewa], [Qty], [TotalSewa], [StatusConfirm], [KasirTerimaUang], [UangKembalian], [IdKasir]) VALUES (9, N'14/10/2020 07:02:48', 3, 1, 20000, 1, 50000, 30000, 1)
INSERT [dbo].[LogConfirmation] ([IdTrx], [CreateDate], [IdPenyewa], [Qty], [TotalSewa], [StatusConfirm], [KasirTerimaUang], [UangKembalian], [IdKasir]) VALUES (10, N'13/10/2020 07:29:33', 1, 1, 40000, 1, 40000, 0, 1)
INSERT [dbo].[LogConfirmation] ([IdTrx], [CreateDate], [IdPenyewa], [Qty], [TotalSewa], [StatusConfirm], [KasirTerimaUang], [UangKembalian], [IdKasir]) VALUES (11, N'13/10/2020 09:21:24', 1, 1, 40000, 1, 50000, 10000, 1)
INSERT [dbo].[LogConfirmation] ([IdTrx], [CreateDate], [IdPenyewa], [Qty], [TotalSewa], [StatusConfirm], [KasirTerimaUang], [UangKembalian], [IdKasir]) VALUES (12, N'14/10/2020 09:38:31', 3, 2, 60000, 1, 100000, 40000, 1)
SET IDENTITY_INSERT [dbo].[LogConfirmation] OFF
SET IDENTITY_INSERT [dbo].[LogPengembalianBuku] ON 

INSERT [dbo].[LogPengembalianBuku] ([Id], [IdPeminjaman], [IdBook], [TanggalPengembalian], [UserID]) VALUES (5, 39, 1, N'14/10/2020 07:03:54', 1)
INSERT [dbo].[LogPengembalianBuku] ([Id], [IdPeminjaman], [IdBook], [TanggalPengembalian], [UserID]) VALUES (6, 40, 3, N'14/10/2020 07:04:01', 1)
INSERT [dbo].[LogPengembalianBuku] ([Id], [IdPeminjaman], [IdBook], [TanggalPengembalian], [UserID]) VALUES (7, 41, 1, N'14/10/2020 07:04:04', 1)
INSERT [dbo].[LogPengembalianBuku] ([Id], [IdPeminjaman], [IdBook], [TanggalPengembalian], [UserID]) VALUES (8, 42, 1, N'13/10/2020 07:29:52', 1)
INSERT [dbo].[LogPengembalianBuku] ([Id], [IdPeminjaman], [IdBook], [TanggalPengembalian], [UserID]) VALUES (9, 43, 10, N'14/10/2020 09:40:39', 1)
INSERT [dbo].[LogPengembalianBuku] ([Id], [IdPeminjaman], [IdBook], [TanggalPengembalian], [UserID]) VALUES (10, 48, 6, N'14/10/2020 09:40:48', 1)
INSERT [dbo].[LogPengembalianBuku] ([Id], [IdPeminjaman], [IdBook], [TanggalPengembalian], [UserID]) VALUES (11, 49, 3, N'14/10/2020 09:40:50', 1)
SET IDENTITY_INSERT [dbo].[LogPengembalianBuku] OFF
SET IDENTITY_INSERT [dbo].[Master_Form] ON 

INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20143, N'Form Master CRUD', N'textbox', N'IdModul', N'IdModul', NULL, NULL, NULL, NULL, 1, N'Hidden', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20144, N'Form Master CRUD', N'textbox', N'NamaModule', N'NamaModule', NULL, NULL, NULL, NULL, 2, N'Show', NULL, N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20145, N'Form Master CRUD', N'textbox', N'Action', N'Action', NULL, NULL, NULL, NULL, 3, N'Show', NULL, N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20146, N'Form Master CRUD', N'textbox', N'Controller', N'Controller', NULL, NULL, NULL, NULL, 4, N'Show', NULL, N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20147, N'Form Master CRUD', N'FileInput', N'Img', N'Img', NULL, NULL, NULL, N'image/*', 6, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20148, N'Form Master CRUD', N'select', N'Status', N'Status', NULL, NULL, NULL, N'ListStatus', 5, N'Show', NULL, N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20149, N'Form Master Menu', N'textbox', N'NamaMenu', N'NamaMenu', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20150, N'Form Master Menu', N'textbox', N'Action', N'Action', NULL, NULL, NULL, NULL, 2, N'Show', NULL, N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20151, N'Form Master Menu', N'textbox', N'Controller', N'Controller', N'', N'', N'', N'', 3, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20152, N'Form Master Menu', N'select', N'Platform', N'Platform', N'', N'', N'', N'ListPlatform', 4, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20153, N'Form Master Menu', N'FileInput', N'Img', N'Img', NULL, NULL, NULL, N'image/*', 6, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20154, N'Form Master Menu', N'select', N'Status', N'Status', NULL, NULL, NULL, N'ListStatus', 5, N'Show', NULL, N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (20155, N'Form Master Menu', N'textbox', N'idMenu', N'idMenu', NULL, NULL, NULL, NULL, 0, N'Hidden', NULL, N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130387, N'Form FormData', N'textbox', N'idLog', N'idLog', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'1', 1, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130388, N'Form FormData', N'textbox', N'NamaForm', N'NamaForm', NULL, NULL, NULL, NULL, 1, N'Show', NULL, N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130389, N'Form FormData', N'select', N'Type', N'Type', N'', N'', N'', N'ListTypeObeject', 2, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130390, N'Form FormData', N'textbox', N'Id', N'Id', N'', N'', N'', N'', 3, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130391, N'Form FormData', N'textbox', N'TextLabel', N'TextLabel', NULL, NULL, NULL, NULL, 4, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130392, N'Form FormData', N'textbox', N'Action', N'Action', NULL, NULL, NULL, NULL, 5, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130393, N'Form FormData', N'textbox', N'Controller', N'Controller', NULL, NULL, NULL, NULL, 6, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130394, N'Form FormData', N'textbox', N'ValueInput', N'ValueInput', NULL, NULL, NULL, NULL, 7, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130395, N'Form FormData', N'textbox', N'ListModel', N'ListModel', NULL, NULL, NULL, NULL, 8, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130396, N'Form FormData', N'textbox', N'Urutan', N'Urutan', NULL, NULL, NULL, NULL, 9, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130397, N'Form FormData', N'select', N'ShowHide', N'ShowHide', N'', N'', N'', N'ListShowHide', 10, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130398, N'Form FormData', N'textbox', N'ReadOnly', N'ReadOnly', NULL, NULL, NULL, NULL, 11, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130399, N'Form FormData', N'select', N'Enable', N'Enable', N'', N'', N'', N'ListEnable', 12, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130400, N'Form FormData', N'select', N'Mandatory', N'Mandatory', N'', N'', N'', N'ListMandatory', 13, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130401, N'Form FormData', N'select', N'IsNumber', N'IsNumber', N'', N'', N'', N'ListIsNumber', 14, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130402, N'Form FormData', N'select', N'FilterBy', N'FilterBy', N'', N'', N'', N'ListFilterBy', 15, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130404, N'Form ListItemData', N'textbox', N'ListName', N'ListName', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130405, N'Form ListItemData', N'textbox', N'Urutan', N'Urutan', N'', N'', N'', N'', 4, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130406, N'Form ListItemData', N'textbox', N'Text', N'Text', N'', N'', N'', N'', 2, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130407, N'Form ListItemData', N'textbox', N'Value', N'Value', N'', N'', N'', N'', 3, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130419, N'Form ListItemData', N'textbox', N'id', N'id', N'', N'', N'', N'', 0, N'Hidden', N'0', N'0', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130420, N'Form RoleMenuData', N'textbox', N'IdRole', N'IdRole', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130421, N'Form RoleMenuData', N'select', N'IdModule', N'Nama Module', N'', N'', N'', N'ListModule', 1, N'Show', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130422, N'Form RoleMenuData', N'select', N'Posisi', N'Posisi', N'', N'', N'', N'ListPosisiMenu', 3, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130423, N'Form RoleMenuData', N'select', N'IdParent', N'Parent', N'', N'', N'', N'ListParentMenu', 4, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130424, N'Form RoleMenuData', N'textbox', N'Urutan', N'Urutan', N'', N'', N'', N'', 5, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130425, N'Form RoleMenuData', N'select', N'IdMenu', N'Nama Menu', N'', N'', N'', N'ListMenu', 2, N'Show', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130437, N'Form UserData', N'textbox', N'id', N'id', N'', N'', N'', N'', 99, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130438, N'Form UserData', N'textbox', N'username', N'username', N'', N'', N'', N'', 2, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130439, N'Form UserData', N'textbox_password', N'password', N'password', N'', N'', N'', N'', 3, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130440, N'Form UserData', N'select', N'RoleId', N'hakakses', N'', N'', N'', N'RoleAkses', 4, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130441, N'Form UserData', N'textbox', N'NamaLengkap', N'NamaLengkap', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130445, N'Form UserData', N'FileInput', N'Photo', N'Photo', N'', N'', N'', N'', 6, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130461, N'Form UserData', N'select', N'Status', N'Status', N'', N'', N'', N'ListStatus', 5, N'Show', N'', N'', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130462, N'Form RoleGroupAkses', N'textbox', N'IdRole', N'IdRole', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130463, N'Form RoleGroupAkses', N'textbox', N'NamaGroup', N'Nama Group', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130464, N'Form RoleGroupAkses', N'select', N'Status', N'Status', N'', N'', N'', N'ListStatus', 0, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130465, N'Form RoleGroupAkses', N'textarea', N'Desc', N'Note', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130478, N'Form BukuData', N'textbox', N'IdBook', N'IdBook', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130479, N'Form BukuData', N'textbox', N'JudulBuku', N'Judul Buku', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130480, N'Form BukuData', N'textbox', N'Pengarang', N'Pengarang', N'', N'', N'', N'', 2, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130481, N'Form BukuData', N'select', N'JenisBuku', N'Jenis Buku', N'', N'', N'', N'ListJenisBuku', 3, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130482, N'Form BukuData', N'textnumber', N'HargaSewaPerHari', N'Harga Sewa /Hari', N'', N'', N'', N'', 4, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130483, N'Form BukuData', N'FileInput', N'Img', N'Gambar Cover', N'', N'', N'', N'', 6, N'Show', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130484, N'Form BukuData', N'select', N'Status', N'Status', N'', N'', N'', N'ListStatus', 5, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130485, N'Form UserData', N'textbox', N'RoleName', N'RoleName', N'', N'', N'', N'', 99, N'Hidden', N'', N'', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130486, N'Form FormPeminjamanBuku', N'textbox', N'IdBook', N'IdBook', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130496, N'Form FormPeminjamanBuku', N'textbox', N'JudulBuku', N'JudulBuku', N'', N'', N'', N'', 0, N'Hidden', N'', N'disable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130497, N'Form FormPeminjamanBuku', N'textbox', N'Pengarang', N'Pengarang', N'', N'', N'', N'', 0, N'Hidden', N'', N'disable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130498, N'Form FormPeminjamanBuku', N'textbox', N'JenisBuku', N'JenisBuku', N'', N'', N'', N'', 0, N'Hidden', N'', N'disable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130499, N'Form FormPeminjamanBuku', N'textnumber', N'HargaSewaPerHari', N'HargaSewaPerHari', N'', N'', N'', N'', 3, N'Show', N'', N'disable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130500, N'Form FormPeminjamanBuku', N'textbox', N'Img', N'Img', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130501, N'Form FormPeminjamanBuku', N'select', N'Status', N'Status', N'', N'', N'', N'ListStatus', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130502, N'Form FormPeminjamanBuku', N'datepicker', N'SewaDari', N'SewaDari', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130503, N'Form FormPeminjamanBuku', N'datepicker', N'Sewasampai', N'Sewasampai', N'', N'', N'', N'', 2, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130504, N'Form FormPeminjamanBuku', N'textnumber', N'TotalSewa', N'TotalSewa', N'', N'', N'', N'', 4, N'Show', N'', N'disable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130505, N'Form Transaksi Peminjaman', N'textbox', N'Id', N'Id', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130506, N'Form Transaksi Peminjaman', N'selectpicker', N'IdBuku', N'Judul Buku', N'', N'', N'', N'ListJudulBuku', 0, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130507, N'Form Transaksi Peminjaman', N'textbox', N'JudulBuku', N'Judul Buku', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130508, N'Form Transaksi Peminjaman', N'textbox', N'Pengarang', N'Pengarang', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130509, N'Form Transaksi Peminjaman', N'select', N'JenisBuku', N'JenisBuku', N'', N'', N'', N'ListJenisBuku', 0, N'Hidden', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130510, N'Form Transaksi Peminjaman', N'textbox', N'HargaSewaPerHari', N'HargaSewaPerHari', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130511, N'Form Transaksi Peminjaman', N'textbox', N'Img', N'Img', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130512, N'Form Transaksi Peminjaman', N'datepicker', N'SewaDari', N'Dari', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130513, N'Form Transaksi Peminjaman', N'datepicker', N'Sewasampai', N'Sampai', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130514, N'Form Transaksi Peminjaman', N'textnumber', N'TotalSewa', N'TotalSewa', N'', N'', N'', N'', 0, N'Show', N'', N'disable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130515, N'Form Transaksi Peminjaman', N'select', N'Status', N'Status', N'', N'', N'', N'ListStatusPeminjaman', 1, N'Hidden', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130516, N'Form Transaksi Peminjaman', N'textbox', N'IdUser_Penyewa', N'IdUser_Penyewa', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130517, N'Form Transaksi Peminjaman', N'textbox', N'Nama_Penyewa', N'Nama Penyewa', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130518, N'Form Transaksi Peminjaman Filter', N'textbox', N'JudulBuku', N'JudulBuku', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130519, N'Form Transaksi Peminjaman Filter', N'textbox', N'Pengarang', N'Pengarang', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130520, N'Form Transaksi Peminjaman Filter', N'select', N'Status', N'Status', N'', N'', N'', N'ListStatusPeminjaman', 3, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130521, N'Form Transaksi Peminjaman Filter', N'select', N'JenisBuku', N'JenisBuku', N'', N'', N'', N'ListJenisBuku', 2, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130522, N'Form KonfirmasiTransaksi', N'textnumber', N'IdTrx', N'No.ID Transaction', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130523, N'Form KonfirmasiTransaksi', N'datepicker', N'CreateDate', N'CreateDate', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130524, N'Form KonfirmasiTransaksi', N'textbox', N'IdPenyewa', N'IdPenyewa', NULL, NULL, NULL, NULL, 0, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130525, N'Form KonfirmasiTransaksi', N'textbox', N'Qty', N'Qty', NULL, NULL, NULL, NULL, 0, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130526, N'Form KonfirmasiTransaksi', N'textbox', N'TotalSewa', N'TotalSewa', NULL, NULL, NULL, NULL, 0, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130527, N'Form KonfirmasiTransaksi', N'textbox', N'StatusConfirm', N'StatusConfirm', NULL, NULL, NULL, NULL, 0, N'Show', NULL, N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130528, N'Form KonfirmasiTransaksi', N'textbox', N'NamaPenyewa', N'Nama Penyewa', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'0', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130529, N'Form Pembayaran', N'textbox', N'IdTrx', N'IdTrx', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130530, N'Form Pembayaran', N'textbox', N'CreateDate', N'Tanggal Checkout', N'', N'', N'', N'', 1, N'Show', N'', N'disable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130531, N'Form Pembayaran', N'textbox', N'IdPenyewa', N'IdPenyewa', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130532, N'Form Pembayaran', N'textnumber', N'Qty', N'Total Buku', N'', N'', N'', N'', 3, N'Show', N'', N'disable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130533, N'Form Pembayaran', N'textnumber', N'TotalSewa', N'Total Pembayaran', N'', N'', N'', N'', 4, N'Show', N'', N'disable', N'0', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130534, N'Form Pembayaran', N'textbox', N'StatusConfirm', N'StatusConfirm', N'', N'', N'', N'', 0, N'Hidden', N'', N'enable', N'0', 0, 0)
GO
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130535, N'Form Pembayaran', N'textbox', N'NamaPenyewa', N'Nama Penyewa', N'', N'', N'', N'', 2, N'Show', N'', N'disable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130536, N'Form Pembayaran', N'textnumber', N'KasirTerimaUang', N'Terima Uang', N'', N'', N'', N'', 5, N'Show', N'', N'enable', N'1', 0, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130537, N'Form Pembayaran', N'textnumber', N'UangKembalian', N'Kembalian', N'', N'', N'', N'', 6, N'Show', N'', N'disable', N'1', 1, 0)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130538, N'Form PengembalianBuku Filter', N'textbox', N'JudulBuku', N'JudulBuku', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130539, N'Form PengembalianBuku Filter', N'textbox', N'Pengarang', N'Pengarang', N'', N'', N'', N'', 2, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130540, N'Form PengembalianBuku Filter', N'select', N'JenisBuku', N'JenisBuku', N'', N'', N'', N'ListJenisBuku', 3, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130541, N'Form PengembalianBuku Filter', N'textbox', N'Nama_Penyewa', N'NamaPenyewa', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130542, N'Form DetailHarian Filter', N'datepicker', N'TglTrxFrom', N'Tanggal Mulai', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130543, N'Form DetailHarian Filter', N'datepicker', N'TglTrxUntil', N'Tanggal Akhir', N'', N'', N'', N'', 0, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130544, N'Form SummaryHarian Filter', N'datepicker', N'TglTrxFrom', N'Tanggal Awal', N'', N'', N'', N'', 1, N'Show', N'', N'enable', N'1', 0, 1)
INSERT [dbo].[Master_Form] ([idLog], [NamaForm], [Type], [Id], [TextLabel], [Action], [Controller], [ValueInput], [ListModel], [Urutan], [ShowHide], [ReadOnly], [Enable], [Mandatory], [IsNumber], [FilterBy]) VALUES (130545, N'Form SummaryHarian Filter', N'datepicker', N'TglTrxUntil', N'Tanggal Akhir', N'', N'', N'', N'', 2, N'Show', N'', N'enable', N'1', 0, 1)
SET IDENTITY_INSERT [dbo].[Master_Form] OFF
SET IDENTITY_INSERT [dbo].[Master_ListItem] ON 

INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (1, N'ListStatusKepemilikan', N'1', N'Management', N'Management')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (2, N'ListStatusKepemilikan', N'2', N'Non Management', N'Non Management')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (3, N'ListStatusJual', N'1', N'Public ', N'Public ')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (4, N'ListStatusJual', N'2', N'Karyawan', N'Karyawan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (5, N'ListStatus', N'1', N'Aktif', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (6, N'ListStatus', N'2', N'Non Aktif', N'0')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (7, N'ListMonitoringStock', N'1', N'Enable', N'Enable')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (8, N'ListMonitoringStock', N'2', N'Disable', N'Disable')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (9, N'ListCategoryMenu', N'1', N'Makanan', N'Makanan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10, N'ListCategoryMenu', N'2', N'Minuman', N'Minuman')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (11, N'ListCategoryMenu', N'3', N'Persewaan', N'Persewaan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (12, N'ListCategoryMenu', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (13, N'ListCategoriRAB', N'1', N'F&B', N'F&B')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (14, N'ListCategoriRAB', N'2', N'ATK', N'ATK')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (16, N'ListCategoriRAB', N'3', N'Operational', N'Operational')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (17, N'ListCategoriRAB', N'4', N'Event', N'Event')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (18, N'ListCategoriRAB', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (19, N'ListCategoriRAB', N'5', N'Project', N'Project')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20, N'ListUrgensi', N'1', N'Long Term ( 3 Bln)', N'Long Term')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (21, N'ListUrgensi', N'2', N'Normal (1-2 Bln)', N'Normal')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (22, N'ListUrgensi', N'3', N'Urgent (10-20 Hari)', N'Urgent')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (23, N'ListUrgensi', N'4', N'Urgent Sekali (1-7 Hari)', N'Super Urgent')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (24, N'ListKategoryItemRAB', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (25, N'ListKategoryItemRAB', N'4', N'Jasa', N'Jasa')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (26, N'ListKategoryItemRAB', N'3', N'Perangkat Lunak', N'Perangkat Lunak')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (27, N'ListKategoryItemRAB', N'2', N'Perangkat Keras', N'Perangkat Keras')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (28, N'ListKategoryItemRAB', N'5', N'Lain - Lain', N'Lain - Lain')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (29, N'ListKategoryItemRAB', N'1', N'Makanan & Minuman', N'Makanan & Minuman')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30, N'ListUnitSatuan', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (31, N'ListUnitSatuan', N'1', N'Kg', N'Kg')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (32, N'ListUnitSatuan', N'2', N'Lot', N'Lot')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (33, N'ListUnitSatuan', N'3', N'Pcs', N'Pcs')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (34, N'ListUnitSatuan', N'4', N'Dus', N'Dus')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (35, N'ListUnitSatuan', N'5', N'Hari', N'Hari')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (36, N'ListUnitSatuan', N'6', N'Jam', N'Jam')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (39, N'ListCategoryProduct', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40, N'ListCategoryProduct', N'1', N'Hardware', N'Hardware')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (41, N'ListCategoryProduct', N'2', N'Software', N'Software')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (42, N'ListCategoryProduct', N'3', N'Konsultasi', N'Konsultasi')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (43, N'ListJenisPembayaran', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (44, N'ListJenisPembayaran', N'1', N'Down Payment 75%', N'Down Payment 75%')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (45, N'ListJenisPembayaran', N'2', N'Full Payment', N'Full Payment')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (46, N'ListJenisPembayaran', N'3', N'3x Termin', N'3x Termin')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (47, N'ListTerminKe', N'1', N'I (Pertama)', N'I (Pertama)')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (48, N'ListTerminKe', N'2', N'II (Kedua)', N'II (Kedua)')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (49, N'ListTerminKe', N'3', N'III (Ketiga)', N'III (Ketiga)')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10043, N'ListJenisPembayaran', N'4', N'Sisa Payment', N'Sisa Payment')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10044, N'ListDestinasiBarangKeluar', N'1', N'F&B', N'F&B')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10045, N'ListDestinasiBarangKeluar', N'2', N'Sales Marketing', N'Sales Marketing')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10046, N'ListDestinasiBarangKeluar', N'3', N'Operational', N'Operational')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10047, N'ListUnitSatuan', N'7', N'Meter', N'Meter')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10048, N'ListUnitSatuan', N'8', N'Core', N'Core')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10049, N'ListUnitSatuan', N'9', N'Node', N'Node')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10051, N'ListFilterCeckStock', N'1', N'Code Barcode', N'Code Barcode')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10052, N'ListFilterCeckStock', N'2', N'ID SKU', N'ID SKU')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10053, N'ListFilterCeckStock', N'3', N'Nama Produk', N'Nama Produk')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10054, N'ListCategoryProduct', N'4', N'Jasa/Services', N'Jasa/Services')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10055, N'ListGender', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10056, N'ListGender', N'1', N'Pria', N'Pria')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10057, N'ListGender', N'2', N'Wanita', N'Wanita')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100146, N'ListDivisi', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100147, N'ListDivisi', N'0', N'Administrator', N'Administrator')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100148, N'ListDivisi', N'0', N'Management', N'Management')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100149, N'ListTypeObeject', N'4', N'textbox_password', N'textbox_password')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100151, N'ListTypeObeject', N'6', N'datepicker', N'datepicker')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10064, N'ListNamaPosisi', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10065, N'ListNamaPosisi', N'1', N'Staff', N'Staff')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10066, N'ListNamaPosisi', N'2', N'Supervisi', N'Supervisi')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10067, N'ListNamaPosisi', N'3', N'Manager', N'Manager')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10068, N'ListAgama', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10069, N'ListAgama', N'1', N'Islam', N'Islam')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10070, N'ListAgama', N'2', N'Kristen', N'Kristen')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10071, N'ListAgama', N'3', N'Budha', N'Budha')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10072, N'ListAgama', N'4', N'Hindu', N'Hindu')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10073, N'ListJenisIdentitas', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10074, N'ListJenisIdentitas', N'1', N'KTP', N'KTP')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10075, N'ListJenisIdentitas', N'2', N'SIM', N'SIM')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10076, N'ListJenisIdentitas', N'3', N'Passpor', N'Passpor')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10077, N'ListJenisIdentitas', N'4', N'Kartu Pelajar', N'Kartu Pelajar')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10078, N'ListJenisIdentitas', N'5', N'NPWP', N'NPWP')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10079, N'ListJenisIdentitas', N'6', N'BPJS', N'BPJS')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10080, N'ListStatusKaryawan', N'1', N'Aktif', N'Aktif')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10081, N'ListStatusKaryawan', N'2', N'Cuti Sementara', N'Cuti Sementara')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10082, N'ListStatusKaryawan', N'3', N'Resign', N'Resign')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10083, N'ListFilterDataBarang', N'1', N'Nama Produk', N'ProductName')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10084, N'ListFilterDataBarang', N'2', N'Brand', N'Brand')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10087, N'ListFilterDataBarang', N'3', N'Category', N'Category')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10088, N'ListCategoryProduk', N'1', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10089, N'ListCategoryProduk', N'2', N'Makanan', N'Makanan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10090, N'ListCategoryProduk', N'3', N'Minuman', N'Minuman')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10091, N'ListCategoryProduk', N'4', N'Peralatan Renang', N'Peralatan Renang')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10092, N'TableSuplier', N'1', N'Nama Suplier', N'namaSuplier')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10093, N'TableSuplier', N'2', N'Telpon Suplier', N'telponKantor')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10094, N'TableSuplier', N'3', N'Alamat', N'alamat')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10095, N'TableSuplier', N'4', N'Website', N'website')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10096, N'TableSuplier', N'0', N'No', N'id')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10097, N'TableSales', N'0', N'No', N'id')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10098, N'TableSales', N'1', N'Nama', N'nama')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100127, N'ListTypeObeject', N'0', N'', N'')
GO
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100128, N'ListTypeObeject', N'1', N'select', N'select')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10101, N'TableRABItem', N'0', N'No', N'id')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10102, N'TableRABItem', N'1', N'NamaBarang', N'namaBarang')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10103, N'TableRABItem', N'2', N'Qty', N'qty')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10104, N'TableRABItem', N'3', N'UnitSatuan', N'unitSatuan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (10105, N'TableRABItem', N'4', N'EstimasiHargaSatuan', N'estimasiHargaSatuan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20093, N'ListJenisPPN', N'1', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20094, N'ListJenisPPN', N'2', N'PPN - 10%', N'10:PPN')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20095, N'ListJenisPPN', N'3', N'PPH 23 - 15%', N'15:PPH 23')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20097, N'Filterby_LogPurcahseOrder', N'2', N'Berdasarkan Tanggal Pembuatan PO', N'PERIODE')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20098, N'Filterby_LogPurcahseOrder', N'3', N'Nama Suplier', N'Company')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20099, N'Filterby_LogPurcahseOrder', N'4', N'Nominal PO', N'total')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20100, N'Filterby_LogPurcahseOrder', N'5', N'Perihal', N'Perihal')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20103, N'ListStatus_LogPurcahseOrder', N'1', N'On Progress', N'0')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20104, N'ListStatus_LogPurcahseOrder', N'2', N'Finish', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20105, N'ListStatus_LogPurcahseOrder', N'0', N'All', N'All')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20106, N'ListCategoryPromo', N'0', NULL, NULL)
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20107, N'ListCategoryPromo', N'1', N'Booklet', N'Booklet')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20109, N'ListCategoryPromo', N'3', N'Diskon Promo', N'Diskon Promo')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100153, N'ListTypeObeject', N'8', N'phonenumber', N'phonenumber')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20111, N'ListPosisiMenu', N'1', N'Main', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20112, N'ListPosisiMenu', N'2', N'Sub Main', N'2')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20113, N'ListPosisiMenu', N'3', N'Sub Menu', N'3')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20114, N'ListStatusKepemilikan', N'3', N'-', N'-')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20116, N'ListDivisi', N'1', N'HRD', N'HRD')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20117, N'ListDivisi', N'2', N'Operational', N'Operational')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20118, N'ListDivisi', N'3', N'Chasier', N'Chasier')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20119, N'ListVoucher', N'1', N'Semua Transaksi', N'Semua Transaksi')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20120, N'ListVoucher', N'2', N'Transaksi Tiket', N'Transaksi Tiket')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20121, N'ListVoucher', N'3', N'Transaksi Parkiran', N'Transaksi Parkiran')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (20122, N'ListVoucher', N'4', N'Transaksi Topup', N'Transaksi Topup')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30118, N'ListJenisRAB', N'1', N'PROJECT', N'PROJECT')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30119, N'ListJenisRAB', N'2', N'PENJUALAN', N'PENJUALAN')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30120, N'ListJenisRAB', N'3', N'ASSET', N'ASSET')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30121, N'ListJenisRAB', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30122, N'ListDivisi', N'4', N'Purchasing', N'Purchasing')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30124, N'ListStatusRAB', N'1', N'Listing Item', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30125, N'ListStatusRAB', N'2', N'Waiting Approve', N'2')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30126, N'ListStatusRAB', N'4', N'RAB Approved', N'3')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30127, N'ListCategoryItemRAB', N'7', N'Hardware IT', N'Hardware IT')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30128, N'ListCategoryItemRAB', N'1', N'Software', N'Software')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30129, N'ListCategoryItemRAB', N'2', N'Jasa Instalasi', N'Jasa Instalasi')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30130, N'ListCategoryItemRAB', N'3', N'Material', N'Material')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30131, N'ListCategoryItemRAB', N'4', N'Bahan Masak', N'Bahan Masak')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30132, N'ListCategoryItemRAB', N'5', N'Food And Beverage', N'Food And Beverage')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30133, N'ListCategoryItemRAB', N'6', N'Perangkat Elektronik', N'Perangkat Elektronik')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30134, N'ListCategoryItemRAB', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30135, N'ListSatuan', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30136, N'ListSatuan', N'1', N'Lot', N'Lot')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30137, N'ListSatuan', N'2', N'Pcs', N'Pcs')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30138, N'ListSatuan', N'3', N'Dus', N'Dus')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30139, N'ListSatuan', N'4', N'Set', N'Set')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30140, N'ListSatuan', N'5', N'Kg', N'Kg')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (30141, N'ListStatusRAB', N'5', N'RAB Rejected', N'4')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40126, N'ListStatusQuotationVendor', N'0', N'Listing Item', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40127, N'ListStatusQuotationVendor', N'1', N'Waiting Aprove', N'2')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40128, N'ListStatusQuotationVendor', N'3', N'Aproved', N'3')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40129, N'ListStatusQuotationVendor', N'4', N'Rejected', N'4')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40130, N'ListCategoryPerusahaan', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40131, N'ListCategoryPerusahaan', N'1', N'Kontraktor', N'Kontraktor')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40132, N'ListCategoryPerusahaan', N'1', N'Bussiness To Bussiness (B2B)', N'Bussiness To Bussiness (B2B)')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (40133, N'ListCategoryPerusahaan', N'2', N'Supplier', N'Supplier')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100154, N'ListTypeObeject', N'9', N'formatIDCard', N'formatIDCard')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (50126, N'ListStatusPO', N'1', N'Listing Item', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (50127, N'ListStatusPO', N'2', N'Waiting Aprove', N'2')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (50128, N'ListStatusPO', N'3', N'Aproved', N'3')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (50129, N'ListStatusPO', N'4', N'Rejected', N'4')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (60126, N'ListCategoryItemRAB', N'8', N'Ongkos Kirim', N'Ongkos Kirim')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (60127, N'ListJenisLaporan', N'1', N'Semua Transaksi', N'Semua Transaksi')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (60128, N'ListJenisLaporan', N'2', N'Tiket Wahana', N'Tiket Wahana')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (60129, N'ListJenisLaporan', N'3', N'Tiket Parkir', N'Tiket Parkir')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (60130, N'ListJenisLaporan', N'4', N'FoodCourt', N'FoodCourt')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (70127, N'JenisLaporanBulanan', N'1', N'Summary Data', N'Summary Data')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (70128, N'JenisLaporanBulanan', N'2', N'Summary Per Days', N'Summary Per Days')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (80127, N'JenisLaporanTahunan', N'1', N'Summary Data', N'Summary Data')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (80128, N'JenisLaporanTahunan', N'2', N'Summary Per Months', N'Summary Per Months')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (80129, N'JenisLaporanBulanan', N'3', N'Rekapan Transaksi Per Hari', N'Rekapan Transaksi Per Hari')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (90127, N'ListJenisDashboard', N'1', N'Periode', N'Harian')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (90128, N'ListJenisDashboard', N'2', N'Bulanan', N'Bulanan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (90129, N'ListJenisDashboard', N'3', N'Tahunan', N'Tahunan')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (90130, N'ListStatusChasierBox', N'1', N'Open', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (90131, N'ListStatusChasierBox', N'2', N'Closed', N'2')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (90133, N'ListStatusChasierBox', N'0', N'All', N'0')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100129, N'ListTypeObeject', N'2', N'textbox', N'textbox')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100130, N'ListTypeObeject', N'3', N'FileInput', N'FileInput')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100140, N'ListPlatform', N'1', N'WEB', N'WEB')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100141, N'ListPlatform', N'1', N'Desktop', N'Desktop')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100143, N'ListPlatform', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100150, N'ListTypeObeject', N'5', N'textarea', N'textarea')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100152, N'ListTypeObeject', N'7', N'selectpicker', N'selectpicker')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100131, N'ListShowHide', N'0', N'Show', N'Show')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100132, N'ListShowHide', N'1', N'Hidden', N'Hidden')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100136, N'ListMandatory', N'0', N'Yes', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100134, N'ListFilterBy', N'1', N'Yes', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100135, N'ListFilterBy', N'2', N'No', N'0')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100137, N'ListMandatory', N'2', N'No', N'0')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100138, N'ListIsNumber', N'1', N'Yes', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100139, N'ListIsNumber', N'2', N'No', N'0')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100142, N'ListPlatform', N'3', N'SettingDesktop', N'SettingDesktop')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100144, N'ListIdMenu', N'0', N'', N'0')
GO
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100158, N'ListTypeObeject', N'10', N'textnumber', N'textnumber')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100159, N'ListJenisBuku', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100160, N'ListJenisBuku', N'1', N'Novel', N'Novel')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100161, N'ListJenisBuku', N'2', N'Agama', N'Agama')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100162, N'ListJenisBuku', N'3', N'Komik', N'Komik')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100163, N'ListJenisBuku', N'4', N'Ensiklopedi', N'Ensiklopedi')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100164, N'ListJenisBuku', N'5', N'Biografi', N'Biografi')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100165, N'ListEnable', N'1', N'Enable', N'enable')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100166, N'ListEnable', N'2', N'Disable', N'disable')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100167, N'ListTypeObeject', N'11', N'DateRange', N'DateRange')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100171, N'ListStatusPeminjaman', N'4', N'All', N'4')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100172, N'ListStatusPeminjaman', N'1', N'Menunggu Konfirmasi', N'1')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100155, N'ListRoleGroup', N'0', N'', N'')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100156, N'ListRoleGroup', N'1', N'Admin', N'Admin')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100157, N'ListRoleGroup', N'2', N'Penyewa', N'Penyewa')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100168, N'ListStatusPeminjaman', N'0', N'Menunggu Checkout', N'0')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100169, N'ListStatusPeminjaman', N'2', N'Dalam Peminjaman', N'2')
INSERT [dbo].[Master_ListItem] ([id], [ListName], [Urutan], [Text], [Value]) VALUES (100170, N'ListStatusPeminjaman', N'3', N'Telah Selesai', N'3')
SET IDENTITY_INSERT [dbo].[Master_ListItem] OFF
SET IDENTITY_INSERT [dbo].[Role_MenuTree] ON 

INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (1, 1, 2, 90167, 0, 90158)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (2, 1, 1, 0, 4, 90165)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (3, 1, 2, 90165, 2, 90162)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (4, 1, 2, 90165, 1, 90163)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (5, 1, 2, 90165, 4, 90161)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (6, 1, 2, 90165, 3, 90160)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (7, 1, 2, 90165, 5, 90164)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (8, 1, 2, 90167, 0, 90157)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (9, 1, 2, 90170, 1, 90159)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (10, 1, 2, 90165, 6, 90166)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (11, 1, 1, 0, 3, 90167)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (12, 1, 1, 0, 1, 90169)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (13, 1, 1, 0, 2, 90170)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (14, 1, 2, 90170, 2, 90171)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (19, 1, 3, 90174, 0, 90176)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (15, 1, 1, 0, 2, 90172)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (16, 1, 2, 90170, 3, 90173)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (17, 1, 2, 90172, 1, 90174)
INSERT [dbo].[Role_MenuTree] ([IdRole], [IdModule], [Posisi], [IdParent], [Urutan], [IdMenu]) VALUES (18, 1, 3, 90174, 1, 90175)
SET IDENTITY_INSERT [dbo].[Role_MenuTree] OFF
SET IDENTITY_INSERT [dbo].[TransaksiPeminjamanBuku] ON 

INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (39, 1, N'14/10/2020', N'17/10/2020', 30000, 3, 2, 8)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (40, 3, N'14/10/2020', N'17/10/2020', 30000, 3, 2, 8)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (41, 1, N'14/10/2020', N'16/10/2020', 20000, 3, 3, 9)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (42, 1, N'13/10/2020', N'17/10/2020', 40000, 3, 1, 10)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (43, 10, N'13/10/2020', N'17/10/2020', 40000, 3, 1, 11)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (45, 1, N'14/10/2020', N'17/10/2020', 30000, 0, 1, NULL)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (46, 4, N'14/10/2020', N'15/10/2020', 1000, 0, 1, NULL)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (47, 14, N'14/10/2020', N'15/10/2020', 10000, 0, 1, NULL)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (48, 6, N'14/10/2020', N'17/10/2020', 30000, 3, 3, 12)
INSERT [dbo].[TransaksiPeminjamanBuku] ([Id], [IdBuku], [SewaDari], [Sewasampai], [TotalSewa], [Status], [IdUser_Penyewa], [IdTrx]) VALUES (49, 3, N'14/10/2020', N'17/10/2020', 30000, 3, 3, 12)
SET IDENTITY_INSERT [dbo].[TransaksiPeminjamanBuku] OFF
SET IDENTITY_INSERT [dbo].[UserData] ON 

INSERT [dbo].[UserData] ([id], [username], [password], [RoleId], [NamaLengkap], [Photo], [Status]) VALUES (1, N'root', 0x0100000061CF78BDCAB2C671030BA3A7B3169030E968F0D251997A0BE62E00FDDE419A50, 1, N'Riko Ade Rinanda', N'FileUser//Photo_1.png', 1)
INSERT [dbo].[UserData] ([id], [username], [password], [RoleId], [NamaLengkap], [Photo], [Status]) VALUES (2, N'riko', 0x010000003AAE9FADBF426D164549F30B61E85732633215C6B71AE47C0B74152ACE2A3B2C, 2, N'Riko', N'FileUser//Photo_2.jpeg', 1)
INSERT [dbo].[UserData] ([id], [username], [password], [RoleId], [NamaLengkap], [Photo], [Status]) VALUES (3, N'guest', 0x01000000DBA0A072C072E81615DC308D91BA49A917F506254D6BAF64B9534A29240EE1B3, 2, N'guest', N'FileUser//Photo_3.jpeg', 1)
SET IDENTITY_INSERT [dbo].[UserData] OFF
ALTER TABLE [dbo].[DataMenu] ADD  CONSTRAINT [DF_DataMenu_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Master_Form] ADD  DEFAULT ((0)) FOR [Urutan]
GO
ALTER TABLE [dbo].[Master_Form] ADD  CONSTRAINT [DF_Master_Form_FilterBy]  DEFAULT ((0)) FOR [FilterBy]
GO
ALTER TABLE [dbo].[Role_MenuTree] ADD  CONSTRAINT [DF_Role_MenuTree_IdParent]  DEFAULT ((0)) FOR [IdParent]
GO
ALTER TABLE [dbo].[Role_MenuTree] ADD  CONSTRAINT [DF_Role_MenuTree_Urutan]  DEFAULT ((0)) FOR [Urutan]
GO
/****** Object:  StoredProcedure [dbo].[SP_BukuData_Get_ById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BukuData_Get_ById]
	@Id bigint
AS
	select*from DataBuku
	where IdBook = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_BukuData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BukuData_GetSearch]
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max)
AS
	select*from DataBuku
	where 
	REPLACE(RTRIM(LTRIM(JudulBuku)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@JudulBuku)),' ','')+'%'
	and REPLACE(RTRIM(LTRIM(Pengarang)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@Pengarang)),' ','')+'%'
	and REPLACE(RTRIM(LTRIM(JenisBuku)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@JenisBuku)),' ','')+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_BukuData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BukuData_Save]
	@IdBook bigint,
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max),
	@HargaSewaPerHari float,
	@Img nvarchar(max),
	@Status bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if(@IdBook =0)
begin
	if not exists(select*from DataBuku where JudulBuku = @JudulBuku and Pengarang = @Pengarang and JenisBuku=@JenisBuku)
	begin
		insert into DataBuku 
		(JudulBuku,Pengarang,JenisBuku,HargaSewaPerHari,Img,Status)
		values(@JudulBuku,@Pengarang,@JenisBuku,@HargaSewaPerHari,@Img,@Status)

		set @IdBook = (select IdBook from DataBuku where IdBook = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Penambahan Buku '+ @JudulBuku + ' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Buku '+ @JudulBuku + ' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @JudulBuku_s nvarchar(max)

	select @JudulBuku_s=JudulBuku from DataBuku where IdBook = @IdBook

	if(@JudulBuku_s = @JudulBuku)
	begin
		update DataBuku
		set 
			JudulBuku=@JudulBuku,
			Pengarang=@Pengarang,
			JenisBuku=@JenisBuku,
			HargaSewaPerHari=@HargaSewaPerHari,
			Img=@Img,
			Status=@Status
		where IdBook = @IdBook

		set @Title = 'Success'
		set @Message = 'Buku '+ @JudulBuku + ' berhasil diupdate'
		set @MStatus = 'success'
	end
	else
	begin
		if((select count(*) from DataBuku where JudulBuku= @JudulBuku and IdBook not in (@IdBook)) > 0)
		begin
			set @Title = 'Sorry'
			set @Message = 'Buku '+ @JudulBuku + ' already exists, silahkan input Judul lain'
			set @MStatus = 'error'
		end
		else
		begin
			update DataBuku
			set 
				JudulBuku=@JudulBuku,
				Pengarang=@Pengarang,
				JenisBuku=@JenisBuku,
				HargaSewaPerHari=@HargaSewaPerHari,
				Img=@Img,
				Status=@Status
			where IdBook = @IdBook
			
			set @Title = 'Success'
			set @Message = 'Buku '+ @JudulBuku + ' berhasil diupdate'
			set @MStatus = 'success'
		end
	end

end

select @Title Title, @Message Message, @MStatus Status, @IdBook Id
GO
/****** Object:  StoredProcedure [dbo].[SP_CariBuku_AddCart]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CariBuku_AddCart]
	@IdBook bigint,
	@IdUser_Penyewa bigint,
	@HargaSewaPerHari float,
	@SewaDari nvarchar(20),
	@Sewasampai nvarchar(20),
	@TotalSewa float
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)
	declare @Id bigint

	declare @JudulBuku nvarchar(max)
	set @JudulBuku = (select JudulBuku from DataBuku where IdBook = @IdBook)
	if(@TotalSewa != 0)
	begin
		if not exists((select*from TransaksiPeminjamanBuku where IdBuku = @IdBook and Status < 2 and IdUser_Penyewa = @IdUser_Penyewa))
	begin
		insert into TransaksiPeminjamanBuku
		(IdBuku,SewaDari,Sewasampai,TotalSewa,IdUser_Penyewa,Status)
		values
		(
			@IdBook,@SewaDari,@Sewasampai,@TotalSewa,@IdUser_Penyewa,0
		)

		set @Id = (select Id from TransaksiPeminjamanBuku where Id = SCOPE_IDENTITY())

		set @Title = 'Success'
		set @Message = 'Penambahan Buku '+ @JudulBuku + ' ke List Peminjaman berhasil ditambahkan'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Buku '+ @JudulBuku + ' sudah dalam list peminjaman'
		set @MStatus = 'error'
	end
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Silahkan pilih tanggal peminjaman minimal 1 hari peminjaman'
		set @MStatus = 'error'
	end
	select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_CariBuku_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CariBuku_GetSearch]
	@AllText nvarchar(max),
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max)
AS
	if(@JudulBuku ='' and @Pengarang ='' and @JenisBuku='')
	begin
		set @AllText = '%'+@AllText+'%'		
		EXEC sp_FindStringInTable_with_flag @AllText, 'dbo', 'DataBuku' 
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_CariBuku_UpdateCart]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CariBuku_UpdateCart]
	@Id bigint,
	@IdBook bigint,
	@IdUser_Penyewa bigint,
	@HargaSewaPerHari float,
	@SewaDari nvarchar(20),
	@Sewasampai nvarchar(20),
	@TotalSewa float
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)

	declare @JudulBuku nvarchar(max)
	declare @JudulBuku_Sebelum nvarchar(max)
	set @JudulBuku = (select JudulBuku from DataBuku where IdBook = @IdBook)

	set @JudulBuku_Sebelum = (select JudulBuku from DataBuku where IdBook in (select IdBuku  from TransaksiPeminjamanBuku where Id = @Id))

	if(@TotalSewa != 0 and (@SewaDari != @Sewasampai))
	begin
		if not exists((select*from TransaksiPeminjamanBuku where IdBuku = @IdBook and (Status >= 0 and status < 3) and IdUser_Penyewa = @IdUser_Penyewa and Id not in (@Id)))
		begin
			update TransaksiPeminjamanBuku
			set IdBuku = @IdBook,
			SewaDari = @SewaDari,
			Sewasampai = @Sewasampai,
			TotalSewa = @TotalSewa,
			IdUser_Penyewa = @IdUser_Penyewa
			where 
			Id = @Id

			set @Title = 'Success'
			set @Message = 'Perubahan dari Buku "'+ @JudulBuku_Sebelum + '" ke "'+@JudulBuku+'" berhasil dilakukan'
			set @MStatus = 'success'
		end
		else
		begin
			set @Title = 'Sorry'
			set @Message = 'Buku '+ @JudulBuku + ' sudah dalam list peminjaman'
			set @MStatus = 'error'
		end
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Silahkan pilih tanggal peminjaman minimal 1 hari peminjaman'
		set @MStatus = 'error'
	end
	select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_DetailHarian_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DetailHarian_GetSearch]
	@TglTrxFrom nvarchar(max),
	@TglTrxUntil nvarchar(max)
AS

select qq.* from 
(
	select 
	a.SewaDari,a.Sewasampai,c.NamaLengkap NamaPenyewa,
	b.JudulBuku,b.Pengarang,b.JenisBuku,b.HargaSewaPerHari, 
	d.CreateDate TanggalTransaksi,
	a.TotalSewa,d.KasirTerimaUang,d.UangKembalian,
	(select NamaLengkap from UserData where id in (d.IdKasir)) NamaKasir,
	e.TanggalPengembalian 
	from TransaksiPeminjamanBuku a
	left join DataBuku b on b.IdBook = a.IdBuku
	left join UserData c on c.id = a.IdUser_Penyewa
	left join LogConfirmation d on d.IdTrx = a.IdTrx
	left join LogPengembalianBuku e on e.IdPeminjaman = a.Id
	where a.Status = 3
) qq
where --q.TanggalTransaksi 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(qq.TanggalTransaksi ,10),'/','-'), 105), 23),'-','') between 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxFrom,10),'/','-'), 105), 23),'-','') 
	and replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxUntil,10),'/','-'), 105), 23),'-','') 
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_FormData_Del]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from Master_Form where idLog = @Id)
begin
	declare @NamaForm nvarchar(max)
	declare @IdObj nvarchar(max)

	select @IdObj=Id, @NamaForm=NamaForm  from Master_Form where idLog=@Id
	
	delete from Master_Form where idLog=@Id

	set @Title = 'Success'
	set @Message = 'Data '+ @NamaForm + ' dengan ID Object : '+@IdObj+' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_FormData_Get]
AS
	select*from Master_Form
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_FormData_GetById]
	@Id bigint
AS
	select*from Master_Form
	where idLog = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_FormData_GetSearch]
	@NamaForm nvarchar(max)
AS


select*from Master_Form
where 
	REPLACE(RTRIM(LTRIM(NamaForm)),' ','') like '%'+ REPLACE(RTRIM(LTRIM(@NamaForm)),' ','')+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_FormData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_FormData_Save]
	@idLog bigint,
	@NamaForm nvarchar(max),
	@Type nvarchar(max),
	@Id nvarchar(max),
	@TextLabel nvarchar(max),
	@Action nvarchar(max),
	@Controller nvarchar(max),
	@ValueInput nvarchar(max),
	@ListModel nvarchar(max),
	@Urutan bigint,
	@ShowHide nvarchar(max),
	@ReadOnly nvarchar(max),
	@Enable nvarchar(max),
	@Mandatory nvarchar(max),
	@IsNumber bigint,
	@FilterBy bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

declare @IdS bigint
set @IdS = 0
if(@idLog = 0)
begin
	if not exists(select*from Master_Form where NamaForm = @NamaForm and Id = @Id)
	begin
		insert into Master_Form
		(
			NamaForm,
			Type,
			Id,
			TextLabel,
			Action,
			Controller,
			ValueInput,
			ListModel,
			Urutan,
			ShowHide,
			ReadOnly,
			Enable,
			Mandatory,
			IsNumber,
			FilterBy
		)
		values 
		(
			@NamaForm,
			@Type,
			@Id,
			@TextLabel,
			@Action,
			@Controller,
			@ValueInput,
			@ListModel,
			@Urutan,
			@ShowHide,
			@ReadOnly,
			@Enable,
			@Mandatory,
			@IsNumber,
			@FilterBy
		)

		set @Id = (select idLog from Master_Form where idLog = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Penambahan Element Form '+ @NamaForm + ' dengan object :'+ @Id +' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data Element Form '+ @NamaForm + ' dengan object :'+ @Id +' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @namaObject_sebelum nvarchar(max)
	set @namaObject_sebelum = (select Id from Master_Form where idLog=@idLog)
	if(@namaObject_sebelum = @Id)
	begin
		update Master_Form
		set 
			NamaForm=@NamaForm,
			Type=@Type,
			Id=@Id,
			TextLabel=@TextLabel,
			Action=@Action,
			Controller=@Controller,
			ValueInput=@ValueInput,
			ListModel=@ListModel,
			Urutan=@Urutan,
			ShowHide=@ShowHide,
			ReadOnly=@ReadOnly,
			Enable=@Enable,
			Mandatory=@Mandatory,
			IsNumber=@IsNumber,
			FilterBy=@FilterBy
		where 
		idLog=@idLog

		set @Id = @idLog
		set @Title = 'Success'
		set @Message = 'Data Element Form '+ @NamaForm + ' dengan object :'+ @Id +' berhasil diupdate'
		set @MStatus = 'success'

	end
	else
	begin
		declare @idmodule_sama bigint
		if((select count(*) from Master_Form where NamaForm=@NamaForm and Id=@Id) > 0)
		begin
			set @Id = @idLog
			set @Title = 'Sorry'
			set @Message = 'Data Element Form '+ @NamaForm + ' dengan object :'+ @Id +' already exists, silahkan cari nama lain'
			set @MStatus = 'error'
		end
		else
		begin
			update Master_Form
			set 
				NamaForm=@NamaForm,
				Type=@Type,
				Id=@Id,
				TextLabel=@TextLabel,
				Action=@Action,
				Controller=@Controller,
				ValueInput=@ValueInput,
				ListModel=@ListModel,
				Urutan=@Urutan,
				ShowHide=@ShowHide,
				ReadOnly=@ReadOnly,
				Enable=@Enable,
				Mandatory=@Mandatory,
				IsNumber=@IsNumber,
				FilterBy=@FilterBy
			where 
			idLog=@idLog

			set @Id = @idLog
			set @Title = 'Success'
			set @Message = 'Data Element Form '+ @NamaForm + ' dengan object :'+ @Id +' berhasil diupdate'
			set @MStatus = 'success'
		end
	end

end


select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_FormPeminjaman_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_FormPeminjaman_GetById]
	@Id bigint
AS
	select
	*
	from DataBuku
	where IdBook = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Module]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_Get_Module]
	@param1 int = 0,
	@param2 int
AS
	SELECT @param1, @param2
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[SP_GetDateTime]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetDateTime]
AS
	SELECT FORMAT(GETDATE() , 'dd/MM/yyyy HH:mm:ss') as tanggal  
GO
/****** Object:  StoredProcedure [dbo].[SP_GetDiffDays]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetDiffDays]
	@Date1 nvarchar(20),
	@Date2 nvarchar(20)
AS
	SELECT DATEDIFF(DAY, 
	replace(CONVERT(VARCHAR(10), CONVERT(date, @Date1, 105), 23),'-',''), 
	replace(CONVERT(VARCHAR(10), CONVERT(date, @Date2, 105), 23),'-','')) Total
GO
/****** Object:  StoredProcedure [dbo].[SP_GetListDataMaster]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetListDataMaster]
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
		else if(@Data='ListJudulBuku')
		begin
			select*from 
			(
				select '' Text, 0 Value
				union all
				select
				JudulBuku Text, IdBook Value
				from DataBuku
				where Status =1
			) q
			order by q.Text
		end
		else if(@Data ='ListNamaPenyewa')
		begin
			select*from 
			(
				select '' Text, 0 Value
				union all
				select
				NamaLengkap Text,id Value
				from UserData
			) q
			order by q.Text
		end
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMenuByAkses]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetMenuByAkses]
	@IdUser bigint,	
	@IdModule bigint,
	@Posisi bigint
AS
if(@Posisi = 1)
begin
	select*from DataMenu x
	left join Role_MenuTree b on b.IdMenu = x.idMenu
	where x.idMenu in
	(
		select xx.IdMenu from Role_MenuTree xx
		where IdModule = @IdModule and Posisi = @Posisi
		and xx.IdMenu in (
			select distinct case when IdParent = 0 then b.IdMenu else IdParent end as Id
			from Role_MenuTree b
			where b.IdMenu in (select a.IdMenu from GroupData_MenuAkses a where IdRole in (select RoleId from UserData where id = @IdUser))
		)
	)
	and Status =1
	order by b.Urutan asc
end
else if(@Posisi >=2)
begin
	select x.* from DataMenu x
	left join Role_MenuTree b on b.IdMenu = x.idMenu
	where x.idMenu in
	(
		select xx.IdMenu from Role_MenuTree xx
		where Posisi = @Posisi and IdParent = @IdModule
		and xx.IdMenu in (
			select distinct case when IdParent > 0 then b.IdMenu else IdParent end as Id
			from Role_MenuTree b
			where b.IdMenu in (select a.IdMenu from GroupData_MenuAkses a where IdRole in (select RoleId from UserData where id = @IdUser))
		)
	)
	and Status =1
	order by b.Urutan asc
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetModulByAkses]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetModulByAkses]
	@IdUser bigint
AS
	select*from DataModule where IdModul in
	(
		select
		distinct IdModule
		from Role_MenuTree where IdMenu in (
			select
			IdMenu
			from GroupData_MenuAkses where IdRole in (select RoleId from UserData where id = @IdUser)
		)
	)
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProfileUser]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetProfileUser]
	@IdUser bigint
AS
	select
	*, b.NamaGroup RoleName
	from UserData a
	left join GroupData b on b.IdRole = a.RoleId
	where id =@IdUser
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserDataMaster]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetUserDataMaster]
	@Id bigint,
	@search nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	if(@Id = 0)
	begin
		select*from UserData where NamaLengkap like '%'+@search+'%'
	end
	else if(@Id != 0 and @search = '')
	begin
		select*from UserData where id = @Id
	end

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GroupData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_GroupData_Get]
AS
	select*from GroupData
GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_Bayar]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec SP_KonfirmasiTransaksi_Bayar @IdTrx=5,@CreateDate='13/10/2020 01:19:25',
--@IdPenyewa=1,@NamaPenyewa='Riko Ade Rinanda',@Qty=3,@TotalSewa='220,000',
--@StatusConfirm=0,@KasirTerimaUang='300,000',@UangKembalian='80,000',@IdKasir=1
CREATE PROCEDURE [dbo].[SP_KonfirmasiTransaksi_Bayar]
	@IdTrx bigint,
	@CreateDate nvarchar(max),
	@IdPenyewa bigint,
	@NamaPenyewa nvarchar(max),
	@Qty float,
	@TotalSewa float,
	@StatusConfirm int,
	@KasirTerimaUang float,
	@UangKembalian float,
	@IdKasir bigint
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)
	
	if exists(select*from LogConfirmation where IdTrx = @IdTrx and StatusConfirm = 0)
	begin
		if(@KasirTerimaUang >= @TotalSewa)
		begin
			update LogConfirmation
			set
				StatusConfirm = 1,
				KasirTerimaUang = @KasirTerimaUang,
				UangKembalian = @UangKembalian,
				IdKasir = @IdKasir
			where IdTrx = @IdTrx

			update TransaksiPeminjamanBuku 
			set Status = 2
			where IdTrx = @IdTrx

			set @Title = 'Success'
			set @Message = 'No.ID Transaksi '+cast(@IdTrx as nvarchar(max))+' dengan Nama Penyewa  "'+ @NamaPenyewa+' berhasil melakukan pembayaran'
			set @MStatus = 'success'
		end
		else
		begin
			set @Title = 'Gagal'
			set @Message = 'Uang yang dibayarkan belum cukup'
			set @MStatus = 'error'
		end

	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data not exists'
		set @MStatus = 'error'
	end

	select @Title Title, @Message Message, @MStatus Status, @IdTrx Id
GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_DetailGet]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KonfirmasiTransaksi_DetailGet]
	@Id bigint
AS
	select
		a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
		c.NamaLengkap Nama_Penyewa
		from TransaksiPeminjamanBuku a
		left join DataBuku b on b.IdBook = a.IdBuku
		left join UserData c on c.id = a.IdUser_Penyewa
	where IdTrx = @Id
	
GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KonfirmasiTransaksi_GetById]
	@Id bigint
AS
	select
	a.*,b.NamaLengkap NamaPenyewa,
	0 KasirTerimaUang, 0 UangKembalian
	from LogConfirmation a
	left join UserData b on b.id = a.IdPenyewa
	where 
	IdTrx = @Id
	

GO
/****** Object:  StoredProcedure [dbo].[SP_KonfirmasiTransaksi_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KonfirmasiTransaksi_GetSearch]
	@IdTrx nvarchar(max),
	@NamaPenyewa nvarchar(max)
AS
	if(@IdTrx = 0)
	begin
		set @IdTrx = ''
	end

	select
	a.*,b.NamaLengkap NamaPenyewa
	from LogConfirmation a
	left join UserData b on b.id = a.IdPenyewa
	where cast(IdTrx as nvarchar(max)) like '%'+@IdTrx+'%'
	and b.NamaLengkap like '%'+@NamaPenyewa+'%'
	and StatusConfirm = 0
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ListItemData_Del]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from Master_ListItem where id = @Id)
begin
	declare @NamaList nvarchar(max)
	declare @Item nvarchar(max)

	select @Item=Text, @NamaList=ListName  from Master_ListItem where id=@Id
	
	delete from Master_ListItem where id=@Id

	set @Title = 'Success'
	set @Message = 'Data '+ @NamaList + ' dengan Item : '+@Item+' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ListItemData_Get]
AS
	select*from Master_ListItem
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ListItemData_GetById]
	@Id bigint
AS
	select*from Master_ListItem
	where id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ListItemData_GetSearch]
	
	@ListName nvarchar(max)
AS
	select*from Master_ListItem
	where 
	REPLACE(RTRIM(LTRIM(ListName)),' ','') like '%'+ REPLACE(RTRIM(LTRIM(@ListName)),' ','')+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_ListItemData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ListItemData_Save]
	@id int,
	@ListName nvarchar(max),
	@Urutan nvarchar(max),
	@Text nvarchar(max),
	@Value nvarchar(max)
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

declare @IdS bigint
set @IdS = 0
if(@id = 0)
begin
	if not exists(select*from Master_ListItem where ListName = @ListName and Text = @Text)
	begin
		insert into Master_ListItem
		(
			ListName,
			Urutan,
			Text,
			Value
		)
		values 
		(
			@ListName,
			@Urutan,
			@Text,
			@Value
		)

		set @Id = (select id from Master_ListItem where id = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Data ListItem '+ @ListName + ' dengan Item :'+ @Text +' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data ListItem '+ @ListName + ' dengan Item :'+ @Text +' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @item_sebelum nvarchar(max)
	set @item_sebelum = (select Text from Master_ListItem where id=@id)
	if(@item_sebelum = @Text)
	begin
		update Master_ListItem
		set 
			ListName=@ListName,
			Urutan=@Urutan,
			Text=@Text,
			Value=@Value
		where 
		id=@id

		set @Title = 'Success'
		set @Message = 'Data ListItem '+ @ListName + ' dengan Item :'+ @Text +' berhasil diupdate'
		set @MStatus = 'success'

	end
	else
	begin
		declare @id_sama bigint
		if((select count(*) from Master_ListItem where ListName = @ListName and Text = @Text) > 0)
		begin
			set @Title = 'Sorry'
			set @Message = 'Data ListItem '+ @ListName + ' dengan Item :'+ @Text +' already exists, silahkan cari nama lain'
			set @MStatus = 'error'
		end
		else
		begin
			update Master_ListItem
			set 
				ListName=@ListName,
				Urutan=@Urutan,
				Text=@Text,
				Value=@Value
			where 
			id=@id

			set @Title = 'Success'
			set @Message = 'Data ListItem '+ @ListName + ' dengan Item :'+ @Text +' berhasil diupdate'
			set @MStatus = 'success'
		end
	end

end


select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginProc]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_LoginProc]
	@Username nvarchar(max),
	@Password nvarchar(max),
	@Category nvarchar(max)
AS
	
	if exists(select*from UserData where username = @Username and convert(nvarchar(max),DecryptByPassPhrase('key', password ))=@Password)
	begin
		select 
		'Success' title,
		'Login Success' message,
		'success' status
	end
	else
	begin
		select 
		'Sorry' title,
		'Username dan password tidak teregistrasi, mohon dicheck kembali ' message,
		'error' status
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginProc_GetID]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_LoginProc_GetID]
	@Username nvarchar(max),
	@Password nvarchar(max),
	@Category nvarchar(max)
AS
	
	select id
	from UserData where username = @Username and convert(nvarchar(max),DecryptByPassPhrase('key', password ))=@Password
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MenuData_Del]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from DataMenu where idMenu = @Id)
begin
	declare @NamaMenu nvarchar(max)
	set @NamaMenu =(select NamaMenu from DataMenu where idMenu=@Id)
	
	delete from DataMenu where idMenu = @Id

	set @Title = 'Success'
	set @Message = 'Menu '+ @NamaMenu + ' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'Modul '+ @NamaMenu + ' not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MenuData_Get]
AS

select*from DataMenu
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Get_ById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MenuData_Get_ById]
	@Id bigint
AS
	select*from DataMenu
	where idMenu = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_GetMenuByIdModule]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MenuData_GetMenuByIdModule]
	@Id bigint
AS
	
	select*from DataMenu where idMenu in (select IdMenu from Role_MenuTree where IdModule = @Id)
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_GetParent]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MenuData_GetParent]
	@IdModule bigint, 
	@IdMenu bigint,
	@IdPosisi bigint
AS

	select
	a.IdMenu Value, b.NamaMenu Text
	from Role_MenuTree a
	left join DataMenu b on b.idMenu = a.IdMenu
	where a.Posisi = (@IdPosisi-1) and a.IdModule = @IdModule
	and a.IdMenu not in (@IdMenu)
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MenuData_GetSearch]
	@NamaMenu nvarchar(max),
	@Controller nvarchar(max),
	@Platform nvarchar(max)
AS
if(@Platform !='')
begin
	select*from DataMenu
	where REPLACE(RTRIM(LTRIM(NamaMenu)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@NamaMenu)),' ','')+'%' and REPLACE(RTRIM(LTRIM(Platform)),' ','') = REPLACE(RTRIM(LTRIM(@Platform)),' ','')
	and REPLACE(RTRIM(LTRIM(Controller)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@Controller)),' ','')+'%'
end
else
begin
	select*from DataMenu
	where REPLACE(RTRIM(LTRIM(NamaMenu)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@NamaMenu)),' ','')+'%' 
	and REPLACE(RTRIM(LTRIM(Controller)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@Controller)),' ','')+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_MenuData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_MenuData_Save]
	@idMenu bigint,
	@NamaMenu nvarchar(max),
	@Action nvarchar(max),
	@Controller nvarchar(max),
	@Platform nvarchar(max),
	@Img nvarchar(max),
	@Status bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

declare @Id bigint
set @Id = 0
if(@idMenu = 0)
begin
	if not exists(select*from [dbo].[DataMenu] where NamaMenu = @NamaMenu)
	begin
		insert into DataMenu
		(
			NamaMenu,
			Action,
			Controller,
			Platform,
			Img,
			Status
		)
		values 
		(
			@NamaMenu,
			@Action,
			@Controller,
			@Platform,
			@Img,
			@Status
		)
		set @Id = (select idMenu from DataMenu where idMenu = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Penambahan Menu '+ @NamaMenu + ' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Modul '+ @NamaMenu + ' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @namamenu_sebelum nvarchar(max)
	set @namamenu_sebelum = (select NamaMenu from DataMenu where idMenu=@idMenu)
	if(@namamenu_sebelum = @NamaMenu)
	begin
		update DataMenu
		set 
			NamaMenu=@NamaMenu,
			Action=@Action,
			Controller=@Controller,
			Platform=@Platform,
			Img=@Img,
			Status=@Status
		where 
		idmenu=@idMenu

		set @Id = @idMenu
		set @Title = 'Success'
		set @Message = 'Menu '+ @NamaMenu + ' berhasil diupdate'
		set @MStatus = 'success'

	end
	else
	begin
		declare @idmodule_sama bigint
		if((select count(*) from DataMenu where NamaMenu= @NamaMenu) > 0)
		begin
			set @Id = @idMenu
			set @Title = 'Sorry'
			set @Message = 'Modul '+ @NamaMenu + ' already exists, silahkan cari nama lain'
			set @MStatus = 'error'
		end
		else
		begin
			update DataMenu
			set 
				NamaMenu=@NamaMenu,
				Action=@Action,
				Controller=@Controller,
				Platform=@Platform,
				Img=@Img,
				Status=@Status
			where 
			idMenu=@idMenu

			set @Id = @idMenu
			set @Title = 'Success'
			set @Message = 'Menu '+ @NamaMenu + ' berhasil diupdate'
			set @MStatus = 'success'
		end
	end

end


select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ModuleData_Del]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from DataModule where IdModul = @Id)
begin
	declare @NamaModule nvarchar(max)
	set @NamaModule =(select NamaModule from DataModule where IdModul=@Id)
	
	delete from DataModule where IdModul = @Id

	set @Title = 'Success'
	set @Message = 'Modul '+ @NamaModule + ' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'Modul '+ @NamaModule + ' not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ModuleData_Get]
AS
	select top 100 *from DataModule
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Get_ById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_ModuleData_Get_ById]
	@Id bigint
AS
	select*from DataModule
	where IdModul = @Id
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
-- exec SP_ModuleData_GetSearch @NamaModule='',@Status=0
CREATE PROCEDURE [dbo].[SP_ModuleData_GetSearch]
	@NamaModule nvarchar(max),
	@Status  bigint
AS
	select*from DataModule
	where NamaModule like '%'+@NamaModule+'%' and Status = @Status
GO
/****** Object:  StoredProcedure [dbo].[SP_ModuleData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[SP_ModuleData_Save]
	@IdModul bigint,
	@NamaModule nvarchar(max),
	@Action nvarchar(max),
	@Controller nvarchar(max),
	@Img nvarchar(max),
	@Status int
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

declare @Id bigint
set @Id = 0
if(@IdModul = 0)
begin
	if not exists(select*from [dbo].[DataModule] where NamaModule = @NamaModule)
	begin
		insert into DataModule
		(NamaModule,Action,Controller,Img,Status)
		values (@NamaModule,@Action,@Controller,@Img,@Status)
		set @Id = (select IdModul from DataModule where IdModul = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Penambahan Modul '+ @NamaModule + ' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Modul '+ @NamaModule + ' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @namamodule_sebelum nvarchar(max)
	set @namamodule_sebelum = (select NamaModule from DataModule where IdModul=@IdModul)
	if(@namamodule_sebelum = @NamaModule)
	begin
		update DataModule
		set 
			Action=@Action,
			Controller = @Controller,
			Img = @Img,
			Status= @Status
		where 
		IdModul=@IdModul

		set @Id = @IdModul
		set @Title = 'Success'
		set @Message = 'Modul '+ @NamaModule + ' berhasil diupdate'
		set @MStatus = 'success'

	end
	else
	begin
		declare @idmodule_sama bigint
		if((select count(*) from DataModule where NamaModule= @NamaModule) > 0)
		begin
			set @Id = @IdModul
			set @Title = 'Sorry'
			set @Message = 'Modul '+ @NamaModule + ' already exists, silahkan cari nama lain'
			set @MStatus = 'error'
		end
		else
		begin
			update DataModule
			set 
				NamaModule=@NamaModule,
				Action=@Action,
				Controller = @Controller,
				Img = @Img,
				Status= @Status
			where 
			IdModul=@IdModul

			set @Id = @IdModul
			set @Title = 'Success'
			set @Message = 'Modul '+ @NamaModule + ' berhasil diupdate'
			set @MStatus = 'success'
		end
	end

end


select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_PengembalianBuku_Search]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PengembalianBuku_Search]
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max),
	@Nama_Penyewa nvarchar(max)
AS
	select
		a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
		c.NamaLengkap Nama_Penyewa
		from TransaksiPeminjamanBuku a
		left join DataBuku b on b.IdBook = a.IdBuku
		left join UserData c on c.id = a.IdUser_Penyewa
	where 
	a.Status =2
	and b.JudulBuku like '%'+@JudulBuku+'%'
	and b.Pengarang like '%'+@Pengarang+'%'
	and b.JenisBuku like '%'+@JenisBuku+'%'
	and c.NamaLengkap like '%'+@Nama_Penyewa+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_PengembalianBuku_Submit]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PengembalianBuku_Submit]
	@Id bigint,
	@IdUser bigint
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)

	if exists (select*from TransaksiPeminjamanBuku where Id = @Id)
	begin
		declare @JudulBuku nvarchar(max)
		declare @IdBook bigint
		
		select @JudulBuku = JudulBuku,@IdBook=IdBook from DataBuku where IdBook in
		(select IdBuku from TransaksiPeminjamanBuku where Id = @Id)

		update TransaksiPeminjamanBuku 
		set Status = 3
		where Id = @Id

		insert into LogPengembalianBuku
		(IdPeminjaman,IdBook,TanggalPengembalian,UserID)
		values
		(@Id,@IdBook,FORMAT(GETDATE() , 'dd/MM/yyyy HH:mm:ss'),@IdUser)

		set @Title = 'Success'
		set @Message = 'Buku "'+ @JudulBuku+'" berhasil dikembalikan'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data tidak Valid'
		set @MStatus = 'error'
	end

	select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_Get]
AS
	select*from RoleGroupAkses
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_GetById]
	@Id bigint
AS
	select*from GroupData
	where IdRole = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_GetSearch]
	@NamaGroup nvarchar(max)
AS
	select*from GroupData
	where 
	REPLACE(RTRIM(LTRIM(NamaGroup)),' ','') like '%'+ REPLACE(RTRIM(LTRIM(@NamaGroup)),' ','')+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_ListMenu_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_ListMenu_Get]
	@id bigint
AS
select q.*from 
(
	select
	b.*
	from GroupData_MenuAkses a
	left join DataMenu b on b.idMenu = a.IdMenu
	where IdRole = @id
) q
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_ListMenu_Get_NotInList]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_ListMenu_Get_NotInList]
	@id bigint
AS
	
	select*from DataMenu 
	where idMenu not in
	(
		select
		IdMenu
		from GroupData_MenuAkses
		where IdRole = @id
	)
	and Action != '0'
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_ListMeny_Add]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_ListMeny_Add]
	@IdRole bigint,
	@IdMenu bigint
AS
	declare @Title nvarchar(max)
	declare @Message nvarchar(max)
	declare @MStatus nvarchar(max)

	declare @NamaMenu nvarchar(max)
	select @NamaMenu=NamaMenu from DataMenu where idMenu = @IdMenu

	if not exists(select*from GroupData_MenuAkses where IdRole = @IdRole and IdMenu = @IdMenu)
	begin
		insert into GroupData_MenuAkses
		(IdRole,IdMenu)
		values
		(
			@IdRole,@IdMenu
		)
		set @Title = 'Success'
		set @Message = 'Data '+ @NamaMenu + ' berhasil dibuat'
		set @MStatus = 'success'
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleGroupAkses_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RoleGroupAkses_Save]
	@IdRole bigint,
	@NamaGroup nvarchar(max),
	@Status bigint,
	@Desc nvarchar(max)
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if(@IdRole = 0)
begin
	if not exists(select*from GroupData where NamaGroup=@NamaGroup)
	begin
		insert into GroupData 
		(
			NamaGroup,[Status],[Desc]
		)
		values
		(
			@NamaGroup,@Status,@Desc
		)
		
		set @IdRole = (select IdRole from GroupData where IdRole = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Data '+ @NamaGroup + ' berhasil dibuat'
		set @MStatus = 'success'

	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data '+ @NamaGroup+' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @NamaGroup_sebelum nvarchar(max)
	select @NamaGroup_sebelum=NamaGroup from GroupData where IdRole = @IdRole

	if(@NamaGroup = @NamaGroup_sebelum)
	begin
		update GroupData
		set 
			Status = @Status,
			[Desc] = @Desc
		where 
		IdRole = @IdRole

		set @Title = 'Success'
		set @Message = 'Data '+ @NamaGroup + ' berhasil diupdate'
		set @MStatus = 'success'
	end
	else
	begin
		if not exists(select*from GroupData where NamaGroup = @NamaGroup and IdRole not in (@IdRole))
		begin
			update GroupData
			set 
				Status = @Status,
				[Desc] = @Desc
			where 
			IdRole = @IdRole	

			set @Title = 'Success'
			set @Message = 'Data '+ @NamaGroup + ' berhasil diupdate'
			set @MStatus = 'success'
		end
		else
		begin
			set @Title = 'Sorry'
			set @Message = 'Data '+ @NamaGroup+' already exists'
			set @MStatus = 'error'
		end
	end
end

select @Title Title, @Message Message, @MStatus Status, @IdRole Id
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_RoleMenuData_Del]
	@Id bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)


if exists(select*from Role_MenuTree where IdRole = @Id)
begin
	
	declare @NamaModule nvarchar(max) 
	set @NamaModule = (select NamaModule from DataModule where IdModul in (select IdModule from Role_MenuTree where IdRole=@Id))
	
	declare @NamaMenu nvarchar(max) 
	set @NamaMenu = (select NamaMenu from DataMenu where idMenu in (select idMenu from Role_MenuTree where IdRole=@Id))
	
	delete from Role_MenuTree where IdRole=@Id

	set @Title = 'Success'
	set @Message = 'Data '+ @NamaModule + ' - '+ @NamaMenu +' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_RoleMenuData_Get]
AS
	select
	a.*,b.NamaModule,c.NamaMenu,d.NamaPosisi NamaPosisi,(
			select NamaMenu from Role_MenuTree x
			left join DataMenu xx on x.idMenu = xx.IdMenu
			where IdRole=a.IdParent
		) NamaParent,
	c.Platform
	from Role_MenuTree a
	left join DataModule b on b.IdModul = a.IdModule
	left join DataMenu c on c.idMenu = a.IdMenu
	left join (select Text NamaPosisi,value Id from Master_ListItem where ListName='ListPosisiMenu') d on d.Id = a.Posisi
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_RoleMenuData_GetById]
	@Id bigint
AS
	select
	a.*,b.NamaModule,c.NamaMenu,'' NamaPosisi,'' NamaParent,
	c.Platform
	from Role_MenuTree a
	left join DataModule b on b.IdModul = a.IdModule
	left join DataMenu c on c.idMenu = a.IdMenu
	where IdRole = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_RoleMenuData_GetSearch]
	--@IdRole bigint,
	@IdModule bigint,
	--@Posisi bigint,
	--@IdParent bigint,
	--@Urutan bigint,
	@IdMenu bigint
AS
	if(@IdModule=0 and @IdMenu=0)
	begin
		
		select
		a.*,b.NamaModule,c.NamaMenu,d.NamaPosisi NamaPosisi,
		(
			select NamaMenu from DataMenu where idMenu = a.IdParent
		) NamaParent,
		c.Platform
		from Role_MenuTree a
		left join DataModule b on b.IdModul = a.IdModule
		left join DataMenu c on c.idMenu = a.IdMenu
		left join (select Text NamaPosisi,value Id from Master_ListItem where ListName='ListPosisiMenu') d on d.Id = a.Posisi
	end
	else if(@IdModule>0 and @IdMenu=0)
	begin
		select
		a.*,b.NamaModule,c.NamaMenu,d.NamaPosisi NamaPosisi,
		(
			select NamaMenu from DataMenu where idMenu = a.IdParent
		) NamaParent,
		c.Platform
		from Role_MenuTree a
		left join DataModule b on b.IdModul = a.IdModule
		left join DataMenu c on c.idMenu = a.IdMenu
		left join (select Text NamaPosisi,value Id from Master_ListItem where ListName='ListPosisiMenu') d on d.Id = a.Posisi
		where IdModule = @IdModule
	end
	else
	begin
		select
		a.*,b.NamaModule,c.NamaMenu,d.NamaPosisi NamaPosisi,
		(
			select NamaMenu from DataMenu where idMenu = a.IdParent
		) NamaParent,
		c.Platform
		from Role_MenuTree a
		left join DataModule b on b.IdModul = a.IdModule
		left join DataMenu c on c.idMenu = a.IdMenu
		left join (select Text NamaPosisi,value Id from Master_ListItem where ListName='ListPosisiMenu') d on d.Id = a.Posisi
		where 
		(a.IdModule = @IdModule and a.IdMenu = @IdMenu)
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_ListMenu_Delete]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RoleMenuData_ListMenu_Delete]
	@IdRole bigint,
	@IdMenu bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from GroupData_MenuAkses where IdMenu = @IdMenu and IdRole=@IdRole)
begin
	declare @NamaMenu nvarchar(max)

	select @NamaMenu=NamaMenu  from DataMenu where idMenu=@IdMenu
	
	delete from GroupData_MenuAkses where IdMenu=@IdMenu and IdRole=@IdRole

	set @Title = 'Success'
	set @Message = 'Data '+ @NamaMenu +' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @IdMenu Id
GO
/****** Object:  StoredProcedure [dbo].[SP_RoleMenuData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_RoleMenuData_Save]
	@IdRole bigint,
	@IdModule bigint,
	@Posisi bigint,
	@IdParent bigint,
	@Urutan bigint,
	@IdMenu bigint
AS


declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

declare @IdS bigint
set @IdS = 0

declare @NamaModule nvarchar(max) set @NamaModule = (select NamaModule from DataModule where IdModul = @IdModule)
declare @NamaMenu nvarchar(max) set @NamaMenu = (select NamaMenu from DataMenu where idMenu = @IdMenu)

if(@IdRole = 0)
begin
	if not exists(select*from Role_MenuTree where IdModule = @IdModule and IdMenu = @IdMenu)
	begin
		insert into Role_MenuTree
		(
			IdModule,
			Posisi,
			IdParent,
			Urutan,
			IdMenu
		)
		values 
		(
			@IdModule,
			@Posisi,
			@IdParent,
			@Urutan,
			@IdMenu
		)

		set @IdRole = (select IdRole from Role_MenuTree where IdRole = SCOPE_IDENTITY())
		set @Title = 'Success'
		set @Message = 'Data '+ @NamaModule + ' - '+ @NamaMenu +' berhasil dibuat'
		set @MStatus = 'success'
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'Data '+ @NamaModule + ' - '+ @NamaMenu +' already exists'
		set @MStatus = 'error'
	end
end
else
begin
	declare @idModule_sebelum bigint
	declare @idMenu_sebelum bigint

	set @idModule_sebelum = (select IdModule from Role_MenuTree where IdRole=@IdRole)
	set @idMenu_sebelum = (select IdMenu from Role_MenuTree where IdRole=@IdRole)
	
	if(@IdModule = @idModule_sebelum and @IdMenu = @idMenu_sebelum)
	begin
		update Role_MenuTree
		set 
			IdModule=@IdModule,
			Posisi=@Posisi,
			IdParent=@IdParent,
			Urutan=@Urutan,
			IdMenu=@IdMenu
		where 
		IdRole=@IdRole

		set @Title = 'Success'
		set @Message = 'Data '+ @NamaModule + ' - '+ @NamaMenu +' berhasil diupdate'
		set @MStatus = 'success'
	end
	else
	begin
		if((select count(*) from Role_MenuTree where IdModule = @IdModule and IdMenu = @IdMenu) > 0)
		begin
			set @Title = 'Sorry'
			set @Message = 'Data '+ @NamaModule + ' - '+ @NamaMenu  +' already exists, silahkan cari nama lain'
			set @MStatus = 'error'
		end
		else
		begin
			update Role_MenuTree
			set 
				IdModule=@IdModule,
				Posisi=@Posisi,
				IdParent=@IdParent,
				Urutan=@Urutan,
				IdMenu=@IdMenu
			where 
			IdRole=@IdRole

			set @Title = 'Success'
			set @Message = 'Data '+ @NamaModule + ' - '+ @NamaMenu +' berhasil diupdate'
			set @MStatus = 'success'
		end
	end

end


select @Title Title, @Message Message, @MStatus Status, @IdRole Id
GO
/****** Object:  StoredProcedure [dbo].[SP_SummaryHarian_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SummaryHarian_GetSearch]
	@TglTrxFrom nvarchar(max),
	@TglTrxUntil nvarchar(max)
AS

select qq.* from 
(
	select b.NamaLengkap NamaPenyewa,a.KasirTerimaUang, 
	(select NamaLengkap from UserData where id in (a.IdKasir)) NamaKasir,
	a.CreateDate TanggalTransaksi,
	a.Qty TotalBuku,
	a.TotalSewa TotalSewa,
	a.UangKembalian UangKembalian
	from LogConfirmation a
	left join UserData b on b.id = a.IdPenyewa
) qq
where --q.TanggalTransaksi 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(qq.TanggalTransaksi ,10),'/','-'), 105), 23),'-','') between 
	replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxFrom,10),'/','-'), 105), 23),'-','') 
	and replace(CONVERT(VARCHAR(10), CONVERT(date, replace(left(@TglTrxUntil,10),'/','-'), 105), 23),'-','') 
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_Checkout]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TransaksiPeminjaman_Checkout]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)
declare @Total bigint
 set @Total = 0

if exists(select*from UserData where id = @Id)
begin
	if exists(select*from TransaksiPeminjamanBuku where IdUser_Penyewa = @Id and Status = 0)
	begin
		declare @TotalCheckout float
		declare @CountItem bigint
		select @TotalCheckout=sum(TotalSewa) from TransaksiPeminjamanBuku where IdUser_Penyewa = @Id and Status = 0
		select @CountItem=count(Id) from TransaksiPeminjamanBuku where IdUser_Penyewa = @Id and Status = 0

		insert into LogConfirmation 
		(
			CreateDate,IdPenyewa,Qty,TotalSewa,StatusConfirm
		)
		values
		(
			FORMAT(GETDATE() , 'dd/MM/yyyy HH:mm:ss'),@Id,@CountItem,@TotalCheckout,0
		)
		declare @IdTRX bigint
		set @IdTRX = (select IdTrx from LogConfirmation where IdTrx = SCOPE_IDENTITY())

		update TransaksiPeminjamanBuku
		set Status = 1,IdTrx = @IdTRX
		where IdUser_Penyewa = @Id and Status = 0

		


		set @Title = 'Success'
		set @Message = 'Checkout Dengan No.ID : '+cast(@IdTRX as nvarchar(max))+' berhasil dilakukan <br/> Silahkan tunjukan ID checkout kepada kasir dan lakukan pembayaran sebesar : '
		set @MStatus = 'success'
		set @Total = cast(@TotalCheckout as bigint)
	end
	else
	begin
		set @Title = 'Sorry'
		set @Message = 'data not exists'
		set @MStatus = 'error'
	end
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end
select @Title Title, @Message Message, @MStatus Status, @Total Id
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TransaksiPeminjaman_Del]
	@Id bigint
AS
declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from TransaksiPeminjamanBuku where Id = @Id)
begin
	declare @JudulBuku nvarchar(max)

	select @JudulBuku=JudulBuku from DataBuku where IdBook in (select IdBuku  from TransaksiPeminjamanBuku where Id=@Id)
	
	delete from TransaksiPeminjamanBuku where Id=@Id

	set @Title = 'Success'
	set @Message = 'Data '+ @JudulBuku + ' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'data not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TransaksiPeminjaman_Get]
AS
	select
		a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
		c.NamaLengkap Nama_Penyewa
		from TransaksiPeminjamanBuku a
		left join DataBuku b on b.IdBook = a.IdBuku
		left join UserData c on c.id = a.IdUser_Penyewa
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiPeminjaman_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TransaksiPeminjaman_GetById]
	@Id bigint
AS
	select
	a.Id,a.IdBuku,b.JudulBuku,b.Pengarang,b.JenisBuku,b.HargaSewaPerHari,b.Img,
	a.SewaDari,a.Sewasampai,a.TotalSewa,a.Status,a.IdUser_Penyewa,c.NamaLengkap Nama_Penyewa
	from TransaksiPeminjamanBuku a
	left join DataBuku b on b.IdBook = a.IdBuku
	left join UserData c on c.id = a.IdUser_Penyewa
	where a.Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_TransaksiTransaksiPeminjamanBuku_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TransaksiTransaksiPeminjamanBuku_GetSearch]
	@JudulBuku nvarchar(max),
	@Pengarang nvarchar(max),
	@JenisBuku nvarchar(max),
	@IdUser_Penyewa bigint,
	@Status bigint
AS
	declare @RoleGroup bigint
	declare @sStatus nvarchar(max)
	select @RoleGroup = RoleId from UserData where id = @IdUser_Penyewa

	if(@Status = 4)
	begin
		set @sStatus = ''
	end
	else
	begin
		set @sStatus = cast(@Status as nvarchar(max))
	end

	if(@RoleGroup =1)
	begin
		select
			a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
			c.NamaLengkap Nama_Penyewa
			from TransaksiPeminjamanBuku a
			left join DataBuku b on b.IdBook = a.IdBuku
			left join UserData c on c.id = a.IdUser_Penyewa
		where 
		a.Status like '%'+@sStatus+'%'
		and b.JudulBuku like '%'+@JudulBuku+'%'
		and b.Pengarang like '%'+@Pengarang+'%'
		and b.JenisBuku like '%'+@JenisBuku+'%'
	end
	else
	begin
		select
			a.*,b.JudulBuku,b.HargaSewaPerHari,b.Img,b.JenisBuku,b.Pengarang,
			c.NamaLengkap Nama_Penyewa
			from TransaksiPeminjamanBuku a
			left join DataBuku b on b.IdBook = a.IdBuku
			left join UserData c on c.id = a.IdUser_Penyewa
		where a.IdUser_Penyewa = @IdUser_Penyewa 
		and a.Status like '%'+@sStatus+'%'
	end
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_Del]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_UserData_Del]
	@Id bigint
AS

declare @Title nvarchar(max)
declare @Message nvarchar(max)
declare @MStatus nvarchar(max)

if exists(select*from UserData where id = @Id)
begin
	declare @Username nvarchar(max)
	set @Username =(select username from UserData where id=@Id)
	
	delete from UserData where id = @Id

	set @Title = 'Success'
	set @Message = 'User '+ @Username + ' berhasil dihapus'
	set @MStatus = 'success'
end
else
begin
	set @Title = 'Sorry'
	set @Message = 'User '+ @Username + ' not exists'
	set @MStatus = 'error'
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_Get]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UserData_Get]
AS
	select
	a.id,
	a.username,
	convert(nvarchar(max),DecryptByPassPhrase('key', a.password )) password,
	a.RoleId,a.NamaLengkap,a.Photo,a.Status, b.NamaGroup RoleName
	from UserData a
	left join GroupData b on b.IdRole = a.RoleId
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_GetById]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UserData_GetById]
	@Id bigint
AS
	select
	a.id,a.username,
	convert(nvarchar(max),DecryptByPassPhrase('key', a.password )) password,
	a.RoleId,a.NamaLengkap,a.Photo,a.Status,b.NamaGroup RoleName
	from UserData a
	left join GroupData b on b.IdRole = a.RoleId
	where id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_GetSearch]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SP_UserData_GetSearch]
	@username nvarchar(max)
AS
	select
	a.id,a.username,
	convert(nvarchar(max),DecryptByPassPhrase('key', a.password )) password,
	a.RoleId,a.NamaLengkap,a.Photo,a.Status,b.NamaGroup RoleName
	from UserData a
	left join GroupData b on b.IdRole = a.RoleId
	where REPLACE(RTRIM(LTRIM(username)),' ','') like '%'+REPLACE(RTRIM(LTRIM(@username)),' ','')+'%'
GO
/****** Object:  StoredProcedure [dbo].[SP_UserData_Save]    Script Date: 10/20/2020 11:13:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
		
		set @Id = @id
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
			set @Id = @id
			set @Title = 'Success'
			set @Message = 'User '+ @username + ' berhasil diupdate'
			set @MStatus = 'success'
		end
		else
		begin
			set @Id = @id
			set @Title = 'Sorry'
			set @Message = 'User / Email already exists, silahkan cari nama lain'
			set @MStatus = 'error'
		end
	end	
end

select @Title Title, @Message Message, @MStatus Status, @Id Id
GO
