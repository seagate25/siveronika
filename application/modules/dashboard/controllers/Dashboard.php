<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
    }
    
    public function index()
    {
        $data['title']      = "Dashboard";
        $data['content']    = "index";
        $this->load->view('default', $data);
    }

}

/* End of file Dashboard.php */
