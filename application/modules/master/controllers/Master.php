<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {
    
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
    public function index()
    {
        $data['title']      = "Data Vendor";
        $data['content']    = "index";
        $this->load->view('default', $data);
    }

}

/* End of file Master.php */
