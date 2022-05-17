<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {

    protected $table = 'users';

    public function insert($data = array())
    {
        $this->db->insert($this->table, $data);
        return $this->db->affected_rows();
    }

}

/* End of file Login_model.php */
