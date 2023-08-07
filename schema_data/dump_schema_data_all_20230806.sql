USE [db_siveronika]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[m_branch]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[m_role]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[m_shop]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[m_user]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[t_doc]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[t_verification]    Script Date: 06/08/2023 22:56:34 ******/
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
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_t_verification] PRIMARY KEY CLUSTERED 
(
	[verif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 06/08/2023 22:56:34 ******/
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
 CONSTRAINT [PK_t_verification_shop] PRIMARY KEY CLUSTERED 
(
	[verif_shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 06/08/2023 22:56:34 ******/
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
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8f7029d4-831f-4f1d-bec1-61dc6e35e70d', N'BR002', N'UPT Cigudeg', N'UPT Cigudeg', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.860' AS DateTime), N'Admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'62824e82-ebfe-431a-b05f-8f9d2b36a245', N'BR003', N'UPT Ciomas', N'UPT Ciomas', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.860' AS DateTime), N'Admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0a373e8e-8bd3-4df8-9126-f97a5cc84f3f', N'BR001', N'PEMDA Cibinong', N'PEMDA Cibinong', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.780' AS DateTime), N'Admin')
GO
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8bc37468-418f-4be4-aa82-0f9f2accd7a9', N'Super Admin', N'All Funciton', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9768ae88-dba8-4f87-97ce-11fcd0ef137a', N'Reviewer', N'Viewer/ Crontrolling All Data', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
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
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'31904f59-6bd9-4964-9208-268d9b1e8d22', N'account.03', N'account.03@gmail.com', N'Reviewer, Kabag', N'BFC53234-F4A7-4D93-B0AB-9D23D4DE2695', N'0A373E8E-8BD3-4DF8-9126-F97A5CC84F3F', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$2y$10$BtzMQ52gr8i8W81jqLJdnOF7oBx5wgYPANKYqwkUPq9rSKOs7/K2S', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'9a454df9-f13e-4c38-9924-88031637f5f9', N'upt.ciomas', N'upt.ciomas@gmail.com', N'UPT Ciomas', N'BAC00819-EE59-4A2B-BDAA-98546FD9E9E5', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$D7t6rBNAvtje6qurewzHg.r6czL2sEKmCd8dN7RstV1h1EJVbuoxi', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'6c47838a-4d37-4762-96ef-b1badba05b2e', N'upt.cigudeg', N'upt.cigudeg@gmail.com', N'UPT Cigudeg', N'BAC00819-EE59-4A2B-BDAA-98546FD9E9E5', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$GKgRSm97AQ./ZbeAdC2bye2TzWkcb.VofP8fUTn8VTLgD7MFj8ooa', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'c92859fe-732f-41f0-b176-e9b80714ba24', N'account.01', N'account.01@gmail.com', N'Verifikator', N'CB68262E-8560-4A2F-A8F6-30A622735F49', N'0A373E8E-8BD3-4DF8-9126-F97A5CC84F3F', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$2y$10$C25H7wEhb/S2Xefp9.gNL.FBOBM2t5gY0JgRGeC0SimDW509zZHPm', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'80e1b7d0-0c45-4ce2-9a81-fee7428b8edf', N'account.02', N'account.02@gmail.com', N'Approval Bendahara', N'0C0C2D92-B145-4C7A-A4DA-255F2E4BE8BE', N'0A373E8E-8BD3-4DF8-9126-F97A5CC84F3F', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$ffv70Z9FWlVRvQPNT7ikgOzNE1Q0AoylH3HGbxeYdi6OQmu2nJsMa', 1)
GO
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'55b71fa0-904a-484d-b72c-7d4c9ef46f8b', N'C92859FE-732F-41F0-B176-E9B80714BA24', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'835fdda2-df19-4b32-b3e9-a6f7fefff0ba', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
GO
ALTER TABLE [dbo].[m_bidang] ADD  CONSTRAINT [DF_m_bidang_bidang_id]  DEFAULT (newid()) FOR [bidang_id]
GO
ALTER TABLE [dbo].[m_branch] ADD  CONSTRAINT [DF_m_branch_branch_id]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[m_role] ADD  CONSTRAINT [DF_m_role_role_id]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[m_user] ADD  CONSTRAINT [DF_m_user_user_id]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_doc_id]  DEFAULT (newid()) FOR [doc_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
