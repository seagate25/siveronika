<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Confirmation extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Confirmation_model', 'confirmation');
    }
    
    public function index()
    {
        
    }

    public function req_price()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->confirmation->getRequestPriceList();
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "Permintaan Harga";
        $data['menu']       = "Konfirmasi";
        $data['submenu']    = "Permintaan Harga";
        $data['content']    = "request_price";
        $this->load->view('default', $data);
    }

    public function con_price()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->confirmation->getConfirmationPriceList();
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "Konfirmasi Harga";
        $data['menu']       = "Konfirmasi";
        $data['submenu']    = "Konfirmasi Harga";
        $data['content']    = "confirmation_price";
        $this->load->view('default', $data);
    }

}

/* End of file Confirmation.php */
