CREATE TABLE [dbo].[DETALLESERVICIO]
(
[IDDETSERV] [int] NOT NULL IDENTITY(1, 1),
[DISPSERV] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IDPER] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DETALLESERVICIO] ADD CONSTRAINT [DETALLESERVICIO_pk] PRIMARY KEY CLUSTERED  ([IDDETSERV]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DETALLESERVICIO] ADD CONSTRAINT [FK_DETALLESERVICIO_PERSONA] FOREIGN KEY ([IDPER]) REFERENCES [dbo].[PERSONA] ([IDPER])
GO
