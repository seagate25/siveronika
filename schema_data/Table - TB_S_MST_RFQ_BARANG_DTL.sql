USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_DTL]    Script Date: 15/06/2022 06:20:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_DTL](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_DTL] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


