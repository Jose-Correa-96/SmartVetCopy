CREATE TABLE [dbo].[DETALLEHISTORIACLINICA]
(
[IDDCLIN] [int] NOT NULL IDENTITY(1, 1),
[FECTRATCLIN] [date] NULL,
[IDSERV] [int] NOT NULL,
[IDHCLIN] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DETALLEHISTORIACLINICA] ADD CONSTRAINT [DETALLEHISTORIACLINICA_pk] PRIMARY KEY CLUSTERED  ([IDDCLIN]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DETALLEHISTORIACLINICA] ADD CONSTRAINT [FK_DETALLEHISTORIACLINICA_HISTORIACLINICA] FOREIGN KEY ([IDHCLIN]) REFERENCES [dbo].[HISTORIACLINICA] ([IDHCLIN])
GO
ALTER TABLE [dbo].[DETALLEHISTORIACLINICA] ADD CONSTRAINT [FK_DETALLEHISTORIACLINICA_SERVICIO] FOREIGN KEY ([IDSERV]) REFERENCES [dbo].[SERVICIO] ([IDSERV])
GO
