<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Check_session extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
    }
    
    public function index()
    {
        $last_activity      = $this->session->userdata('last_activity');
        $last_five_minutes  = date('YmdHis', strtotime('-30 minutes', time()));

        echo date('YmdHis', $last_activity) > $last_five_minutes ? 1 : 0;
    }

}

/* End of file Check_session.php */
