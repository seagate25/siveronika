<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Master_model', 'master');
    }

    /**
     * Index Function
     *
     * @return void
     */
    public function index()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->master->getAllVendor();
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "Data Vendor";
        $data['menu']       = "Master";
        $data['submenu']    = "Vendor";
        $data['content']    = "index";
        $this->load->view('default', $data);
    }

}

/* End of file Master.php */
