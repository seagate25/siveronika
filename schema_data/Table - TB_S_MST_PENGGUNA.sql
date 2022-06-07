USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_PROVINSI]    Script Date: 04/06/2022 18:01:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_PENGGUNA](
	[kode_vendor] [char](10) NOT NULL,
	[sandi] [varchar](255) NULL,
	[nama] [char](50) NULL,
	[deletion] [char](1) NULL,
	[first_login] [int] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_PENGGUNA] PRIMARY KEY CLUSTERED 
(
	[kode_vendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


