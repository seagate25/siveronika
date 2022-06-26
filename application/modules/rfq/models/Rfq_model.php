<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Rfq_model extends CI_Model {

    /**
     * Declare variable of table name
     * This variable is array list of table name RFQ
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
        $this->table        = ['TB_S_MST_RFQ_BARANG_HEAD','TB_S_MST_RFQ_BARANG_DTL','TB_S_MST_RFQ_BARANG_EQIV','TB_S_MST_RFQ_BIAYA_TAMBAHAN','TB_S_MST_RFQ_LAMPIRAN_BARANG'];
        $this->vendor_code  = $this->session->userdata('kode_vendor');
        $this->today        = date('Y-m-d');
    }

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
		$where = " WHERE (kode_vendor = '{$this->vendor_code}') ";  // Get Konfirmasi harga with konfirmasi_status = 1
		if(!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (nomor_rfq LIKE '%".$search['value']."%'";
            $where .= " OR tanggal_rfq LIKE '%".$search['value']."%'";
            $where .= " OR tanggal_jatuh_tempo LIKE '%".$search['value']."%')";
        }

        $sql        = "SELECT * FROM {$this->table[0]}{$where}";
        
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();
        
        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
                            FROM      {$this->table[0]}
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";

		$query = $this->db->query($sql_);
        $rows_data = $query->result();

        $rows = array();
        $i = (0 + 1);

        foreach($rows_data as $row) {
            $row->number                = $i;
            $row->nomor_rfq             = $row->nomor_rfq;
            $row->tanggal_rfq           = date('d.M.y', strtotime($row->tanggal_rfq));
            $row->tanggal_jatuh_tempo   = date('d.M.y', strtotime($row->tanggal_jatuh_tempo));
            $row->actions               = '<a href="'.site_url('rfq/det_rfq_goods/'.$this->crypto->encode($row->nomor_rfq)).'" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                                                <i class="fas fa-envelope-open-text"></i>
                                            </a>';
            $row->sisa_hari             = diff_date($row->tanggal_jatuh_tempo)['days']. ' Hari';

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
		if(!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (kode_barang LIKE '%".$search['value']."%'";
            $where .= " OR deskripsi_barang LIKE '%".$search['value']."%'";
            $where .= " OR jumlah_permintaan LIKE '%".$search['value']."%'";
            $where .= " OR satuan LIKE '%".$search['value']."%')";
        }

        $sql        = "SELECT * FROM {$this->table[1]}{$where}";
        
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();
        
        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
                            FROM      {$this->table[1]}
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";

		$query = $this->db->query($sql_);
        $rows_data = $query->result();

        $rows = array();
        $i = (0 + 1);

        foreach($rows_data as $row) {
            $row->number            = $i;
            $row->kode_barang       = $row->kode_barang;
            $row->deskripsi_barang  = $row->deskripsi_barang;
            $row->jumlah_permintaan = (int)$row->jumlah_permintaan;
            $row->satuan            = $row->satuan;
            $row->deskripsi_satuan  = trim($row->deskripsi_satuan);
            $row->status            = ($row->modified_by == NULL && $row->modified_date == NULL) ? "Belum Diisi" : "Sudah Diisi";
            $btn_eqiv_1             = ($row->modified_by == NULL && $row->modified_date == NULL) ? 'disabled' : '';
            $row->actions           = '<button type="button" class="rfq_form btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods">
                                            <i class="fas fa-envelope-open-text"></i>
                                        </button>';
            $row->actions_equivalen = '<button type="button" class="eqiv_form btn btn-icon btn-sm btn-primary me-2 mb-2" '.$btn_eqiv_1.' data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods_ekuivalen">
                                            1
                                        </button>
                                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2" '.$this->enableEqivBtn($row->nomor_rfq, 1).'>
                                            2
                                        </button>
                                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2" '.$this->enableEqivBtn($row->nomor_rfq, 2).'>
                                            3
                                        </button>
                                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2" '.$this->enableEqivBtn($row->nomor_rfq, 3).'>
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

    public function saveRFQ($params = array(), $data = array())
    {
        $sql    = "";
        $sql    .= "UPDATE {$this->table[1]} SET ";
        $i      = 0;
        foreach($data as $key => $value) {
            $sql .= "{$key} = '{$value}'";
            if($i === (count($data) - 1)) {
                $sql .= " ";
            } else {
                $sql .= ", ";
            }

            $i++;
        }

        $sql .= " WHERE ";
        foreach($params as $key => $value) {
            $sql .= "{$key} = '{$value}'";
            if(!next($params)) {
                $sql .= " ";
            } else {
                $sql .= " AND ";
            }
        }

        $this->db->query($sql);

        return $this->db->affected_rows();
    }

    /**
     * Undocumented function
     *
     * @param string $rfq_no
     * @param integer $equivalen
     * @return void
     */
    public function enableEqivBtn(string $rfq_no, int $equivalen)
    {
        $enable = 'disabled';
        $sql    = "SELECT * FROM {$this->table[2]} WHERE nomor_rfq = '{$rfq_no}' AND ekuivalen = {$equivalen}";
        $query  = $this->db->query($sql);
        if($query->num_rows() > 0) {
            $enable = '';
        }

        return $enable;
    }

}

/* End of file Rfq_model.php */
