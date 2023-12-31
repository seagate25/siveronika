USE [db_siveronika]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[m_branch]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[m_role]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[m_shop]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[m_user]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[t_doc]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[t_verification]    Script Date: 09/08/2023 21:29:29 ******/
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
 CONSTRAINT [PK_t_verification] PRIMARY KEY CLUSTERED 
(
	[verif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 09/08/2023 21:29:29 ******/
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
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 09/08/2023 21:29:29 ******/
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
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8f7029d4-831f-4f1d-bec1-61dc6e35e70d', N'BR002', N'UPT Cigudeg', N'UPT Cigudeg', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.860' AS DateTime), N'Admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'62824e82-ebfe-431a-b05f-8f9d2b36a245', N'BR003', N'UPT Ciomas', N'UPT Ciomas', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.860' AS DateTime), N'Admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0a373e8e-8bd3-4df8-9126-f97a5cc84f3f', N'BR001', N'PEMDA Cibinong', N'PEMDA Cibinong', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.780' AS DateTime), N'Admin')
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
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'e98f99ed-3604-4f1c-bedb-07cbdea2109c', N'account.07', N'account.07@gmail.com', N'Reviewer/Kabag', N'9768AE88-DBA8-4F87-97CE-11FCD0EF137A', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$.2s15GXOFg0JnTt746neneKoM6P19lfUSDGsfqx6LN0AcSeWpyXoW', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'31904f59-6bd9-4964-9208-268d9b1e8d22', N'account.03', N'account.03@gmail.com', N'Reviewer/Kabag', N'9768AE88-DBA8-4F87-97CE-11FCD0EF137A', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$o2h956NMn9.Zy5yVYJ4ZSuOUTnfbWhN5LF2KNlJYw8Grb4pe9FqVy', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'bc00247f-4068-4032-a988-4a2782d56f25', N'account.06', N'account.06@gmail.com', N'Bendahara', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$LEAlBOXT4i2rMimP7520X.lIuLvi.4FolUsHy2RiNrqg9EIdwKNgO', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'9a454df9-f13e-4c38-9924-88031637f5f9', N'upt.ciomas', N'upt.ciomas@gmail.com', N'UPT Ciomas', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$D7t6rBNAvtje6qurewzHg.r6czL2sEKmCd8dN7RstV1h1EJVbuoxi', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'47314d00-acb8-4f47-80b1-8b791b67c75e', N'account.05', N'account.05@gmail.com', N'Verifikator', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$LIXgp3D8M9dNLoP8QxYhVuwYdAEkNUVPw3jYCTKkm3F7BET53Kby6', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'123daeb2-be9d-4da4-afeb-9f1dd9594d06', N'account.04', N'account.04@gmail.com', N'Verifikator Admin', N'EC4C49B6-47B7-4338-B0E6-726EE5FEC7DC', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$XfWynInG0jLkI7iYY1hPOOt3j4Dc35N2OI3i7FKpdP5Ve70xLTc0O', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'f4d68cb3-0133-44a4-81bc-a1e4f78949f2', N'account.08', N'account.08@gmail.com', N'Verifikator Admin', N'EC4C49B6-47B7-4338-B0E6-726EE5FEC7DC', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$GiX17BCna/QWQ9072qNW2OwYhGZxMqWeCVV.xNwNDruAbMMNkKTMS', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'6c47838a-4d37-4762-96ef-b1badba05b2e', N'upt.cigudeg', N'upt.cigudeg@gmail.com', N'UPT Cigudeg', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$GKgRSm97AQ./ZbeAdC2bye2TzWkcb.VofP8fUTn8VTLgD7MFj8ooa', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'c92859fe-732f-41f0-b176-e9b80714ba24', N'account.01', N'account.01@gmail.com', N'Verifikator', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$OP6kEWbsgca4g4hBP.q6muk3J6BoQA3ukJ/vEScMKIpe6WvkNR1Si', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'80e1b7d0-0c45-4ce2-9a81-fee7428b8edf', N'account.02', N'account.02@gmail.com', N'Bendahara', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$ffv70Z9FWlVRvQPNT7ikgOzNE1Q0AoylH3HGbxeYdi6OQmu2nJsMa', 1)
GO
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'55b71fa0-904a-484d-b72c-7d4c9ef46f8b', N'C92859FE-732F-41F0-B176-E9B80714BA24', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5e266542-bc55-4366-b4bf-8bb7c49bd557', N'47314D00-ACB8-4F47-80B1-8B791B67C75E', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'835fdda2-df19-4b32-b3e9-a6f7fefff0ba', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'65fe8ea1-6095-4e81-a72e-d48e1329bbdd', N'BC00247F-4068-4032-A988-4A2782D56F25', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
GO
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b7f59bc4-6477-4dcb-aecb-02361511cbff', N'Test10', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.233' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'72b1807e-1730-44d8-91b5-1f3f656c9a5b', N'Test20', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T18:36:51.730' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bc4ef3d8-9c52-4721-988e-2435d23717c3', N'Test13', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T07:47:02.403' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c7342a7b-e7a9-4078-95b0-48f0fba46ffa', N'Test12', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T07:47:02.397' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f62a0c2f-b403-4251-842c-4cab1336bcec', N'Test', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.603' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6e290200-fe17-44d9-bfdf-56acf49eef0f', N'Test11', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T07:47:02.390' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'92efab3e-087d-434f-9a26-6b2c3b501e5f', N'Test14', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T07:47:02.407' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a5e689ab-d62a-4a3c-bf09-73724753f2ad', N'Test19', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T18:36:51.703' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0606e29b-2a86-4c7f-943c-7d2aa728f088', N'Test16', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T18:36:51.607' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'fa0d0149-3781-41b0-ac0e-803205788e4e', N'Test4', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.780' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e3670e8b-6d78-4f5a-817b-84c68e865e3e', N'Test3', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.743' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6d1abbaf-ccc8-4fc2-820f-8e4f9e8a9892', N'Test18', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T18:36:51.677' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bae37975-c1a2-485d-a7e4-92124f66e4a5', N'Test2', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.707' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2052d231-1ee5-4de4-b67b-967ffc9d99af', N'Test7', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.113' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'fcea7d97-317c-4996-9115-a412515bc50c', N'Test8', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.153' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'117a1c5d-2875-4e98-8d74-aa914ced80a2', N'Test9', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.193' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9bb16dd1-a9de-4625-9cff-beb6875adc15', N'Test17', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T18:36:51.647' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6c26ab54-9845-424e-a202-c347950e040b', N'Test1', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.663' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'07525495-a526-4917-ac86-c6ea316847fa', N'Test15', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-09T07:47:02.410' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'446c42bf-ab29-4924-854d-ce8922db9c27', N'Test5', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T18:45:27.310' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'401f0648-0aad-423f-a031-eafc2e0d5279', N'Test6', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.040' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ec4b7082-c4a5-4164-93a3-0e95f58df3c5', N'VR2308-001', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'UNCOMPLETE', NULL, NULL, N'C92859FE-732F-41F0-B176-E9B80714BA24', NULL, N'OK;OK;OK;OK;OK;OK;NG;NG;NG;NG', NULL, CAST(N'2023-08-08T19:58:09.657' AS DateTime), NULL, CAST(N'2023-08-08T19:58:09.657' AS DateTime), N'account.01', CAST(N'2023-08-08T18:44:35.460' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f8ffc167-37fd-4f06-8bb3-55417d7f4a93', N'VR2308-002', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'REJECTED', NULL, NULL, N'C92859FE-732F-41F0-B176-E9B80714BA24', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'OK;OK;OK;OK;OK', N'Mohon maaf, pengajuan Anda ditolak', CAST(N'2023-08-08T20:14:02.183' AS DateTime), CAST(N'2023-08-09T21:24:21.367' AS DateTime), CAST(N'2023-08-09T21:24:21.367' AS DateTime), N'account.02', CAST(N'2023-08-08T20:12:07.950' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'deafc3db-8d6e-4451-a9ef-c4524e6de6a9', N'VR2308-003', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'DRAFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T21:36:40.353' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'746acfab-84e9-44b1-af32-c75565d11bf9', N'VR2308-004', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'UNCOMPLETE', NULL, NULL, N'C92859FE-732F-41F0-B176-E9B80714BA24', NULL, N'1234567890qwertyuiop;1234567890qwertyuiop;1234567890qwertyuiop;1234567890qwertyuiop;1234567890qwertyuiop', NULL, CAST(N'2023-08-09T18:34:04.990' AS DateTime), NULL, CAST(N'2023-08-09T18:34:04.990' AS DateTime), N'account.01', CAST(N'2023-08-09T07:47:02.380' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b0c4b477-d17f-4f0a-b877-df13e796133d', N'VR2308-005', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'VERIFIED', NULL, NULL, N'C92859FE-732F-41F0-B176-E9B80714BA24', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'12345678901234567890;12345678901234567890;12345678901234567890;12345678901234567890;12345678901234567890', N'selamat pengajuan sudah diterima', CAST(N'2023-08-09T18:38:24.617' AS DateTime), CAST(N'2023-08-09T21:21:11.687' AS DateTime), CAST(N'2023-08-09T21:21:11.687' AS DateTime), N'account.02', CAST(N'2023-08-09T18:36:51.547' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9adfa858-b2bc-4a61-b3bb-2f99bf5ee4e7', N'F8FFC167-37FD-4F06-8BB3-55417D7F4A93', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', N'202308', CAST(80000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T20:12:07.987' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5aa9d36b-e84e-49ab-9d8a-363ca7b67a83', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(5000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T18:44:35.500' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e0c79d53-7083-48a2-a266-7e6eeb9b7eab', N'DEAFC3DB-8D6E-4451-A9EF-C4524E6DE6A9', N'178EAE1E-87ED-4385-933B-C8AA6F074354', N'202308', CAST(10000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T21:36:40.393' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'20d40e75-6b4a-4e19-a40c-b36c1d2166d8', N'B0C4B477-D17F-4F0A-B877-DF13E796133D', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(5000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-09T18:36:51.563' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'29025ca2-51d6-4dbe-8ba8-d555740d5a40', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(5000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T18:45:27.230' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ddd6cb96-09c7-4e07-9b66-fc8c25ab2de3', N'746ACFAB-84E9-44B1-AF32-C75565D11BF9', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(15000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-09T07:47:02.383' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2ba7f2b6-50a9-4218-a844-09435af88484', N'DDD6CB96-09C7-4E07-9B66-FC8C25AB2DE3', N'746ACFAB-84E9-44B1-AF32-C75565D11BF9', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'6E290200-FE17-44D9-BFDF-56ACF49EEF0F', N'11', 1, N'1234567890qwertyuiop', NULL, NULL, CAST(N'2023-08-09T12:53:42.850' AS DateTime), N'account.01', CAST(N'2023-08-09T07:47:02.397' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'85e25107-8f56-47bc-af16-0a8a2e873d51', N'29025CA2-51D6-4DBE-8BA8-D555740D5A40', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, NULL, N'', 0, N'NG', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:45:27.353' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7b5bb73f-1619-4951-8017-114275b3d3b4', N'5AA9D36B-E84E-49AB-9D8A-363CA7B67A83', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'BAE37975-C1A2-485D-A7E4-92124F66E4A5', N'3', 1, N'OK', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.733' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c3d112b0-cee9-4293-a3ea-17d13beb2b98', N'5AA9D36B-E84E-49AB-9D8A-363CA7B67A83', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'F62A0C2F-B403-4251-842C-4CAB1336BCEC', N'1', 1, N'OK', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.653' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f53839dd-8853-4079-bf9c-1897e7717d05', N'5AA9D36B-E84E-49AB-9D8A-363CA7B67A83', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'E3670E8B-6D78-4F5A-817B-84C68E865E3E', N'4', 1, N'OK', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.770' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'99b63ee1-480f-40b1-82b8-1e24f53aec5c', N'E0C79D53-7083-48A2-A266-7E6EEB9B7EAB', N'DEAFC3DB-8D6E-4451-A9EF-C4524E6DE6A9', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T21:36:40.433' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ad69dfaa-70c9-4093-9cb3-1ec3b44055b0', N'9ADFA858-B2BC-4A61-B3BB-2F99BF5EE4E7', N'F8FFC167-37FD-4F06-8BB3-55417D7F4A93', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 3, N'FCEA7D97-317C-4996-9115-A412515BC50C', N'3', 1, N'OK', NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.180' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6c336ff2-dee5-4fd3-9534-2c0513f2aaa2', N'9ADFA858-B2BC-4A61-B3BB-2F99BF5EE4E7', N'F8FFC167-37FD-4F06-8BB3-55417D7F4A93', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 2, N'2052D231-1EE5-4DE4-B67B-967FFC9D99AF', N'2', 1, N'OK', NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.140' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3c444b9f-c36a-4250-9216-4089425e6180', N'29025CA2-51D6-4DBE-8BA8-D555740D5A40', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'446C42BF-AB29-4924-854D-CE8922DB9C27', N'1', 1, N'OK', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:45:27.353' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'91b929fc-c1cb-4f97-a327-54df433f4fbe', N'DDD6CB96-09C7-4E07-9B66-FC8C25AB2DE3', N'746ACFAB-84E9-44B1-AF32-C75565D11BF9', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'C7342A7B-E7A9-4078-95B0-48F0FBA46FFA', N'22', 1, N'1234567890qwertyuiop', NULL, NULL, CAST(N'2023-08-09T13:23:13.763' AS DateTime), N'account.01', CAST(N'2023-08-09T07:47:02.400' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3118c4af-31a9-44b7-8396-592d4d7339a5', N'E0C79D53-7083-48A2-A266-7E6EEB9B7EAB', N'DEAFC3DB-8D6E-4451-A9EF-C4524E6DE6A9', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T21:36:40.433' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2f52b746-bdb6-4175-ac04-5b76fb37adfc', N'9ADFA858-B2BC-4A61-B3BB-2F99BF5EE4E7', N'F8FFC167-37FD-4F06-8BB3-55417D7F4A93', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 1, N'401F0648-0AAD-423F-A031-EAFC2E0D5279', N'1', 1, N'OK', NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.100' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'93db3610-863e-4476-8819-630458a6da52', N'DDD6CB96-09C7-4E07-9B66-FC8C25AB2DE3', N'746ACFAB-84E9-44B1-AF32-C75565D11BF9', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'07525495-A526-4917-AC86-C6EA316847FA', N'55', 1, N'1234567890qwertyuiop', NULL, NULL, CAST(N'2023-08-09T14:50:40.223' AS DateTime), N'account.01', CAST(N'2023-08-09T07:47:02.413' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'347181d8-97e0-455e-bf34-6c862f4fea77', N'E0C79D53-7083-48A2-A266-7E6EEB9B7EAB', N'DEAFC3DB-8D6E-4451-A9EF-C4524E6DE6A9', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T21:36:40.430' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3cd6f0ef-c5a5-4651-b993-6d68f4650060', N'20D40E75-6B4A-4E19-A40C-B36C1D2166D8', N'B0C4B477-D17F-4F0A-B877-DF13E796133D', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'0606E29B-2A86-4C7F-943C-7D2AA728F088', N'111', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-09T18:37:42.533' AS DateTime), N'account.01', CAST(N'2023-08-09T18:36:51.637' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a1ef8be5-cbde-4c6f-bd74-758d5f14de2f', N'29025CA2-51D6-4DBE-8BA8-D555740D5A40', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, NULL, N'', 0, N'NG', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:45:27.353' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'35682c8a-4b11-4662-8662-76bff2b2ba38', N'5AA9D36B-E84E-49AB-9D8A-363CA7B67A83', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'6C26AB54-9845-424E-A202-C347950E040B', N'2', 1, N'OK', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.697' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0fb04f59-c304-4689-8160-86399e829090', N'E0C79D53-7083-48A2-A266-7E6EEB9B7EAB', N'DEAFC3DB-8D6E-4451-A9EF-C4524E6DE6A9', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T21:36:40.430' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'462e7428-bc03-4b86-8ca1-8b7c88b49172', N'5AA9D36B-E84E-49AB-9D8A-363CA7B67A83', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'FA0D0149-3781-41B0-AC0E-803205788E4E', N'5', 1, N'OK', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:44:35.807' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bf5567e2-eacc-4ec5-a15b-9278343a2f76', N'29025CA2-51D6-4DBE-8BA8-D555740D5A40', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, NULL, N'', 0, N'NG', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:45:27.353' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1c612b4b-135d-4f74-b418-94f04c7e9f21', N'DDD6CB96-09C7-4E07-9B66-FC8C25AB2DE3', N'746ACFAB-84E9-44B1-AF32-C75565D11BF9', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'BC4EF3D8-9C52-4721-988E-2435D23717C3', N'33', 0, N'1234567890qwertyuiop', NULL, NULL, CAST(N'2023-08-09T13:58:24.103' AS DateTime), N'account.01', CAST(N'2023-08-09T07:47:02.407' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ef80a9a8-8d24-4657-93ac-9c01167db19f', N'20D40E75-6B4A-4E19-A40C-B36C1D2166D8', N'B0C4B477-D17F-4F0A-B877-DF13E796133D', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'9BB16DD1-A9DE-4625-9CFF-BEB6875ADC15', N'222', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-09T18:37:49.763' AS DateTime), N'account.01', CAST(N'2023-08-09T18:36:51.667' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'29e519fe-4ff3-4d98-be4b-a1033d039d90', N'9ADFA858-B2BC-4A61-B3BB-2F99BF5EE4E7', N'F8FFC167-37FD-4F06-8BB3-55417D7F4A93', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 5, N'B7F59BC4-6477-4DCB-AECB-02361511CBFF', N'5', 1, N'OK', NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.257' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'665b5f20-e3d4-452d-8538-a4d5880af5dd', N'9ADFA858-B2BC-4A61-B3BB-2F99BF5EE4E7', N'F8FFC167-37FD-4F06-8BB3-55417D7F4A93', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 4, N'117A1C5D-2875-4E98-8D74-AA914CED80A2', N'4', 1, N'OK', NULL, NULL, NULL, NULL, CAST(N'2023-08-08T20:12:08.220' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9a7b948d-cb12-4f2f-8d12-a64c27f901fc', N'DDD6CB96-09C7-4E07-9B66-FC8C25AB2DE3', N'746ACFAB-84E9-44B1-AF32-C75565D11BF9', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'92EFAB3E-087D-434F-9A26-6B2C3B501E5F', N'44', 1, N'1234567890qwertyuiop', NULL, NULL, CAST(N'2023-08-09T14:50:32.807' AS DateTime), N'account.01', CAST(N'2023-08-09T07:47:02.410' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'49c2c184-0d99-4b52-9bac-b0104e2ecdf1', N'29025CA2-51D6-4DBE-8BA8-D555740D5A40', N'EC4B7082-C4A5-4164-93A3-0E95F58DF3C5', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, NULL, N'', 0, N'NG', CAST(N'2023-08-08T18:45:27.353' AS DateTime), NULL, NULL, NULL, CAST(N'2023-08-08T18:45:27.353' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f2f7c38a-e6e0-4f1e-90d4-b64ceb3d8f7c', N'20D40E75-6B4A-4E19-A40C-B36C1D2166D8', N'B0C4B477-D17F-4F0A-B877-DF13E796133D', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'A5E689AB-D62A-4A3C-BF09-73724753F2AD', N'444', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-09T18:38:05.250' AS DateTime), N'account.01', CAST(N'2023-08-09T18:36:51.723' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'10b0fc0f-3ee3-4c32-9566-ce46ee1bf433', N'20D40E75-6B4A-4E19-A40C-B36C1D2166D8', N'B0C4B477-D17F-4F0A-B877-DF13E796133D', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'72B1807E-1730-44D8-91B5-1F3F656C9A5B', N'555', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-09T18:38:13.280' AS DateTime), N'account.01', CAST(N'2023-08-09T18:36:51.750' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2051cddd-4704-484f-afc0-cfba0ad15dae', N'20D40E75-6B4A-4E19-A40C-B36C1D2166D8', N'B0C4B477-D17F-4F0A-B877-DF13E796133D', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'6D1ABBAF-CCC8-4FC2-820F-8E4F9E8A9892', N'333', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-09T18:37:58.147' AS DateTime), N'account.01', CAST(N'2023-08-09T18:36:51.697' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3d3aa4be-4e1d-44fc-a0fd-e3a0e025e756', N'E0C79D53-7083-48A2-A266-7E6EEB9B7EAB', N'DEAFC3DB-8D6E-4451-A9EF-C4524E6DE6A9', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T21:36:40.433' AS DateTime), N'upt.cigudeg')
GO
ALTER TABLE [dbo].[m_bidang] ADD  CONSTRAINT [DF_m_bidang_bidang_id]  DEFAULT (newid()) FOR [bidang_id]
GO
ALTER TABLE [dbo].[m_branch] ADD  CONSTRAINT [DF_m_branch_branch_id]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[m_role] ADD  CONSTRAINT [DF_m_role_role_id]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[m_user] ADD  CONSTRAINT [DF_m_user_user_id]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[m_user_bidang] ADD  DEFAULT (newid()) FOR [ub_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_doc_id]  DEFAULT (newid()) FOR [doc_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification_shop] ADD  DEFAULT (getdate()) FOR [create_date]
GO
