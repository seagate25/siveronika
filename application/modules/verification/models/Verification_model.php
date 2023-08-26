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

    protected $user_id;

    protected $branch_code;

    public function __construct()
    {
        parent::__construct();
        $this->load->library('Crypto');
        $this->load->model('Global_model', 'global');
        $this->table_main   = 't_verification';
        $this->table_sub_1  = 't_verification_shop';
        $this->table_sub_2  = 't_verification_shop_det';
        $this->user_id      = $this->session->userdata('user_id');
        $this->branch_code  = $this->session->userdata('branch_code');
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
            7 => 'tv.status_verifikasi',
            8 => 'tv.status_bendahara'
        );

        $order_column = $field[$order_column];
        $where = "";
        
        if($this->session->userdata('isApprove') !== '1') {

            if($this->session->userdata('role_name') == 'Initiator') {
                
                $where .= " WHERE tv.user_id = '{$this->user_id}'";
                
            } else {

                $where .= " WHERE tv.status_verifikasi <> 'DRAFT'";

            }

        } else {

            if($this->session->userdata('role_name') == 'Verifikator') {

                $bidang_list    = $this->session->userdata('bidang_user');

                $i      = 0;
                $value  = "";
                foreach($bidang_list as $bidang) {
                    $value .= "'{$bidang->bidang_id}'";
                    if ($i === (count($bidang_list) - 1)) {
                        $value  .= "";
                    } else {
                        $value  .= ", ";
                    }

                    $i++;
                }
                $bidang =  "(" . $value . ")";

                $where .= " WHERE (tv.bidang_id IN {$bidang} AND tv.branch_id = '{$this->branch_code}' AND tv.status_verifikasi <> 'DRAFT')";
                
            } else if($this->session->userdata('role_name') == 'Bendahara') {

                $bidang_list    = $this->session->userdata('bidang_user');

                $i      = 0;
                $value  = "";
                foreach($bidang_list as $bidang) {
                    $value .= "'{$bidang->bidang_id}'";
                    if ($i === (count($bidang_list) - 1)) {
                        $value  .= "";
                    } else {
                        $value  .= ", ";
                    }

                    $i++;
                }
                $bidang =  "(" . $value . ")";

                // $where .= " WHERE (tv.bidang_id IN {$bidang} AND tv.branch_id = '{$this->branch_code}' AND tv.status_verifikasi IN ('COMPLETED', 'VERIFIED', 'REJECTED'))";
                $where .= " WHERE (tv.bidang_id IN {$bidang} AND tv.branch_id = '{$this->branch_code}' AND tv.status_verifikasi IN ('COMPLETED', 'ON-PROGRESS', 'UNCOMPLETE'))";
                
            } else if($this->session->userdata('role_name') == 'Verifikator Admin') {
                $where .= " WHERE (tv.branch_id = '{$this->branch_code}' AND tv.status_verifikasi <> 'DRAFT')";
            } else if($this->session->userdata('role_name') == 'Bendahara Admin') {
                $where .= " WHERE (tv.branch_id = '{$this->branch_code}' AND tv.status_verifikasi IN ('COMPLETED', 'ON-PROGRESS', 'UNCOMPLETE'))";
            }

        }

        if (!empty($search['value'])) {

            if(!empty($where)) {
                $where .= " AND (tv.verif_no LIKE '%" . $search['value'] . "%'";
            } else {
                $where .= " WHERE (tv.verif_no LIKE '%" . $search['value'] . "%'";
            }
            $where .= " OR branch_name LIKE '%" . $search['value'] . "%'";
            $where .= " OR tv.verif_request_date LIKE '%" . $search['value'] . "%'";
            $where .= " OR tbl1.shop_type LIKE '%" . $search['value'] . "%'";
            $where .= " OR bidang_name LIKE '%" . $search['value'] . "%'";
            $where .= " OR tbl1.total LIKE '%" . $search['value'] . "%'";
            $where .= " OR tv.status_verifikasi LIKE '%" . $search['value'] . "%'";
            $where .= " OR tv.status_bendahara LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT
                            tv.verif_no,
                            CONCAT(mb.branch_code, ' - ', mb.branch_name) branch_name,
                            tv.verif_request_date,
                            tbl1.shop_type,
                            CONCAT('[', mb2.bidang_code, ']', ' ', mb2.bidang_name) bidang_name,
                            tbl1.total,
                            tv.status_verifikasi,
                            tv.status_bendahara,
                            tbl1.empty, tbl1.verify, tbl1.reject,
                            CASE
                                WHEN tbl2.empty > 0 AND tbl2.ok = 0 AND tbl2.ng = 0 AND tv.status_verifikasi = 'SUBMITTED' THEN '-'
                                WHEN tbl2.empty > 0 AND tbl2.ok >= 0 AND tbl2.ng >= 0 THEN 'ON-PROGRESS'
                                WHEN tbl2.empty = 0 AND tbl2.ok = 0 AND tbl2.ng >= 0 THEN 'UNCOMPLETE'
                                ELSE 'COMPLETED'
                            END AS vstatus
                        FROM 
                            {$this->table_main} tv
                        JOIN
                            m_branch mb ON (tv.branch_id = mb.branch_code)
                        JOIN
                            m_bidang mb2 ON (tv.bidang_id = mb2.bidang_id)
                        JOIN
                            (
                                SELECT 
                                    tvs.verif_id,
                                    ms.shop_type,
                                    SUM(tvs.total) total,
                                    SUM(CASE WHEN tvs.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                                    SUM(CASE WHEN tvs.approval_status = 1 THEN 1 ELSE 0 END) AS verify,
                                    SUM(CASE WHEN tvs.approval_status = 0 THEN 1 ELSE 0 END) AS reject
                                FROM 
                                    {$this->table_sub_1} tvs 
                                JOIN
                                    m_shop ms ON (tvs.shop_id = ms.shop_id)
                                group by tvs.verif_id, ms.shop_type
                            ) tbl1 ON (tv.verif_id = tbl1.verif_id)
                        JOIN
                            (
                                SELECT 
                                    tvsd.verif_id,
                                    SUM(CASE WHEN tvsd.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                                    SUM(CASE WHEN tvsd.approval_status = 1 THEN 1 ELSE 0 END) AS ok,
                                    SUM(CASE WHEN tvsd.approval_status = 0 THEN 1 ELSE 0 END) AS ng
                                FROM {$this->table_sub_2} tvsd 
                                GROUP BY tvsd.verif_id
                            ) tbl2 ON (tv.verif_id = tbl2.verif_id){$where}";
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
                                    tv.status_verifikasi,
                                    tv.status_bendahara,
                                    tbl1.empty, tbl1.verify, tbl1.reject,
                                    CASE
                                        WHEN tbl2.empty > 0 AND tbl2.ok = 0 AND tbl2.ng = 0 AND tv.status_verifikasi = 'SUBMITTED' THEN '-'
                                        WHEN tbl2.empty > 0 AND tbl2.ok >= 0 AND tbl2.ng >= 0 THEN 'ON-PROGRESS'
                                        WHEN tbl2.empty = 0 AND tbl2.ok = 0 AND tbl2.ng >= 0 THEN 'UNCOMPLETE'
                                        ELSE 'COMPLETED'
                                    END AS vstatus
                                FROM 
                                    {$this->table_main} tv
                                JOIN
                                    m_branch mb ON (tv.branch_id = mb.branch_code)
                                JOIN
                                    m_bidang mb2 ON (tv.bidang_id = mb2.bidang_id)
                                JOIN
                                    (
                                        SELECT 
                                            tvs.verif_id,
                                            ms.shop_type,
                                            SUM(tvs.total) total,
                                            SUM(CASE WHEN tvs.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                                            SUM(CASE WHEN tvs.approval_status = 1 THEN 1 ELSE 0 END) AS verify,
                                            SUM(CASE WHEN tvs.approval_status = 0 THEN 1 ELSE 0 END) AS reject
                                        FROM 
                                            {$this->table_sub_1} tvs 
                                        JOIN
                                            m_shop ms ON (tvs.shop_id = ms.shop_id)
                                        group by tvs.verif_id, ms.shop_type
                                    ) tbl1 ON (tv.verif_id = tbl1.verif_id)
                                JOIN
                                    (
                                        SELECT 
                                            tvsd.verif_id,
                                            SUM(CASE WHEN tvsd.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                                            SUM(CASE WHEN tvsd.approval_status = 1 THEN 1 ELSE 0 END) AS ok,
                                            SUM(CASE WHEN tvsd.approval_status = 0 THEN 1 ELSE 0 END) AS ng
                                        FROM {$this->table_sub_2} tvsd 
                                        GROUP BY tvsd.verif_id
                                    ) tbl2 ON (tv.verif_id = tbl2.verif_id)
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
            $row->verif_request_date    = ($row->verif_request_date == NULL) ? '-' : date('d-m-Y', strtotime($row->verif_request_date));
            if($this->session->userdata('role_name') == 'Bendahara' || $this->session->userdata('role_name') == 'Bendahara Admin')
            {
                // $row->status_verifikasi      = ($row->status_verifikasi == 'COMPLETED') ? '-' : $row->status_verifikasi;
                if($row->status_verifikasi == 'UNCOMPLETE' && $row->vstatus == 'UNCOMPLETE')
                {
                    continue;
                }
                else
                {
                    if($row->status_bendahara !== NULL)
                    {
                        $row->status_verifikasi = $row->status_bendahara;
                    }
                    else
                    {
                        $row->status_verifikasi = '-';
                        // if($row->empty > 0 && $row->verify == 0 && $row->reject == 0)
                        // {
                        //     $row->status_verifikasi = '-';
                        // }
                        // else if($row->empty > 0 && $row->verify >= 0 && $row->reject >= 0)
                        // {
                        //     $row->status_verifikasi = 'ON-PROGRESS';
                        // }
                        // else
                        // {
                        //     $row->status_verifikasi = 'VERIFIED';
                        // }
                    }
                }
            }
            else if($this->session->userdata('role_name') == 'Verifikator' || $this->session->userdata('role_name') == 'Verifikator Admin')
            {
                if($row->status_verifikasi == 'COMPLETED' || $row->status_verifikasi == 'UNCOMPLETE')
                {
                    $row->status_verifikasi = $row->status_verifikasi;   
                }
                else
                {
                    $row->status_verifikasi = $row->vstatus;
                }
            }
            else
            {
                // if(($row->status_verifikasi == 'DRAFT') || ($row->status_verifikasi == 'SUBMITTED' && $row->vstatus == '-') || ($row->status_verifikasi == 'UNCOMPLETE' || $row->status_verifikasi == 'COMPLETED' || $row->status_verifikasi == 'ON-PROGRESS'))
                // {
                //     $row->status_verifikasi      = $row->status_verifikasi;
                // }
                // else
                // {
                //     $row->status_verifikasi      = $row->vstatus;
                // }
                if($row->status_verifikasi == 'SUBMITTED' && $row->vstatus !== '-')
                {
                    $row->status_verifikasi      = $row->vstatus;
                }
                else
                {
                    $row->status_verifikasi      = $row->status_verifikasi;
                }
            }

            $row->actions           = '<a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_no)) . '" class="fw-bolder text-success">
                                            Detail
                                        </a>';
            $row->total                 = number_format($row->total,0,',','.');

            $rows[] = $row;
            $i++;
        }

        if($this->session->userdata('role_name') == 'Bendahara' || $this->session->userdata('role_name') == 'Bendahara Admin')
        {
            $records_total = count($rows);
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

        $sql        = "SELECT tv.verif_id, tvs.verif_shop_id, ms.shop_type, ms.shop_name, tvs.period, tvs.total, tvs.shop_id, tv.status_verifikasi 
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
                                tv.verif_id, tvs.verif_shop_id, ms.shop_type, ms.shop_name, tvs.period, tvs.total, tvs.shop_id, tv.status_verifikasi 
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
            if($row->status_verifikasi == 'SUBMITTED') {
                
                $row->actions               = '<a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                                                Detail';
                                            
            } else {

                $row->actions               = '<a href="' . site_url('verification/edit/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                                                Edit
                                            </a> |
                                            <a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                                                Detail
                                            </a> |
                                            <a href="' . site_url('verification/detail/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-danger">
                                                Delete
                                            </a>';
                                        
            }
            

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

    public function getVerifDetailListApprove(String $verif_no = '')
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
            4 => 'tvs.total',
            5 => 'vstatus'
        );

        $order_column = $field[$order_column];
        $where = "";
        if (!empty($search['value'])) {
            $where .= " WHERE (ms.shop_type LIKE '%" . $search['value'] . "%'";
            $where .= " OR ms.shop_name LIKE '%" . $search['value'] . "%'";
            $where .= " OR tvs.period LIKE '%" . $search['value'] . "%'";
            $where .= " OR tvs.total LIKE '%" . $search['value'] . "%')";
        }

        $sql        = "SELECT 
                            tv.verif_id, 
                            tvs.verif_shop_id, 
                            ms.shop_type, 
                            ms.shop_name, 
                            tvs.period, 
                            tvs.total, 
                            tvs.shop_id, 
                            tv.status_verifikasi,
                            tv.status_bendahara,
                            tvs.approval_status,
                            tbl1.approval_note,
                            -- CASE
                            --     WHEN tbl1.empty > 0 AND tbl1.ok = 0 AND tbl1.ng = 0 THEN '-'
                            --     WHEN tbl1.empty > 0 AND tbl1.ok >= 0 AND tbl1.ng >= 0 THEN 'ON-PROGRESS'
                            --     WHEN tbl1.empty = 0 AND tbl1.ok = 0 AND tbl1.ng > 0 THEN 'UNCOMPLETE'
                            --     ELSE 'COMPLETED'
                            -- END AS vstatus
                            CASE
                                WHEN tbl1.empty > 0 AND tbl1.ok = 0 AND tbl1.ng = 0 THEN '-'
                                WHEN tbl1.empty = 0 AND tbl1.ng > 0 THEN 'UNCOMPLETE'
                                WHEN tbl1.empty = 0 AND tbl1.ng = 0 THEN 'COMPLETED'
                                ELSE 'ON-PROGRESS'
                            END AS vstatus
                        FROM
                            t_verification tv
                        JOIN
                            t_verification_shop tvs ON (tv.verif_id = tvs.verif_id AND tv.verif_no = '{$verif_no}')
                        JOIN
                            m_shop ms ON (tvs.shop_id = ms.shop_id)
                        JOIN
                            (
                                SELECT 
                                    tvsd.verif_shop_id, 
                                    tvsd.shop_id, 
                                    tvsd.approval_note,
                                    SUM(CASE WHEN tvsd.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                                    SUM(CASE WHEN tvsd.approval_status = 1 THEN 1 ELSE 0 END) AS ok,
                                    SUM(CASE WHEN tvsd.approval_status = 0 THEN 1 ELSE 0 END) AS ng
                                FROM t_verification_shop_det tvsd 
                                GROUP BY tvsd.verif_shop_id, tvsd.shop_id, tvsd.approval_note
                            ) tbl1 ON (tvs.verif_shop_id = tbl1.verif_shop_id){$where}";
        $query = $this->db->query($sql);
        $records_total = $query->num_rows();

        $sql_   = "SELECT  *
                    FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY {$order_column} {$order_dir} ) AS RowNum,
                            tv.verif_id, 
                            tvs.verif_shop_id, 
                            ms.shop_type, 
                            ms.shop_name, 
                            tvs.period, 
                            tvs.total, 
                            tvs.shop_id, 
                            tv.status_verifikasi,
                            tv.status_bendahara,
                            tvs.approval_status,
                            tbl1.approval_note,
                            -- CASE
                            --     WHEN tbl1.empty > 0 AND tbl1.ok = 0 AND tbl1.ng = 0 THEN '-'
                            --     WHEN tbl1.empty > 0 AND tbl1.ok >= 0 AND tbl1.ng >= 0 THEN 'ON-PROGRESS'
                            --     WHEN tbl1.empty = 0 AND tbl1.ok = 0 AND tbl1.ng > 0 THEN 'UNCOMPLETE'
                            --     ELSE 'COMPLETED'
                            -- END AS vstatus
                            CASE
                                WHEN tbl1.empty > 0 AND tbl1.ok = 0 AND tbl1.ng = 0 THEN '-'
                                WHEN tbl1.empty = 0 AND tbl1.ng > 0 THEN 'UNCOMPLETE'
                                WHEN tbl1.empty = 0 AND tbl1.ng = 0 THEN 'COMPLETED'
                                ELSE 'ON-PROGRESS'
                            END AS vstatus
                        FROM
                            t_verification tv
                        JOIN
                            t_verification_shop tvs ON (tv.verif_id = tvs.verif_id AND tv.verif_no = '{$verif_no}')
                        JOIN
                            m_shop ms ON (tvs.shop_id = ms.shop_id)
                        JOIN
                            (
                                SELECT 
                                    tvsd.verif_shop_id, 
                                    tvsd.shop_id, 
                                    tvsd.approval_note,
                                    SUM(CASE WHEN tvsd.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                                    SUM(CASE WHEN tvsd.approval_status = 1 THEN 1 ELSE 0 END) AS ok,
                                    SUM(CASE WHEN tvsd.approval_status = 0 THEN 1 ELSE 0 END) AS ng
                                FROM t_verification_shop_det tvsd 
                                GROUP BY tvsd.verif_shop_id, tvsd.shop_id, tvsd.approval_note
                            ) tbl1 ON (tvs.verif_shop_id = tbl1.verif_shop_id)
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
            if($this->session->userdata('role_name') == 'Initiator')
            {
                if($row->status_verifikasi == 'DRAFT')
                { 
                    // $row->actions               = '<a href="' . site_url('verification/edit/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                    //                                 Edit
                    //                             </a> |
                    //                             <a href="' . site_url('verification/item_detail/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                    //                                 Detail
                    //                             </a> |
                    //                             <a href="' . site_url('verification/delete/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-danger">
                    //                                 Delete
                    //                             </a>';  
                    $row->actions               = '<a href="' . site_url('verification/edit/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                                                        Edit
                                                    </a> |
                                                    <button class="btn btn-clear fw-bolder text-danger p-0" onclick="return Actions.btnDelete(\''.$this->crypto->encode($row->verif_id).'\',\''.$this->crypto->encode($row->verif_shop_id).'\',\''.$row->shop_name.'\');">
                                                        Delete
                                                    </button>';                                 
                }
                else
                {
                    if($row->vstatus == 'UNCOMPLETE')
                    {
                        $row->actions               = '<a href="' . site_url('verification/edit/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                                                        Edit
                                                    </a>';           
                    } else {
                        $row->actions               = '<a href="' . site_url('verification/item_detail/' . $this->crypto->encode($row->verif_shop_id)) . '" class="fw-bolder text-success">
                                                        Detail
                                                    </a>';           
                    }        
                }

                if($row->approval_status !== NULL)
                {
                    $row->vstatus   = ($row->approval_status == 1) ? 'VERIFIED' : 'REJECTED';
                }
                else
                {
                    $row->vstatus   = $row->vstatus;
                }
            }
            else if($this->session->userdata('role_name') == 'Verifikator' || $this->session->userdata('role_name') == 'Verifikator Admin')
            {
                if($row->approval_status !== NULL)
                {
                    $row->vstatus   = ($row->approval_status == 1) ? 'VERIFIED' : 'REJECTED';
                }
                else
                {
                    $row->vstatus   = $row->vstatus;
                }

                if($row->vstatus == 'ON-PROGRESS' || $row->vstatus == '-')
                {
                    $url            = site_url('verification/checklist/' . $this->crypto->encode($row->verif_shop_id));
                    $disabled       = "";
                    $row->actions   = '<a href="' . $url . '" class="btn btn-sm btn-clear fw-bolder text-success '.$disabled.'">Process Verifikasi</a>';
                } 
                else
                {
                    $url            = "";
                    $disabled       = "disabled";
                    $row->actions   = '<a href="' . $url . '" class="btn btn-sm btn-clear fw-bolder text-success '.$disabled.'">Process Verifikasi</a>';
                }
            }
            else if($this->session->userdata('role_name') == 'Reviewer/Kabag')
            {
                if($row->approval_status !== NULL)
                {
                    $row->vstatus   = ($row->approval_status == 1) ? 'VERIFIED' : 'REJECTED';
                }
                else
                {
                    $row->vstatus   = $row->vstatus;
                }
            }
            else
            {
                // if($row->vstatus == 'ON-PROGRESS' || $row->vstatus == '-')
                // {
                //     $disabled       = "disabled";
                //     $row->actions   = '<button type="button" class="btn btn-clear btn-sm text-success fs-6 fw-bolder" '.$disabled.' id="btn_submit">Decision</button>';
                // } 
                // else
                // {
                //     $disabled       = "";
                //     $row->actions   = '<button type="button" class="btn btn-clear btn-sm text-success fs-6 fw-bolder" '.$disabled.' data-bs-toggle="modal" data-bs-id="'.$row->verif_shop_id.'" data-bs-target="#kt_modal_decision" data-bs-backdrop="static" data-bs-keyboard="false" id="btn_submit">Decision</button>';
                // }

                // if($row->vstatus == 'ON-PROGRESS' || $row->vstatus == 'UNCOMPLETE')
                // {
                //     $row->vstatus   = "-";
                //     $disabled       = "disabled";
                //     $row->actions   = '<button type="button" class="btn btn-clear btn-sm text-success fs-6 fw-bolder" '.$disabled.' id="btn_submit">Decision</button>';
                // } 
                // else
                // {
                //     $row->vstatus   = $row->vstatus;
                //     $disabled       = "";
                //     $row->actions   = '<button type="button" class="btn btn-clear btn-sm text-success fs-6 fw-bolder" '.$disabled.' data-bs-toggle="modal" data-bs-id="'.$this->crypto->encode($row->verif_shop_id).'" data-bs-target="#kt_modal_decision" data-bs-backdrop="static" data-bs-keyboard="false" id="btn_submit">Decision</button>';
                // }

                if($row->approval_status !== NULL)
                {
                    $row->vstatus   = ($row->approval_status == 1) ? 'VERIFIED' : 'REJECTED';
                    $disabled       = "disabled";
                    $row->actions   = '<button type="button" class="btn btn-clear btn-sm text-success fs-6 fw-bolder" '.$disabled.' id="btn_submit">Decision</button>';
                } 
                else if($row->vstatus == 'ON-PROGRESS' || $row->vstatus == 'UNCOMPLETE' || $row->vstatus == '-')
                {
                    $row->vstatus   = "-";
                    $disabled       = "disabled";
                    $row->actions   = '<button type="button" class="btn btn-clear btn-sm text-success fs-6 fw-bolder" '.$disabled.' id="btn_submit">Decision</button>';
                }
                else
                {
                    $row->vstatus   = $row->vstatus;
                    $disabled       = "";
                    $row->actions   = '<button type="button" class="btn btn-clear btn-sm text-success fs-6 fw-bolder" '.$disabled.' data-bs-toggle="modal" data-bs-id="'.$this->crypto->encode($row->verif_shop_id).'" data-bs-target="#kt_modal_decision" data-bs-backdrop="static" data-bs-keyboard="false" id="btn_submit">Decision</button>';
                }
            }
            $row->number                = $i;
            $row->total                 = number_format($row->total,0,',','.');

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
        $sql    = " SELECT tv.verif_id, tv.verif_no, tv.status_verifikasi, tv.status_bendahara, mb.bidang_code, mb.bidang_name, mb2.branch_code, mb2.branch_name
                    FROM t_verification tv
                    JOIN m_bidang mb ON (tv.bidang_id = mb.bidang_id)
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

    public function lastInsertDetail()
    {
        $sql    = "SELECT TOP 1 * FROM {$this->table_sub_1} ORDER BY create_date DESC";
        $query  = $this->db->query($sql);

        return $query->row();
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
    
    public function getDetailVerifItem(String $id = '')
    {
        $sql = "SELECT
                    tv.verif_id,
                    tvs.verif_shop_id,
                    tv.verif_no,
                    tvs.period,
                    tvs.shop_id,
                    tvs.total,
                    mb.bidang_code,
                    mb.bidang_name,
                    ms.shop_type,
                    ms.shop_name,
                    tv.status_verifikasi
                FROM
                    t_verification_shop tvs
                JOIN
                    t_verification tv ON (tvs.verif_id = tv.verif_id)
                JOIN 
                    m_bidang mb ON (tv.bidang_id = mb.bidang_id)
                JOIN 
                    m_shop ms ON (tvs.shop_id = ms.shop_id)
                WHERE
                    tvs.verif_shop_id = '{$id}'";
        $query = $this->db->query($sql);

        return $query->row();
    }

    /**
     * Get Uploaded Detail Document
     *
     * @param string $verif_shop_id
     * @return array
     */
    public function getUploadedDetailDoc(String $verif_shop_id = '')
    {
        $sql = "SELECT
                    tvsd.verif_id,
                    tvsd.verif_shop_det_id,
                    tvsd.verif_shop_id,
                    tvsd.shop_sequence,
                    ms.shop_type,
                    msd.shop_detail,
                    CONCAT(td.doc_filename + '.', NULL + ' ', td.doc_type) doc_id,
                    tvsd.notes,
                    tvsd.shop_id,
                    ms.shop_name,
                    tbl1.status_verifikasi,
                    tvsd.approval_note,
                    CASE
                        WHEN tvsd.approval_status IS NULL THEN '-'
                        WHEN tvsd.approval_status = 0 THEN 'REJECTED'
                        ELSE 'APPROVED'
                    END AS approval_status,
                    tvsd.doc_id AS file_id
                FROM
                    t_verification_shop_det tvsd
                JOIN
                    m_shop_det msd ON (tvsd.shop_id = msd.shop_id AND tvsd.shop_sequence = msd.shop_sequence)
                JOIN 
                    m_shop ms ON (ms.shop_id = msd.shop_id)
                JOIN 
                    (
                        SELECT verif_id, status_verifikasi
                        FROM t_verification tv
                    ) tbl1 ON (tvsd.verif_id = tbl1.verif_id)
                LEFT JOIN
                    t_doc td ON (tvsd.doc_id = td.doc_id)
                WHERE
                    tvsd.verif_shop_id = '{$verif_shop_id}'
                ORDER BY
                    tvsd.shop_sequence ASC";
        $query  = $this->db->query($sql);
        $result = $query->result();

        foreach($result as $row) {
            // if(($row->doc_id == '' && $row->notes == '') || ($row->status_verifikasi <> 'DRAFT')) {
            //     $row->action = '';
            // } else {
            //     $row->action = '<button class="btn btn-clear text-success fw-bolder">Edit</button>';
            // }
            if(($row->status_verifikasi == 'DRAFT' || ($row->status_verifikasi == 'UNCOMPLETE' && $row->approval_status == 'REJECTED'))) {
                $row->action = '<button class="btn btn-clear text-success fw-bolder">Edit</button>';
                
            } else {
                $row->action = '';
            }
        }

        return array(
            'data' => $result
        );
    }

    public function updateHead(Array $params = [], Array $data = [])
    {
        $result = $this->global->update($this->table_main, $params, $data);

        return $result;
    }

    public function getApprovalStatus(String $verif_no = '')
    {
        // $sql = "SELECT 
        //             CASE
        //                 WHEN SUM(tbl1.empty) > 0 THEN 'ON-PROGESS'
        //                 WHEN SUM(tbl1.empty) = 0 AND SUM(tbl1.ng) > 0 THEN 'UNCOMPLETE'
        //                 ELSE 'COMPLETED'
        //             END AS v_status
        //         FROM
        //             t_verification tv
        //         JOIN
        //             t_verification_shop tvs ON (tv.verif_id = tvs.verif_id AND tv.verif_no = '{$verif_no}')
        //         JOIN
        //             (
        //                 SELECT 
        //                     tvsd.verif_shop_id, 
        //                     tvsd.shop_id, 
        //                     SUM(CASE WHEN tvsd.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
        //                     SUM(CASE WHEN tvsd.approval_status = 1 THEN 1 ELSE 0 END) AS ok,
        //                     SUM(CASE WHEN tvsd.approval_status = 0 THEN 1 ELSE 0 END) AS ng
        //                 FROM t_verification_shop_det tvsd 
        //                 GROUP BY tvsd.verif_shop_id, tvsd.shop_id
        //             ) tbl1 ON (tvs.verif_shop_id = tbl1.verif_shop_id)";

        /** New */
        $sql = "SELECT 
                    -- tbl1.empty on_progress,
                    -- tbl1.ok completed,
                    -- tbl1.ng uncomplete,
                    tbl1.verif_shop_id,
                    CASE 
                        WHEN tbl1.empty > 0 THEN 'ON-PROGRESS'
                        WHEN tbl1.empty = 0 AND tbl1.ng > 0 THEN 'UNCOMPLETE'
                        ELSE 'COMPLETED'
                    END AS v_status
                FROM
                    t_verification tv
                JOIN
                    t_verification_shop tvs ON (tv.verif_id = tvs.verif_id AND tv.verif_no = '{$verif_no}')
                JOIN
                    (
                        SELECT 
                            tvsd.verif_shop_id, 
                            tvsd.shop_id, 
                            SUM(CASE WHEN tvsd.approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                            SUM(CASE WHEN tvsd.approval_status = 1 THEN 1 ELSE 0 END) AS ok,
                            SUM(CASE WHEN tvsd.approval_status = 0 THEN 1 ELSE 0 END) AS ng
                        FROM t_verification_shop_det tvsd 
                        GROUP BY tvsd.verif_shop_id, tvsd.shop_id
                    ) tbl1 ON (tvs.verif_shop_id = tbl1.verif_shop_id)
                GROUP BY tbl1.verif_shop_id, tbl1.empty, tbl1.ok, tbl1.ng";
        $query  = $this->db->query($sql);
        $result = $query->result();
        
        $uncomplete     = 0;
        $on_progress    = 0;
        $completed      = 0;
        foreach ($result as $row) {
            if($row->v_status == 'UNCOMPLETE')
            {
                $uncomplete = ($uncomplete + 1);
            } 
            else if($row->v_status == 'COMPLETED') 
            {
                $completed = ($completed + 1);
            }
            else
            {
                $on_progress = ($on_progress + 1);
            }
        }

        $status = '';
        if($uncomplete > 0)
        {
            $status = 'UNCOMPLETE';
        }
        else if($on_progress > 0)
        {
            $status = 'ON-PROGRESS';
        }
        else
        {
            $status = 'COMPLETED';
        }

        return $status;
    }

    public function getApprovalNote(String $verif_no = '')
    {
        $sql = "SELECT 
                    tvsd.approval_note 
                FROM
                    t_verification tv
                JOIN
                    t_verification_shop_det tvsd ON (tv.verif_id = tvsd.verif_id AND tv.verif_no = '{$verif_no}')
                ORDER BY tvsd.create_date ASC, tvsd.shop_sequence ASC";
        $query  = $this->db->query($sql);
        $result = $query->result();

        return $result;
    }

    public function update(String $table = '', Array $params = [], Array $data = [])
    {
        $result = $this->global->update($table, $params, $data);

        return $result;
    }

    public function getCheckListData(String $verif_shop_id = '')
    {
        $sql    = "SELECT tv.verif_no, tv.verif_request_date, tvs.total, tv.status_verifikasi, tvs.verif_shop_id
                    FROM t_verification_shop tvs
                    JOIN t_verification tv ON (tvs.verif_id = tv.verif_id AND tvs.verif_shop_id = '{$verif_shop_id}')";
        $query  = $this->db->query($sql);

        return $query->row();
    }
    
    public function getDetailFile(String $doc_id = '')
    {
        $params = ['doc_id' => $doc_id];
        $result  = $this->global->get_by('t_doc', $params);

        return $result;
    }

    public function getBendaharaStatus(String $verif_no = '')
    {
        $sql    = "SELECT 
                        tv.verif_no,
                        CASE
                            WHEN tvs.empty > 0 AND tvs.verified >= 0 AND tvs.rejected >= 0 THEN 'ON-PROGRESS'
                            ELSE 'VERIFIED'
                        END AS d_status
                    FROM
                        t_verification tv
                    JOIN
                        (
                            SELECT 
                                verif_id,
                                SUM(CASE WHEN approval_status IS NULL THEN 1 ELSE 0 END) AS empty,
                                SUM(CASE WHEN approval_status = 1 THEN 1 ELSE 0 END) AS verified,
                                SUM(CASE WHEN approval_status = 0 THEN 1 ELSE 0 END) AS rejected
                            FROM t_verification_shop 
                            GROUP BY verif_id
                        ) tvs ON (tv.verif_id = tvs.verif_id AND tv.verif_no = '{$verif_no}')";
        $query  = $this->db->query($sql);
        $result = $query->row();

        return $result->d_status;
    }

    public function getVerifShopTotal(String $verif_id = '')
    {
        $sql    = "SELECT
                        COUNT(tvs.verif_id) AS shop_total
                    FROM
                        t_verification_shop tvs
                    WHERE
                        tvs.verif_id = '{$verif_id}'";
        $query  = $this->db->query($sql);
        $result = $query->row();

        return $result->shop_total;
    }

    public function deleteDetail(String $verif_shop_id = '')
    {
        $params = [
            'verif_shop_id' => $verif_shop_id
        ];
        $this->global->delete('t_verification_shop_det', $params);
        $this->global->delete('t_verification_shop', $params);
    }

    public function deleteAll(String $verif_id = '')
    {
        $params = [
            'verif_id' => $verif_id
        ];

        $this->global->delete('t_verification_shop_det', $params);
        $this->global->delete('t_verification_shop', $params);
        $this->global->delete('t_verification', $params);
    }

}

/* End of file Verification_model.php */
