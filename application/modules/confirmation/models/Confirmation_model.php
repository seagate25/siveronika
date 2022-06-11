<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Confirmation_model extends CI_Model {

    /**
     * Declare table name
     * 
     * @var string
     */
    protected $table;
    
    public function __construct()
    {
        parent::__construct();
        $this->table    = "TB_S_MST_KONFIRMASI";
    }
    
    public function getConfirmationPriceList()
    {
        $start = $this->input->post('start');
		$length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
		$draw = $this->input->post('draw');
		$search = $this->input->post('search');
		$order = $this->input->post('order');
		$order_column = $order[0]['column'];
		$order_dir = strtoupper($order[0]['dir']);
		$field  = array(
            1 => 'kode_material', 
            2 => 'deskripsi', 
            3 => 'jumlah', 
            4 => 'satuan', 
            5 => 'modified_date', 
        );
        
        $order_column = $field[$order_column];
		$where = " WHERE (konfirmasi_status ='1') ";  // Get Konfirmasi harga with konfirmasi_status = 1
		if(!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (kode_konfirmasi LIKE '%".$search['value']."%'";
            $where .= " OR kode_vendor LIKE '%".$search['value']."%'";
            $where .= " OR nama_vendor LIKE '%".$search['value']."%'";
            $where .= " OR nomor_pr LIKE '%".$search['value']."%'";
            $where .= " OR kode_material LIKE '%".$search['value']."%'";
            $where .= " OR deskripsi LIKE '%".$search['value']."%')";
        }

        $sql        = "SELECT * FROM {$this->table}{$where}";
        
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();
        
        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
                            FROM      {$this->table}
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < ({$start} + {$length})
                    ORDER BY RowNum";
        // $sql_ .= " ORDER BY " . $order_column . " {$order_dir}";
		// $sql_ .= " LIMIT {$length} OFFSET {$start}";

		$query = $this->db->query($sql_);
        $rows_data = $query->result();

		$rows = array();
        $i = (0 + 1);

        foreach($rows_data as $row) {
            $row->kode_konfirmasi   = $row->kode_konfirmasi;
            $row->number            = $i;
            $row->kode_material     = $row->kode_material;
            $row->deskripsi         = utf8_encode($row->deskripsi);
            $row->jumlah            = $row->jumlah;
            $row->satuan            = $row->satuan;
            $row->modified_date     = date('d M y', strtotime($row->modified_date));
            $row->modified_by       = $row->modified_by;
            $row->actions           = '<a href="#" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_confirmation"><i class="fas fa-envelope-open-text"></i></a>';
            $row->status            = "";
            $row->status_harga      = "";
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

    public function getRequestPriceList()
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
            11=> 'jumlah', 
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
		$where = " WHERE (konfirmasi_status ='2') ";  // Get Konfirmasi harga with konfirmasi_status = 2
		if(!empty($search['value'])) {
            $where .= " AND ";
            $where .= " kode_konfirmasi LIKE '%".$search['value']."%'";
            $where .= " OR kode_vendor LIKE '%".$search['value']."%'";
            $where .= " OR nama_vendor LIKE '%".$search['value']."%'";
            $where .= " OR nomor_pr LIKE '%".$search['value']."%'";
            $where .= " OR kode_material LIKE '%".$search['value']."%'";
            $where .= " OR deskripsi LIKE '%".$search['value']."%'";
        }

        $sql        = "SELECT * FROM {$this->table}{$where}";
        
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();
        
        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum, *
                            FROM      {$this->table}
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < ({$start} + {$length})
                    ORDER BY RowNum";
        // $sql_ .= " ORDER BY " . $order_column . " {$order_dir}";
		// $sql_ .= " LIMIT {$length} OFFSET {$start}";

		$query = $this->db->query($sql_);
        $rows_data = $query->result();

		$rows = array();
        $i = (0 + 1);

        foreach($rows_data as $row) {
            $row->number                = $i;
            $row->kode_konfirmasi   = $row->kode_konfirmasi;
            $row->tanggal_kirim     = date('d M y', strtotime($row->tanggal_kirim));
            $row->kode_vendor       = $row->kode_vendor;
            $row->nama_vendor       = $row->nama_vendor;
            $row->harga_po_terakhir = $row->harga_po_terakhir;
            $row->mata_uang_po_terakhir= $row->mata_uang_po_terakhir;
            $row->nomor_pr          = $row->nomor_pr;
            $row->item_pr           = $row->item_pr;
            $row->kode_material     = $row->kode_material;
            $row->deskripsi         = $row->deskripsi;
            $row->jumlah            = $row->jumlah;
            $row->harga             = $row->harga;
            $row->mata_uang         = $row->mata_uang;
            $row->satuan            = $row->satuan;
            $row->konfirmasi_status = $row->konfirmasi_status;
            $row->jumlah_tersedia   = $row->jumlah_tersedia;
            $row->jumlah_inden      = $row->jumlah_inden;
            $row->lama_inden        = $row->lama_inden;
            $row->pesan_ulang       = $row->pesan_ulang;
            $row->modified_date     = date('d M y', strtotime($row->modified_date));
            $row->modified_by       = $row->modified_by;
            // $row->actions           = '<a href="#" class="btn btn-icon btn-sm btn-success me-2 mb-2"><i class="fas fa-envelope-open-text"></i></a>';
            $row->actions           = '<a href="#" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_confirmation"><i class="fas fa-envelope-open-text"></i></a>';
            $row->status            = "";
            $row->status_harga      = "";
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
}

/* End of file Master_model.php */
