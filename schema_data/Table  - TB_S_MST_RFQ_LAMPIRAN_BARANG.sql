USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG]    Script Date: 15/06/2022 06:21:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG](
	[nomor_rfq] [char](10) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_LAMPIRAN_BARANG] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

