CREATE TABLE [dbo].[UserData] (
    [id]             BIGINT            IDENTITY (1, 1) NOT NULL,
    [username]       NVARCHAR (MAX) NULL,
    [password]       VARBINARY(200) NULL,
    [RoleId]       BIGINT NULL,
    [NamaLengkap]    NVARCHAR (MAX) NULL,
    [Photo] NVARCHAR(MAX) NULL,
    [Status]         BIGINT         NULL
    
);

