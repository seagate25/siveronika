USE [baragud]
GO

/****** Object:  Table [dbo].[TB_TR_QUOTATION_LAMPIRAN]    Script Date: 27/06/2022 20:36:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_TR_QUOTATION_LAMPIRAN](
	[nomor_quotation] [char](10) NOT NULL,
	[ekuivalen] char(1) not null,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_TR_QUOTATION_LAMPIRAN] PRIMARY KEY CLUSTERED 
(
	[nomor_quotation] ASC,
	[ekuivalen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


