<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

    /**
     * Construct Function
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Login_model', 'login');
    }

    /**
     * Index Function
     * 
     * Default view/route
     *
     * @return void
     */
    public function index()
    {
        $this->load->view('login');
    }

    /**
     * Forgot Function
     * 
     * Page for forgot password
     *
     * @return void
     */
    public function forgot()
    {
        $data['content']    = "forgot";
        $this->load->view('default_login', $data);
    }

    /**
     * Do_login function
     * 
     * Action for login
     *
     * @return json
     */
    public function do_login()
    {
        $username   = $this->input->post('username');
        $password   = $this->input->post('password');
        $user_login = $this->login->getLogin($username, $password);

        echo json_encode($user_login, JSON_PRETTY_PRINT);
        exit;
    }

    /**
     * Reset function
     * 
     * Page for reset password if user first_login
     *
     * @return void
     */
    public function reset()
    {
        first_login();
        $data['content']    = "reset";
        $this->load->view('default_login', $data);
    }

    /**
     * Do_reset
     * 
     * Action for reset password in first_login user
     *
     * @return json
     */
    public function do_reset()
    {
        $vendor_id          = $this->input->post('vendor_id');
        $new_password       = $this->input->post('new_password');
        $confirm_password   = $this->input->post('confirm_password');
        $reset_password     = $this->login->resetPassword($vendor_id, $new_password, $confirm_password);

        echo json_encode($reset_password, JSON_PRETTY_PRINT);
        exit;
    }
    
}

/* End of file Login.php */
