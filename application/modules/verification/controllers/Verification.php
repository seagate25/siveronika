<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Verification extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
    }
    
    public function index()
    {
        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "";
        $data['content']    = "index";
        $this->load->view('default', $data);
    }

}

/* End of file Verification.php */
