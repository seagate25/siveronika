<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Rfq_model extends CI_Model
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
     * @var array
     */
    protected $table;

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
        $this->table        = ['TB_S_MST_RFQ_BARANG_HEAD', 'TB_S_MST_RFQ_BARANG_DTL', 'TB_S_MST_RFQ_BARANG_EQIV', 'TB_S_MST_RFQ_BIAYA_TAMBAHAN', 'TB_S_MST_RFQ_LAMPIRAN_BARANG', 'TB_TR_QUOTATION_LAMPIRAN'];
        $this->vendor_code  = $this->session->userdata('kode_vendor');
        $this->today        = date('Y-m-d');
    }

    /**
     * Undocumented function
     *
     * @return void
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
        $where = " WHERE (kode_vendor = '{$this->vendor_code}' AND tanggal_jatuh_tempo >= '" . date('Y-m-d') . "') ";  // Get Konfirmasi harga with konfirmasi_status = 1
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (nomor_rfq LIKE '%" . $search['value'] . "%'";
            $where .= " OR tanggal_rfq LIKE '%" . $search['value'] . "%'";
            $where .= " OR tanggal_jatuh_tempo LIKE '%" . $search['value'] . "%')";
        }

        // $sql        = "SELECT * FROM {$this->table[0]}{$where}";
        $sql        = "SELECT trfq.*, tl.alamat_berkas, tl.nama_berkas, tl.sudah_gabung FROM {$this->table[0]} trfq LEFT JOIN TB_S_MST_RFQ_LAMPIRAN_BARANG AS tl ON(tl.nomor_rfq = trfq.nomor_rfq) {$where}";
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        // $sql_   = "SELECT  *
        //             FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
        //                     FROM      {$this->table[0]}
        //                     {$where}
        //                     ) AS RowConstrainedResult
        //             WHERE   RowNum > {$start}
        //                 AND RowNum < (({$start} + 1) + {$length})
        //             ORDER BY RowNum";
        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY trfq.nomor_rfq {$order_dir} ) AS RowNum,
                                        trfq.*, tl.alamat_berkas, tl.nama_berkas, tl.sudah_gabung
                            FROM      {$this->table[0]} trfq
                            LEFT JOIN TB_S_MST_RFQ_LAMPIRAN_BARANG AS tl ON(tl.nomor_rfq = trfq.nomor_rfq)
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";
        $sql_   = "SELECT  *
        FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY trfq.nomor_rfq {$order_dir} ) AS RowNum,
                            trfq.*
                FROM      {$this->table[0]} trfq
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
            $berkas = '';

            // if ($row->nama_berkas !== NULL) {
            //     $berkas =
            //         '<a href="' . base_url('upload_files/Dokumen_RFQ/' . $row->nama_berkas) . '" class="btn btn-icon btn-sm btn-primary me-1 mb-1" target="_blank">
            //                     <i class="las la-arrow-down fs-1 text-white"></i>
            //                 </a>';
            // } else {
            //     $berkas = '';
            // }
            $row->number                = $i;
            $row->berkas                = $berkas;
            $row->nomor_rfq             = $row->nomor_rfq;
            $row->tanggal_rfq           = date('d.M.y', strtotime($row->tanggal_rfq));
            $row->tanggal_jatuh_tempo   = date('d.M.y', strtotime($row->tanggal_jatuh_tempo));
            $row->actions               = '<a href="' . site_url('rfq/det_rfq_goods/' . $this->crypto->encode($row->nomor_rfq)) . '" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                                                <i class="fas fa-envelope-open-text"></i>
                                            </a>';
            $row->sisa_hari             = diff_date($row->tanggal_jatuh_tempo)['days'] . ' Hari';

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
        $where = " WHERE (trfqd.nomor_rfq = '{$rfq_no}') ";  // Get Konfirmasi harga with konfirmasi_status = 1
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (trfqd.kode_barang LIKE '%" . $search['value'] . "%'";
            $where .= " OR trfqd.deskripsi_barang LIKE '%" . $search['value'] . "%'";
            $where .= " OR trfqd.jumlah_permintaan LIKE '%" . $search['value'] . "%'";
            $where .= " OR trfqd.satuan LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT * FROM {$this->table[1]} trfqd {$where}";

        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        // $sql_   = "SELECT  *
        //             FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, trfqd.*
        //                     FROM      {$this->table[1]} trfqd
        //                     {$where}
        //                     ) AS RowConstrainedResult
        //             WHERE   RowNum > {$start}
        //                 AND RowNum < (({$start} + 1) + {$length})
        //             ORDER BY RowNum";

        $sql_   = "SELECT  *
        FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY trfqd.kode_barang) AS RowNum,
                            trfqd.*, tl.alamat_berkas, tl.nama_berkas, tl.sudah_gabung
                FROM      {$this->table[1]} trfqd
                LEFT JOIN TB_S_MST_RFQ_LAMPIRAN_BARANG AS tl ON(tl.nomor_rfq=trfqd.nomor_rfq and tl.kode_barang = trfqd.kode_barang)
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
            $berkas = '';

            if ($row->nama_berkas !== NULL) {
                $berkas =
                    '<a href="' . base_url('upload_files/Dokumen_RFQ/' . $row->nama_berkas) . '" class="btn btn-icon btn-sm btn-primary me-1 mb-1" target="_blank">
                                <i class="las la-arrow-down fs-1 text-white"></i>
                            </a>';
            } else {
                $berkas = '';
            }
            $row->berkas                = $berkas;
            $row->number                = $i;
            $row->kode_barang           = $row->kode_barang;
            $row->deskripsi_barang      = $row->deskripsi_barang;
            $row->jumlah_permintaan     = (int)$row->jumlah_permintaan;
            $row->satuan                = trim($row->satuan);
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
            $row->actions_equivalen     = '<button type="button" class="eqiv_form_1 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_1" ' . $btn_eqiv_1 . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            1
                                        </button>
                                        <button type="button" class="eqiv_form_2 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_2" ' . $this->enableEqivBtn($row->nomor_rfq, 1) . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            2
                                        </button>
                                        <button type="button" class="eqiv_form_3 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_3" ' . $this->enableEqivBtn($row->nomor_rfq, 2) . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            3
                                        </button>
                                        <button type="button" class="eqiv_form_4 btn btn-icon btn-sm btn-info me-2 mb-2" id="btn_eqiv_4" ' . $this->enableEqivBtn($row->nomor_rfq, 3) . ' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
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
     * Enabling Equivalent Button (1-4)
     *
     * @param string $rfq_no
     * @param integer $equivalen
     * @return String
     */
    public function enableEqivBtn(string $rfq_no, int $equivalen)
    {
        $enable = 'disabled';

        $this->load->model('Global_model', 'global');

        $params = array('nomor_rfq' => $rfq_no, 'ekuivalen' => $equivalen);
        $isEquivalentExists = $this->global->get_by($this->table[2], $params);
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
    public function getDetailEquivalent($params = array())
    {
        $this->load->model('Global_model', 'global');
        $result   = $this->global->get_by($this->table[2], $params);

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param array $params
     * @return void
     */
    public function getAttachedFiles($params = array())
    {
        $this->load->model('Global_model', 'global');
        $result   = $this->global->get_by($this->table[5], $params);

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param array $params
     * @param array $data
     * @return void
     */
    public function updateRfq($params = array(), $data = array())
    {
        $this->load->model('Global_model', 'global');
        $result = $this->global->update($this->table[1], $params, $data);

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param array $data
     * @return void
     */
    public function insertEquivalent($data = array())
    {
        $this->load->model('Global_model', 'global');

        $params = array('nomor_rfq' => $data['nomor_rfq']);

        $nextEquivalent = 1;
        $getEquivalent  = $this->global->get_by($this->table[2], $params);
        if ($getEquivalent->num_rows() > 0) {
            $equivalent     = $getEquivalent->result();
            $lastEquivalent = (int)max(array_column($equivalent, 'ekuivalen'));
            $nextEquivalent = $lastEquivalent + 1;
        }

        if ($nextEquivalent == (int)$data['ekuivalen']) {
            $result = $this->global->insert($this->table[2], $data);
        } else {
            $result = 0;
        }

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param array $params
     * @param array $data
     * @return void
     */
    public function updateEquivalent($params = array(), $data = array())
    {
        $this->load->model('Global_model', 'global');
        $result = $this->global->update($this->table[2], $params, $data);

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param array $data
     * @return void
     */
    public function insertBatchFiles($data = array())
    {
        $this->load->model('Global_model', 'global');
        $result = $this->global->insert_batch($this->table[5], $data);

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param array $params
     * @param array $data
     * @return void
     */
    public function updateAttachedFile($params = array(), $data = array())
    {
        $this->load->model('Global_model', 'global');
        $this->global->update($this->table[5], $params, $data);
    }

    public function getUoM()
    {
        $this->load->model('Global_model', 'global');
        $query  = $this->global->get_all('TB_S_MST_SATUAN');
        $result = $query->result();
        foreach ($result as $res) {
            $res->satuan            = trim($res->satuan);
            $res->deskripsi_satuan  = utf8_encode(trim($res->deskripsi_satuan));
        }

        $array = array_filter($result, function ($value) {
            return strstr($value->satuan, '%') === false;
        });

        return $array;
    }
}

/* End of file Rfq_model.php */
