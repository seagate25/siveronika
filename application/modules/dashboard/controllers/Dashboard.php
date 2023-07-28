<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Dashboard_model', 'dashboard');
    }

    /**
     * Index Function
     *
     * @return void
     */
    public function index()
    {
        $data['title']      = "Dashboard";
        $data['menu']       = "Dashboard";
        $data['submenu']    = "";
        $data['content']    = "index";

        $this->load->view('default', $data);
    }

}

/* End of file Dashboard.php */
