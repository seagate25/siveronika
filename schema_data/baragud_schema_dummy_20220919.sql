USE [baragud]
GO
/****** Object:  Table [dbo].[TB_S_MST_KONFIRMASI]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_KONFIRMASI](
	[kode_konfirmasi] [int] NOT NULL,
	[tanggal_kirim] [date] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [char](40) NULL,
	[harga_po_terakhir] [decimal](13, 2) NULL,
	[mata_uang_po_terakhir] [char](5) NULL,
	[nomor_pr] [char](10) NULL,
	[item_pr] [int] NULL,
	[kode_material] [char](18) NULL,
	[deskripsi] [char](40) NULL,
	[jumlah] [decimal](13, 3) NULL,
	[harga] [decimal](13, 2) NULL,
	[mata_uang] [char](5) NULL,
	[satuan] [char](3) NULL,
	[konfirmasi_status] [char](1) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[pesan_ulang] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
	[flag_kirim] [bit] NULL,
 CONSTRAINT [PK_TB_S_MST_KONFIRMASI] PRIMARY KEY CLUSTERED 
(
	[kode_konfirmasi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_MATA_UANG]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_MATA_UANG](
	[kode_uang] [char](5) NOT NULL,
	[deskripsi] [char](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[kode_uang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGARA]    Script Date: 19/09/2022 23:59:44 ******/
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
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BARANG_DTL]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BARANG_DTL](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[harga_satuan_nego] [decimal](13, 2) NULL,
	[keterangan_nego] [text] NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](100) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BARANG_DTL] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BARANG_EQIV]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BARANG_EQIV](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[spesifikasi] [text] NULL,
	[merek] [varchar](30) NULL,
	[tipe] [varchar](30) NULL,
	[buatan] [varchar](30) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[harga_satuan_nego] [decimal](13, 2) NULL,
	[keterangan_nego] [text] NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](100) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BARANG_EQIV] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC,
	[ekuivalen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BARANG_HEAD]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BARANG_HEAD](
	[nomor_rfq] [char](10) NOT NULL,
	[tanggal_rfq] [datetime] NULL,
	[nomor_ph] [char](10) NULL,
	[tanggal_jatuh_tempo] [datetime] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [varchar](40) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BARANG_HEAD] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BIAYA_TAMBAHAN]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BIAYA_TAMBAHAN](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_biaya] [char](4) NOT NULL,
	[deskripsi_biaya] [text] NULL,
	[jumlah_biaya] [decimal](13, 2) NULL,
	[jumlah_biaya_nego] [decimal](13, 2) NULL,
	[mata_uang] [char](5) NULL,
	[keterangan] [text] NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BIAYA_TAMBAHAN] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_biaya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_LAMPIRAN_BARANG]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_LAMPIRAN_BARANG](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[sudah_gabung] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_LAMPIRAN_BARANG] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_barang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_PENGGUNA]    Script Date: 19/09/2022 23:59:44 ******/
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
/****** Object:  Table [dbo].[TB_S_MST_PROVINSI]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_PROVINSI](
	[kode_provinsi] [char](3) NOT NULL,
	[nama] [char](50) NULL,
	[deletion] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_PROVINSI] PRIMARY KEY CLUSTERED 
(
	[kode_provinsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_DTL]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_DTL](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](100) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_DTL] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_EQIV]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_EQIV](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[spesifikasi] [text] NULL,
	[merek] [varchar](30) NULL,
	[tipe] [varchar](30) NULL,
	[buatan] [varchar](30) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](100) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_EQIV] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC,
	[ekuivalen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_HEAD]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_HEAD](
	[nomor_rfq] [char](10) NOT NULL,
	[tanggal_rfq] [datetime] NULL,
	[nomor_ph] [char](10) NULL,
	[tanggal_jatuh_tempo] [datetime] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [varchar](40) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_HEAD] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BIAYA_TAMBAHAN]    Script Date: 19/09/2022 23:59:44 ******/
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
/****** Object:  Table [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG]    Script Date: 19/09/2022 23:59:44 ******/
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
/****** Object:  Table [dbo].[TB_S_MST_SATUAN]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_SATUAN](
	[satuan] [char](3) NOT NULL,
	[deskripsi_satuan] [char](10) NULL,
 CONSTRAINT [PK_TB_S_MST_SATUAN] PRIMARY KEY CLUSTERED 
(
	[satuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_VENDOR]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_VENDOR](
	[kode_vendor] [varchar](10) NOT NULL,
	[tanggal_registrasi] [datetime] NULL,
	[nama_perusahaan] [varchar](200) NULL,
	[no_surat_rekanan] [varchar](20) NULL,
	[no_sppkp] [char](20) NULL,
	[alamat_perusahaan] [char](60) NULL,
	[kode_negara] [char](3) NULL,
	[kode_provinsi] [char](3) NULL,
	[kabkot] [char](50) NULL,
	[no_telepon] [char](20) NULL,
	[no_hp] [char](20) NULL,
	[no_fax] [char](20) NULL,
	[email_perusahaan] [varchar](241) NULL,
	[email_lainnya] [varchar](241) NULL,
	[no_npwp] [char](25) NULL,
	[nama_npwp] [char](35) NULL,
	[nama_bank] [char](50) NULL,
	[alamat_npwp] [char](60) NULL,
	[bidang_utama] [char](30) NULL,
	[bidang_usaha] [char](30) NULL,
	[nama_marketing] [char](35) NULL,
	[no_hp_marketing] [char](20) NULL,
	[no_ar] [char](20) NULL,
	[no_hp_ar] [char](20) NULL,
	[kode_pos] [char](5) NULL,
	[rekening01] [char](18) NULL,
	[atas_nama01] [char](60) NULL,
	[mata_uang01] [char](5) NULL,
	[nama_bank01] [char](60) NULL,
	[rekening02] [char](18) NULL,
	[atas_nama02] [char](60) NULL,
	[mata_uang02] [char](5) NULL,
	[nama_bank02] [char](60) NULL,
	[rekening03] [char](18) NULL,
	[atas_nama03] [char](60) NULL,
	[mata_uang03] [char](5) NULL,
	[nama_bank03] [char](60) NULL,
	[rekening04] [char](18) NULL,
	[atas_nama04] [char](60) NULL,
	[mata_uang04] [char](5) NULL,
	[nama_bank04] [char](60) NULL,
	[rekening05] [char](18) NULL,
	[atas_nama05] [char](60) NULL,
	[mata_uang05] [char](5) NULL,
	[nama_bank05] [char](60) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_VENDOR] PRIMARY KEY CLUSTERED 
(
	[kode_vendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_BATCH]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_BATCH](
	[id] [int] NOT NULL,
	[nomor_po] [char](10) NULL,
	[item_po] [char](6) NULL,
	[kode_material] [char](7) NULL,
	[deskripsi_material] [varchar](40) NULL,
	[quantity] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[batch] [varchar](60) NULL,
	[kadarluarsa] [datetime] NULL,
	[tanggal_produksi] [datetime] NULL,
 CONSTRAINT [PK_TB_S_TR_BATCH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_DTL]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_DTL](
	[nomor_po] [char](10) NOT NULL,
	[item] [char](10) NOT NULL,
	[short_text] [varchar](40) NULL,
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
	[order_price_unit] [decimal](13, 3) NULL,
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
/****** Object:  Table [dbo].[TB_S_TR_PO_HEAD]    Script Date: 19/09/2022 23:59:44 ******/
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
	[incoterms_2] [char](10) NULL,
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
/****** Object:  Table [dbo].[TB_S_TR_PO_LAMPIRAN]    Script Date: 19/09/2022 23:59:44 ******/
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
/****** Object:  Table [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN](
	[nomor_quotation] [char](10) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[urutan_berkas] [int] NOT NULL,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas_asli] [text] NULL,
	[nama_berkas] [text] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [TB_S_TR_NEGO_LAMPIRAN] PRIMARY KEY CLUSTERED 
(
	[nomor_quotation] ASC,
	[ekuivalen] ASC,
	[urutan_berkas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TR_QUOTATION_LAMPIRAN]    Script Date: 19/09/2022 23:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TR_QUOTATION_LAMPIRAN](
	[nomor_quotation] [char](10) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[urutan_berkas] [int] NOT NULL,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas_asli] [text] NULL,
	[nama_berkas] [text] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_TR_QUOTATION_LAMPIRAN] PRIMARY KEY CLUSTERED 
(
	[nomor_quotation] ASC,
	[ekuivalen] ASC,
	[urutan_berkas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (1, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(131800.00 AS Decimal(13, 2)), N'IDR  ', N'1000024864', 8, N'7048704           ', N'SPROCKET RS 50 (5/8")-1RX38T "KANA"     ', CAST(2.000 AS Decimal(13, 3)), CAST(1000000.00 AS Decimal(13, 2)), N'IDR  ', N'BH ', N'1', CAST(3.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (2, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(24000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024915', 15, N'7028818           ', N'FLEXIBLE SHAFT (P=78CM) U/TANAKA        ', CAST(5.000 AS Decimal(13, 3)), CAST(500000.00 AS Decimal(13, 2)), N'IDR  ', N'BH ', N'2', CAST(1.000 AS Decimal(13, 3)), CAST(4.000 AS Decimal(13, 3)), 50, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (3, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(36800.00 AS Decimal(13, 2)), N'IDR  ', N'1000024915', 10, N'7032671           ', N'GRASS CUTTER BLADE 450X90X1.6MM "TANIKA"', CAST(6.000 AS Decimal(13, 3)), CAST(36800.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (4, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(19900.00 AS Decimal(13, 2)), N'IDR  ', N'1000024844', 2, N'7055924           ', N'CAT TEMBOK PEWTER GREY NP.N1978 P       ', CAST(100.000 AS Decimal(13, 3)), CAST(19900.00 AS Decimal(13, 2)), N'     ', N'KG ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (5, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(6294.00 AS Decimal(13, 2)), N'IDR  ', N'1000024850', 2, N'7005415           ', N'BOLT & NUT 3/4" X 4"                    ', CAST(100.000 AS Decimal(13, 3)), CAST(6294.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (6, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(408000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024892', 14, N'7045019           ', N'VEER ø 16 UKURAN Ø 80 X 48 X 160        ', CAST(2.000 AS Decimal(13, 3)), CAST(408000.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (7, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(91900.00 AS Decimal(13, 2)), N'IDR  ', N'1000024721', 4, N'7062100           ', N'ELBOW GALVANIZED 3" LAS                 ', CAST(20.000 AS Decimal(13, 3)), CAST(91900.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (8, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(31600.00 AS Decimal(13, 2)), N'IDR  ', N'1000024879', 10, N'7036762           ', N'LEM CAP BANTENG @ 500 GRAM              ', CAST(20.000 AS Decimal(13, 3)), CAST(31600.00 AS Decimal(13, 2)), N'     ', N'KLG', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (9, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(64000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024819', 10, N'7053729           ', N'PIPA PVC ½" MASPION AW WARNA ABU-ABU    ', CAST(40.000 AS Decimal(13, 3)), CAST(64000.00 AS Decimal(13, 2)), N'     ', N'BTG', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (10, CAST(N'2022-09-03' AS Date), N'10049     ', N'CV PUTRA TEKNIK                         ', CAST(211000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024819', 9, N'7050156           ', N'PIPE PVC ø 2" X 5.8M TYPE AW "MASPION"  ', CAST(21.000 AS Decimal(13, 3)), CAST(211000.00 AS Decimal(13, 2)), N'     ', N'BTG', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (11, CAST(N'2022-09-03' AS Date), N'10039     ', N'CV NIAGA JAYA                           ', CAST(900.00 AS Decimal(13, 2)), N'IDR  ', N'1000024419', 3, N'7065168           ', N'POLYBAG 25X50CMX0,20MM                  ', CAST(15.000 AS Decimal(13, 3)), NULL, N'     ', N'LBR', N'1', CAST(10.000 AS Decimal(13, 3)), CAST(5.000 AS Decimal(13, 3)), 30, N'1', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (12, CAST(N'2022-09-03' AS Date), N'10039     ', N'CV NIAGA JAYA                           ', CAST(900.00 AS Decimal(13, 2)), N'IDR  ', N'1000024419', 3, N'7065168           ', N'POLYBAG 25X50CMX0,20MM                  ', CAST(15.000 AS Decimal(13, 3)), CAST(1000000.00 AS Decimal(13, 2)), N'IDR  ', N'LBR', N'2', CAST(10.000 AS Decimal(13, 3)), CAST(5.000 AS Decimal(13, 3)), 30, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (13, CAST(N'2022-09-03' AS Date), N'10017     ', N'CV EKA TEKNIK                           ', CAST(1450000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024421', 11, N'7013717           ', N'SPROCKET LINK CHAIN 8 TEETH D-1466      ', CAST(2.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(2.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'1', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (14, CAST(N'2022-09-03' AS Date), N'10017     ', N'CV EKA TEKNIK                           ', CAST(1450000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024421', 11, N'7013717           ', N'SPROCKET LINK CHAIN 8 TEETH D-1466      ', CAST(2.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(1.000 AS Decimal(13, 3)), CAST(1.000 AS Decimal(13, 3)), 7, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (15, CAST(N'2022-09-03' AS Date), N'10017     ', N'CV EKA TEKNIK                           ', CAST(1450000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024421', 11, N'7013717           ', N'SPROCKET LINK CHAIN 8 TEETH D-1466      ', CAST(2.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (16, CAST(N'2022-09-03' AS Date), N'10107     ', N'PT KOGELAHAR INDONUSA                   ', CAST(75600.00 AS Decimal(13, 2)), N'IDR  ', N'1000024332', 17, N'7015898           ', N'GROOVED BALL BEARING 6206 2Z/C3 "SKF"   ', CAST(6.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(2.000 AS Decimal(13, 3)), CAST(4.000 AS Decimal(13, 3)), 100, N'1', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (17, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(1320000.00 AS Decimal(13, 2)), N'IDR  ', N'3000004261', 2, N'7037757           ', N'WATER PUMP PH.130 SANYO                 ', CAST(1.000 AS Decimal(13, 3)), CAST(1320000.00 AS Decimal(13, 2)), N'IDR  ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(1.000 AS Decimal(13, 3)), 30, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (18, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(21000.00 AS Decimal(13, 2)), N'IDR  ', N'1000016783', 7, N'7032810           ', N'CAT TEMBOK PUTIH @20KG/KLG "KIMEX"      ', CAST(80.000 AS Decimal(13, 3)), CAST(21000.00 AS Decimal(13, 2)), N'     ', N'KG ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (19, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(5670.00 AS Decimal(13, 2)), N'IDR  ', N'1000024375', 5, N'7005412           ', N'BOLT & NUT 3/4" X 2 1/2"                ', CAST(150.000 AS Decimal(13, 3)), CAST(5670.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (20, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(1080.00 AS Decimal(13, 2)), N'IDR  ', N'1000024351', 14, N'7005424           ', N'BOLT & NUT 3/8" X 3"                    ', CAST(200.000 AS Decimal(13, 3)), CAST(1080.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (21, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(3350.00 AS Decimal(13, 2)), N'IDR  ', N'1000024375', 1, N'7024581           ', N'BOLT & NUT 5/8 X 2½"                    ', CAST(300.000 AS Decimal(13, 3)), CAST(3350.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (22, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(4450.00 AS Decimal(13, 2)), N'IDR  ', N'1000024375', 7, N'7005437           ', N'BOLT & NUT 5/8" X 4"                    ', CAST(200.000 AS Decimal(13, 3)), CAST(4450.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (23, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(261000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024213', 27, N'7024363           ', N'L TYPE 50 X 50 X 5MM X 6M               ', CAST(38.000 AS Decimal(13, 3)), CAST(261000.00 AS Decimal(13, 2)), N'     ', N'BTG', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (24, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(2240000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024213', 29, N'7023253           ', N'IRON/STEEL SHEET 6MM X 4'' X 8''          ', CAST(8.000 AS Decimal(13, 3)), CAST(2240000.00 AS Decimal(13, 2)), N'     ', N'LBR', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (25, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(15000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024421', 12, N'7018130           ', N'CENTER BOLT FRONT SPRING U/FM517 "N.GEN"', CAST(10.000 AS Decimal(13, 3)), CAST(15000.00 AS Decimal(13, 2)), N'     ', N'BH ', N'2', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (26, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(1970.00 AS Decimal(13, 2)), N'IDR  ', N'1000024093', 12, N'7006339           ', N'RAIL FISH BOLT AND NUT 13MM X 45MM      ', CAST(250.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (27, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(26200.00 AS Decimal(13, 2)), N'IDR  ', N'1000024351', 7, N'7006574           ', N'NOZZLE BLENDER LPG NO.2                 ', CAST(12.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (28, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(26200.00 AS Decimal(13, 2)), N'IDR  ', N'1000024354', 2, N'7006574           ', N'NOZZLE BLENDER LPG NO.2                 ', CAST(2.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (29, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(43500.00 AS Decimal(13, 2)), N'IDR  ', N'1000024335', 4, N'7030845           ', N'LEM PIPA PVC TROPICAL GLUE @400GR"WAVIN"', CAST(6.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'KLG', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (30, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(2700.00 AS Decimal(13, 2)), N'IDR  ', N'1000024336', 13, N'7006703           ', N'LEM PVC (TUBE) U/PIPA PVC               ', CAST(30.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'TUB', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (31, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(93700.00 AS Decimal(13, 2)), N'IDR  ', N'1000014644', 12, N'7029637           ', N'SEPATU LARAS AP  TYPE 9506 GR           ', CAST(200.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'PSG', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (32, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(14300.00 AS Decimal(13, 2)), N'IDR  ', N'1000024343', 1, N'7009415           ', N'TALI PLASTIC "MERK MATAHARI"            ', CAST(36.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'RLL', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (33, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(16500.00 AS Decimal(13, 2)), N'IDR  ', N'1000024203', 4, N'7061327           ', N'TALI PLASTIK @1KG/ROLL "MATAHARI"       ', CAST(60.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'RLL', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (34, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(15000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024421', 12, N'7018130           ', N'CENTER BOLT FRONT SPRING U/FM517 "N.GEN"', CAST(10.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(10.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'1', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (35, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(21000.00 AS Decimal(13, 2)), N'IDR  ', N'1000016783', 7, N'7032810           ', N'CAT TEMBOK PUTIH @20KG/KLG "KIMEX"      ', CAST(80.000 AS Decimal(13, 3)), CAST(1000000.00 AS Decimal(13, 2)), N'IDR  ', N'KG ', N'2', CAST(10.000 AS Decimal(13, 3)), CAST(70.000 AS Decimal(13, 3)), 100, N'0', NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_KONFIRMASI] ([kode_konfirmasi], [tanggal_kirim], [kode_vendor], [nama_vendor], [harga_po_terakhir], [mata_uang_po_terakhir], [nomor_pr], [item_pr], [kode_material], [deskripsi], [jumlah], [harga], [mata_uang], [satuan], [konfirmasi_status], [jumlah_tersedia], [jumlah_inden], [lama_inden], [pesan_ulang], [modified_date], [modified_by], [flag_kirim]) VALUES (36, CAST(N'2022-09-03' AS Date), N'10028     ', N'CV KING MOBIL JAYA                      ', CAST(15000.00 AS Decimal(13, 2)), N'IDR  ', N'1000024421', 12, N'7018130           ', N'CENTER BOLT FRONT SPRING U/FM517 "N.GEN"', CAST(10.000 AS Decimal(13, 3)), CAST(0.00 AS Decimal(13, 2)), N'     ', N'BH ', N'1', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'0', NULL, NULL, NULL)
GO
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ADP  ', N'Andorran Peseta --> (Old --> EUR)       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AED  ', N'United Arab Emirates Dirham             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AFA  ', N'Afghani (Old)                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AFN  ', N'Afghani                                 ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ALL  ', N'Albanian Lek                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AMD  ', N'Armenian Dram                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ANG  ', N'West Indian Guilder                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AOA  ', N'Angolanische Kwanza                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AON  ', N'Angolan New Kwanza (Old)                ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AOR  ', N'Angolan Kwanza Reajustado (Old)         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ARS  ', N'Argentine Peso                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ATS  ', N'Austrian Schilling (Old --> EUR)        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AUD  ', N'Australian Dollar                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AWG  ', N'Aruban Guilder                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AZM  ', N'Azerbaijan Manat (Old)                  ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'AZN  ', N'Azerbaijan Manat                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BAM  ', N'Bosnia and Herzegovina Convertible Mark ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BBD  ', N'Barbados Dollar                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BDT  ', N'Bangladesh Taka                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BEF  ', N'Belgian Franc (Old --> EUR)             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BGN  ', N'Bulgarian Lev                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BHD  ', N'Bahrain Dinar                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BIF  ', N'Burundi Franc                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BMD  ', N'Bermudan Dollar                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BND  ', N'Brunei Dollar                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BOB  ', N'Boliviano                               ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BRL  ', N'Brazilian Real                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BSD  ', N'Bahaman Dollar                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BTN  ', N'Bhutan Ngultrum                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BWP  ', N'Botswana Pula                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BYB  ', N'Belorussian Ruble (Old)                 ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BYR  ', N'Belorussian Ruble                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'BZD  ', N'Belize Dollar                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CAD  ', N'Canadian Dollar                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CDF  ', N'Congolese Franc                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CFP  ', N'French Franc (Pacific Islands)          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CHF  ', N'Swiss Franc                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CLP  ', N'Chilean Peso                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CNY  ', N'Chinese Renminbi                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'COP  ', N'Colombian Peso                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CRC  ', N'Costa Rica Colon                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CSD  ', N'Serbian Dinar (Old)                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CUC  ', N'Peso Convertible                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CUP  ', N'Cuban Peso                              ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CVE  ', N'Cape Verde Escudo                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CYP  ', N'Cyprus Pound  (Old --> EUR)             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'CZK  ', N'Czech Krona                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'DEM  ', N'German Mark    (Old --> EUR)            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'DEM3 ', N'(Internal) German Mark (3 dec.places)   ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'DJF  ', N'Djibouti Franc                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'DKK  ', N'Danish Krone                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'DOP  ', N'Dominican Peso                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'DZD  ', N'Algerian Dinar                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ECS  ', N'Ecuadorian Sucre (Old --> USD)          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'EEK  ', N'Estonian Krone (Old --> EUR)            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'EGP  ', N'Egyptian Pound                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ERN  ', N'Eritrean Nafka                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ESP  ', N'Spanish Peseta (Old --> EUR)            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ETB  ', N'Ethiopian Birr                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'EUR  ', N'European Euro                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'FIM  ', N'Finnish Markka (Old --> EUR)            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'FJD  ', N'Fiji Dollar                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'FKP  ', N'Falkland Pound                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'FRF  ', N'French Franc (Old --> EUR)              ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GBP  ', N'British Pound                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GEL  ', N'Georgian Lari                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GHC  ', N'Ghanaian Cedi (Old)                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GHS  ', N'Ghanian Cedi                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GIP  ', N'Gibraltar Pound                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GMD  ', N'Gambian Dalasi                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GNF  ', N'Guinean Franc                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GRD  ', N'Greek Drachma (Old --> EUR)             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GTQ  ', N'Guatemalan Quetzal                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GWP  ', N'Guinea Peso (Old --> SHP)               ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'GYD  ', N'Guyana Dollar                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'HKD  ', N'Hong Kong Dollar                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'HNL  ', N'Honduran Lempira                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'HRK  ', N'Croatian Kuna                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'HTG  ', N'Haitian Gourde                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'HUF  ', N'Hungarian Forint                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'IDR  ', N'Indonesian Rupiah                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'IEP  ', N'Irish Punt (Old --> EUR)                ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ILS  ', N'Israeli Scheckel                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'INR  ', N'Indian Rupee                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'IQD  ', N'Iraqui Dinar                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'IRR  ', N'Iranian Rial                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ISK  ', N'Iceland Krona                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ITL  ', N'Italian Lira (Old --> EUR)              ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'JMD  ', N'Jamaican Dollar                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'JOD  ', N'Jordanian Dinar                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'JPY  ', N'Japanese Yen                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KES  ', N'Kenyan Shilling                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KGS  ', N'Kyrgyzstan Som                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KHR  ', N'Cambodian Riel                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KMF  ', N'Comoros Franc                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KPW  ', N'North Korean Won                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KRW  ', N'South Korean Won                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KWD  ', N'Kuwaiti Dinar                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KYD  ', N'Cayman Dollar                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'KZT  ', N'Kazakstanian Tenge                      ')
GO
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LAK  ', N'Laotian Kip                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LBP  ', N'Lebanese Pound                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LKR  ', N'Sri Lankan Rupee                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LRD  ', N'Liberian Dollar                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LSL  ', N'Lesotho Loti                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LTL  ', N'Lithuanian Lita                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LUF  ', N'Luxembourg Franc (Old --> EUR)          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LVL  ', N'Latvian Lat                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'LYD  ', N'Libyan Dinar                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MAD  ', N'Moroccan Dirham                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MDL  ', N'Moldavian Leu                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MGA  ', N'Madagascan Ariary                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MGF  ', N'Madagascan Franc (Old                   ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MKD  ', N'Macedonian Denar                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MMK  ', N'Myanmar Kyat                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MNT  ', N'Mongolian Tugrik                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MOP  ', N'Macao Pataca                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MRO  ', N'Mauritanian Ouguiya                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MTL  ', N'Maltese Lira (Old --> EUR)              ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MUR  ', N'Mauritian Rupee                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MVR  ', N'Maldive Rufiyaa                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MWK  ', N'Malawi Kwacha                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MXN  ', N'Mexican Pesos                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MYR  ', N'Malaysian Ringgit                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MZM  ', N'Mozambique Metical (Old)                ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'MZN  ', N'Mozambique Metical                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NAD  ', N'Namibian Dollar                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NGN  ', N'Nigerian Naira                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NIO  ', N'Nicaraguan Cordoba Oro                  ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NLG  ', N'Dutch Guilder (Old --> EUR)             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NOK  ', N'Norwegian Krone                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NPR  ', N'Nepalese Rupee                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NZD  ', N'New Zealand Dollars                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'NZD5 ', N'New Zealand Dollars                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'OMR  ', N'Omani Rial                              ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PAB  ', N'Panamanian Balboa                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PEN  ', N'Peruvian New Sol                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PGK  ', N'Papua New Guinea Kina                   ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PHP  ', N'Philippine Peso                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PKR  ', N'Pakistani Rupee                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PLN  ', N'Polish Zloty (new)                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PTE  ', N'Portuguese Escudo (Old --> EUR)         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'PYG  ', N'Paraguayan Guarani                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'QAR  ', N'Qatar Rial                              ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'RMB  ', N'Chinese Yuan Renminbi                   ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ROL  ', N'Romanian Leu (Old)                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'RON  ', N'Romanian Leu                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'RSD  ', N'Serbian Dinar                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'RUB  ', N'Russian Ruble                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'RWF  ', N'Rwandan Franc                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SAR  ', N'Saudi Riyal                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SBD  ', N'Solomon Islands Dollar                  ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SCR  ', N'Seychelles Rupee                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SDD  ', N'Sudanese Dinar (Old)                    ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SDG  ', N'Sudanese Pound                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SDP  ', N'Sudanese Pound (until 1992)             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SEK  ', N'Swedish Krona                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SGD  ', N'Singapore Dollar                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SHP  ', N'St.Helena Pound                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SIT  ', N'Slovenian Tolar (Old --> EUR)           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SKK  ', N'Slovakian Krona (Old --> EUR)           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SLL  ', N'Sierra Leone Leone                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SOS  ', N'Somalian Shilling                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SRD  ', N'Surinam Dollar                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SRG  ', N'Surinam Guilder (Old)                   ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'STD  ', N'Sao Tome / Principe Dobra               ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SVC  ', N'El Salvador Colon                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SYP  ', N'Syrian Pound                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'SZL  ', N'Swaziland Lilangeni                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'THB  ', N'Thailand Baht                           ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TJR  ', N'Tajikistani Ruble (Old)                 ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TJS  ', N'Tajikistani Somoni                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TMM  ', N'Turkmenistani Manat (Old)               ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TMT  ', N'Turkmenistani Manat                     ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TND  ', N'Tunisian Dinar                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TOP  ', N'Tongan Pa''anga                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TPE  ', N'Timor Escudo --> USD                    ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TRL  ', N'Turkish Lira (Old)                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TRY  ', N'Turkish Lira                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TTD  ', N'Trinidad and Tobago Dollar              ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TWD  ', N'New Taiwan Dollar                       ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'TZS  ', N'Tanzanian Shilling                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'UAH  ', N'Ukraine Hryvnia                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'UGX  ', N'Ugandan Shilling                        ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'USD  ', N'United States Dollar                    ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'USDN ', N'(Internal) United States Dollar (5 Dec.)')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'UYU  ', N'Uruguayan Peso                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'UZS  ', N'Uzbekistan Som                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'VEB  ', N'Venezuelan Bolivar (Old)                ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'VEF  ', N'Venezuelan Bolivar Fuerte               ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'VND  ', N'Vietnamese Dong                         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'VUV  ', N'Vanuatu Vatu                            ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'WST  ', N'Samoan Tala                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'XAF  ', N'Gabon CFA Franc BEAC                    ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'XCD  ', N'East Carribean Dollar                   ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'XDS  ', N'St. Christopher Dollar --> XCD          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'XEU  ', N'European Currency Unit (E.C.U.)         ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'XOF  ', N'Benin CFA Franc BCEAO                   ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'XPF  ', N'CFP Franc                               ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'YER  ', N'Yemeni Ryal                             ')
GO
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'YUM  ', N'New Yugoslavian Dinar (Old)             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ZAR  ', N'South African Rand                      ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ZMK  ', N'Zambian Kwacha                          ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ZRN  ', N'Zaire (Old)                             ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ZWD  ', N'Zimbabwean Dollar (Old)                 ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ZWL  ', N'Zimbabwean Dollar (New)                 ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ZWN  ', N'Zimbabwean Dollar (Old)                 ')
INSERT [dbo].[TB_S_MST_MATA_UANG] ([kode_uang], [deskripsi]) VALUES (N'ZWR  ', N'Zimbabwean Dollar (Old)                 ')
GO
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'00 ', N'-                                                 ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AD ', N'Andorra                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AE ', N'United Arab Emirates                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AF ', N'Afghanistan                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AG ', N'Antigua and Barbuda                               ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AI ', N'Anguilla                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AL ', N'Albania                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AM ', N'Armenia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AN ', N'Dutch Antilles                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AO ', N'Angola                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AQ ', N'Antarctica                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AR ', N'Argentina                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AS ', N'American Samoa                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AT ', N'Austria                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AU ', N'Australia                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AW ', N'Aruba                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'AZ ', N'Azerbaijan                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BA ', N'Bosnia and Herzegovina                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BB ', N'Barbados                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BD ', N'Bangladesh                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BE ', N'Belgium                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BF ', N'Burkina Faso                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BG ', N'Bulgaria                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BH ', N'Bahrain                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BI ', N'Burundi                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BJ ', N'Benin                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BL ', N'Blue                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BM ', N'Bermuda                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BN ', N'Brunei Darussalam                                 ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BO ', N'Bolivia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BR ', N'Brazil                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BS ', N'Bahamas                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BT ', N'Bhutan                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BV ', N'Bouvet Islands                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BW ', N'Botswana                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BY ', N'Belarus                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'BZ ', N'Belize                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CA ', N'Canada                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CC ', N'Coconut Islands                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CD ', N'Democratic Republic of the Congo                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CF ', N'Central African Republic                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CG ', N'Republic of the Congo                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CH ', N'Switzerland                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CI ', N'Cote d''Ivoire                                     ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CK ', N'Cook Islands                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CL ', N'Chile                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CM ', N'Cameroon                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CN ', N'China                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CO ', N'Colombia                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CR ', N'Costa Rica                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CS ', N'Serbia and Montenegro                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CU ', N'Cuba                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CV ', N'Cape Verde                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CX ', N'Christmas Islnd                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CY ', N'Cyprus                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'CZ ', N'Czech Republic                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'DE ', N'Germany                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'DJ ', N'Djibouti                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'DK ', N'Denmark                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'DM ', N'Dominica                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'DO ', N'Dominican Republic                                ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'DZ ', N'Algeria                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'EC ', N'Ecuador                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'EE ', N'Estonia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'EG ', N'Egypt                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'EH ', N'West Sahara                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ER ', N'Eritrea                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ES ', N'Spain                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ET ', N'Ethiopia                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'EU ', N'European Union                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'FI ', N'Finland                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'FJ ', N'Fiji                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'FK ', N'Falkland Islands                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'FM ', N'Micronesia                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'FO ', N'Faroe Islands                                     ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'FR ', N'France                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GA ', N'Gabon                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GB ', N'United Kingdom                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GD ', N'Grenada                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GE ', N'Georgia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GF ', N'French Guyana                                     ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GH ', N'Ghana                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GI ', N'Gibraltar                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GL ', N'Greenland                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GM ', N'Gambia                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GN ', N'Guinea                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GP ', N'Guadeloupe                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GQ ', N'Equatorial Guinea                                 ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GR ', N'Greece                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GS ', N'South Georgia and the Southern Sandwich Islands   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GT ', N'Guatemala                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GU ', N'Guam                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GW ', N'Guinea-Bissau                                     ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'GY ', N'Guyana                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'HK ', N'Hong Kong                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'HM ', N'Heard and McDonald Islands                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'HN ', N'Honduras                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'HR ', N'Croatia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'HT ', N'Haiti                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'HU ', N'Hungary                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
GO
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ID ', N'Indonesia                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IE ', N'Ireland                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IL ', N'Israel                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IN ', N'India                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IO ', N'British Indian Ocean Territory                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IQ ', N'Iraq                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IR ', N'Iran                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IS ', N'Iceland                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'IT ', N'Italy                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'JM ', N'Jamaica                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'JO ', N'Jordan                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'JP ', N'Japan                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KE ', N'Kenya                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KG ', N'Kyrgyzstan                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KH ', N'Cambodia                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KI ', N'Kiribati                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KM ', N'Comoros                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KN ', N'Saint Kitts and Nevis                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KP ', N'North Korea                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KR ', N'South Korea                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KW ', N'Kuwait                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KY ', N'Cayman Islands                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'KZ ', N'Kazakhstan                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LA ', N'Laos                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LB ', N'Lebanon                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LC ', N'St. Lucia                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LI ', N'Liechtenstein                                     ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LK ', N'Sri Lanka                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LR ', N'Liberia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LS ', N'Lesotho                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LT ', N'Lithuania                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LU ', N'Luxembourg                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LV ', N'Latvia                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'LY ', N'Libya                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MA ', N'Morocco                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MC ', N'Monaco                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MD ', N'Moldova                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MG ', N'Madagascar                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MH ', N'Marshall Islands                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MK ', N'Macedonia                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ML ', N'Mali                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MM ', N'Burma                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MN ', N'Mongolia                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MO ', N'Macau                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MP ', N'North Mariana Islands                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MQ ', N'Martinique                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MR ', N'Mauretania                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MS ', N'Montserrat                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MT ', N'Malta                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MU ', N'Mauritius                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MV ', N'Maldives                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MW ', N'Malawi                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MX ', N'Mexico                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MY ', N'Malaysia                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'MZ ', N'Mozambique                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NA ', N'Namibia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NC ', N'New Caledonia                                     ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NE ', N'Niger                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NF ', N'Norfolk Islands                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NG ', N'Nigeria                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NI ', N'Nicaragua                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NL ', N'Netherlands                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NO ', N'Norway                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NP ', N'Nepal                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NR ', N'Nauru                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NT ', N'NATO                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NU ', N'Niue                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'NZ ', N'New Zealand                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'OM ', N'Oman                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'OR ', N'Orange                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PA ', N'Panama                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PE ', N'Peru                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PF ', N'French Polynesia                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PG ', N'Papua New Guinea                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PH ', N'Philippines                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PK ', N'Pakistan                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PL ', N'Poland                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PM ', N'St. Pierre and Miquelon                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PN ', N'Pitcairn Islands                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PR ', N'Puerto Rico                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PS ', N'Palestine                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PT ', N'Portugal                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PW ', N'Palau                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'PY ', N'Paraguay                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'QA ', N'Qatar                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'RE ', N'Reunion                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'RO ', N'Romania                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'RU ', N'Russian Federation                                ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'RW ', N'Rwanda                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SA ', N'Saudi Arabia                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SB ', N'Solomon Islands                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SC ', N'Seychelles                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SD ', N'Sudan                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SE ', N'Sweden                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SG ', N'Singapore                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SH ', N'Saint Helena                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SI ', N'Slovenia                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SJ ', N'Svalbard                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SK ', N'Slovakia                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SL ', N'Sierra Leone                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
GO
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SM ', N'San Marino                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SN ', N'Senegal                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SO ', N'Somalia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SR ', N'Suriname                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ST ', N'Sao Tome and Principe                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SV ', N'El Salvador                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SY ', N'Syria                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'SZ ', N'Swaziland                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TC ', N'Turks and Caicos Islands                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TD ', N'Chad                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TF ', N'                                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TG ', N'Togo                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TH ', N'Thailand                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TJ ', N'Tajikistan                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TK ', N'Tokelau Islands                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TL ', N'East Timor                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TM ', N'Turkmenistan                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TN ', N'Tunisia                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TO ', N'Tonga                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TP ', N'East Timor                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TR ', N'Turkey                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TT ', N'Trinidad and Tobago                               ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TV ', N'Tuvalu                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TW ', N'Taiwan                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'TZ ', N'Tanzania                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'UA ', N'Ukraine                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'UG ', N'Uganda                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'UM ', N'American Minor Outlying Islands                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'UN ', N'United Nations                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'US ', N'USA                                               ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'UY ', N'Uruguay                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'UZ ', N'Uzbekistan                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'VA ', N'Vatican City                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'VC ', N'St. Vincent and the Grenadines                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'VE ', N'Venezuela                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'VG ', N'British Virgin Islands                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'VI ', N'American Virgin Islands                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'VN ', N'Vietnam                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'VU ', N'Vanuatu                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'WF ', N'Wallis and Futuna Islands                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'WS ', N'Samoa                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'YE ', N'Yemen                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'YT ', N'Mayotte                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ZA ', N'South Africa                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ZM ', N'Zambia                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_NEGARA] ([kode_negara], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'ZW ', N'Zimbabwe                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
GO
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272851', N'1    ', N'7020498', N'BEARING 22222 EK C/W ADAPTER HE322 "SKF"', N'', CAST(2.000 AS Decimal(13, 3)), N'BH ', N'Buah      ', N'SG/TL/MR/202/21', N'SG', NULL, NULL, NULL, N'IDR', CAST(1000000.00 AS Decimal(13, 2)), N'BOX', NULL, NULL, N'1', CAST(12.000 AS Decimal(13, 3)), N'BH', N'0', CAST(N'2022-07-31' AS Date), N'Enter 1

enter 2


enter 3', N'Kita lah', CAST(N'2022-07-19T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, N'IDR', CAST(2000000.00 AS Decimal(13, 2)), N'TAB', NULL, NULL, N'0', NULL, NULL, N'0', CAST(N'2022-07-28' AS Date), N'', N'tes', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'3    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(17.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, N'IDR', CAST(2000000.00 AS Decimal(13, 2)), N'TAB', NULL, NULL, N'0', NULL, NULL, N'0', CAST(N'2022-07-28' AS Date), N'', N'tes', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, N'IDR', CAST(10000.00 AS Decimal(13, 2)), N'CPL', NULL, NULL, N'0', NULL, NULL, N'0', CAST(N'2022-07-19' AS Date), N'te', N'de', CAST(N'2022-07-27T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'IDR', CAST(500.00 AS Decimal(13, 2)), N'CAP', NULL, NULL, N'1', CAST(550.000 AS Decimal(13, 3)), N'CAP', N'0', CAST(N'2022-08-12' AS Date), N'RFQ', N'tester', CAST(N'2022-08-13T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [harga_satuan_nego], [keterangan_nego], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, N'IDR', CAST(100000.00 AS Decimal(13, 2)), N'CPL', NULL, NULL, N'0', NULL, NULL, N'0', CAST(N'2022-07-26' AS Date), N'tes', N'tes', CAST(N'2022-07-24T00:00:00.000' AS DateTime), N'WEB         ')
GO
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272851', CAST(N'2022-07-18T00:00:00.000' AS DateTime), N'PC22000005', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'10107     ', N'PT KOGELAHAR INDONUSA', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272854', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'11142     ', N'PT KIMIA FARMA APOTEK', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272855', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'10035     ', N'APOTIK LIA', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272856', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'11977     ', N'PT PRATAMA MANDIRI SAKTI', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272857', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'11229     ', N'PT ORIONTAMA JAYA', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272858', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'11401     ', N'CV KARYA PERKASA', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272859', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'11887     ', N'PT HOSLAB MEDIKA FARMA', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272860', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'10139     ', N'PT SAFETA RIANDA', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272861', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'10800     ', N'APOTIK KHRISNA', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272862', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'11761     ', N'PT METRUM ALKESTRON', NULL, NULL)
INSERT [dbo].[TB_S_MST_NEGO_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272863', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-08-22T00:00:00.000' AS DateTime), N'10049     ', N'CV PUTRA TEKNIK', NULL, NULL)
GO
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10017     ', N'5f4dcc3b5aa765d61d8327deb882cf99', N'CV EKA TEKNIK                                     ', N'0', 0, CAST(N'2022-07-09T14:59:57.083' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10018     ', N'S1mE5uvk', N'CV EMBARA                                         ', N'0', 1, CAST(N'2022-07-13T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10028     ', N'e8219d4c93f6c55c6b10fe6bfe997c6c', N'CV KING MOBIL JAYA                                ', N'0', 0, CAST(N'2022-07-22T15:17:33.673' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10035     ', N'329d1ea6acb272924f991d523b2d2b80', N'APOTIK LIA                                        ', N'0', 0, CAST(N'2022-07-23T11:00:20.637' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10039     ', N'2a8009525763356ad5e3bb48b7475b4d', N'CV NIAGA JAYA                                     ', N'0', 0, CAST(N'2022-07-22T15:19:29.120' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10049     ', N'1759e864edd6cb2200926b3a2f729dac', N'CV PUTRA TEKNIK                                   ', N'0', 0, CAST(N'2022-08-09T06:34:44.413' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10107     ', N'c4b8bb990423f770dd7f26ff79168416', N'PT KOGELAHAR INDONUSA                             ', N'0', 0, CAST(N'2022-07-22T15:20:03.560' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10132     ', N'7a1bb1ae4894617e33fe25166afca9d9', N'PT POLA RAYA JAYA SAKTI                           ', N'0', 0, CAST(N'2022-07-22T15:24:20.690' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10139     ', N'2b1d520ee7fa77e7ff90488dcd7b3467', N'PT SAFETA RIANDA                                  ', N'0', 0, CAST(N'2022-07-23T11:00:46.663' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10146     ', N'f52a7b2610fb4d3f74b4106fb80b233d', N'PT SURYA MENTARI INDAH                            ', N'0', 0, CAST(N'2022-07-22T15:20:31.740' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10162     ', N'l6KUSF6Z', N'UD ABDI JAYA                                      ', N'0', 1, CAST(N'2022-07-11T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10800     ', N'd299a92004734135de74355770b7c785', N'APOTIK KHRISNA                                    ', N'0', 0, CAST(N'2022-07-23T11:01:11.437' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10855     ', N'a48a1b922cbd6d5d08664325afd2b1a2', N'KARYA AGUNG FALMAS                                ', N'0', 0, CAST(N'2022-07-22T15:20:57.953' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10895     ', N'4B44riAh', N'PT BUMI TANI SUBUR                                ', N'0', 1, CAST(N'2022-07-13T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'10896     ', N'5c0e95e193a3987b6a354b3b62180fc0', N'PT PANCA SURYA MAKMUR                             ', N'0', 0, CAST(N'2022-07-22T15:21:20.500' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11062     ', N'842zSeQ5', N'PT JOTUN INDONESIA                                ', N'0', 1, CAST(N'2022-07-13T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11142     ', N'b20bd2a22c7f0aef29ab5a4cb1934f71', N'PT KIMIA FARMA APOTEK                             ', N'0', 0, CAST(N'2022-07-23T11:01:37.267' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11229     ', N'411c451fa50ccb4a60206a83c8d5d8a4', N'PT ORIONTAMA JAYA                                 ', N'0', 0, CAST(N'2022-07-23T11:02:02.870' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11401     ', N'c11abfd29e4d9b4d4b566b01114d8486', N'CV KARYA PERKASA                                  ', N'0', 0, CAST(N'2022-07-23T11:02:34.090' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11761     ', N'e0f66d3186154abe76960f9e394c4621', N'PT METRUM ALKESTRON                               ', N'0', 0, CAST(N'2022-07-23T11:03:03.543' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11804     ', N'8d3b78d62523e16a1c95a545651db6bf', N'CV GASIDA INDO TRADE                              ', N'0', 0, CAST(N'2022-07-22T15:21:42.590' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11887     ', N'428b8e0c8ae876e78e551367212ae73b', N'PT HOSLAB MEDIKA FARMA                            ', N'0', 0, CAST(N'2022-07-23T11:03:27.757' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11894     ', N'afd0be2fd16b0101d8926769343c7950', N'PT ADELTA SOLUSI TEKNOLOGI                        ', N'1', 0, CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11958     ', N'U7v3qQGS', N'PT SABENA                                         ', N'0', 1, CAST(N'2022-07-08T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11977     ', N'3f63255531ca8062c18bdf1a16da0e5a', N'PT PRATAMA MANDIRI SAKTI                          ', N'0', 0, CAST(N'2022-07-22T15:22:03.600' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11980     ', N'004eef55e164cde4b29b93bd64c6d468', N'CV TEBING PUTRA MANDIRI                           ', N'0', 0, CAST(N'2022-07-22T15:22:23.883' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11981     ', N'6dMCkf9C', N'PT APLIKANUSA LINTASARTA                          ', N'0', 1, CAST(N'2022-07-24T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'11982     ', N'3003R6XY', N'CV KANCYL DIGITAL LAB                             ', N'0', 1, CAST(N'2022-07-24T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PENGGUNA] ([kode_vendor], [sandi], [nama], [deletion], [first_login], [modified_date], [modified_by]) VALUES (N'12257     ', N'd754f7302ec0da60aeb079c36b4938d4', N'PT TESTING VENDOR UAT 2                           ', N'0', 0, CAST(N'2022-07-22T10:30:39.670' AS DateTime), N'SAP         ')
GO
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'00 ', N'-                                                 ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'01 ', N'NAD                                               ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'02 ', N'Sumatera Utara                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'03 ', N'Sumatera Barat                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'04 ', N'Riau                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'05 ', N'Jambi                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'06 ', N'Sumatera Selatan                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'07 ', N'Bangka Belitung                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'08 ', N'Bengkulu                                          ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'09 ', N'Lampung                                           ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'10 ', N'DKI Jakarta                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'11 ', N'Banten                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'12 ', N'Jawa Barat                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'13 ', N'Jawa Tengah                                       ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'14 ', N'D.I. Yogyakarta                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'15 ', N'Jawa Timur                                        ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'16 ', N'Bali                                              ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'17 ', N'Nusa Tenggara Barat                               ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'18 ', N'Nusa Tenggara Timur                               ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'19 ', N'Kalimantan Barat                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'20 ', N'Kalimantan Tengah                                 ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'21 ', N'Kalimantan Selatan                                ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'22 ', N'Kalimantan Timur                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'23 ', N'Sulawesi Utara                                    ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'24 ', N'Gorontalo                                         ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'25 ', N'Sulawesi Tengah                                   ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'26 ', N'Sulawesi Selatan                                  ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'27 ', N'Sulawesi Tenggara                                 ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'28 ', N'Maluku                                            ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'29 ', N'Maluku Utara                                      ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_PROVINSI] ([kode_provinsi], [nama], [deletion], [modified_date], [modified_by]) VALUES (N'30 ', N'Papua                                             ', N' ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
GO
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272851', N'1    ', N'7020498', N'BEARING 22222 EK C/W ADAPTER HE322 "SKF"', N'', CAST(2.000 AS Decimal(13, 3)), N'BH ', N'Buah      ', N'SG/TL/MR/202/21', N'SG', NULL, NULL, NULL, N'IDR', CAST(1000000.00 AS Decimal(13, 2)), N'BOX', N'1', CAST(12.000 AS Decimal(13, 3)), N'BH', N'0', CAST(N'2022-07-31' AS Date), N'Enter 1

enter 2


enter 3', N'Kita lah', CAST(N'2022-07-19T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, N'IDR', CAST(2000000.00 AS Decimal(13, 2)), N'TAB', N'0', NULL, NULL, N'0', CAST(N'2022-07-28' AS Date), N'', N'tes', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'3    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(17.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, N'IDR', CAST(2000000.00 AS Decimal(13, 2)), N'TAB', N'0', NULL, NULL, N'0', CAST(N'2022-07-28' AS Date), N'', N'tes', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272854', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, N'IDR', CAST(10000.00 AS Decimal(13, 2)), N'CPL', N'0', NULL, NULL, N'0', CAST(N'2022-07-19' AS Date), N'te', N'de', CAST(N'2022-07-27T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272855', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272856', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272857', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272858', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272859', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272860', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272861', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272862', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'1    ', N'7055632', N'ALAXAN FR', N'', CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'IDR', CAST(500.00 AS Decimal(13, 2)), N'CAP', N'1', CAST(550.000 AS Decimal(13, 3)), N'CAP', N'0', CAST(N'2022-08-12' AS Date), N'RFQ', N'tester', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'2    ', N'7024223', N'ANTALGIN KIMIA FARMA', N'', CAST(2000.000 AS Decimal(13, 3)), N'TAB', N'Tablet    ', N'BB/UM/MR/01/22', N'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'4    ', N'7059908', N'VIRON "OMEGESIC"', N'', CAST(1111.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'SG/UM/MR/241/20', N'SG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_DTL] ([nomor_rfq], [urutan_rfq], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'5    ', N'7021125', N'VIRON "YARINDO"', N'', CAST(300.000 AS Decimal(13, 3)), N'CPL', N'Caplet    ', N'BB/UM/MR/01/22', N'BB', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'IDR', CAST(100000.00 AS Decimal(13, 2)), N'CPL', N'0', NULL, NULL, N'0', CAST(N'2022-07-26' AS Date), N'tes', N'tes', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'WEB         ')
GO
INSERT [dbo].[TB_S_MST_RFQ_BARANG_EQIV] ([nomor_rfq], [urutan_rfq], [ekuivalen], [kode_barang], [deskripsi_barang], [deskripsi], [jumlah_permintaan], [satuan], [deskripsi_satuan], [nomor_sr], [kode_kebun], [spesifikasi], [merek], [tipe], [buatan], [jumlah_tersedia], [jumlah_inden], [lama_inden], [mata_uang], [harga_satuan], [per_harga_satuan], [konversi], [jumlah_konversi], [satuan_konversi], [ketersediaan_barang], [masa_berlaku_harga], [keterangan], [dibuat_oleh], [modified_date], [modified_by]) VALUES (N'6200272863', N'1    ', N'1', N'7055632', N'ALAXAN FR', NULL, CAST(16.000 AS Decimal(13, 3)), N'CAP', N'Capsul    ', N'SG/UM/MR/241/20', N'SG', N'test', N'test', N'test', N'test', CAST(0.000 AS Decimal(13, 3)), CAST(0.000 AS Decimal(13, 3)), 0, N'IDR', CAST(1200.00 AS Decimal(13, 2)), N'CAP', N'0', NULL, NULL, N'0', CAST(N'2022-09-18' AS Date), N'tes', N'test', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'WEB         ')
GO
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272851', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000005', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'10107     ', N'PT KOGELAHAR INDONUSA', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272854', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'11142     ', N'PT KIMIA FARMA APOTEK', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272855', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'10035     ', N'APOTIK LIA', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272856', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'11977     ', N'PT PRATAMA MANDIRI SAKTI', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272857', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'11229     ', N'PT ORIONTAMA JAYA', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272858', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'11401     ', N'CV KARYA PERKASA', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272859', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'11887     ', N'PT HOSLAB MEDIKA FARMA', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272860', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'10139     ', N'PT SAFETA RIANDA', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272861', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'10800     ', N'APOTIK KHRISNA', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272862', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'11761     ', N'PT METRUM ALKESTRON', NULL, NULL)
INSERT [dbo].[TB_S_MST_RFQ_BARANG_HEAD] ([nomor_rfq], [tanggal_rfq], [nomor_ph], [tanggal_jatuh_tempo], [kode_vendor], [nama_vendor], [modified_date], [modified_by]) VALUES (N'6200272863', CAST(N'2022-09-17T00:00:00.000' AS DateTime), N'PC22000010', CAST(N'2022-09-18T00:00:00.000' AS DateTime), N'10049     ', N'CV PUTRA TEKNIK', NULL, NULL)
GO
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272851', N'7020498', N'PC22000005000000000007020498.pdf', N'PC22000005000000000007020498.pdf', N'0', CAST(N'2022-07-18T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272854', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272855', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272856', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272857', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272858', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272859', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272860', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272861', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272862', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG] ([nomor_rfq], [kode_barang], [alamat_berkas], [nama_berkas], [sudah_gabung], [modified_date], [modified_by]) VALUES (N'6200272863', N'7021125', N'PC22000010000000000007021125.pdf', N'PC22000010000000000007021125.pdf', N'0', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
GO
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'%  ', N'%         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'%O ', N'%0        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'1  ', N'One       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'10 ', N'Days      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'22S', N'mm2/s     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'2M ', N'cm/s      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'2X ', N'm/min     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'4G ', N'µl        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'4O ', N'µF        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'4T ', N'pF        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'A  ', N'A         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'A87', N'GOhm      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'A93', N'g/m3      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'ACR', N'Acre      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'AMP', N'Ampoule   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'B34', N'kg/dm3    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'B45', N'kmol      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'B47', N'ND        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'B73', N'MN        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'B75', N'MOhm      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'B78', N'MV        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'B84', N'µA        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BAG', N'Bag       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BAL', N'Bale      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BAR', N'bar       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'bbl', N'Btu/bbl   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'bft', N'Btu/ft3   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'bgl', N'Btu/gal   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BH ', N'Buah      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BKS', N'Bungkus   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BLK', N'Blok      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BOT', N'Bottle    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BOX', N'BOX       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BQK', N'Bq/kg     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BTG', N'Batang    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BTL', N'Botol     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'BTR', N'Butir     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'C10', N'mF        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'C36', N'Mol/m3    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'C38', N'Mol/Liter ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'C39', N'nA        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'C3S', N'cm3/s     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'C41', N'nF        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'C56', N'N/mm2     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CAP', N'Capsul    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CC ', N'cc        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CCM', N'cm3       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CD ', N'cd        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CDM', N'Cubic dec.')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CM ', N'cm        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CM2', N'cm2       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CMH', N'cm/h      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CPL', N'Caplet    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CS ', N'Case      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'CTL', N'Centiliter')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'D10', N'Siemens/m ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'D41', N't/m3      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'D46', N'VA        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'DEG', N'Degree    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'DM ', N'dm        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'DOZ', N'Doze      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'DR ', N'Drum      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'DRM', N'Drum      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'DZ ', N'Dozen     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'EA ', N'each      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'EE ', N'Enzy.Units')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'ELM', N'          ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'EML', N'Enzyme/ml ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'F  ', N'F         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'FA ', N'°F        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'FLC', N'Flacon    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'FLS', N'Flask     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'FT ', N'Foot      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'FT2', N'Square ft ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'FT3', N'Cubic ft  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'G  ', N'g         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'G/L', N'gai/liter ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GAU', N'Gram Gold ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GC ', N'°C        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GHG', N'g/hg      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GJ ', N'Gigajoule ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'gj3', N'GJ/1000m3 ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'gjm', N'GJ/m3     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'gjt', N'GJ/ton    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GKG', N'g/kg      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GLI', N'g/l       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GLL', N'US gallon ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GLM', N'Gal/Mi(US)')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GLN', N'Galon     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GM ', N'g/mol     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GM2', N'g/m2      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GNI', N'Goni      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GPH', N'Gal/hr US ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GQ ', N'µg/m3     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GRO', N'Gross     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'GW ', N'g act.ing.')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'H  ', N'Hour      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'HAR', N'Hectare   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'HL ', N'hl        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'HPA', N'hPa       ')
GO
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'HZ ', N'Hz        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'IN ', N'Inches    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'IN2', N'Squar.inch')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'IN3', N'Cubic inch')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'J  ', N'J         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'JHR', N'Year      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'JKG', N'J/kg      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'JKK', N'J/(kg*K)  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'jm3', N'J/m3      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'JMO', N'J/mol     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'JRG', N'Jerigen   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'K  ', N'K         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KA ', N'kA        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KAN', N'Canister  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KAR', N'Carton    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KBK', N'kBq/kg    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KG ', N'kg        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'kgb', N'kg/bbl    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KGF', N'kg/m2     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'kgj', N'kg/J      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KGK', N'kg/kg     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KGM', N'kg/mol    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KGS', N'kg/s      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'kgt', N'kg/ton    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KGV', N'kg/m3     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KGW', N'kg ac.ing.')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KHZ', N'kHz       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KI ', N'Crate     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KJ ', N'kJ        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KJG', N'Kajang    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KJK', N'KJ/kg     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KJM', N'KJ/mol    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KLG', N'Kaleng    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KM ', N'km        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KM2', N'km2       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KMH', N'km/h      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KMK', N'm3/m3     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'kml', N'kg/kg mole')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KMN', N'K/min     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KMS', N'K/s       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KOH', N'kOhm      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KPA', N'kPa       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KPL', N'Komplit   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KT ', N'kt        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KTK', N'Kotak     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KV ', N'kV        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KVA', N'kVA       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KW ', N'KW        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KWH', N'kwh       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'KWK', N'kai/kg    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'L  ', N'l         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'L2 ', N'l/min     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LB ', N'US pound  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'lbb', N'lb/Btu    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'lbg', N'lb/gal    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'lbl', N'lb/lb mol ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'lbm', N'lb/MMBtu  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LBR', N'Lembar    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LBS', N'Pounds    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'lbt', N'lb/ton    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LE ', N'Activ.unit')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LHK', N'l/100 km  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LMS', N'l/mol.s   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LOT', N'Lots      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LPH', N'Liter/hr  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LSI', N'Lisensi   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'LSN', N'Lusin     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M  ', N'm         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M% ', N'%(m)      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M%O', N'%0(mass)  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M/S', N'm/s       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M2 ', N'm2        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M2I', N'1/M2      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M2S', N'm2/s      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M3 ', N'm3        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M3D', N'm3/day    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'M3S', N'm3/s      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MA ', N'mA        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MAT', N'Mata      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MBA', N'mbar      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'mbb', N'MMBtu/bbl ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'mbt', N'MMBtu/ton ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MBZ', N'm.bar/s   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MEJ', N'MJ        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MG ', N'mg        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MGF', N'mg/cm2    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MGG', N'mg/g      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MGK', N'mg/kg     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MGL', N'mg/l      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MGQ', N'mg/m3     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MGW', N'MW        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MHZ', N'MHz       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MI ', N'Mile      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MI2', N'Sq. mile  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MIM', N'µm        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MIN', N'min.      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MIS', N'µs        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MJ ', N'mJ        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'ML ', N'ml        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MLK', N'ml/m3     ')
GO
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MLW', N'ml act.in.')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MM ', N'mm        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MM2', N'mm2       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MMA', N'mm/a      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MMG', N'mmol/g    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MMH', N'mm/h      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MMK', N'mmol/kg   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MMO', N'mmol      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MMQ', N'mm3       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MMS', N'mm/s      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MNM', N'mN/m      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MOK', N'mol/kg    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MOL', N'mol       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MON', N'Months    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MPA', N'MPa       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MPB', N'ppb(m)    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MPG', N'Mi/Gal(US)')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MPM', N'ppm(m)    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MPS', N'mPa.s     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MPT', N'ppt(m)    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MPZ', N'm.Pa/s    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MQH', N'm3/h      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MS ', N'ms        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MS2', N'm/s2      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MT ', N'Metric Ton')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MTE', N'mT        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MTS', N'm/h       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MV ', N'mV        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MVA', N'MVA       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MW ', N'mW        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'MWH', N'MWh       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'N  ', N'N         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'NAM', N'nm        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'NM ', N'N/m       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'NS ', N'ns        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'OCM', N'Ohm*cm    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'OHM', N'Ohm       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'OM ', N'Ohm*m     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'OZ ', N'Ounce     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'OZA', N'Fld.oz US ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'P  ', N'Points    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'P/M', N'Piece/Metr')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PA ', N'Pa        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PAA', N'Pair      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PAK', N'Pack      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PAL', N'Pallet    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PAS', N'Pascal sec')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PC ', N'Piece     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PCT', N'Group prop')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PIL', N'Pail      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PKK', N'Pokok     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PKT', N'          ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PMI', N'1/min     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PMR', N'kg/m2*s   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'POT', N'POT       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PPB', N'ppb       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PPM', N'ppm       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PPT', N'ppt       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PRM', N'ug/cm2*min')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PRS', N'Persons   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PS ', N'ps        ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PSG', N'Pasang    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PT ', N'Pint US l ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'PTG', N'Potong    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'QT ', N'Quart US l')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'RHO', N'g/cm3     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'RIM', N'Rim       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'RLL', N'Roll (Glg)')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'ROL', N'Role      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'S  ', N's         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'SET', N'Set       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'SLV', N'Slove     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'SPL', N'Sample    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'ST ', N'items     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'STD', N'Hours     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'STK', N'          ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'STL', N'Stel      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'STR', N'Strip     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'SUP', N'SUPPOSIT  ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TAB', N'Tablet    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TAG', N'Days      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TBG', N'Tabung    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'tbl', N't/bbl     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'tbt', N't/Btu     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TC3', N'1/cm3     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TES', N'D         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'tgl', N'ton/gal   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TH ', N'Thousands ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TIN', N'Tin       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'tjl', N't/Joule   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TM3', N'1/m3      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TO ', N't         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TON', N'US ton    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TST', N'          ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'tt ', N't/t       ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'ttj', N't/TJ      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'TUB', N'Tube      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'UGL', N'µg/l      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'UNT', N'Unit      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'V  ', N'V         ')
GO
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'V% ', N'%(V)      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'V%O', N'%O(V)     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'V01', N'µS/cm     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'V02', N'Millimol/l')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'VAL', N'Value     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'VIA', N'Vial      ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'VLC', N'Vlacon    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'VPB', N'ppb(V)    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'VPM', N'ppm(V)    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'VPT', N'ppt(V)    ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'W  ', N'W         ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'WCH', N'Weeks     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'WMK', N'W/(m*K)   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'WTL', N'kg/s*m2   ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'YD ', N'Yards     ')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'YD2', N'Squar.yard')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'YD3', N'Cubic yard')
INSERT [dbo].[TB_S_MST_SATUAN] ([satuan], [deskripsi_satuan]) VALUES (N'ZAK', N'Zak       ')
GO
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10017', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'EKA TEKNIK', N'PEM-181/PU/WPJ.01', N'0205/ET/2003        ', N'Galaxy Bekasi                                               ', N'ID ', N'02 ', N'Medan                                             ', N'0811604380          ', N'                    ', N'(061)-4536843       ', N'esamahkota@socfindo.co.id', N' ', N'01.536.356.7-122.001     ', N'                                   ', N'MDR_0010                                          ', NULL, N'                              ', N'                              ', N'Suweri Lukman                      ', N'0811604380          ', N'                    ', N'                    ', N'     ', N'106.0001.336034   ', N'CV. Eka Teknik                                              ', N'IDR  ', N'Bank Mandiri Cabang Medan                                   ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-12T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10018', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'EMBARA', N'PEM-3016/WPJ.01', N'10/IB04-II/2003     ', N'Complex Bumi Asri, Jl.Asrama No.C28                         ', N'ID ', N'02 ', N'Medan                                             ', N'                    ', N'08126411703         ', N'(061)-8440747       ', N'esamahkota@socfindo.co.id', N' ', N'01.457.127.7-111.000     ', N'                                   ', N'BCA_0004                                          ', N'jadi alamat NPWP ya                                         ', N'                              ', N'                              ', N'Sri Delima                         ', N'                    ', N'                    ', N'                    ', N'     ', N'022-381605-1      ', N'CV.Embara                                                   ', N'IDR  ', N'Bank Central Asia (BCA) Diponegoro Medan                    ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-13T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10028', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'KING MOBIL JAYA', N'PEM-8564/WPJ.01', N'Tidak bernomor      ', N'Jl.Sekip No.28                                              ', N'ID ', N'02 ', N'Medan                                             ', N'087769148198        ', N'                    ', N'(061)-4538283       ', N'esamahkota77@gmail.com', N' ', N'01.975.166.8-111.000     ', N'                                   ', N'MASPION_0001                                      ', N'                                                            ', N'                              ', N'                              ', N'Cun Wi                             ', N'087769148198        ', N'                    ', N'                    ', N'     ', N'400-2-00028-3     ', N'CV. KING MOBIL JAYA                                         ', N'IDR  ', N'Bank Maspion Nibung Raya Medan                              ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10035', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'APOTIK LIA', N' ', N'                    ', N'Jl.Cemara No.1                                              ', N'ID ', N'02 ', N'Medan                                             ', N'(061) 6643429       ', N'(061) 77288919      ', N'                    ', N'esamahkota77@gmail.com', N' ', N'                         ', N'                                   ', N'DANAMON_0003                                      ', N'                                                            ', N'                              ', N'                              ', N'Herman/L.C.Angelia                 ', N'(061) 77288919      ', N'                    ', N'                    ', N'     ', N'8317547           ', N'CV Mitra Lia                                                ', N'IDR  ', N'Bank Danamon Diponegoro Medan                               ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10039', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'NIAGA JAYA', N'PEM-086/WPJ.01', N'010/PD/II/NJ/2003   ', N'Jl. Jalan Jalan No.81G                                      ', N'ID ', N'02 ', N'Medan                                             ', N'082166005555        ', N'                    ', N'                    ', N'esamahkota77@gmail.com', N' ', N'01.850.854.9-111.000     ', N'                                   ', N'MESTIKA_0011                                      ', N'                                                            ', N'                              ', N'                              ', N'Acuan / Tio Sutanto                ', N'082166005555        ', N'                    ', N'                    ', N'     ', N'10.123.00135.1    ', N'CV NIAGA JAYA                                               ', N'IDR  ', N'Bank Mestika Cabang Medan                                   ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10049', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'PUTRA TEKNIK', N' ', N'                    ', N'Jl.Mojopahit No.41C                                         ', N'ID ', N'02 ', N'Medan                                             ', N'(061) 4153716       ', N'(061) 4528554       ', N'061-4534979         ', N'muhamad.wik@gmail.com', N' ', N'02.105.798.9-113.000     ', N'                                   ', N'DANAMON_0003                                      ', N'Jl.Asia No. 360 A Medan -20214                              ', N'                              ', N'                              ', N'Junaidi                            ', N'(061) 4153716       ', N'                    ', N'                    ', N'     ', N'002 381 2225      ', N'CV.Putra Teknik                                             ', N'IDR  ', N'Bank Danamon Diponegoro Medan                               ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10107', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'KOGELAHAR INDONUSA', N'KEP-4718/WPJ.01', N'0039/SK/KI/IN/03    ', N'Jl.G.Krakatau No.6,6A,6B                                    ', N'ID ', N'02 ', N'Medan                                             ', N'(061) 6620616       ', N'(061) 6620617       ', N'(061)-6620605       ', N'esamahkota77@gmail.com', N' ', N'01.727.285.7-113.000     ', N'                                   ', N'BII_0001                                          ', N'Jl. G. Krakatau No. 6-B Kel. Glugur                         ', N'                              ', N'                              ', N'Mr.Willy Yustino/Teryfin           ', N'(061) 6620616       ', N'                    ', N'                    ', N'20238', N'2-004-00099-7     ', N'PT KOGELAHAR INDONUSA_LUK                                   ', N'IDR  ', N'Maybank Indonesia Medan                                     ', N'302-300-1754      ', N'PT KOGELAHAR INDONUSA_LUK                                   ', N'IDR  ', N'Bank UOB Buana Medan                                        ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10132', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'POLA RAYA JAYA SAKTI', N'S-37/WPJ.01', N'021/PRJS-III/2003   ', N'Jl.Sutomo No.324-325 (d/h.131)                              ', N'ID ', N'02 ', N'Medan                                             ', N'                    ', N'0811641498          ', N'(061)-4561759       ', N'esamahkota77@gmail.com', N' ', N'01.225.404.1-121.000     ', N'                                   ', N'BNI_0001                                          ', N'                                                            ', N'                              ', N'                              ', N'Puspa                              ', N'                    ', N'                    ', N'                    ', N'     ', N'0052264962        ', N'PT.Pola Raya Jaya Sakti                                     ', N'IDR  ', N'Bank Negara Indonesia (BNI) Sutomo Medan                    ', N'105-0101006504    ', N'PT.Pola Raya Jaya Sakti                                     ', N'IDR  ', N'Bank Mandiri Gatot Subroto Medan                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10139', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'SAFETA RIANDA', N' ', N'                    ', N'Jl.Karya Baru No.6, Comp.Pondok Sur                         ', N'ID ', N'02 ', N'Medan                                             ', N'(061) 8467950       ', N'                    ', N'(061)-8467950       ', N'esamahkota77@gmail.com', N' ', N'01.602.798.9-111.000     ', N'                                   ', N'BNI_0010                                          ', N'                                                            ', N'                              ', N'                              ', N'Sadim Purba                        ', N'                    ', N'                    ', N'                    ', N'     ', N'0056419335        ', N'PT.Safeta Rianda                                            ', N'IDR  ', N'Bank Negara Indonesia (BNI) Pemuda Medan                    ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10146', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'SURYA MENTARI INDAH', N'PEM-3036/WJP.01', N'02/SP/SMI/II/03     ', N'Jl.Alfalah No.4                                             ', N'ID ', N'02 ', N'Medan                                             ', N'0811630382          ', N'                    ', N'(061)-6615106       ', N'esamahkota77@gmail.com', N' ', N'01.602.709.6-113.000     ', N'                                   ', N'MESTIKA_0001                                      ', N'Jln. Alfalah No. 4 Glugur Darat Medan                       ', N'                              ', N'                              ', N'Ir.Juanda Tanady, David            ', N'0811630382          ', N'                    ', N'                    ', N'     ', N'10-108-181902     ', N'PT SURYA MENTARI INDAH                                      ', N'IDR  ', N'Bank Mestika Ahmad Yani Medan                               ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10162', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'UD ABDI JAYA', N'PEM-021/WPJ.01', N'12/AJ/II/2003       ', N'Jl.Hindu No.112P                                            ', N'ID ', N'02 ', N'Medan                                             ', N'                    ', N'                    ', N'                    ', N'lukmancodingpro@gmail.com', N' ', N'06.686.382.0-111.000     ', N'                                   ', N'BNI_0020                                          ', NULL, N'                              ', N'                              ', N'Jamil Burhan                       ', N'                    ', N'                    ', N'                    ', N'20111', N'6887034.1         ', N'Jamil Burhan                                                ', N'IDR  ', N'Bank Negara Indonesia (BNI) USU Medan                       ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-11T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10800', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'APOTIK KHRISNA', N' ', N'                    ', N'NO.211 JL. K.L. YOS SUDARSO                                 ', N'ID ', N'02 ', N'MEDAN                                             ', N'(061) 6643006       ', N'                    ', N'                    ', N'esamahkota77@gmail.com', N' ', N'                         ', N'                                   ', N'BCA_0030                                          ', N'                                                            ', N'                              ', N'                              ', N'                                   ', N'                    ', N'                    ', N'                    ', N'     ', N'195.033.2979      ', N'NG LIE SIM                                                  ', N'IDR  ', N'Bank Central Asia Cabang Asia Medan                         ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10855', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'KARYA AGUNG FALMAS', N'PEM-02PK/WPJ.01/KP.0', N'                    ', N'Jl.Prof.H.M.Yamin,SH III No.1-A                             ', N'ID ', N'02 ', N'MEDAN                                             ', N'082166691166        ', N'                    ', N'                    ', N'esamahkota77@gmail.com', N' ', N'24.363.135.5-113.000     ', N'                                   ', N'MESTIKA_0013                                      ', N'Jl.Prof.H.M.Yamin,SH III No.1-A                             ', N'                              ', N'                              ', N'Rudy Effendy                       ', N'082166691166        ', N'                    ', N'                    ', N'     ', N'1011.021.8500     ', N'PT.Karya Agung Falmas                                       ', N'IDR  ', N'Bank Mestika CAb.Iskandar Muda Medan                        ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'10896', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'PANCA SURYA MAKMUR', N'PEM-BD/120/WPJ.01/KP', N'Non Number          ', N'Jl. Merbabu No.11A                                          ', N'ID ', N'02 ', N'MEDAN                                             ', N'(061) 4146842       ', N'(061) 4146878       ', N'                    ', N'esamahkota77@gmail.com', N' ', N'02.493.627.0-122.000     ', N'                                   ', N'NISP_0005                                         ', N'Jl. Merbabu No.11A-B                                        ', N'                              ', N'                              ', N'Ho An Agung                        ', N'(061) 4146842       ', N'                    ', N'                    ', N'20212', N'180.010.000597    ', N'Panca Surya Makmur, PT                                      ', N'IDR  ', N'Bank NISP Cab.Imam Bonjol Medan                             ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11142', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'KIMIA FARMA APOTEK', N'PEM-00007/WPJ.07/KP.', N'001/KF39/MN/II/2009 ', N'Jl.Jendral Gatot Subroto No.37A/C S                         ', N'ID ', N'02 ', N'MEDAN                                             ', N'(061) 4529909       ', N'                    ', N'061-4532717         ', N'esamahkota77@gmail.com', N' ', N'01.061.227.3-051.000     ', N'                                   ', N'MDR_0010                                          ', N'Pasar Baru-Sawah Besar Jakarta Pusat                        ', N'                              ', N'                              ', N'Rifki Hidayat                      ', N'085274269747        ', N'                    ', N'                    ', N'     ', N'106.009.404.2952  ', N'PT. Kimia Farma Apotek                                      ', N'IDR  ', N'Bank Mandiri Cabang Medan                                   ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11229', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'ORIONTAMA JAYA', N'PEM-197/WPJ.01/KP.09', N'019/OTJ/VI/2010     ', N'Jl.Sutomo No.122                                            ', N'ID ', N'02 ', N'MEDAN                                             ', N'(061) 7320123       ', N'                    ', N'061-7360291         ', N'esamahkota77@gmail.com', N' ', N'01.228.667.0-122.000     ', N'                                   ', N'PERMATA_0010                                      ', N'                                                            ', N'                              ', N'                              ', N'                                   ', N'                    ', N'                    ', N'                    ', N'     ', N'3901140021        ', N'PT. ORIONTAMA JAYA                                          ', N'IDR  ', N'Bank Permata Cabang Medan                                   ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11401', CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'KARYA PERKASA', N' ', N'Kelengkapan data men', N'Jalan Aksara 122-123                                        ', N'ID ', N'02 ', N'MEDAN                                             ', N'(061) 77772858      ', N'(061) 7361780       ', N'061-7321378         ', N'esamahkota77@gmail.com', N' ', N'                         ', N'                                   ', N'MDR_0025                                          ', N'                                                            ', N'                              ', N'                              ', N'JAMES                              ', N'(061) 77772858      ', N'                    ', N'                    ', N'     ', N'106-00-9111888-8  ', N'CV. KARYA PERKASA                                           ', N'IDR  ', N'Bank Mandiri Asia Medan                                     ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11761', CAST(N'2016-01-14T00:00:00.000' AS DateTime), N'METRUM ALKESTRON', N' ', N'                    ', N'Jl. Raden Saleh                                             ', N'ID ', N'02 ', N'Medan                                             ', N'081370080080        ', N'                    ', N'                    ', N'esamahkota77@gmail.com', N' ', N'                         ', N'                                   ', N'MDR_0015                                          ', N'                                                            ', N'                              ', N'                              ', N'Kristine                           ', N'081370080080        ', N'                    ', N'                    ', N'     ', N'106-00-2577799-9  ', N'PT METRUM ALKESTRON                                         ', N'IDR  ', N'Bank Mandiri Lapangan Merdeka Medan                         ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11804', CAST(N'2016-06-14T00:00:00.000' AS DateTime), N'GASIDA INDO TRADE', N'S-186PKP/WPJ.01/KP.0', N'Tanpa nomor surat   ', N'Jl. Rahmadsyah GG Merpati No.31                             ', N'ID ', N'02 ', N'MEDAN                                             ', N'082165413210        ', N'082165413210        ', N'061-7343481         ', N'esamahkota77@gmail.com', N' ', N'75.540.535.4-122.000     ', N'                                   ', N'MESTIKA_0010                                      ', N'                                                            ', N'                              ', N'                              ', N'Sumin Yanto                        ', N'082165413210        ', N'                    ', N'                    ', N'20215', N'10.100.14100.8    ', N'CV GASIDA INDO TRADE                                        ', N'IDR  ', N'Bank Mestika CabZainul Arifin Medan                         ', N'11.100.11110.6    ', N'CV GASIDA INDO TRADE                                        ', N'IDR  ', N'Bank Mestika CabZainul Arifin Medan                         ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11887', CAST(N'2017-05-30T00:00:00.000' AS DateTime), N'HOSLAB MEDIKA FARMA', N' ', N'                    ', N'Jl. Tilak No.123-G                                          ', N'ID ', N'02 ', N'MEDAN                                             ', N'061-7333626         ', N'                    ', N'061-7368280         ', N'esamahkota77@gmail.com', N' ', N'                         ', N'                                   ', N'PERMATA_0010                                      ', N'                                                            ', N'                              ', N'                              ', N'Nelson B.Sinaga                    ', N'061-7333626         ', N'                    ', N'                    ', N'20214', N'8003013996        ', N'PT HOSLAB MEDIKA FARMA                                      ', N'IDR  ', N'Bank Permata Cabang Medan                                   ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-23T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11894', CAST(N'2017-07-11T00:00:00.000' AS DateTime), N'ADELTA SOLUSI TEKNOLOGI', N' ', N'                    ', N'Equity Tower Building 35th Floor, Jl.Jend.Sudirman Kav.52-53', N'ID ', N'10 ', N'JAKARTA                                           ', N'085718222820        ', N'085718222820        ', N'                    ', N'esamahkota77@gmail.com', N' ', N'                         ', N'                                   ', N'BCA_0046                                          ', N'                                                            ', N'                              ', N'                              ', N'Albert Jeremy                      ', N'085718222820        ', N'                    ', N'                    ', N'12190', N'2912222820        ', N'PT ADELTA SOLUSI TEKNOLOGI                                  ', N'IDR  ', N'Bank Central Asia (BCA) Cabang Jakarta                      ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11958', CAST(N'2022-07-08T00:00:00.000' AS DateTime), N'SABENA', N' ', N'                    ', N'Jl.DR.MR Muhammad Hasan                                     ', N'ID ', N'01 ', N'BANDA ACEH                                        ', N'085360010684        ', N'085360010684        ', N'                    ', N'esamahkota@socfindo.com', N' ', N'02.418.592.8-101.000     ', N'                                   ', N'BII_0019                                          ', NULL, N'                              ', N'                              ', N'Naganur/Saifullah                  ', N'085360010684        ', N'                    ', N'                    ', N'     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-08T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11977', CAST(N'2018-09-29T00:00:00.000' AS DateTime), N'PRATAMA MANDIRI SAKTI', N'PEM-34/WPJ.01/KP/040', N'02/III/PMS/2018     ', N'Jl.G.Krakatau Ujung No.5, Simpang Metal                     ', N'ID ', N'02 ', N'MEDAN                                             ', N'081376833681        ', N'                    ', N'                    ', N'esamahkota77@gmail.com', N' ', N'03.060.501.8-112.000     ', N'                                   ', N'BII_0006                                          ', N'                                                            ', N'                              ', N'                              ', N'Evi                                ', N'081376833681        ', N'                    ', N'                    ', N'     ', N'2776 0000 49      ', N'PT PRATAMA MANDIRI SAKTI                                    ', N'IDR  ', N'Maybank Indonesia Sutomo Medan                              ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'11980', CAST(N'2018-10-02T00:00:00.000' AS DateTime), N'TEBING PUTRA MANDIRI', N'PEM-02648/WPJ.01/KP.', N'25/SPR/CV.TPM/VII/20', N'Jl. Pukat I Gg.Sederhana No.03 Medan                        ', N'ID ', N'02 ', N'MEDAN                                             ', N'0811618586          ', N'0819888586          ', N'                    ', N'esamahkota77@gmail.com', N' ', N'31.580.857.6-113.000     ', N'                                   ', N'BCA_0029                                          ', N'                                                            ', N'                              ', N'                              ', N'Hadijanto                          ', N'0811618586          ', N'                    ', N'                    ', N'     ', N'8300813888        ', N'CV TEBING PUTRA MANDIRI                                     ', N'IDR  ', N'Bank Central Asia Cab.Medan                                 ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
INSERT [dbo].[TB_S_MST_VENDOR] ([kode_vendor], [tanggal_registrasi], [nama_perusahaan], [no_surat_rekanan], [no_sppkp], [alamat_perusahaan], [kode_negara], [kode_provinsi], [kabkot], [no_telepon], [no_hp], [no_fax], [email_perusahaan], [email_lainnya], [no_npwp], [nama_npwp], [nama_bank], [alamat_npwp], [bidang_utama], [bidang_usaha], [nama_marketing], [no_hp_marketing], [no_ar], [no_hp_ar], [kode_pos], [rekening01], [atas_nama01], [mata_uang01], [nama_bank01], [rekening02], [atas_nama02], [mata_uang02], [nama_bank02], [rekening03], [atas_nama03], [mata_uang03], [nama_bank03], [rekening04], [atas_nama04], [mata_uang04], [nama_bank04], [rekening05], [atas_nama05], [mata_uang05], [nama_bank05], [modified_date], [modified_by]) VALUES (N'12257', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'TESTING VENDOR UAT 2', N'PEM-181/PU/WPJ.02', N'0205/ET/2022        ', N'Jl. Glugur Raya No .1 Medan                                 ', N'ID ', N'01 ', N'MEDAN BARAT                                       ', N'021-8861936111      ', N'082122474356        ', N'082122474356        ', N'esa_mahkota@yahoo.com', N' ', N'01.536.356.7-122.001     ', N'                                   ', N'ABN_0002                                          ', N'ALAMAT NPWP 2                                               ', N'                              ', N'                              ', N'Sales2                             ', N'082166666666        ', N'                    ', N'                    ', N'17146', N'5646786536        ', N'PT TESTING VENDOR UAT 2                                     ', N'IDR  ', N'Bank ABN Amro Puri Indah Jakarta                            ', N'12345678          ', N'PT TESTING VENDOR UAT  2                                    ', N'IDR  ', N'Bank Aceh Cabang Nagan Raya                                 ', N'156465465456465460', N'PT TESTING VENDOR UAT 2                                     ', N'IDR  ', N'Bank Negara Indonesia (BNI) Aksara Medan                    ', N'89012545678       ', N'PT TESTING VENDOR UAT 2                                     ', N'IDR  ', N'Bank Negara Indonesia (BNI) Belawan Medan                   ', N'                  ', N'                                                            ', N'     ', N'                                                            ', CAST(N'2022-07-22T00:00:00.000' AS DateTime), N'SAP         ')
GO
INSERT [dbo].[TB_S_TR_PO_DTL] ([nomor_po], [item], [short_text], [kode_barang], [plant], [storage_location], [tracking_number], [material_group], [material_group_description], [jumlah], [unit], [base_unit], [denominator], [numerator], [order_price_unit], [net_order_price], [assignment], [business_area], [mrsrno], [keterangan1], [keterangan2], [keterangan3], [delivery_date], [openquantitypo], [status], [modified_date], [modified_by]) VALUES (N'4150000001', N'1001      ', N'lorem ipsum', N'A002', NULL, NULL, NULL, NULL, NULL, CAST(120.000 AS Decimal(13, 3)), N'BOX', NULL, NULL, NULL, CAST(25000.000 AS Decimal(13, 3)), CAST(20000.000 AS Decimal(13, 3)), NULL, NULL, NULL, N'keterangan 1', N'keterangan 2', N'keterangan 3', NULL, NULL, 0, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
INSERT [dbo].[TB_S_TR_PO_DTL] ([nomor_po], [item], [short_text], [kode_barang], [plant], [storage_location], [tracking_number], [material_group], [material_group_description], [jumlah], [unit], [base_unit], [denominator], [numerator], [order_price_unit], [net_order_price], [assignment], [business_area], [mrsrno], [keterangan1], [keterangan2], [keterangan3], [delivery_date], [openquantitypo], [status], [modified_date], [modified_by]) VALUES (N'4150000001', N'1002      ', N'lorem ipsum', N'A001', NULL, NULL, NULL, NULL, NULL, CAST(100.000 AS Decimal(13, 3)), N'BOX', NULL, NULL, NULL, CAST(12500.000 AS Decimal(13, 3)), CAST(10500.000 AS Decimal(13, 3)), NULL, NULL, NULL, N'keterangan 1', N'keterangan 2', N'keterangan 3', NULL, NULL, 0, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
GO
INSERT [dbo].[TB_S_TR_PO_HEAD] ([nomor_po], [dibuat_oleh], [kode_Vendor], [nama_vendor], [top], [p_group], [mata_uang], [tanggal_document], [incoterms_1], [incoterms_2], [jatuh_tempo], [tanggal_dibuat], [plant], [status], [category], [modified_date], [modified_by]) VALUES (N'4150000001', N'system      ', N'10049     ', N'CV PUTRA TEKNIK', NULL, NULL, N'IDR  ', CAST(N'2022-09-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(N'2022-09-14T00:00:00.000' AS DateTime), NULL, 0, NULL, CAST(N'2022-09-14T00:00:00.000' AS DateTime), N'system      ')
GO
SET IDENTITY_INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] ON 

INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] ([id], [nomor_po], [alamat_berkas], [nama_berkas], [modified_date], [modified_by]) VALUES (1, N'4150000001', N'4150000001_01.pdf', N'4150000001_01.pdf', CAST(N'2022-09-19T00:00:00.000' AS DateTime), N'system      ')
INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] ([id], [nomor_po], [alamat_berkas], [nama_berkas], [modified_date], [modified_by]) VALUES (2, N'4150000001', N'4150000001_02.pdf', N'4150000001_02.pdf', CAST(N'2022-09-19T00:00:00.000' AS DateTime), N'system      ')
SET IDENTITY_INSERT [dbo].[TB_S_TR_PO_LAMPIRAN] OFF
GO
INSERT [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'0', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.JPG', N'20220711_6200251371_0_1.JPG', CAST(N'2022-07-11T06:13:31.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'1', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.PNG', N'20220711_6200251371_1_1.PNG', CAST(N'2022-07-11T03:36:47.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'2', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.PNG', N'20220711_6200251371_2_1.PNG', CAST(N'2022-07-11T04:35:35.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'3', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.JPG', N'20220711_6200251371_3_1.JPG', CAST(N'2022-07-11T06:11:42.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'4', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.JPG', N'20220714_6200251371_4_1.JPG', CAST(N'2022-07-14T12:14:12.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_S_TR_QUOTATION_NEGO_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200280539', N'0', 1, N'7006825', N'upload_files/dokumen_quotation/6200280539/', N'NPWP-ELEKTRONIK-Muhamad Perdiyansyah.pdf', N'20220712_6200280539_0_1.pdf', CAST(N'2022-07-12T12:24:44.000' AS DateTime), N'WEB         ')
GO
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'0', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.JPG', N'20220711_6200251371_0_1.JPG', CAST(N'2022-07-11T06:13:31.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'1', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.PNG', N'20220711_6200251371_1_1.PNG', CAST(N'2022-07-11T03:36:47.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'2', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.PNG', N'20220711_6200251371_2_1.PNG', CAST(N'2022-07-11T04:35:35.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'3', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.JPG', N'20220711_6200251371_3_1.JPG', CAST(N'2022-07-11T06:11:42.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200251371', N'4', 1, N'7063515', N'upload_files/dokumen_quotation/6200251371/', N'Capture.JPG', N'20220714_6200251371_4_1.JPG', CAST(N'2022-07-14T12:14:12.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200272863', N'0', 1, N'7055632', N'upload_files/dokumen_quotation/6200272863/', N'2. Application Form-ditandatangani.pdf', N'20220918_6200272863_0_1.pdf', CAST(N'2022-09-18T09:21:26.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200272863', N'1', 1, N'7055632', N'upload_files/dokumen_quotation/6200272863/', N'2. Application Form-ditandatangani.pdf', N'20220918_6200272863_1_1.pdf', CAST(N'2022-09-18T09:22:06.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200272863', N'1', 2, N'7055632', N'upload_files/dokumen_quotation/6200272863/', N'2. Application Form.pdf', N'20220918_6200272863_1_2.pdf', CAST(N'2022-09-18T09:22:06.000' AS DateTime), N'WEB         ')
INSERT [dbo].[TB_TR_QUOTATION_LAMPIRAN] ([nomor_quotation], [ekuivalen], [urutan_berkas], [kode_barang], [alamat_berkas], [nama_berkas_asli], [nama_berkas], [modified_date], [modified_by]) VALUES (N'6200280539', N'0', 1, N'7006825', N'upload_files/dokumen_quotation/6200280539/', N'NPWP-ELEKTRONIK-Muhamad Perdiyansyah.pdf', N'20220712_6200280539_0_1.pdf', CAST(N'2022-07-12T12:24:44.000' AS DateTime), N'WEB         ')
GO
ALTER TABLE [dbo].[TB_S_MST_KONFIRMASI] ADD  CONSTRAINT [DF_TB_S_MST_KONFIRMASI_kode_konfirmasi]  DEFAULT ((0)) FOR [kode_konfirmasi]
GO
