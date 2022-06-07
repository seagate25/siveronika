USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_PROVINSI]    Script Date: 04/06/2022 18:01:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_NEGARA](
	[kode_negara] [char](3) NOT NULL,
	[nama] [char](50) NULL,
	[deletion] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGARA] PRIMARY KEY CLUSTERED 
(
	[kode_negara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

