<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

    public function getDashboardData()
    {
        $graph_data = array(
            'permintaan_harga'  => 0,
            'konfirmasi_harga'  => 0
        );

        // Total Permintaan Harga
        $sql    = "SELECT COUNT(kode_konfirmasi) AS permintaan_harga FROM TB_S_MST_KONFIRMASI WHERE konfirmasi_status=2";
        $query  = $this->db->query($sql);
        $result = $query->row();
        $graph_data['permintaan_harga'] = (int)$result->permintaan_harga;

        // Total Konfirmasi Harga
        $sql    = "SELECT COUNT(kode_konfirmasi) AS konfirmasi_harga FROM TB_S_MST_KONFIRMASI WHERE konfirmasi_status=1";
        $query  = $this->db->query($sql);
        $result = $query->row();
        $graph_data['konfirmasi_harga'] = (int)$result->konfirmasi_harga;

        return $graph_data;
    }

}

/* End of file Dashboard_model.php */
