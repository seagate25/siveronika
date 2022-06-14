USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_RFQ_BIAYA_TAMBAHAN]    Script Date: 15/06/2022 06:20:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_RFQ_BIAYA_TAMBAHAN](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_biaya] [char](4) NOT NULL,
	[deskripsi_biaya] [text] NULL,
	[jumlah_biaya] [decimal](13, 2) NULL,
	[mata_uang] [char](5) NULL,
	[keterangan] [text] NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BIAYA_TAMBAHAN] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_biaya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


