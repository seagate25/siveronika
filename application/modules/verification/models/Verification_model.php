<?php

use phpDocumentor\Reflection\DocBlock\Tags\Var_;

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
                            m_branch mb ON (tv.branch_id = mb.branch_id)
                        JOIN
                            m_bidang mb2 ON (tv.bidang_id = mb2.bidang_id)
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
                                    m_branch mb ON (tv.branch_id = mb.branch_id)
                                JOIN
                                    m_bidang mb2 ON (tv.bidang_id = mb2.bidang_id)
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

    public function getVerifDetailList(String $verif_no = '')
    {
        $start = $this->input->post('start');
        $length = $this->input->post('length') != -1 ? $this->input->post('length') : 10;
        $draw = $this->input->post('draw');
        $search = $this->input->post('search');
        $order = $this->input->post('order');
        $order_column = $order[0]['column'];
        $order_dir = strtoupper($order[0]['dir']);
        $field  = array(
            1 => 'ms.shop_type',
            2 => 'ms.shop_name',
            3 => 'tvs.period',
            4 => 'tvs.total'
        );

        $order_column = $field[$order_column];
        $where = "";
        if (!empty($search['value'])) {
            $where .= " WHERE (ms.shop_type LIKE '%" . $search['value'] . "%'";
            $where .= " OR ms.shop_name LIKE '%" . $search['value'] . "%'";
            $where .= " OR tvs.period LIKE '%" . $search['value'] . "%'";
            $where .= " OR tvs.total LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT tv.verif_id, ms.shop_type, ms.shop_name, tvs.period, tvs.total, tvs.shop_id 
                        FROM
                            t_verification tv
                        JOIN
                            t_verification_shop tvs ON (tv.verif_id = tvs.verif_id AND tv.verif_no = '{$verif_no}')
                        JOIN
                            m_shop ms ON (tvs.shop_id = ms.shop_id){$where}";
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum,
                                tv.verif_id, ms.shop_type, ms.shop_name, tvs.period, tvs.total, tvs.shop_id 
                            FROM
                                t_verification tv
                            JOIN
                                t_verification_shop tvs ON (tv.verif_id = tvs.verif_id AND tv.verif_no = '{$verif_no}')
                            JOIN
                                m_shop ms ON (tvs.shop_id = ms.shop_id)
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
            $row->total                 = number_format($row->total,0,',','.');
            // $row->actions               = '<a href="' . site_url('verification/edit/' . $this->crypto->encode($row->verif_id)) . '" class="fw-bolder text-success">
            //                                     Edit
            //                                 </a> |
            //                                 <a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_id)) . '" class="fw-bolder text-success">
            //                                     Detail
            //                                 </a> |
            //                                 <a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_id)) . '" class="fw-bolder text-danger">
            //                                     Delete
            //                                 </a>';
            $row->actions               = '<button type="button" class="fw-bolder btn btn-clear text-success p-1" onclick="return Actions.btnEdit(\''.$row->verif_id.'\',\''.$row->shop_id.'\',\''.$row->period.'\')">
                                                Edit
                                            </button> |
                                            <a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_id)) . '" class="fw-bolder text-success">
                                                Detail
                                            </a> |
                                            <a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_id)) . '" class="fw-bolder text-danger">
                                                Delete
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
        $sql    = "SELECT bidang_id, bidang_code, bidang_name FROM m_bidang WHERE bidang_status = 1 ORDER BY bidang_code ASC";
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
        $sql    = "SELECT shop_id, shop_name FROM m_shop WHERE shop_type = '{$type}' ORDER BY shop_name ASC";
        $query  = $this->db->query($sql);
        $result = $query->result();

        return $result;
    }

    /**
     * Undocumented function
     *
     * @param string $shop_id
     * @return void
     */
    public function getRequireDocs(String $shop_id = '')
    {
        $sql    = " SELECT ms.shop_type, msd.shop_id, ms.shop_name, msd.shop_sequence, msd.shop_detail,
                        '' doc, '' notes
                    FROM
                        m_shop_det msd
                    JOIN
                        m_shop ms ON (msd.shop_id = ms.shop_id AND ms.shop_id = '{$shop_id}')";
        $query  = $this->db->query($sql);
        $result = $query->result();

        return $result;
    }
    
    /**
     * Undocumented function
     *
     * @param string $verif_no
     * @return void
     */
    public function getVerifDetail(String $verif_no = '')
    {
        $sql    = " SELECT tv.verif_no, mb.bidang_code, mb.bidang_name, mb2.branch_code, mb2.branch_name
                    FROM t_verification tv
                    JOIN m_bidang mb ON (tv.bidang_id = mb.bidang_code)
                    JOIN m_branch mb2 ON (tv.branch_id = mb2.branch_code)
                    WHERE tv.verif_no = '{$verif_no}' ";
        $query  = $this->db->query($sql);
        $result = $query->row();

        return $result;
    }

    public function getAutoNumber()
    {
        $code   = "";
        $date   = date('ym');
        $sql    = "SELECT MAX(verif_no) verif_no FROM {$this->table_main} WHERE SUBSTRING(verif_no, 3, 4) = '{$date}'";
        $query  = $this->db->query($sql);
        if($query->num_rows() > 0) {
            $last_verif_no  = $query->row()->verif_no;
            $last_sequence  = substr($last_verif_no, 7, 3);
            $next_sequence  = str_pad(((int)$last_sequence + 1), 3, "0", STR_PAD_LEFT);
            $code           = "VR" . $date . "-" . $next_sequence;
        } else {
            $code           = "VR" . $date . "-" . "001";
        }

        return $code;
    }

    public function insertHead(Array $data = [])
    {
        $result = $this->global->insert($this->table_main, $data);

        return $result;
    }

    public function insertDetail(Array $data = [])
    {
        $result = $this->global->insert($this->table_sub_1, $data);

        return $result;
    }
    
    public function insertReqDoc(Array $data = [])
    {
        $result = $this->global->insert_batch($this->table_sub_2, $data);

        return $result;
    }

    public function getDetail(String $verif_no = '')
    {
        $query  = $this->global->get_by($this->table_main, ['verif_no' => $verif_no]);

        return $query->row();
    }

    public function insertDoc(Array $data = [])
    {
        $result = $this->global->insert('t_doc', $data);

        return $result;
    }

    public function lastInsertDoc()
    {
        $sql    = "SELECT TOP 1 * FROM t_doc ORDER BY create_date DESC";
        $query  = $this->db->query($sql);

        return $query->row();
    }

}

/* End of file Verification_model.php */
