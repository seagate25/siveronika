USE [baragud]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG]    Script Date: 28/06/2022 18:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[sudah_gabung] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_LAMPIRAN_BARANG] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_barang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'TEST123   ', N'12345', N'000C29A517BF1EECBDABDFD920D1AB76.pdf', N'000C29A517BF1EECBDABDFD920D1AB76.pdf', N'1', CAST(N'2022-06-26T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'TEST123   ', N'54321', N'000C29A517BF1EECBDABDFD920D1AB76.pdf', N'000C29A517BF1EECBDABDFD920D1AB76.pdf', N'1', CAST(N'2022-06-26T00:00:00.000' AS DateTime), N'SAP         ')
GO
