<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {

    /**
     * Declare Table Name
     * 
     * @var string
     */
    protected $table;

    public function __construct()
    {
        parent::__construct();
        $this->table = "TB_S_MST_PENGGUNA";
    }
    
    public function getLogin(String $username, String $password)
    {
        $sql    = "SELECT *
                    FROM {$this->table}
                    WHERE kode_vendor = '{$username}' AND sandi = '{$password}'";
        $query  = $this->db->query($sql);
        if($query->num_rows() > 0) {

            $user_data = $query->row();
            $user_session   = [
                'kode_vendor'   => $user_data->kode_vendor,
                'nama'          => $user_data->nama,
                'logged_in'     => TRUE
            ];

            $this->session->set_userdata($user_session);
            $response = [
                'code'  => 0,
                'msg'   => 'Berhasil login',
                'data'  => site_url('dashboard')
            ];

        } else {

            $response = [
                'code'  => 400,
                'msg'   => 'Username tidak ditemukan / Password Anda salah'
            ];

        }

        return $response;
    }
}

/* End of file Login_model.php */
