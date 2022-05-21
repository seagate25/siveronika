<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class History extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
    }

    /**
     * Index Function
     *
     * @return void
     */
    public function rfq_goods()
    {
        $data['title']      = "RFQ Barang";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "RFQ Barang";
        $data['content']    = "history_rfq_goods";
        $this->load->view('default', $data);
    }

    public function rfq_service()
    {
        $data['title']      = "RFQ Jasa";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "RFQ Jasa";
        $data['content']    = "history_rfq_service";
        $this->load->view('default', $data);
    }

    public function negotiation_rfq_goods()
    {
        $data['title']      = "Nego RFQ Barang";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Nego RFQ Barang";
        $data['content']    = "history_negotiation_rfq_goods";
        $this->load->view('default', $data);
    }

    public function negotiation_rfq_service()
    {
        $data['title']      = "Negosiasi RFQ Jasa";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Nego RFQ Jasa";
        $data['content']    = "history_negotiation_rfq_service";
        $this->load->view('default', $data);
    }
}

/* End of file Master.php */
