CREATE TABLE [dbo].[DETALLEBOLETA]
(
[IDDBOL] [int] NOT NULL IDENTITY(1, 1),
[NUMBOL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IDPRO] [int] NOT NULL,
[IDMED] [int] NOT NULL,
[IDSERV] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DETALLEBOLETA] ADD CONSTRAINT [DETALLEBOLETA_pk] PRIMARY KEY CLUSTERED  ([IDDBOL]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DETALLEBOLETA] ADD CONSTRAINT [FK_DETALLEBOLETA_BOLETA] FOREIGN KEY ([NUMBOL]) REFERENCES [dbo].[BOLETA] ([NUMBOL])
GO
ALTER TABLE [dbo].[DETALLEBOLETA] ADD CONSTRAINT [FK_DETALLEBOLETA_MEDICINA] FOREIGN KEY ([IDMED]) REFERENCES [dbo].[MEDICINA] ([IDMED])
GO
ALTER TABLE [dbo].[DETALLEBOLETA] ADD CONSTRAINT [FK_DETALLEBOLETA_PRODUCTO] FOREIGN KEY ([IDPRO]) REFERENCES [dbo].[PRODUCTO] ([IDPRO])
GO
ALTER TABLE [dbo].[DETALLEBOLETA] ADD CONSTRAINT [FK_DETALLEBOLETA_SERVICIO] FOREIGN KEY ([IDSERV]) REFERENCES [dbo].[SERVICIO] ([IDSERV])
GO
