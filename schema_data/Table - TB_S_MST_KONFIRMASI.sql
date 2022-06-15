USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_KONFIRMASI]    Script Date: 15-Jun-22 07:45:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_KONFIRMASI](
	[kode_konfirmasi] [int] NULL,
	[tanggal_kirim] [date] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [char](40) NULL,
	[harga_po_terakhir] [decimal](13, 2) NULL,
	[mata_uang_po_terakhir] [char](5) NULL,
	[nomor_pr] [char](10) NULL,
	[item_pr] [int] NULL,
	[kode_material] [char](18) NULL,
	[deskripsi] [char](40) NULL,
	[jumlah] [int] NULL,
	[harga] [numeric](13, 2) NULL,
	[mata_uang] [char](5) NULL,
	[satuan] [char](3) NULL,
	[konfirmasi_status] [char](1) NULL,
	[jumlah_tersedia] [int] NULL,
	[jumlah_inden] [int] NULL,
	[lama_inden] [int] NULL,
	[pesan_ulang] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL
) ON [PRIMARY]
GO


