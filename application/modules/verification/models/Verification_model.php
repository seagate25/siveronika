<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Verification_model extends CI_Model {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Global_model', 'global');
    }
    
    /**
     * Get Bidang List
     *
     * @return Object
     */
    public function getBidangList()
    {
        $sql    = "SELECT bidang_code, bidang_name FROM m_bidang WHERE bidang_status = 1 ORDER BY bidang_code ASC";
        $query  = $this->db->query($sql);
        $result = $query->result();

        return $result;
    }

    /**
     * Get Belanja (Shop) List
     *
     * @return Object
     */
    public function getShopList(String $type = '')
    {
        $sql    = "SELECT shop_name FROM m_shop WHERE shop_type = '{$type}' GROUP BY shop_name ORDER BY shop_name ASC";
        $query  = $this->db->query($sql);
        $result = $query->result();

        return $result;
    }

    public function getRequireDocs(Array $params = [])
    {
        $query  = $this->global->get_by('m_shop', $params);
        $result = $query->result();

        return $result;
    }

}

/* End of file Verification_model.php */
