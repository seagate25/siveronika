<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Po_status_model extends CI_Model {

    /**
     * Declare table of PO
     * 
     * [
     *      'head'      => 'TB_S_TR_PO_HEAD'
     *      'detail'    => 'TB_S_TR_PO_DTL'
     * ]
     *
     * @var array
     */
    protected $table;
    
    /**
     * Declare current timestamp
     *
     * @var Datetime
     */
    protected $timestamps;
    
    /**
     * Declare vendor session data
     *
     * @var string
     */
    protected $vendor;
    
    public function __construct()
    {
        parent::__construct();
        $this->table = [
            'head'      => 'TB_S_TR_PO_HEAD',
            'detail'    => 'TB_S_TR_PO_DTL'
        ];
        $this->vendor = $this->session->userdata('kode_vendor');
        $this->timestamps = date('Y-m-d H:i:s');
        $this->load->model('Global_model', 'global');
        $this->load->helper('directory');
    }
    
    /**
     * Get PO Head List
     * with Datatables server side
     *
     * @return array
     */
    public function getPOHeadList()
    {
        $start = $this->input->post('start');
        $length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
        $draw = $this->input->post('draw');
        $search = $this->input->post('search');
        $order = $this->input->post('order');
        $order_column = $order[0]['column'];
        $order_dir = strtoupper($order[0]['dir']);
        $field  = array(
            1 => 'nomor_po',
            5 => 'tanggal_document',
            6 => 'tanggal_dibuat',
            7 => 'jatuh_tempo'
        );

        $order_column = $field[$order_column];

        // $where = " WHERE (kode_vendor = '{$this->vendor_code}' AND jatuh_tempo >= '" . date('Y-m-d') . "') ";
        $where = " WHERE (kode_vendor = '{$this->vendor}') ";
        if (!empty($search['value'])) {
            $where .= " AND ";
            $where .= " (nomor_po LIKE '%" . $search['value'] . "%'";
            $where .= " OR tanggal_document LIKE '%" . $search['value'] . "%'";
            $where .= " OR tanggal_dibuat LIKE '%" . $search['value'] . "%'";
            $where .= " OR jatuh_tempo LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT 
                            nomor_po, tanggal_document, tanggal_dibuat, jatuh_tempo, modified_date, modified_by
                        FROM {$this->table['head']}";
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT ROW_NUMBER() OVER ( ORDER BY nomor_po {$order_dir} ) AS RowNum,
                                nomor_po, tanggal_document, tanggal_dibuat, jatuh_tempo, modified_date, modified_by
                            FROM      {$this->table['head']}
                            {$where} ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";
        
        $query = $this->db->query($sql_);
        $rows_data = $query->result();
        $rows = array();
        $i = (0 + 1);

        $scan_po_files = directory_map('upload_files/Dokumen_PO');

        foreach ($rows_data as $row) {
            $row->po_no                 = '';
            $link_attachment_po         = '';
            if(in_array($row->nomor_po.'.pdf', $scan_po_files)) {
                $row->po_no             = '<a href="'. site_url('po_status/download/head/'.$this->crypto->encode($row->nomor_po)) .'">'.$row->nomor_po.'</a>';
            } else {
                $row->po_no             = $row->nomor_po;
            }

            if(strpos(json_encode($scan_po_files), $row->nomor_po.'_') !== FALSE) {
                $link_attachment_po     = site_url('po_status/download/detail/'.$this->crypto->encode($row->nomor_po));
            } else {
                $link_attachment_po     = '#';
            }

            $row->number                = $i;
            $row->attachment_po         = '<a href="' . $link_attachment_po . '" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                                                <i class="fas fa-download text-white"></i>
                                            </a>';
            $row->template              = '<a href="' . site_url('po_status/download/template/'.$this->crypto->encode($row->nomor_po)) . '" class="btn btn-icon btn-sm btn-primary me-2 mb-2" target="_blank">
                                                <i class="fas fa-download text-white"></i>
                                            </a>';
            $row->upload                = '<a href="' . base_url('upload_files/Dokumen_RFQ/' . $row->nomor_po) . '" class="btn btn-icon btn-sm btn-primary me-2 mb-2" target="_blank">
                                                <i class="fas fa-upload text-white"></i>
                                            </a>';
            $row->tanggal_document      = date('d.M.y', strtotime($row->tanggal_document));
            $row->tanggal_dibuat        = date('d.M.y', strtotime($row->tanggal_dibuat));
            $row->jatuh_tempo           = ($row->jatuh_tempo === NULL) ? '-' : date('d.M.y', strtotime($row->jatuh_tempo));
            $row->actions               = '<a href="' . site_url('negotiation/det_rfq_goods/' . $this->crypto->encode($row->nomor_po)) . '" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                                                <i class="fas fa-envelope-open-text"></i>
                                            </a>';

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
     * Get Detail PO
     *
     * @param string $po_number
     * @return array
     */
    public function getPODetail($po_number = '')
    {
        $params = ['nomor_po' => $po_number];
        $query  = $this->global->get_by($this->table['detail'], $params);

        return $query->result();
    }
}

/* End of file Po_status_model.php */
