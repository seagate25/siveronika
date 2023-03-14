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
        
    }

}

/* End of file Check_session.php */
