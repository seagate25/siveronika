USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_TR_BATCH]    Script Date: 17/09/2022 10:38:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_TR_BATCH](
	[id] [int] NOT NULL,
	[nomor_po] [char](10) NULL,
	[item_po] [char](6) NULL,
	[kode_material] [char](7) NULL,
	[deskripsi_material] [varchar](40) NULL,
	[quantity] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[batch] [varchar](60) NULL,
	[kadarluarsa] [datetime] NULL,
	[tanggal_produksi] [datetime] NULL,
 CONSTRAINT [PK_TB_S_TR_BATCH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


