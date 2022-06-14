USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_HEAD]    Script Date: 15/06/2022 06:20:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_HEAD](
	[nomor_rfq] [char](10) NOT NULL,
	[tanggal_rfq] [datetime] NULL,
	[nomor_ph] [char](10) NULL,
	[tanggal_jatuh_tempo] [datetime] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [varchar](40) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_HEAD] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


