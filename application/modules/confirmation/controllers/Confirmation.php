<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Confirmation extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
    }
    
    public function index()
    {
        
    }

    public function req_price()
    {
        $data['title']      = "Permintaan Harga";
        $data['menu']       = "Konfirmasi";
        $data['submenu']    = "Permintaan Harga";
        $data['content']    = "request_price";
        $this->load->view('default', $data);
    }

    public function con_price()
    {
        $data['title']      = "Konfirmasi Harga";
        $data['menu']       = "Konfirmasi";
        $data['submenu']    = "Konfirmasi Harga";
        $data['content']    = "confirmation_price";
        $this->load->view('default', $data);
    }

}

/* End of file Confirmation.php */
