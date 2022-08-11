<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Negotiation_model extends CI_Model {
    
    /**
     * Declare Negotiation Table List
     *
     * [
     *      'detail'        => 'TB_S_MST_NEGO_BARANG_DTL',
     *      'eqiv'          => 'TB_S_MST_NEGO_BARANG_EQIV',
     *      'head'          => 'TB_S_MST_NEGO_BARANG_HEAD',
     *      'attachment'    => 'TB_S_MST_NEGO_LAMPIRAN_BARANG'
     * ]
     * 
     * @var array
     */
    protected $table;
    
    /**
     * Declare vendor code
     *
     * @var string
     */
    protected $vendor_code;

    /**
     * Declare current timestamps
     *
     * @var Datetime
     */
    protected $timestamps;
    
    /**
     * Undocumented function
     */
    public function __construct()
    {
        parent::__construct();
        $this->table = [
            'detail' => 'TB_S_MST_NEGO_BARANG_DTL',
            'eqiv' => 'TB_S_MST_NEGO_BARANG_EQIV',
            'head' => 'TB_S_MST_NEGO_BARANG_HEAD',
            'attachment' => 'TB_S_MST_NEGO_LAMPIRAN_BARANG'
        ];
        $this->vendor_code = $this->session->userdata('kode_vendor');
        $this->timestamps = date('Y-m-d H:i:s');
        $this->load->model('Global_model', 'global');
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function getNegoRfqGoodsList()
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

        $where = " WHERE (tnego.kode_vendor = '{$this->vendor_code}' AND tnego.tanggal_jatuh_tempo >= '" . date('Y-m-d') . "') ";
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (tnego.nomor_rfq LIKE '%" . $search['value'] . "%'";
            $where .= " OR tnego.tanggal_rfq LIKE '%" . $search['value'] . "%'";
            $where .= " OR tnego.tanggal_jatuh_tempo LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT 
                            tnego.nomor_rfq, tnego.tanggal_rfq, tnego.tanggal_jatuh_tempo, tnego.modified_date, tnego.modified_by,
                            tl.alamat_berkas, tl.nama_berkas, tl.sudah_gabung 
                        FROM {$this->table['head']} tnego 
                        LEFT JOIN {$this->table['attachment']} AS tl ON ( tl.nomor_rfq = tnego.nomor_rfq ) {$where}";
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT ROW_NUMBER() OVER ( ORDER BY tnego.nomor_rfq {$order_dir} ) AS RowNum,
                                tnego.nomor_rfq, tnego.tanggal_rfq, tnego.tanggal_jatuh_tempo, tnego.modified_date, tnego.modified_by, 
                                tl.alamat_berkas, tl.nama_berkas, tl.sudah_gabung
                            FROM      {$this->table['head']} tnego
                            LEFT JOIN {$this->table['attachment']} AS tl ON ( tl.nomor_rfq = tnego.nomor_rfq )
                            {$where} ) AS RowConstrainedResult
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
            $row->number                = $i;
            $row->berkas                = $berkas;
            $row->nomor_rfq             = $row->nomor_rfq;
            $row->tanggal_rfq           = date('d.M.y', strtotime($row->tanggal_rfq));
            $row->tanggal_jatuh_tempo   = date('d.M.y', strtotime($row->tanggal_jatuh_tempo));
            $row->actions               = '<a href="' . site_url('negotitation/det_rfq_goods/' . $this->crypto->encode($row->nomor_rfq)) . '" class="btn btn-icon btn-sm btn-success me-2 mb-2">
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
     * Undocumented function
     *
     * @return void
     */
    public function getDetNegoRfqGoodsList()
    {
        
    }
        
}

/* End of file Negotiation_model.php */
