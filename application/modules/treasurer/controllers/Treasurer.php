<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Treasurer extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
    }
    
    public function index()
    {
        $data['title']      = "Bendahara";
        $data['menu']       = "Bendahara";
        $data['submenu']    = "";
        $data['content']    = "index";
        $this->load->view('default', $data);
    }

}

/* End of file Treasurer.php */
