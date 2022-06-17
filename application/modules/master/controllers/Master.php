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
        
    }

    public function vendor()
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

    public function change_password()
    {
        $data['title']      = "Ubah Password";
        $data['menu']       = "Master";
        $data['submenu']    = "Ubah Password";
        $data['content']    = "change_password";
        $this->load->view('default', $data);
    }

    public function do_change()
    {
        $current_password   = $this->input->post('current_password');
        $new_password       = $this->input->post('new_password');
        $confirm_password   = $this->input->post('confirm_password');
        $vendor_id          = $this->session->userdata('kode_vendor');
        $getUserPassword    = $this->master->getUserDetail($vendor_id)->sandi;

        if($current_password == $getUserPassword) {

            if($new_password == $confirm_password) {
                $change         = $this->master->changeUserPassword($vendor_id, $confirm_password);

                if($change > 0) {
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

/* End of file Master.php */
