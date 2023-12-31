USE [db_siveronika]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_bidang](
	[bidang_id] [uniqueidentifier] NOT NULL,
	[bidang_code] [varchar](30) NULL,
	[bidang_name] [varchar](200) NULL,
	[bidang_status] [bit] NULL,
	[bidang_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_bidang] PRIMARY KEY CLUSTERED 
(
	[bidang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_branch]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_branch](
	[branch_id] [uniqueidentifier] NOT NULL,
	[branch_code] [varchar](5) NULL,
	[branch_name] [varchar](100) NULL,
	[branch_description] [varchar](200) NULL,
	[branch_address1] [varchar](200) NULL,
	[branch_address2] [varchar](200) NULL,
	[branch_contact1] [varchar](15) NULL,
	[branch_contact2] [varchar](15) NULL,
	[branch_status] [bit] NULL,
	[branch_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_branch] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_role]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_role](
	[role_id] [uniqueidentifier] NOT NULL,
	[role_name] [varchar](50) NULL,
	[role_description] [varchar](200) NULL,
	[role_status] [bit] NULL,
	[role_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_shop]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_shop](
	[shop_id] [uniqueidentifier] NOT NULL,
	[shop_type] [varchar](10) NULL,
	[shop_name] [varchar](100) NULL,
	[shop_status] [bit] NULL,
	[shop_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_shop] PRIMARY KEY CLUSTERED 
(
	[shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_shop_det](
	[shop_id] [varchar](100) NOT NULL,
	[shop_sequence] [int] NULL,
	[shop_detail] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_user]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_user](
	[user_id] [uniqueidentifier] NOT NULL,
	[user_name] [varchar](50) NULL,
	[user_email] [varchar](100) NULL,
	[user_description] [varchar](200) NULL,
	[role_id] [varchar](100) NULL,
	[branch_id] [varchar](16) NULL,
	[user_verified] [bit] NULL,
	[user_status] [bit] NULL,
	[user_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
	[user_password] [varchar](200) NULL,
 CONSTRAINT [PK_m_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_doc]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_doc](
	[doc_id] [uniqueidentifier] NOT NULL,
	[doc_filename] [varchar](200) NULL,
	[doc_path] [varchar](300) NULL,
	[doc_type] [varchar](10) NULL,
	[doc_description] [varchar](300) NULL,
	[doc_status] [bit] NULL,
	[doc_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_t_doc] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification](
	[verif_id] [uniqueidentifier] NOT NULL,
	[verif_no] [varchar](20) NULL,
	[bidang_id] [varchar](100) NULL,
	[verif_version] [int] NULL,
	[user_id] [varchar](100) NULL,
	[user_name] [varchar](50) NULL,
	[branch_id] [varchar](100) NULL,
	[verif_status] [varchar](30) NULL,
	[verif_deletion] [bit] NULL,
	[verif_request_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification_shop](
	[verif_id] [varchar](100) NOT NULL,
	[shop_id] [varchar](100) NULL,
	[period] [varchar](10) NULL,
	[total] [decimal](12, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 03/08/2023 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification_shop_det](
	[verif_id] [varchar](100) NOT NULL,
	[shop_id] [varchar](100) NULL,
	[shop_sequence] [int] NULL,
	[doc_id] [varchar](100) NULL,
	[notes] [varchar](200) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8a831db7-f362-4516-98fe-21c05df79bfb', N'0011', N'UPT Pajak Daerah Kelas A Caringin', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'47128975-0d14-45a1-9f9c-358ad4062af1', N'0015', N'UPT Pajak Daerah Kelas A Leuwiliang', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'888541c2-3240-4596-867f-561fadd58ed0', N'0013', N'UPT Pajak Daerah Kelas A Ciomas', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f713617e-2b93-4da4-a087-61915595e40e', N'0001', N'SEKRETARIAT BAPPENDA', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:55:52.640' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6061f5e0-6f85-457e-a2cf-62afffef9697', N'0004', N'BIDANG PELAYANAN DAN PENETAPAN', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e5173359-ce8e-490a-b3a8-6fb5c4f3e8cc', N'0008', N'UPT Pajak Daerah Kelas A Jonggol', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'191ef754-0567-49ed-ba7b-76c54f2c99f8', N'0014', N'UPT Pajak Daerah Kelas A Cigudeg', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2f3d1da8-89e8-4d18-96e1-a1ab89d15946', N'0005', N'BIDANG PENAGIHAN, KEBERATAN, DAN PENGAWASAN', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'44f109d3-bede-4f48-aaf6-a5f1ce301250', N'0009', N'UPT Pajak Daerah Kelas A Parung', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'21db688c-4abe-4803-a93d-a8d19f9c185f', N'0006', N'UPT Pajak Daerah Kelas A Sukaraja', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'07fb4a6a-5539-4b1a-b34e-b50b521068de', N'0007', N'UPT Pajak Daerah Kelas A Gunung Putri', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'86f19d3b-5611-4a17-9e75-bf15ba892b88', N'0003', N'BIDANG PENDATAN DAN PENILAIAN', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'17712869-bbf9-4503-80cf-d97ad19e48de', N'0010', N'UPT Pajak Daerah Kelas A Ciawi', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c268dd4a-fbb9-4fc5-a6e3-e45bed15f67c', N'0002', N'BIDANG PERENCANAAN DAN PENGEMBANGAN PENDAPATAN DAERAH', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4db9d64f-3f8f-4ba5-a09b-f96ea953c0dd', N'0012', N'UPT Pajak Daerah Kelas A Citeureup', 1, 0, NULL, NULL, CAST(N'2023-07-23T13:59:39.513' AS DateTime), N'admin')
GO
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b92aee19-1469-453e-b5e4-682893232b6d', N'BR003', N'UPT Ciomas', N'UPT Ciomas', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-07-28T15:29:09.377' AS DateTime), N'admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c90d3a32-6c6a-48cc-986e-bf36b022e352', N'BR002', N'UPT Cigudeg', N'UPT Cigudeg', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-07-28T15:29:09.377' AS DateTime), N'admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'23f3afa1-4039-41ae-b5e7-d05c226d1f83', N'BR001', N'PEMDA Cibinong', N'Pemda Cibinong', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-07-28T15:29:09.377' AS DateTime), N'admin')
GO
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e665877e-895b-40ca-95c9-0ad4e2d8d1e2', N'Super Admin', N'All Function', 1, 0, NULL, NULL, CAST(N'2023-07-28T15:32:41.323' AS DateTime), N'admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0c0c2d92-b145-4c7a-a4da-255f2e4be8be', N'Bendahara', N'Bendahara', 1, 0, NULL, NULL, CAST(N'2023-07-28T15:32:41.323' AS DateTime), N'admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cb68262e-8560-4a2f-a8f6-30a622735f49', N'Verifikator', N'Verifikator', 1, 0, NULL, NULL, CAST(N'2023-07-28T15:32:41.323' AS DateTime), N'admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'157b6e51-6847-48ab-b13a-5455e81135cf', N'Verifikator Admin', N'Verifikator Admin', 1, 0, NULL, NULL, CAST(N'2023-07-28T15:32:41.323' AS DateTime), N'admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bac00819-ee59-4a2b-bdaa-98546fd9e9e5', N'Initiator', N'UPT', 1, 0, NULL, NULL, CAST(N'2023-07-28T15:32:41.323' AS DateTime), N'admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bfc53234-f4a7-4d93-b0ab-9d23d4de2695', N'Reviewer', N'Viewer/ Crontrolling All Data', 1, 0, NULL, NULL, CAST(N'2023-07-28T15:32:41.323' AS DateTime), N'admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7475e697-7d00-4ce7-808b-cff4f0e52a70', N'Bendahara Admin', N'Bendahara Admin', 1, 0, NULL, NULL, CAST(N'2023-07-28T15:32:41.323' AS DateTime), N'admin')
GO
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2a98ab9c-5b90-4a59-ba2d-412328672291', N'GU', N'Belanja Perjalanan Dinas', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dc8c0f0f-5ab5-472c-9998-437bdb76c2cf', N'GU', N'Belanja Tagihan Air', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f6fe0707-82e1-4688-9487-5304dc7df91b', N'GU', N'Belanja Tagihan Listrik', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7faa9710-bf0e-439a-9e5f-65bc7e55cd9f', N'GU', N'Belanja Cetak', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bdcf195a-c8ad-407b-9343-6a59cbfab262', N'GU', N'Belanja  Bahan Pelumas', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dab02d09-fac1-4b16-baef-77f4281469e9', N'GU', N'Belanja Mamin', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'21fc8f3a-678c-4d66-ace2-836d16db917a', N'GU', N'Belanja Perabot Kantor', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ce0ea46d-33a0-4727-b47a-a3e36acc4471', N'GU', N'Belanja Alat Kebersihan', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a9f40bd9-8977-4ae2-b36d-b0a96c1f66c1', N'GU', N'Belanja Bahan Komputer', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ada23cd1-5871-4e5d-a87a-b64a2c5477c8', N'GU', N'Belanja Alat Tulis Kantor', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1299ff15-0b11-43c6-8036-ce4a3ef29d82', N'GU', N'Belanja Penggandaan', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2894c26c-9aad-40c0-a872-e8a2b160506d', N'GU', N'Belanja Kawat/Faksimili/Internet/TV Berlangganan', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c3585dc1-f37c-4dce-b206-f104e10e12c7', N'GU', N'Belanja Alat/Bahan untuk Kegiatan Kantor - Kertas dan Cover', 1, 0, NULL, NULL, CAST(N'2023-07-30T00:52:43.927' AS DateTime), N'admin')
GO
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 6, N'Surat Undangan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 7, N'Daftar Hadir')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 8, N'Notulen')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
GO
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password]) VALUES (N'31904f59-6bd9-4964-9208-268d9b1e8d22', N'account.03', N'account.03@gmail.com', N'Reviewer, Kabag', N'BFC53234-F4A7-4D93-B0AB-9D23D4DE2695', N'B001', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$2y$10$BtzMQ52gr8i8W81jqLJdnOF7oBx5wgYPANKYqwkUPq9rSKOs7/K2S')
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password]) VALUES (N'9a454df9-f13e-4c38-9924-88031637f5f9', N'upt.ciomas', N'upt.ciomas@gmail.com', N'UPT Ciomas', N'BAC00819-EE59-4A2B-BDAA-98546FD9E9E5', N'B003', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$D7t6rBNAvtje6qurewzHg.r6czL2sEKmCd8dN7RstV1h1EJVbuoxi')
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password]) VALUES (N'6c47838a-4d37-4762-96ef-b1badba05b2e', N'upt.cigudeg', N'upt.cigudeg@gmail.com', N'UPT Cigudeg', N'BAC00819-EE59-4A2B-BDAA-98546FD9E9E5', N'B002', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$GKgRSm97AQ./ZbeAdC2bye2TzWkcb.VofP8fUTn8VTLgD7MFj8ooa')
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password]) VALUES (N'c92859fe-732f-41f0-b176-e9b80714ba24', N'account.01', N'account.01@gmail.com', N'Verifikator', N'CB68262E-8560-4A2F-A8F6-30A622735F49', N'B001', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$2y$10$C25H7wEhb/S2Xefp9.gNL.FBOBM2t5gY0JgRGeC0SimDW509zZHPm')
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password]) VALUES (N'80e1b7d0-0c45-4ce2-9a81-fee7428b8edf', N'account.02', N'account.02@gmail.com', N'Approval Bendahara', N'0C0C2D92-B145-4C7A-A4DA-255F2E4BE8BE', N'B001', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$ffv70Z9FWlVRvQPNT7ikgOzNE1Q0AoylH3HGbxeYdi6OQmu2nJsMa')
GO
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bf0335d8-99fc-4044-a221-1b6330a8f878', N'PC2300000370120801', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-03T19:20:01.647' AS DateTime), N'account.02')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'336a0c26-1739-4112-a8a1-36e261d81505', N'test_file5', N'\siveronika\doc', N'pdf', NULL, NULL, 0, NULL, NULL, CAST(N'2023-07-30T01:25:36.407' AS DateTime), N'admin')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f2bf880b-fa91-45d6-a049-3e26e1711487', N'test_file2', N'\siveronika\doc', N'pdf', NULL, NULL, 0, NULL, NULL, CAST(N'2023-07-30T01:25:36.407' AS DateTime), N'admin')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'fdb3aa58-f1c1-475b-a619-3ef7fcb35209', N'PC2300000370120803', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-03T19:20:01.683' AS DateTime), N'account.02')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e6adac12-74f7-47ce-84b0-5ad44884f995', N'test_file1', N'\siveronika\doc', N'pdf', NULL, NULL, 0, NULL, NULL, CAST(N'2023-07-30T01:25:36.407' AS DateTime), N'admin')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1c251f3d-e272-47c2-91ce-7c5dbe51148c', N'test_file4', N'\siveronika\doc', N'pdf', NULL, NULL, 0, NULL, NULL, CAST(N'2023-07-30T01:25:36.407' AS DateTime), N'admin')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f6b67735-1037-4e94-8830-a60a3fd20456', N'test_file3', N'\siveronika\doc', N'pdf', NULL, NULL, 0, NULL, NULL, CAST(N'2023-07-30T01:25:36.407' AS DateTime), N'admin')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b742f817-35e2-4495-8799-ac7573518596', N'PC2300000370120804', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-03T19:20:01.700' AS DateTime), N'account.02')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cf0b4010-38d5-49d5-bc6a-c057865401d3', N'PC2300000370120802', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-03T19:20:01.667' AS DateTime), N'account.02')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9057cbe6-b5f4-41f3-b033-f565d3001b4c', N'PC230000037012080', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-03T19:20:01.633' AS DateTime), N'account.02')
GO
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'db0267c6-c511-4d0c-b7d6-38cc960962ae', N'VR2306-001', N'0001', 0, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-07-30T01:16:40.767' AS DateTime), N'admin')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a5d40d6f-506a-4b95-a3df-26f158420a7d', N'VR2308-001', N'0001', NULL, N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'account.02', N'BR002', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-03T14:20:01.000' AS DateTime), N'account.02')
GO
INSERT [dbo].[t_verification_shop] ([verif_id], [shop_id], [period], [total]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', N'202306', CAST(8000000.00 AS Decimal(12, 2)))
INSERT [dbo].[t_verification_shop] ([verif_id], [shop_id], [period], [total]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', N'202307', CAST(9500000.00 AS Decimal(12, 2)))
INSERT [dbo].[t_verification_shop] ([verif_id], [shop_id], [period], [total]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', N'202307', CAST(9500000.00 AS Decimal(12, 2)))
INSERT [dbo].[t_verification_shop] ([verif_id], [shop_id], [period], [total]) VALUES (N'A5D40D6F-506A-4B95-A3DF-26F158420A7D', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', N'202308', CAST(20000000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 1, N'E6ADAC12-74F7-47CE-84B0-5AD44884F995', N'Nota Dinas')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 2, N'E6ADAC12-74F7-47CE-84B0-5AD44884F995', N'Surat Pesanan')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 3, NULL, N'Kwitansi')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 4, NULL, N'Faktur')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 5, NULL, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 1, NULL, N'Nota Dinas')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 2, NULL, N'Surat Pesanan')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 3, NULL, N'Kwitansi')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 4, NULL, N'Faktur')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE', N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9', 5, NULL, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'A5D40D6F-506A-4B95-A3DF-26F158420A7D', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 1, N'9057CBE6-B5F4-41F3-B033-F565D3001B4C', N'1')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'A5D40D6F-506A-4B95-A3DF-26F158420A7D', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 2, N'BF0335D8-99FC-4044-A221-1B6330A8F878', N'2')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'A5D40D6F-506A-4B95-A3DF-26F158420A7D', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 3, N'CF0B4010-38D5-49D5-BC6A-C057865401D3', N'3')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'A5D40D6F-506A-4B95-A3DF-26F158420A7D', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 4, N'FDB3AA58-F1C1-475B-A619-3EF7FCB35209', N'4')
INSERT [dbo].[t_verification_shop_det] ([verif_id], [shop_id], [shop_sequence], [doc_id], [notes]) VALUES (N'A5D40D6F-506A-4B95-A3DF-26F158420A7D', N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F', 5, N'B742F817-35E2-4495-8799-AC7573518596', N'5')
GO
ALTER TABLE [dbo].[m_bidang] ADD  CONSTRAINT [DF_m_bidang_bidang_id]  DEFAULT (newid()) FOR [bidang_id]
GO
ALTER TABLE [dbo].[m_branch] ADD  CONSTRAINT [DF_m_branch_branch_id]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[m_role] ADD  CONSTRAINT [DF_m_role_role_id]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[m_user] ADD  CONSTRAINT [DF_m_user_user_id]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[m_user] ADD  DEFAULT (NULL) FOR [user_password]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_doc_id]  DEFAULT (newid()) FOR [doc_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  DEFAULT (getdate()) FOR [create_date]
GO
