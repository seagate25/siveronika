USE [db_siveronika]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 29-Aug-23 11:18:50 ******/
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
/****** Object:  Table [dbo].[m_branch]    Script Date: 29-Aug-23 11:18:50 ******/
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
/****** Object:  Table [dbo].[m_role]    Script Date: 29-Aug-23 11:18:50 ******/
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
/****** Object:  Table [dbo].[m_shop]    Script Date: 29-Aug-23 11:18:50 ******/
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
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 29-Aug-23 11:18:50 ******/
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
/****** Object:  Table [dbo].[m_user]    Script Date: 29-Aug-23 11:18:50 ******/
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
	[branch_id] [varchar](100) NULL,
	[user_verified] [bit] NULL,
	[user_status] [bit] NULL,
	[user_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
	[user_password] [varchar](100) NULL,
	[is_approval] [bit] NULL,
 CONSTRAINT [PK_m_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 29-Aug-23 11:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_user_bidang](
	[ub_id] [uniqueidentifier] NOT NULL,
	[user_id] [varchar](100) NOT NULL,
	[bidang_id] [varchar](100) NOT NULL,
	[ub_status] [bit] NULL,
	[ub_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_user_bidang] PRIMARY KEY CLUSTERED 
(
	[ub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_doc]    Script Date: 29-Aug-23 11:18:50 ******/
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
/****** Object:  Table [dbo].[t_verification]    Script Date: 29-Aug-23 11:18:50 ******/
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
	[approval_userid1] [varchar](100) NULL,
	[approval_userid2] [varchar](100) NULL,
	[approval_note1] [varchar](200) NULL,
	[approval_note2] [varchar](100) NULL,
	[approval_date1] [datetime] NULL,
	[approval_date2] [datetime] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
	[status_verifikasi] [varchar](30) NULL,
	[status_bendahara] [varchar](30) NULL,
 CONSTRAINT [PK_t_verification] PRIMARY KEY CLUSTERED 
(
	[verif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 29-Aug-23 11:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification_shop](
	[verif_shop_id] [uniqueidentifier] NOT NULL,
	[verif_id] [varchar](100) NOT NULL,
	[shop_id] [varchar](100) NULL,
	[period] [varchar](10) NULL,
	[total] [decimal](12, 2) NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
	[approval_status] [bit] NULL,
	[approval_date] [datetime] NULL,
	[approval_userid] [varchar](100) NULL,
	[approval_note] [varchar](200) NULL,
 CONSTRAINT [PK_t_verification_shop] PRIMARY KEY CLUSTERED 
(
	[verif_shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 29-Aug-23 11:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification_shop_det](
	[verif_shop_det_id] [uniqueidentifier] NOT NULL,
	[verif_shop_id] [varchar](100) NOT NULL,
	[verif_id] [varchar](100) NOT NULL,
	[shop_id] [varchar](100) NULL,
	[shop_sequence] [int] NULL,
	[doc_id] [varchar](100) NULL,
	[notes] [varchar](200) NULL,
	[approval_status] [bit] NULL,
	[approval_note] [varchar](100) NULL,
	[approval_date] [datetime] NULL,
	[approval_userid] [varchar](100) NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_t_verification_shop_det] PRIMARY KEY CLUSTERED 
(
	[verif_shop_det_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'67cc9748-7383-408c-b0a1-125603423228', N'0015', N'UPT Pajak Daerah Kelas A Leuwiliang', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'009da35c-762c-4376-89ac-1346ae8e28b9', N'0001', N'SEKRETARIAT BAPPENDA', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5125bbae-5145-468e-89c6-1d3f07b319ad', N'0003', N'BIDANG PENDATAN DAN PENILAIAN', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9023a8c3-0101-492c-ba52-32b6796492bf', N'0008', N'UPT Pajak Daerah Kelas A Jonggol', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'692be837-e2fe-4197-8232-4a4051cd0c5e', N'0014', N'UPT Pajak Daerah Kelas A Cigudeg', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ca170aca-496d-4dc4-8956-551e50f61274', N'0007', N'UPT Pajak Daerah Kelas A Gunung Putri', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c3f408f0-12f6-4794-952e-57512ff90853', N'0002', N'BIDANG PERENCANAAN DAN PENGEMBANGAN PENDAPATAN DAERAH', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8c6e6d97-69fb-492a-b832-5985980063c0', N'0012', N'UPT Pajak Daerah Kelas A Citeureup', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2c9324c9-0601-4847-9abd-929d3e49b914', N'0010', N'UPT Pajak Daerah Kelas A Ciawi', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3fb7fed3-8acb-4b5f-9793-b1be8cdfbde3', N'0009', N'UPT Pajak Daerah Kelas A Parung', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'34eeb177-f3db-4ff2-9949-b40b92cb54b3', N'0004', N'BIDANG PELAYANAN DAN PENETAPAN', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e4ef4ae0-13a1-4cd6-9b9e-c58d1462179c', N'0006', N'UPT Pajak Daerah Kelas A Sukaraja', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'065a2261-8112-4e7f-b2c6-cb626704487c', N'0011', N'UPT Pajak Daerah Kelas A Caringin', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9681cc1f-0944-4975-80c7-e2473e391c66', N'0013', N'UPT Pajak Daerah Kelas A Ciomas', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'497292ec-97b9-4096-82d0-e5b48511d441', N'0005', N'BIDANG PENAGIHAN, KEBERATAN, DAN PENGAWASAN', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
GO
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'58f00ee6-b623-49f8-a1f9-3adc2fffaf6b', N'BR004', N'UPT Ciawi', N'UPT Ciawi', N'Jl. Raya Puncak, Ciawi, RT1 RW 1, Pandansari, Kec Ciawi, Bogor, Jawa Barat 16720', N'', N'6281293360187', N'', 1, 0, NULL, NULL, CAST(N'2023-08-29T10:22:51.743' AS DateTime), N'admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8e404f2c-7159-4bce-92ae-4fc740729cf8', N'BR001', N'Bappenda Kabupaten Bogor', N'Bappenda Kabupaten Bogor', N'Jalan Raya Tegar Beriman No. 1, Pakansari, Cibinong, Pakansari, Cibinong, Bogor', N'Jawa Barat 16914, Indonesia', N'(021) 87912462', N'', 1, 0, NULL, NULL, CAST(N'2023-08-29T10:22:51.743' AS DateTime), N'admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'aeac27d8-c185-4c34-9158-638e13acfe81', N'BR003', N'UPT Sukaraja', N'UPT Sukaraja', N'Jl. Alternatif Sentul, Gedung Graha CK no 29. Cijujung, Kec. Sukaraja, Bogor, Jawa Barat 16710', N'', N'6285861764959', N'', 1, 0, NULL, NULL, CAST(N'2023-08-29T10:22:51.743' AS DateTime), N'admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'903a0015-4e57-48f7-a460-db3efe397fed', N'BR002', N'UPT Citeureup', N'UPT Citeureup', N'Perumahan Kinan City Jalan Tegar Beriman Keluarahan Pakansari – Cibinong 16194', N'', N'6281293256780', N'', 1, 0, NULL, NULL, CAST(N'2023-08-29T10:22:51.743' AS DateTime), N'admin')
GO
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8bc37468-418f-4be4-aa82-0f9f2accd7a9', N'Super Admin', N'All Funciton', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9768ae88-dba8-4f87-97ce-11fcd0ef137a', N'Reviewer/Kabag', N'Viewer/ Crontrolling All Data', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1c75fa03-e693-4fea-9511-42875e85ba48', N'Verifikator', N'Verifikator', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'30d91062-9ad2-4146-83c2-52f97b26b040', N'Bendahara Admin', N'Bendahara Admin (View & Edit All Data)', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ec4c49b6-47b7-4338-b0e6-726ee5fec7dc', N'Verifikator Admin', N'Verifikator Admin (View & Edit All Data)', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a661f644-baf9-4868-a58f-8b4e82d50d56', N'Initiator', N'UPT', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'23fde120-7dec-4b5b-aed5-e407c97cf638', N'Bendahara', N'Bendahara', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
GO
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'554a55ba-057b-4d90-a6df-22c663effc10', N'GU', N'Belanja Mamin', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd5f4b515-d7bd-4430-9c4c-3a4b032c58f2', N'GU', N'Belanja Bahan Komputer', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'52283086-4834-493f-97df-4527961299d8', N'GU', N'Belanja Tagihan Air', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2265a7cf-eceb-4b76-8293-4e508219449a', N'GU', N'Belanja Tagihan Listrik', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7cc71b62-9874-466d-b754-5f45b19c4f8e', N'GU', N'Belanja Alat/Bahan untuk Kegiatan Kantor - Kertas dan Cover', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'455e443f-504a-414b-95be-6a8b89581e53', N'GU', N'Belanja Alat Tulis Kantor', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b05c723b-abec-49c1-bf12-6a99cd626486', N'GU', N'Belanja Alat Kebersihan', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8f5db7a1-e6fa-4bc8-b1cd-84f5f97067f7', N'GU', N'Belanja Perabot Kantor', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4b4eec89-6a0d-4e98-a4fa-9a7a9d507b65', N'GU', N'Belanja Perjalanan Dinas', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'527ccaeb-3ad9-473e-83d7-a61d6117445c', N'GU', N'Belanja Penggandaan', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'178eae1e-87ed-4385-933b-c8aa6f074354', N'GU', N'Belanja Bahan Pelumas', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.147' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'823b8199-2119-4a68-b960-d064f438a0a5', N'GU', N'Belanja Cetak', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.137' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b8fbcd41-49b0-412c-9034-e2bc0d298491', N'GU', N'Belanja Kawat/Faksimili/Internet/TV Berlangganan', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
GO
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 6, N'Surat Undangan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 7, N'Daftar Hadir')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 8, N'Notulen')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 2, N'Surat Tugas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 3, N'Form SPD')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 4, N'DOP (Daftar Ongkos Perjalanan)')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 5, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 6, N'Laporan Perjalanan Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'52283086-4834-493F-97DF-4527961299D8', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'52283086-4834-493F-97DF-4527961299D8', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'52283086-4834-493F-97DF-4527961299D8', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'2265A7CF-ECEB-4B76-8293-4E508219449A', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'2265A7CF-ECEB-4B76-8293-4E508219449A', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'2265A7CF-ECEB-4B76-8293-4E508219449A', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B8FBCD41-49B0-412C-9034-E2BC0D298491', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B8FBCD41-49B0-412C-9034-E2BC0D298491', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B8FBCD41-49B0-412C-9034-E2BC0D298491', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
GO
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'6717827a-5a2f-4c66-a120-138f2bf274f7', N'bpp_ciawi_sekretariat', N'bpp.ciawi.Sekret@gmail.com', N'Bendahara UPT Ciawi Bidang Sekretariat', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'58F00EE6-B623-49F8-A1F9-3ADC2FFFAF6B', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.420' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'7566005e-6f93-43ab-8817-16eb953288d9', N'keu_bappenda', N'keu.bappenda@gmail.com', NULL, N'9768AE88-DBA8-4F87-97CE-11FCD0EF137A', NULL, 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.427' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'16587268-4aad-4ee1-89c3-21a878d7793a', N'bpp_citeureup_sekretariat', N'bpp.citeureup.Sekret@gmail.com', N'Bendahara UPT Citeureup Bidang Sekretariat', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'903A0015-4E57-48F7-A460-DB3EFE397FED', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.420' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'ea8ec537-0a8d-408f-955d-2554c20461bf', N'verif_sukaraja_sekretariat', N'verif.sukaraja.sekret@gmail.com', N'Verifikator UPT Sukaraja Bidang Sekretariat', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'AEAC27D8-C185-4C34-9158-638E13ACFE81', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:53:13.800' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'f06ea506-a04a-4816-beea-3f2172bb3679', N'verif_ciawi_sekretariat', N'verif.ciawi.sekret@gmail.com', N'Verifikator UPT Ciawi Bidang Sekretariat', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'58F00EE6-B623-49F8-A1F9-3ADC2FFFAF6B', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:53:13.800' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'7a5267af-a31c-4960-9ec1-42849fac2add', N'verif_admin_ciawi', N'verif.admin.ciawi@gmail.com', N'Verifikator Admin UPT Ciawi', N'EC4C49B6-47B7-4338-B0E6-726EE5FEC7DC', N'58F00EE6-B623-49F8-A1F9-3ADC2FFFAF6B', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.423' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'4e2dd6c0-c640-4006-8a33-441c6c9587ba', N'verif_citeureup_sekretariat', N'verif.citeureup.sekret@gmail.com', N'Verifikator UPT Citeureup Bidang Sekretariat', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'903A0015-4E57-48F7-A460-DB3EFE397FED', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:53:13.800' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'006a90d2-f42c-4034-94c8-52d7c62a2de8', N'upt_ciawi', N'verif.upt.ciawi@gmail.com', N'UPT Ciawi', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'58F00EE6-B623-49F8-A1F9-3ADC2FFFAF6B', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:53:13.797' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'5238e9cc-7611-4dc6-bb6d-64edafa32b64', N'bpp_sukaraja_sekretariat', N'bpp.sukaraja.Sekret@gmail.com', N'Bendahara UPT Sukaraja Bidang Sekretariat', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'AEAC27D8-C185-4C34-9158-638E13ACFE81', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.420' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'8af01deb-b791-4fd6-a846-6598a987f5c6', N'upt_citeureup', N'verif.upt.citeureup@gmail.com', N'UPT Citeureup', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'903A0015-4E57-48F7-A460-DB3EFE397FED', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:53:13.797' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'2ca8d8a3-4ce9-4b7d-8a4f-8fb4da2aacf6', N'verif_admin_citeureup', N'verif.admin.citeureup@gmail.com', N'Verifikator Admin UPT Citeureup', N'EC4C49B6-47B7-4338-B0E6-726EE5FEC7DC', N'903A0015-4E57-48F7-A460-DB3EFE397FED', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.420' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'dcded3af-c317-4fee-bc61-a72d2036fb73', N'bpp_ciawi', N'bpp.ciawi@gmail.com', N'Bendahara Admin UPT Ciawi', N'30D91062-9AD2-4146-83C2-52F97B26B040', N'58F00EE6-B623-49F8-A1F9-3ADC2FFFAF6B', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.423' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'5186ceb9-e02d-4003-8d36-abefe51c1034', N'upt_sukaraja', N'verif.upt.sukaraja@gmail.com', N'UPT Sukaraja', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'AEAC27D8-C185-4C34-9158-638E13ACFE81', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:53:13.797' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'606949c5-df94-41a1-ae25-ade301b2acf6', N'bpp_citeureup', N'bpp.citeureup@gmail.com', N'Bendahara Admin UPT Citeureup', N'30D91062-9AD2-4146-83C2-52F97B26B040', N'903A0015-4E57-48F7-A460-DB3EFE397FED', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.423' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'70b4021c-0d0b-43af-8462-c9bac9b76d91', N'bpp_sukaraja', N'bpp.sukaraja@gmail.com', N'Bendahara Admin UPT Sukaraja', N'30D91062-9AD2-4146-83C2-52F97B26B040', N'AEAC27D8-C185-4C34-9158-638E13ACFE81', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.423' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'f83b42ab-6eae-4a1e-bebc-e2925d1f4d4b', N'verif_admin_sukaraja', N'verif.admin.sukaraja.@gmail.com', N'Verifikator Admin UPT Sukaraja', N'EC4C49B6-47B7-4338-B0E6-726EE5FEC7DC', N'AEAC27D8-C185-4C34-9158-638E13ACFE81', 1, 1, 0, NULL, NULL, CAST(N'2023-08-29T10:54:25.423' AS DateTime), N'admin', N'$2y$10$xlXk6phvgO.9fLmHQBuRee8SNxJylTwgNN0dRkpIicwXJlZETEb1e', 1)
GO
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'543d0e42-bd2d-4721-a9f5-2d0a55f94681', N'5238E9CC-7611-4DC6-BB6D-64EDAFA32B64', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, NULL, NULL, CAST(N'2023-08-29T11:04:42.840' AS DateTime), N'admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9ed3f829-b181-47ea-9319-360337aacfc4', N'16587268-4AAD-4EE1-89C3-21A878D7793A', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, NULL, NULL, CAST(N'2023-08-29T11:04:42.840' AS DateTime), N'admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'63c0f588-6bd0-4784-84c7-5b9a2484f1d1', N'6717827A-5A2F-4C66-A120-138F2BF274F7', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, NULL, NULL, CAST(N'2023-08-29T11:04:42.840' AS DateTime), N'admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'558f80eb-3470-4cb2-b482-7fa373a486d8', N'EA8EC537-0A8D-408F-955D-2554C20461BF', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, NULL, NULL, CAST(N'2023-08-29T11:04:42.837' AS DateTime), N'admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a3e95f2b-0e39-407a-be75-a5e63e130024', N'4E2DD6C0-C640-4006-8A33-441C6C9587BA', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, NULL, NULL, CAST(N'2023-08-29T11:04:42.840' AS DateTime), N'admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e8abb1da-58e6-4df1-a2b8-dfa7e3ee3c18', N'F06EA506-A04A-4816-BEEA-3F2172BB3679', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, NULL, NULL, CAST(N'2023-08-29T11:04:42.840' AS DateTime), N'admin')
GO
ALTER TABLE [dbo].[m_bidang] ADD  CONSTRAINT [DF_m_bidang_bidang_id]  DEFAULT (newid()) FOR [bidang_id]
GO
ALTER TABLE [dbo].[m_branch] ADD  CONSTRAINT [DF_m_branch_branch_id]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[m_role] ADD  CONSTRAINT [DF_m_role_role_id]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[m_user] ADD  CONSTRAINT [DF_m_user_user_id]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[m_user] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[m_user_bidang] ADD  DEFAULT (newid()) FOR [ub_id]
GO
ALTER TABLE [dbo].[m_user_bidang] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_doc_id]  DEFAULT (newid()) FOR [doc_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification_shop] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification_shop] ADD  DEFAULT (NULL) FOR [approval_note]
GO
