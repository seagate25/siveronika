<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Users_model', 'users');
    }
    
    public function index()
    {
        $this->load->view('index');
    }

    public function save()
    {
        $name       = $this->input->post('name');
        $addr_home  = $this->input->post('addr_home');
        $addr_dom   = $this->input->post('addr_dom');
        $email      = $this->input->post('email');

        $data   = array(
            'name'      => $name,
            'addr_home' => $addr_home,
            'addr_dom'  => $addr_dom,
            'email'     => $email,
            'created_by'=> 'administrator',
            'created_on'=> date('Y-m-d H:i:s')
        );
        
        $save   = $this->users->insert($data);
        if($save > 0) {
            $response   = array(
                'code'  => 200,
                'msg'   => "Berhasil menyimpan data pengguna"
            );
        } else {
            $response   = array(
                'code'  => 500,
                'msg'   => "Gagal menyimpan data pengguna"
            );
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

}

/* End of file Users.php */
