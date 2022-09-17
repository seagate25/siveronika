<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Po_Status extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Po_status_model', 'po_status');
        $this->load->library('Crypto');
    }

    /**
     * Index Function
     *
     * @return void
     */
    public function po_goods()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->po_status->getPOHeadList();
            echo json_encode($rows, JSON_PRETTY_PRINT);
            exit;
        }
        $data['title']      = "PO Barang";
        $data['menu']       = "Status PO";
        $data['submenu']    = "PO Barang";
        $data['content']    = "po_goods";
        $this->load->view('default', $data);
    }

    public function po_service()
    {
        $data['title']      = "PO Jasa";
        $data['menu']       = "Status PO";
        $data['submenu']    = "PO Jasa";
        $data['content']    = "po_service";
        $this->load->view('default', $data);
    }

}

/* End of file Master.php */
