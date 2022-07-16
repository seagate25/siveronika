<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Negotiation extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
    }

    /**
     * Index Function
     *
     * @return void
     */
    public function rfq_goods()
    {
        $data['title']      = "Nego RFQ Barang";
        $data['menu']       = "Negosiasi";
        $data['submenu']    = "Nego RFQ Barang";
        $data['content']    = "negotiation_rfq_goods";
        $this->load->view('default', $data);
    }

    public function rfq_service()
    {
        $data['title']      = "Nego RFQ Jasa";
        $data['menu']       = "Negosiasi";
        $data['submenu']    = "Nego RFQ Jasa";
        $data['content']    = "negotiation_rfq_service";
        $this->load->view('default', $data);
    }

    public function det_rfq_goods()
    {
        $rfq_no             = $this->uri->segment(3);
        $data['title']      = "RFQ No : " . $rfq_no;
        $data['menu']       = "Negosiasi";
        $data['submenu']    = "Detail Negosiasi RFQ Barang";
        $data['content']    = "detail_nego_rfq_goods";
        $this->load->view('default', $data);
    }

}

/* End of file Master.php */
