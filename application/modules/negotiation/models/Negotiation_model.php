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
