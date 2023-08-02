<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {

    /**
     * Declare Table Name
     * 
     * @var string
     */
    protected $table_user;
    protected $table_branch;
    protected $table_role;
    protected $pass;

    public function __construct()
    {
        parent::__construct();
        $this->table_user   = "m_user";
        $this->table_branch = "m_branch";
        $this->table_role   = "m_role";
        $this->pass         = "";
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
    public function getLogin($username, $password)
    {
        $sql    = "SELECT * FROM {$this->table_user} WHERE user_name = '{$username}'"; 
        $query  = $this->db->query($sql);
        if($query->num_rows() > 0) {

            $login_data = $query->row();
            
            // Check if Vendor Blocked
            if($login_data->user_deletion == 1) {

                $response = [
                    'code'  => 200,
                    'msg'   => 'Maaf, User Anda diblokir'
                ];

            } else {

                $this->pass = $login_data->user_password;

                if(password_verify($password, $this->pass)) {
                    
                    // Get Branch Name
                    $branch_data    = [];
                    $sql_branch     = "SELECT branch_name, branch_description FROM {$this->table_branch} WHERE branch_code = '{$login_data->branch_id}'";
                    $query_branch   = $this->db->query($sql_branch);
                    if($query_branch->num_rows() > 0) {
                        $branch_data    = $query_branch->row();
                    } else {
                        $branch_data    = [
                            'branch_name'           => '',
                            'branch_description'    => ''
                        ];
                        $branch_data    = (object) $branch_data;
                    }

                    // Get Role Name
                    $role_data    = [];
                    $sql_role     = "SELECT role_name, role_description FROM {$this->table_role} WHERE role_id = '{$login_data->role_id}'";
                    $query_role   = $this->db->query($sql_role);
                    if($query_role->num_rows() > 0) {
                        $role_data    = $query_role->row();
                    } else {
                        $role_data    = [
                            'role_name'           => '',
                            'role_description'    => ''
                        ];
                        $role_data    = (object) $role_data;
                    }

                    // Set Session
                    $user_session   = [
                        'user_id'           => $login_data->user_id,
                        'user_name'         => rtrim($login_data->user_name),
                        'user_email'        => rtrim($login_data->user_email),
                        'user_description'  => rtrim($login_data->user_description),
                        'logged_in'         => TRUE,
                        'branch_code'       => rtrim($login_data->branch_id),
                        'branch_name'       => rtrim($branch_data->branch_name),
                        'role_name'         => rtrim($role_data->role_name),
                        'last_activity'     => time()
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
                        'msg'   => 'Password yang Anda masukkan, salah!'
                    ];

                }

            }

        } else {

            $response = [
                'code'  => 400,
                'msg'   => 'Username tidak ditemukan'
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
    public function resetPassword($vendor_id, $new_password, $confirm_password)
    {
        if($new_password != $confirm_password) {
            $response = [
                'code'  => 200,
                'msg'   => 'Password Baru dan Konfirmasi Password tidak sama'
            ];
        } else {

            $sql    = "UPDATE {$this->table} SET sandi = '".md5($new_password)."', first_login = 0, modified_date = current_timestamp WHERE kode_vendor = '{$vendor_id}'";
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

    /**
     * Getting Vendor Email
     *
     * @param String $vendor_code
     * @param String $vendor_mail
     * @return void
     */
    public function getUserMail($vendor_code, $vendor_mail)
    {
        $sql    = "SELECT
                        a.deletion,
                        a.first_login,
                        a.kode_vendor,
                        b.nama_perusahaan,
                        b.email_perusahaan
                    FROM
                        TB_S_MST_PENGGUNA a
                    JOIN
                        TB_S_MST_VENDOR b ON (a.kode_vendor = b.kode_vendor and a.kode_vendor='{$vendor_code}')";
        $query  = $this->db->query($sql);
        if($query->num_rows() > 0) {

            $vendor_data = $query->row();
            if($vendor_data->deletion == 1) {

                $response   = array(
                    'code'  => 200,
                    'msg'   => 'Maaf, akun Anda diblokir. Silahkan hubungi Administrator.'
                );

            } else if($vendor_data->first_login == 1) {
            
                $response   = array(
                    'code'  => 200,
                    'msg'   => 'Maaf, Anda belum pernah melakukan login. Silahkan login dengan password yang dikirimkan melalui e-mail.'
                );

            } else {

                if($vendor_data->email_perusahaan == $vendor_mail) {

                    $new_password   = '123456';
                    $sql_update     = "UPDATE TB_S_MST_PENGGUNA SET sandi = '".md5($new_password)."', modified_date = current_timestamp, modified_by = 'WEB' WHERE kode_vendor = '{$vendor_code}'";
                    $query_update   = $this->db->query($sql_update);

                    if($this->db->affected_rows() > 0) {

                        $vendor_data->sandi = $new_password;

                        $response   = array(
                            'code'  => 0,
                            'msg'   => 'SUCCESS',
                            'data'  => $vendor_data
                        );

                    } else {

                        $response   = array(
                            'code'  => 300,
                            'msg'   => 'Gagal mereset password'
                        );

                    }

                } else {

                    $response   = array(
                        'code'  => 100,
                        'msg'   => 'Email yang Anda masukkan tidak terdaftar.'
                    );

                }

            }
            
        } else {

            $response   = array(
                'code'  => 100,
                'msg'   => 'Maaf, Kode Vendor / Email tidak ditemukan'
            );

        }

        return $response;
    }
}

/* End of file Login_model.php */
