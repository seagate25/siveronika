<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Login_model', 'login');
    }
    
    public function index()
    {
        $data['content']    = "login";
        $this->load->view('default_login', $data);
    }

    public function forgot()
    {
        $data['content']    = "forgot";
        $this->load->view('default_login', $data);
    }

    public function do_login()
    {
        $username   = $this->input->post('username');
        $password   = $this->input->post('password');
        $user_login = $this->login->getLogin($username, $password);

        echo json_encode($user_login, JSON_PRETTY_PRINT);
        exit;
    }

}

/* End of file Login.php */
