<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Users_model', 'users');
    }
    
    /**
     * Index Function
     *
     * @return void
     */
    public function index()
    {
        
    }

    /**
     * Settings Function
     * Showing settings page
     *
     * @return void
     */
    public function settings()
    {
        $data['title']      = "Users - Settings";
        $data['content']    = "settings";
        $this->load->view('default', $data);
    }

    public function do_logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }

    public function change_password()
    {
        $data['title']      = "Ubah Password";
        $data['menu']       = "Ubah Password";
        $data['submenu']    = "";
        $data['content']    = "change_password";
        $this->load->view('default', $data);
    }

    public function do_change()
    {
        $current_password   = $this->input->post('current_password');
        $new_password       = $this->input->post('new_password');
        $confirm_password   = $this->input->post('confirm_password');
        $user_id            = $this->session->userdata('user_id');
        $getUserPassword    = $this->users->getUserDetail($user_id)->user_password;

        if (password_verify($current_password, $getUserPassword)) {

            if ($new_password == $confirm_password) {
                $params = array('user_id' => $user_id);
                $data   = array(
                    'user_password' => password_hash($confirm_password, PASSWORD_BCRYPT),
                    'update_date'   => sqlsrv_datetime(),
                    'update_by'     => $this->session->userdata('user_name')
                );
                $change = $this->users->changeUserPassword($params, $data);

                if ($change > 0) {
                    $response   = array(
                        'code'  => 0,
                        'msg'   => 'Berhasil mengubah password'
                    );
                } else {
                    $response   = array(
                        'code'  => 100,
                        'msg'   => 'Gagal mengubah password'
                    );
                }
            } else {
                $response   = array(
                    'code'  => 200,
                    'msg'   => 'Password Baru dan Konfirmas Password tidak sama'
                );
            }
        } else {
            $response   = array(
                'code'  => 300,
                'msg'   => 'Password Lama yang Anda masukkan, salah !'
            );
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

}

/* End of file Users.php */
