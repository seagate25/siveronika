<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Users_model extends CI_Model {
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
    }
    
    public function getUserDetail(String $id = '')
    {
        $sql    = "SELECT * FROM m_user WHERE user_id = '{$id}'";
        $query  = $this->db->query($sql);

        return $query->row();
    }

    public function changeUserPassword(Array $params = array(), Array $data = array())
    {
        $this->load->model('Global_model', 'global');
        $result  = $this->global->update('m_user', $params, $data);

        return $result;
    }
}

/* End of file Users_model.php */
