USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_EQIV]    Script Date: 6/27/2022 1:52:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_EQIV](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[konversi] [char](1) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](100) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_EQIV] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC, 
	[ekuivalen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


