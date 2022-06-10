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
    
    /**
     * GetLogin Function
     * 
     * Get User Login data
     *
     * @param String $username
     * @param String $password
     * @return array
     */
    public function getLogin(String $username, String $password)
    {
        $sql    = "SELECT *
                    FROM {$this->table}
                    WHERE kode_vendor = '{$username}' AND sandi = '{$password}'";
        $query  = $this->db->query($sql);
        if($query->num_rows() > 0) {

            $user_data = $query->row();
            $user_session   = [
                'kode_vendor'   => rtrim($user_data->kode_vendor),
                'nama'          => rtrim($user_data->nama),
                'first_login'   => $user_data->first_login,
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

    /**
     * ResetPassword function
     *
     * @param String $vendor_id
     * @param String $new_password
     * @param String $confirm_password
     * @return array
     */
    public function resetPassword(String $vendor_id, String $new_password, String $confirm_password)
    {
        if($new_password != $confirm_password) {
            $response = [
                'code'  => 200,
                'msg'   => 'Password Baru dan Konfirmasi Password tidak sama'
            ];
        } else {

            $sql    = "UPDATE {$this->table} SET sandi = '{$new_password}', first_login = 0, modified_date = current_timestamp WHERE kode_vendor = '{$vendor_id}'";
            $query  = $this->db->query($sql);

            if($this->db->affected_rows() > 0) {
                $this->session->sess_destroy();
                $response = [
                    'code'  => 0,
                    'msg'   => 'Berhasil reset password. Silahkan melakukan login.'
                ];
            } else {
                $response = [
                    'code'  => 100,
                    'msg'   => 'Gagal reset password'
                ];
            }

        }

        return $response;
    }
}

/* End of file Login_model.php */
