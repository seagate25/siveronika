<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Rfq extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
    }
    
    public function index()
    {
        
    }

    public function rfq_goods()
    {
        $data['title']      = "RFQ Barang";
        $data['menu']       = "RFQ";
        $data['submenu']    = "RFQ Barang";
        $data['content']    = "rfq_goods";
        $this->load->view('default', $data);
    }

    public function rfq_service()
    {
        $data['title']      = "RFQ Jasa";
        $data['menu']       = "RFQ";
        $data['submenu']    = "RFQ Jasa";
        $data['content']    = "rfq_service";
        $this->load->view('default', $data);
    }

    public function det_rfq_goods()
    {
        $rfq_no             = $this->uri->segment(3);
        $data['title']      = "RFQ No : " . $rfq_no;
        $data['menu']       = "RFQ";
        $data['submenu']    = "Detail RFQ Barang";
        $data['content']    = "detail_rfq_goods";
        $this->load->view('default', $data);
    }

}

/* End of file Confirmation.php */
