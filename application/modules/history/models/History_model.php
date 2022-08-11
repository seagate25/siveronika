<?php

defined('BASEPATH') or exit('No direct script access allowed');

class History_model extends CI_Model
{

    /**
     * Declare variable of table name
     * This variable is array list of table name RFQ
     * 
     * [
     *      0 => 'TB_S_MST_RFQ_BARANG_HEAD',
     *      1 => 'TB_S_MST_RFQ_BARANG_DTL',
     *      2 => 'TB_S_MST_RFQ_BARANG_EQIV',
     *      3 => 'TB_S_MST_RFQ_BIAYA_TAMBAHAN',
     *      4 => 'TB_S_MST_RFQ_LAMPIRAN_BARANG',
     *      5 => 'TB_TR_QUOTATION_LAMPIRAN'
     * ]
     *
     * @var array<int, string>
     */
    protected $table_rfq;

    /**
     * Undocumented variable
     *
     * @var array
     */
    protected $table_nego;

    /**
     * Declare Variable Table Confirmation
     *
     * @var string
     */
    protected $table_confirmation = 'TB_S_MST_KONFIRMASI';

    /**
     * Declare variable of vendor code
     * Used for parameter data
     *
     * @var string
     */
    protected $vendor_code;

    /**
     * Decalre varibale of today (date)
     *
     * @var string
     */
    protected $today;

    /**
     * Construct function
     * For set value of variable
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->library('Crypto');
        $this->table_rfq    = ['TB_S_MST_RFQ_BARANG_HEAD', 'TB_S_MST_RFQ_BARANG_DTL', 'TB_S_MST_RFQ_BARANG_EQIV', 'TB_S_MST_RFQ_BIAYA_TAMBAHAN', 'TB_S_MST_RFQ_LAMPIRAN_BARANG', 'TB_TR_QUOTATION_LAMPIRAN'];
        $this->table_nego   = [''];
        $this->vendor_code  = $this->session->userdata('kode_vendor');
        $this->today        = date('Y-m-d');
    }

    /**
     * Get History RFQ Goods List
     *
     * @return array
     */
    public function getRfqGoodsList()
    {
        $start = $this->input->post('start');
        $length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
        $draw = $this->input->post('draw');
        $search = $this->input->post('search');
        $order = $this->input->post('order');
        $order_column = $order[0]['column'];
        $order_dir = strtoupper($order[0]['dir']);
        $field  = array(
            1 => 'nomor_rfq',
            3 => 'tanggal_rfq',
            4 => 'tanggal_jatuh_tempo',
        );

        $order_column = $field[$order_column];
        $where = " WHERE (kode_vendor = '{$this->vendor_code}' AND tanggal_jatuh_tempo < '" . date('Y-m-d') . "') ";  // Get Konfirmasi harga with konfirmasi_status = 1
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (nomor_rfq LIKE '%" . $search['value'] . "%'";
            $where .= " OR tanggal_rfq LIKE '%" . $search['value'] . "%'";
            $where .= " OR tanggal_jatuh_tempo LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT trfq.*, tl.alamat_berkas, tl.nama_berkas, tl.sudah_gabung FROM {$this->table_rfq[0]} trfq LEFT JOIN TB_S_MST_RFQ_LAMPIRAN_BARANG AS tl ON(tl.nomor_rfq = trfq.nomor_rfq) {$where}";
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY trfq.nomor_rfq {$order_dir} ) AS RowNum, 
                                        trfq.*, tl.alamat_berkas, tl.nama_berkas, tl.sudah_gabung
                            FROM      {$this->table_rfq[0]} trfq 
                            LEFT JOIN TB_S_MST_RFQ_LAMPIRAN_BARANG AS tl ON(tl.nomor_rfq = trfq.nomor_rfq)
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";

        $query = $this->db->query($sql_);
        $rows_data = $query->result();
        // var_dump($rows_data);
        $rows = array();
        $i = (0 + 1);

        foreach ($rows_data as $row) {
            $berkas = '';

            if ($row->nama_berkas !== NULL) {
                $berkas =
                    '<a href="' . base_url('upload_files/Dokumen_RFQ/' . $row->nama_berkas) . '" class="btn btn-icon btn-sm btn-primary me-1 mb-1" target="_blank">
                                <i class="las la-arrow-down fs-1 text-white"></i>
                            </a>';
            } else {
                $berkas = '';
            }
            $row->number                = $i;
            $row->berkas                = $berkas;
            $row->nomor_rfq             = $row->nomor_rfq;
            $row->tanggal_rfq           = date('d.M.y', strtotime($row->tanggal_rfq));
            $row->tanggal_jatuh_tempo   = date('d.M.y', strtotime($row->tanggal_jatuh_tempo));
            $row->actions               = '<a href="' . site_url('history/det_rfq_goods/' . $this->crypto->encode($row->nomor_rfq)) . '" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                                                <i class="fas fa-envelope-open-text"></i>
                                            </a>';
            // $row->sisa_hari             = diff_date($row->tanggal_jatuh_tempo)['days']. ' Hari';
            $row->sisa_hari             = 0 . ' hari';

            $rows[] = $row;
            $i++;
        }

        return array(
            'draw' => $draw,
            'recordsTotal' => $records_total,
            'recordsFiltered' => $records_total,
            'data' => $rows,
        );
    }

    /**
     * Get Detail RFQ Goods List
     *
     * @param string $rfq_no
     * @return array
     */
    public function getDetRfqGoodsList($rfq_no)
    {
        $start = $this->input->post('start');
        $length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
        $draw = $this->input->post('draw');
        $search = $this->input->post('search');
        $order = $this->input->post('order');
        $order_column = $order[0]['column'];
        $order_dir = strtoupper($order[0]['dir']);
        $field  = array(
            1 => 'kode_barang',
            2 => 'deskripsi_barang',
            3 => 'jumlah_permintaan',
            4 => 'satuan'
        );

        $order_column = $field[$order_column];
        $where = " WHERE (nomor_rfq = '{$rfq_no}') ";  // Get Konfirmasi harga with konfirmasi_status = 1
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (kode_barang LIKE '%" . $search['value'] . "%'";
            $where .= " OR deskripsi_barang LIKE '%" . $search['value'] . "%'";
            $where .= " OR jumlah_permintaan LIKE '%" . $search['value'] . "%'";
            $where .= " OR satuan LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT * FROM {$this->table_rfq[1]}{$where}";

        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
                            FROM      {$this->table_rfq[1]}
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";

        $query = $this->db->query($sql_);
        $rows_data = $query->result();

        $rows = array();
        $i = (0 + 1);

        foreach ($rows_data as $row) {
            $row->number                = $i;
            $row->kode_barang           = $row->kode_barang;
            $row->deskripsi_barang      = $row->deskripsi_barang;
            $row->jumlah_permintaan     = (int)$row->jumlah_permintaan;
            $row->satuan                = $row->satuan;
            $row->harga_satuan          = (int)$row->harga_satuan;
            $row->konversi              = (int)$row->konversi;
            $row->ketersediaan_barang   = (int)$row->ketersediaan_barang;
            $row->deskripsi_satuan      = trim($row->deskripsi_satuan);
            $row->urutan_rfq            = trim($row->urutan_rfq);
            $row->status                = ($row->modified_by == NULL && $row->modified_date == NULL) ? "Belum Diisi" : "Sudah Diisi";
            $btn_eqiv_1                 = ($row->modified_by == NULL && $row->modified_date == NULL) ? 'disabled' : '';
            $row->actions               = '<button type="button" class="rfq_form btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods">
                                            <i class="fas fa-envelope-open-text"></i>
                                        </button>';
            $row->actions_equivalen     = '<button type="button" class="eqiv_form_1 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_1" ' . $this->enableEqivBtn($row->nomor_rfq, 1) . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            1
                                        </button>
                                        <button type="button" class="eqiv_form_2 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_2" ' . $this->enableEqivBtn($row->nomor_rfq, 2) . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            2
                                        </button>
                                        <button type="button" class="eqiv_form_3 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_3" ' . $this->enableEqivBtn($row->nomor_rfq, 3) . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            3
                                        </button>
                                        <button type="button" class="eqiv_form_4 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_4" ' . $this->enableEqivBtn($row->nomor_rfq, 4) . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            4
                                        </button>';

            $rows[] = $row;
            $i++;
        }

        return array(
            'draw' => $draw,
            'recordsTotal' => $records_total,
            'recordsFiltered' => $records_total,
            'data' => $rows,
        );
    }

    /**
     * Get History Confirmation Price List
     *
     * @return array
     */
    public function getConPriceList()
    {
        $start = $this->input->post('start');
        $length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
        $draw = $this->input->post('draw');
        $search = $this->input->post('search');
        $order = $this->input->post('order');
        $order_column = $order[0]['column'];
        $order_dir = strtoupper($order[0]['dir']);
        $field  = array(
            1 => 'kode_konfirmasi',
            2 => 'tanggal_kirim',
            3 => 'kode_vendor',
            4 => 'nama_vendor',
            5 => 'harga_po_terakhir',
            6 => 'mata_uang_po_terakhir',
            7 => 'nomor_pr',
            8 => 'item_pr',
            9 => 'kode_material',
            10 => 'deskripsi',
            11 => 'jumlah',
            12 => 'harga',
            13 => 'mata_uang',
            14 => 'satuan',
            15 => 'konfirmasi_status',
            16 => 'jumlah_tersedia',
            17 => 'jumlah_inden',
            18 => 'lama_inden',
            19 => 'pesan_ulang',
            20 => 'modified_date',
            21 => 'modified_by',
            22 => 'status',
            23 => 'status_harga'
        );

        $order_column = $field[$order_column];
        $where = " WHERE (konfirmasi_status = '1' AND kode_vendor = '{$this->vendor_code}' AND tanggal_kirim < '" . date('Y-m-d') . "') ";  // Get Konfirmasi harga with konfirmasi_status = 1
        $where = " WHERE (konfirmasi_status = '1' AND kode_vendor = '{$this->vendor_code}' AND (tanggal_kirim < '" . date('Y-m-d') . "') OR flag_kirim = 1) ";  // Get Konfirmasi harga with konfirmasi_status = 1 and add filter flag_kirim =1
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (kode_konfirmasi LIKE '%" . $search['value'] . "%'";
            $where .= " OR kode_vendor LIKE '%" . $search['value'] . "%'";
            $where .= " OR nama_vendor LIKE '%" . $search['value'] . "%'";
            $where .= " OR nomor_pr LIKE '%" . $search['value'] . "%'";
            $where .= " OR kode_material LIKE '%" . $search['value'] . "%'";
            $where .= " OR deskripsi LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT * FROM {$this->table_confirmation}{$where}";

        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
                            FROM      {$this->table_confirmation}
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";
        // $sql_ .= " ORDER BY " . $order_column . " {$order_dir}";
        // $sql_ .= " LIMIT {$length} OFFSET {$start}";

        $query = $this->db->query($sql_);
        $rows_data = $query->result();

        $rows = array();
        $i = (0 + 1);

        foreach ($rows_data as $row) {
            $row->number                = $i;
            $row->kode_konfirmasi   = $row->kode_konfirmasi;
            $row->tanggal_kirim     = date('d M y', strtotime($row->tanggal_kirim));
            $row->kode_vendor       = $row->kode_vendor;
            $row->nama_vendor       = $row->nama_vendor;
            $row->harga_po_terakhir = (int)$row->harga_po_terakhir;
            $row->mata_uang_po_terakhir = $row->mata_uang_po_terakhir;
            $row->nomor_pr          = $row->nomor_pr;
            $row->item_pr           = $row->item_pr;
            $row->kode_material     = $row->kode_material;
            $row->deskripsi         = utf8_encode($row->deskripsi);
            $row->jumlah            = (int)$row->jumlah;
            $row->harga             = (int)$row->harga;
            $row->mata_uang         = $row->mata_uang;
            $row->satuan            = $row->satuan;
            $row->konfirmasi_status = $row->konfirmasi_status;
            $row->jumlah_tersedia   = (int)$row->jumlah_tersedia;
            $row->jumlah_inden      = (int)$row->jumlah_inden;
            $row->lama_inden        = (int)$row->lama_inden;
            $row->pesan_ulang       = $row->pesan_ulang;
            $row->modified_date     = ($row->modified_date == NULL) ? $row->modified_date : date('d M y', strtotime($row->modified_date));
            $row->modified_by       = $row->modified_by;
            $row->actions           = '<button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_confirmation"><i class="fas fa-envelope-open-text"></i></button>';
            $row->status            = ($row->modified_by == NULL && $row->modified_date == NULL) ? "Tidak Konfirmasi" : "Sudah Konfirmasi";
            if ($row->modified_by == NULL && $row->modified_date == NULL) {
                $row->status_harga      = "";
            } else if ($row->pesan_ulang == 1) {
                $row->status_harga      = "HARGA SESUAI";
            } else if (($row->modified_by != NULL && $row->modified_date != NULL) && $row->pesan_ulang == 0) {
                $row->status_harga      = "HARGA TIDAK SESUAI";
            }
            $rows[] = $row;
            $i++;
        }

        return array(
            'draw' => $draw,
            'recordsTotal' => $records_total,
            'recordsFiltered' => $records_total,
            'data' => $rows,
        );
    }

    /**
     * Get Hisotry Request Price List
     *
     * @return array
     */
    public function getReqPriceList()
    {
        $start = $this->input->post('start');
        $length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
        $draw = $this->input->post('draw');
        $search = $this->input->post('search');
        $order = $this->input->post('order');
        $order_column = $order[0]['column'];
        $order_dir = strtoupper($order[0]['dir']);
        $field  = array(
            1 => 'kode_konfirmasi',
            2 => 'tanggal_kirim',
            3 => 'kode_vendor',
            4 => 'nama_vendor',
            5 => 'harga_po_terakhir',
            6 => 'mata_uang_po_terakhir',
            7 => 'nomor_pr',
            8 => 'item_pr',
            9 => 'kode_material',
            10 => 'deskripsi',
            11 => 'jumlah',
            12 => 'harga',
            13 => 'mata_uang',
            14 => 'satuan',
            15 => 'konfirmasi_status',
            16 => 'jumlah_tersedia',
            17 => 'jumlah_inden',
            18 => 'lama_inden',
            19 => 'pesan_ulang',
            20 => 'modified_date',
            21 => 'modified_by',
            22 => 'status',
            23 => 'status_harga'
        );

        $order_column = $field[$order_column];
        $where = " WHERE (konfirmasi_status = '2' AND kode_vendor = '{$this->vendor_code}' AND tanggal_kirim < '" . date('Y-m-d') . "') ";  // Get Konfirmasi harga with konfirmasi_status = 2
        $where = " WHERE (konfirmasi_status = '2' AND kode_vendor = '{$this->vendor_code}' AND (tanggal_kirim < '" . date('Y-m-d') . "') OR flag_kirim = 1) ";  // Get Konfirmasi harga with konfirmasi_status = 2 and add filter flag_kirim =1
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " kode_konfirmasi LIKE '%" . $search['value'] . "%'";
            $where .= " OR kode_vendor LIKE '%" . $search['value'] . "%'";
            $where .= " OR nama_vendor LIKE '%" . $search['value'] . "%'";
            $where .= " OR nomor_pr LIKE '%" . $search['value'] . "%'";
            $where .= " OR kode_material LIKE '%" . $search['value'] . "%'";
            $where .= " OR deskripsi LIKE '%" . $search['value'] . "%'";
        }

        $sql        = "SELECT * FROM {$this->table_confirmation}{$where}";

        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
                            FROM      {$this->table_confirmation}
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";

        $query = $this->db->query($sql_);
        $rows_data = $query->result();

        $rows = array();
        $i = (0 + 1);

        foreach ($rows_data as $row) {
            $row->number                = $i;
            $row->kode_konfirmasi       = $row->kode_konfirmasi;
            $row->tanggal_kirim         = date('d M y', strtotime($row->tanggal_kirim));
            $row->kode_vendor           = $row->kode_vendor;
            $row->nama_vendor           = $row->nama_vendor;
            $row->harga_po_terakhir     = (int)$row->harga_po_terakhir;
            $row->mata_uang_po_terakhir = $row->mata_uang_po_terakhir;
            $row->nomor_pr              = $row->nomor_pr;
            $row->item_pr               = $row->item_pr;
            $row->kode_material         = $row->kode_material;
            $row->deskripsi             = utf8_encode($row->deskripsi);
            $row->jumlah                = (int)$row->jumlah;
            $row->harga                 = ($row->modified_by == NULL && $row->modified_date == NULL) ? 0 : (int)$row->harga;
            $row->mata_uang             = ($row->modified_by == NULL && $row->modified_date == NULL) ? '' : trim($row->mata_uang);
            $row->satuan                = $row->satuan;
            $row->konfirmasi_status     = $row->konfirmasi_status;
            $row->jumlah_tersedia       = (int)$row->jumlah_tersedia;
            $row->jumlah_inden          = (int)$row->jumlah_inden;
            $row->lama_inden            = (int)$row->lama_inden;
            $row->pesan_ulang           = $row->pesan_ulang;
            $row->modified_date         = ($row->modified_date == NULL) ? $row->modified_date : date('d M y', strtotime($row->modified_date));
            $row->modified_by           = $row->modified_by;
            $row->actions               = '<button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_confirmation"><i class="fas fa-envelope-open-text"></i></button>';
            $row->status                = ($row->modified_by == NULL && $row->modified_date == NULL) ? "Tidak Konfirmasi" : "Sudah Konfirmasi";
            if ($row->harga == 0 || ($row->modified_by == NULL && $row->modified_date == NULL)) {
                $row->status_harga      = "";
            } else if ($row->harga_po_terakhir == $row->harga) {
                $row->status_harga      = "HARGA SAMA";
            } else if ($row->harga_po_terakhir > $row->harga) {
                $row->status_harga      = "HARGA TURUN";
            } else if ($row->harga_po_terakhir < $row->harga) {
                $row->status_harga      = "HARGA NAIK";
            }
            $rows[] = $row;
            $i++;
        }

        return array(
            'draw' => $draw,
            'recordsTotal' => $records_total,
            'recordsFiltered' => $records_total,
            'data' => $rows,
        );
    }

    /**
     * Enabling Equivalent Button (1-4)
     *
     * @param string $rfq_no
     * @param integer $equivalen
     * @return void
     */
    public function enableEqivBtn(string $rfq_no, int $equivalen)
    {
        $enable = 'disabled';

        $this->load->model('Global_model', 'global');

        $params = array('nomor_rfq' => $rfq_no, 'ekuivalen' => $equivalen);
        $isEquivalentExists = $this->global->get_by($this->table_rfq[2], $params);
        if ($isEquivalentExists->num_rows() > 0) {
            $enable = '';
        }

        return $enable;
    }

    /**
     * Undocumented function
     *
     * @param array $params
     * @return void
     */
    public function getHistoryDetailEquivalent($params = array())
    {
        $this->load->model('Global_model', 'global');
        $result = $this->global->get_by($this->table_rfq[2], $params);

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param array $params
     * @return void
     */
    public function getHistoryAttachedFiles($params = array())
    {
        $this->load->model('Global_model', 'global');
        $result = $this->global->get_by($this->table_rfq[5], $params);

        return $result;
    }
}

/* End of file Rfq_model.php */
