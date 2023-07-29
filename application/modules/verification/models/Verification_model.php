<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Verification_model extends CI_Model {
    
    /**
     * Declare Table Name
     * 
     * @var string
     */
    protected $table_main;
    protected $table_sub_1;
    protected $table_sub_2;

    public function __construct()
    {
        parent::__construct();
        $this->load->library('Crypto');
        $this->load->model('Global_model', 'global');
        $this->table_main   = 't_verification';
        $this->table_sub_1  = 't_verification_shop';
        $this->table_sub_2  = 't_verification_shop_det';
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function getVerificationList()
    {
        $start = $this->input->post('start');
        $length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
        $draw = $this->input->post('draw');
        $search = $this->input->post('search');
        $order = $this->input->post('order');
        $order_column = $order[0]['column'];
        $order_dir = strtoupper($order[0]['dir']);
        $field  = array(
            1 => 'tv.verif_no',
            2 => 'branch_name',
            3 => 'tv.verif_request_date',
            4 => 'tbl1.shop_type',
            5 => 'bidang_name',
            6 => 'tbl1.total',
            7 => 'tv.verif_status'
        );

        $order_column = $field[$order_column];
        $where = "";
        if (!empty($search['value'])) {
            $where .= " WHERE (tv.verif_no LIKE '%" . $search['value'] . "%'";
            $where .= " OR branch_name LIKE '%" . $search['value'] . "%'";
            $where .= " OR tv.verif_request_date LIKE '%" . $search['value'] . "%'";
            $where .= " OR tbl1.shop_type LIKE '%" . $search['value'] . "%'";
            $where .= " OR bidang_name LIKE '%" . $search['value'] . "%'";
            $where .= " OR tbl1.total LIKE '%" . $search['value'] . "%'";
            $where .= " OR tv.verif_status LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT
                            tv.verif_no,
                            CONCAT(mb.branch_code, ' - ', mb.branch_name) branch_name,
                            tv.verif_request_date,
                            tbl1.shop_type,
                            CONCAT('[', mb2.bidang_code, ']', ' ', mb2.bidang_name) bidang_name,
                            tbl1.total,
                            tv.verif_status 
                        FROM 
                            {$this->table_main} tv
                        JOIN
                            m_branch mb ON (tv.branch_id = mb.branch_code)
                        JOIN
                            m_bidang mb2 ON (tv.bidang_id = mb2.bidang_code)
                        JOIN
                            (
                                SELECT 
                                    tvs.verif_id,
                                    ms.shop_type,
                                    SUM(tvs.total) total
                                FROM 
                                    {$this->table_sub_1} tvs 
                                JOIN
                                    m_shop ms ON (tvs.shop_id = ms.shop_id)
                                group by tvs.verif_id, ms.shop_type
                            ) tbl1 ON (tv.verif_id = tbl1.verif_id){$where}";
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum,
                                    tv.verif_no,
                                    CONCAT(mb.branch_code, ' - ', mb.branch_name) branch_name,
                                    tv.verif_request_date,
                                    tbl1.shop_type,
                                    CONCAT('[', mb2.bidang_code, ']', ' ', mb2.bidang_name) bidang_name,
                                    tbl1.total,
                                    tv.verif_status 
                                FROM 
                                    {$this->table_main} tv
                                JOIN
                                    m_branch mb ON (tv.branch_id = mb.branch_code)
                                JOIN
                                    m_bidang mb2 ON (tv.bidang_id = mb2.bidang_code)
                                JOIN
                                    (
                                        SELECT 
                                            tvs.verif_id,
                                            ms.shop_type,
                                            SUM(tvs.total) total
                                        FROM 
                                            {$this->table_sub_1} tvs 
                                        JOIN
                                            m_shop ms ON (tvs.shop_id = ms.shop_id)
                                        group by tvs.verif_id, ms.shop_type
                                    ) tbl1 ON (tv.verif_id = tbl1.verif_id)
                            {$where}
                            ) AS RowConstrainedResult
                    WHERE   RowNum > {$start}
                        AND RowNum < (({$start} + 1) + {$length})
                    ORDER BY RowNum";
        

        $query = $this->db->query($sql_);
        $rows_data = $query->result();
        $rows = array();
        $i = (0 + 1);

        foreach ($rows_data as $row) {
            $row->number                = $i;
            $row->verif_request_date    = ($row->verif_request_date == NULL) ? '-' : $row->verif_request_date;
            $row->verif_status          = ($row->verif_status == NULL) ? 'DRAFT' : $row->verif_status;
            $row->total                 = number_format($row->total,0,',','.');
            $row->actions               = '<a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_no)) . '" class="fw-bolder text-success">
                                                Detail
                                            </a>';

            $rows[] = $row;
            $i++;
        }

        return array(
            'draw' => $draw,
            'recordsTotal' => $records_total,
            'recordsFiltered' => $records_total,
            'data' => $rows,
        );
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
