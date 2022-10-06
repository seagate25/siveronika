USE [baragud]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_DTL]    Script Date: 06/10/2022 20:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_DTL](
	[nomor_po] [char](10) NOT NULL,
	[item] [char](10) NOT NULL,
	[short_text] [varchar](255) NULL,
	[kode_barang] [varchar](18) NULL,
	[plant] [char](4) NULL,
	[storage_location] [char](4) NULL,
	[tracking_number] [varchar](30) NULL,
	[material_group] [char](5) NULL,
	[material_group_description] [varchar](40) NULL,
	[jumlah] [decimal](13, 3) NULL,
	[unit] [varchar](50) NULL,
	[base_unit] [varchar](50) NULL,
	[denominator] [varchar](50) NULL,
	[numerator] [varchar](50) NULL,
	[order_price_unit] [char](10) NULL,
	[net_order_price] [decimal](13, 3) NULL,
	[assignment] [varchar](50) NULL,
	[business_area] [char](10) NULL,
	[mrsrno] [varchar](50) NULL,
	[keterangan1] [varchar](100) NULL,
	[keterangan2] [varchar](100) NULL,
	[keterangan3] [varchar](100) NULL,
	[delivery_date] [datetime] NULL,
	[openquantitypo] [decimal](13, 3) NULL,
	[status] [bit] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_HEAD]    Script Date: 06/10/2022 20:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_HEAD](
	[nomor_po] [char](10) NOT NULL,
	[dibuat_oleh] [char](12) NULL,
	[kode_Vendor] [char](10) NULL,
	[nama_vendor] [varchar](40) NULL,
	[top] [char](5) NULL,
	[p_group] [char](5) NULL,
	[mata_uang] [char](5) NULL,
	[tanggal_document] [datetime] NULL,
	[incoterms_1] [char](10) NULL,
	[incoterms_2] [varchar](255) NULL,
	[jatuh_tempo] [datetime] NULL,
	[tanggal_dibuat] [datetime] NULL,
	[plant] [char](4) NULL,
	[status] [bit] NULL,
	[category] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_TR_PO_HEAD] PRIMARY KEY CLUSTERED 
(
	[nomor_po] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_LAMPIRAN]    Script Date: 06/10/2022 20:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_LAMPIRAN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomor_po] [char](10) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TB_S_TR_PO_DTL] ([nomor_po], [item], [short_text], [kode_barang], [plant], [storage_location], [tracking_number], [material_group], [material_group_description], [jumlah], [unit], [base_unit], [denominator], [numerator], [order_price_unit], [net_order_price], [assignment], [business_area], [mrsrno], [keterangan1], [keterangan2], [keterangan3], [delivery_date], [openquantitypo], [status], [modified_date], [modified_by]) VALUES (N'4150000001', N'1001      ', N'lorem ipsum', N'A002', NULL, NULL, NULL, NULL, NULL, CAST(120.000 AS Decimal(13, 3)), N'BOX', NULL, NULL, NULL, N'25000.000 ', CAST(20000.000 AS Decimal(13, 3)), NULL, NULL, NULL, N'keterangan 1', N'keterangan 2', N'keterangan 3', NULL, NULL, 0, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
INSERT [dbo].[TB_S_TR_PO_DTL] ([nomor_po], [item], [short_text], [kode_barang], [plant], [storage_location], [tracking_number], [material_group], [material_group_description], [jumlah], [unit], [base_unit], [denominator], [numerator], [order_price_unit], [net_order_price], [assignment], [business_area], [mrsrno], [keterangan1], [keterangan2], [keterangan3], [delivery_date], [openquantitypo], [status], [modified_date], [modified_by]) VALUES (N'4150000001', N'1002      ', N'lorem ipsum', N'A001', NULL, NULL, NULL, NULL, NULL, CAST(100.000 AS Decimal(13, 3)), N'BOX', NULL, NULL, NULL, N'12500.000 ', CAST(10500.000 AS Decimal(13, 3)), NULL, NULL, NULL, N'keterangan 1', N'keterangan 2', N'keterangan 3', NULL, NULL, 0, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
INSERT [dbo].[TB_S_TR_PO_DTL] ([nomor_po], [item], [short_text], [kode_barang], [plant], [storage_location], [tracking_number], [material_group], [material_group_description], [jumlah], [unit], [base_unit], [denominator], [numerator], [order_price_unit], [net_order_price], [assignment], [business_area], [mrsrno], [keterangan1], [keterangan2], [keterangan3], [delivery_date], [openquantitypo], [status], [modified_date], [modified_by]) VALUES (N'4150000002', N'1011      ', N'lorem ipsum', N'A002', NULL, NULL, NULL, NULL, NULL, CAST(120.000 AS Decimal(13, 3)), N'BOX', NULL, NULL, NULL, N'25000.000 ', CAST(20000.000 AS Decimal(13, 3)), NULL, NULL, NULL, N'keterangan 1', N'keterangan 2', N'keterangan 3', NULL, NULL, 0, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
INSERT [dbo].[TB_S_TR_PO_DTL] ([nomor_po], [item], [short_text], [kode_barang], [plant], [storage_location], [tracking_number], [material_group], [material_group_description], [jumlah], [unit], [base_unit], [denominator], [numerator], [order_price_unit], [net_order_price], [assignment], [business_area], [mrsrno], [keterangan1], [keterangan2], [keterangan3], [delivery_date], [openquantitypo], [status], [modified_date], [modified_by]) VALUES (N'4150000002', N'1012      ', N'lorem ipsum', N'A001', NULL, NULL, NULL, NULL, NULL, CAST(100.000 AS Decimal(13, 3)), N'BOX', NULL, NULL, NULL, N'12500.000 ', CAST(10500.000 AS Decimal(13, 3)), NULL, NULL, NULL, N'keterangan 1', N'keterangan 2', N'keterangan 3', NULL, NULL, 0, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
GO
INSERT [dbo].[TB_S_TR_PO_HEAD] ([nomor_po], [dibuat_oleh], [kode_Vendor], [nama_vendor], [top], [p_group], [mata_uang], [tanggal_document], [incoterms_1], [incoterms_2], [jatuh_tempo], [tanggal_dibuat], [plant], [status], [category], [modified_date], [modified_by]) VALUES (N'4150000001', N'system      ', N'10049     ', N'CV PUTRA TEKNIK', NULL, NULL, N'IDR  ', CAST(N'2022-09-14T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2022-09-23T00:00:00.000' AS DateTime), CAST(N'2022-09-14T00:00:00.000' AS DateTime), NULL, 0, NULL, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
INSERT [dbo].[TB_S_TR_PO_HEAD] ([nomor_po], [dibuat_oleh], [kode_Vendor], [nama_vendor], [top], [p_group], [mata_uang], [tanggal_document], [incoterms_1], [incoterms_2], [jatuh_tempo], [tanggal_dibuat], [plant], [status], [category], [modified_date], [modified_by]) VALUES (N'4150000002', N'system      ', N'10049     ', N'CV PUTRA TEKNIK', NULL, NULL, N'IDR  ', CAST(N'2022-09-14T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2022-09-23T00:00:00.000' AS DateTime), CAST(N'2022-09-14T00:00:00.000' AS DateTime), NULL, 0, NULL, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
GO
SET IDENTITY_INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] ON 

INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] ([id], [nomor_po], [alamat_berkas], [nama_berkas], [modified_date], [modified_by]) VALUES (1, N'4150000001', N'4150000001_01.pdf', N'4150000001_01.pdf', CAST(N'2022-09-19T00:00:00.000' AS DateTime), N'system      ')
INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] ([id], [nomor_po], [alamat_berkas], [nama_berkas], [modified_date], [modified_by]) VALUES (2, N'4150000001', N'4150000001_02.pdf', N'4150000001_02.pdf', CAST(N'2022-09-19T00:00:00.000' AS DateTime), N'system      ')
SET IDENTITY_INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] OFF
GO
