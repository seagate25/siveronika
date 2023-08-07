<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Verification extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->library('Crypto');
        $this->load->model('Verification_model', 'verification');
    }
    
    public function index()
    {
        if($this->input->is_ajax_request()) {
            $verification_data  = $this->verification->getVerificationList();
            echo json_encode($verification_data, JSON_PRETTY_PRINT);
            exit;
        }

        $view = $this->getView($this->session->userdata('role_name'));

        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "";
        $data['content']    = $view;
        $this->load->view('default', $data);
    }

    public function detail()
    {
        $verif_no   = $this->crypto->decode($this->uri->segment(3));
        if($this->input->is_ajax_request()) {
            $verif_det_data = $this->verification->getVerifDetailList($verif_no);
            echo json_encode($verif_det_data, JSON_PRETTY_PRINT);
            exit;
        }
        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail";
        $data['content']    = "detail";
        $data['verif_data'] = $this->verification->getVerifDetail($verif_no);
        $this->load->view('default', $data);
    }

    public function add()
    {
        $verif_no   = $this->verification->getAutoNumber();
        $fields     = $this->verification->getBidangList();

        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail - Tambah Belanja";
        $data['content']    = "add";
        $data['fields']     = $fields;
        $data['verif_no']   = $verif_no;
        $this->load->view('default', $data);
    }

    public function edit()
    {
        $id     = $this->crypto->decode($this->uri->segment(3));
        if($this->input->is_ajax_request())
        {
            $uploadedDetailDocs = $this->verification->getUploadedDetailDoc($id);
            echo json_encode($uploadedDetailDocs, JSON_PRETTY_PRINT);
            exit;
        }
        
        $fields = $this->verification->getBidangList();
        $shops  = $this->verification->getShopList('GU');
        $uploadedDetailDocs = $this->verification->getUploadedDetailDoc($id);

        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail - Edit";
        $data['content']    = "edit";
        $data['fields']     = $fields;
        $data['shops']      = $shops;
        $data['docs']       = json_encode($uploadedDetailDocs, JSON_PRETTY_PRINT);
        $data['verif_data'] = $this->verification->getDetailVerifItem($id);
        $this->load->view('default', $data);
    }

    public function add_item()
    {
        $verif_no   = $this->crypto->decode($this->uri->segment(3));
        $fields     = $this->verification->getBidangList();

        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail - Tambah Belanja";
        $data['content']    = "add_item";
        $data['fields']     = $fields;
        $data['verif_data'] = $this->verification->getVerifDetail($verif_no);
        $this->load->view('default', $data);
    }

    public function get_shop()
    {
        if($this->input->is_ajax_request()) {
            $shop_type  = $this->input->post('term');
            if($shop_type == NULL) {
                $shops      = NULL;
            } else {
                $shops      = $this->verification->getShopList($shop_type);
            }
            
            echo json_encode($shops);
            exit;
        }
    }

    public function get_require_docs()
    {
        if($this->input->is_ajax_request()) {
            $shop_id    = $this->input->post('shop_id');
            $docs_data  = $this->verification->getRequireDocs($shop_id);
            
            if(count($docs_data) > 0) {
                $col  = 'shop_sequence';
                $sort = array();
                foreach ($docs_data as $i => $obj) {
                    $sort[$i] = $obj->{$col};
                }

                $sorted_db = array_multisort($sort, SORT_ASC, $docs_data);
            }

            echo json_encode($docs_data);
            exit;
        }
    }

    public function save()
    {
        $verif_no   = $this->input->post('m_verification_no');
        $bidang_id  = $this->input->post('m_bidang');
        $shop_id    = $this->input->post('m_shop');
        $period     = $this->input->post('m_period');
        $total      = str_replace('.', '', str_replace('Rp. ', '', $this->input->post('m_price')));
        $req_doc    = $this->input->post('req_docs');
        $verif_id   = '';

        $months = [
            '01' => "Januari",
            '02' => "Februari",
            '03' => "Maret",
            '04' => "April",
            '05' => "Mei",
            '06' => "Juni",
            '07' => "Juli",
            '08' => "Agustus",
            '09' => "September",
            '10' => "Oktober",
            '11' => "November",
            '12' => "Desember"
        ];
        $explode_period = explode('-', $period);
        $periode    = $explode_period[1].array_search($explode_period[0], $months);
        
        $data_head  = [
            'verif_id'      => 'NEWID()',
            'verif_no'      => $verif_no,
            'bidang_id'     => $bidang_id,
            'user_id'       => $this->session->userdata('user_id'),
            'user_name'     => $this->session->userdata('user_name'),
            'branch_id'     => $this->session->userdata('branch_code'),
            'create_by'     => $this->session->userdata('user_name')
        ];

        $insertHead = $this->verification->insertHead($data_head);
        if($insertHead > 0) {
            $detail     = $this->verification->getDetail($verif_no);
            $verif_id   = $detail->verif_id;
            $detail_id  = '';
            $data_shop  = [
                'verif_shop_id' => 'NEWID()',
                'verif_id'      => $verif_id,
                'shop_id'       => $shop_id,
                'period'        => $periode,
                'total'         => $total,
                'create_by'     => $this->session->userdata('user_name')
            ];

            $insertDetail   = $this->verification->insertDetail($data_shop);
            $detail_id      = $this->verification->lastInsertDetail()->verif_shop_id;
            if($insertDetail > 0) {
                $data_doc   = [];
                for($i = 1; $i <= $req_doc; $i++) {

                    $doc_id = 'NULL';

                    if(!empty($_FILES[$shop_id.'_'.$i]['name'])) {

                        $path       = 'documents/';
                        /** Upload Config */
                        $config['upload_path']      = $path;
                        $config['allowed_types']    = 'pdf';
                        $config['max_size']         = '22000';

                        /** Load CodeIgniter Upload Library */
                        $this->load->library('upload', $config);

                        $this->upload->initialize($config);

                        if($this->upload->do_upload($shop_id.'_'.$i)) {

                            $uploadData = $this->upload->data();
                            $fName      = explode('.', $uploadData['file_name']);
                            $upload_data    = array(
                                'doc_id'        => 'NEWID()',
                                'doc_filename'  => $fName[0],
                                'doc_path'      => $path,
                                'doc_type'      => 'pdf',
                                'create_by'     => $this->session->userdata('user_name')
                            );
    
                            $this->verification->insertDoc($upload_data);
                            $doc_id = $this->verification->lastInsertDoc()->doc_id;
                        }
                        
                    }

                    $dt = new DateTimeImmutable('NOW', new DateTimeZone('UTC'));
                    $time = $dt->setTimezone(new DateTimeZone('Asia/Jakarta'))->format('Y-m-d H:i:s.v');

                    $doc    = [
                        'verif_shop_det_id' => 'NEWID()',
                        'verif_shop_id'     => $detail_id,
                        'verif_id'          => $verif_id,
                        'shop_id'           => $shop_id,
                        'shop_sequence'     => $i,
                        'doc_id'            => $doc_id,
                        'notes'             => $this->input->post('notes_'.$i),
                        'approval_status'   => 'NULL',
                        'approval_note'     => 'NULL',
                        'approval_date'     => 'NULL',
                        'approval_userid'   => 'NULL',
                        'update_date'       => 'NULL',
                        'update_by'         => 'NULL',
                        'create_date'       => $time,
                        'create_by'         => $this->session->userdata('user_name'),
                    ];
                    $data_doc[] = $doc;
                }

                $insertReqDoc   = $this->verification->insertReqDoc($data_doc);
                if($insertReqDoc > 0) {
                    $response   = [
                        'code'  => 0,
                        'msg'   => 'SUCCESS'
                    ];

                    echo json_encode($response, JSON_PRETTY_PRINT);
                    exit;
                }
            }
        }
    }

    public function save_item()
    {
        $verif_no   = $this->input->post('m_verification_no');
        $bidang_id  = $this->input->post('m_bidang');
        $shop_id    = $this->input->post('m_shop');
        $period     = $this->input->post('m_period');
        $total      = str_replace('.', '', str_replace('Rp. ', '', $this->input->post('m_price')));
        $req_doc    = $this->input->post('req_docs');
        $verif_id   = '';

        $months = [
            '01' => "Januari",
            '02' => "Februari",
            '03' => "Maret",
            '04' => "April",
            '05' => "Mei",
            '06' => "Juni",
            '07' => "Juli",
            '08' => "Agustus",
            '09' => "September",
            '10' => "Oktober",
            '11' => "November",
            '12' => "Desember"
        ];
        $explode_period = explode('-', $period);
        $periode    = $explode_period[1].array_search($explode_period[0], $months);

        $dt = new DateTimeImmutable('NOW', new DateTimeZone('UTC'));
        $time = $dt->setTimezone(new DateTimeZone('Asia/Jakarta'))->format('Y-m-d H:i:s.v');
        
        $params_head = ['verif_no' => $verif_no];
        $data_head  = [
            'update_by'     => $this->session->userdata('user_name'),
            'update_date'   => $time
        ];

        $updateHead = $this->verification->updateHead($params_head, $data_head);
        if($updateHead > 0) {
            $detail     = $this->verification->getDetail($verif_no);
            $verif_id   = $detail->verif_id;
            $detail_id  = '';
            $data_shop  = [
                'verif_shop_id' => 'NEWID()',
                'verif_id'      => $verif_id,
                'shop_id'       => $shop_id,
                'period'        => $periode,
                'total'         => $total,
                'create_by'     => $this->session->userdata('user_name')
            ];

            $insertDetail   = $this->verification->insertDetail($data_shop);
            $detail_id      = $this->verification->lastInsertDetail()->verif_shop_id;
            if($insertDetail > 0) {
                $data_doc   = [];
                for($i = 1; $i <= $req_doc; $i++) {

                    $doc_id = 'NULL';

                    if(!empty($_FILES[$shop_id.'_'.$i]['name'])) {

                        $path       = 'documents/';
                        /** Upload Config */
                        $config['upload_path']      = $path;
                        $config['allowed_types']    = 'pdf';
                        $config['max_size']         = '22000';

                        /** Load CodeIgniter Upload Library */
                        $this->load->library('upload', $config);

                        $this->upload->initialize($config);

                        if($this->upload->do_upload($shop_id.'_'.$i)) {

                            $uploadData = $this->upload->data();
                            $fName      = explode('.', $uploadData['file_name']);
                            $upload_data    = array(
                                'doc_id'        => 'NEWID()',
                                'doc_filename'  => $fName[0],
                                'doc_path'      => $path,
                                'doc_type'      => 'pdf',
                                'create_by'     => $this->session->userdata('user_name')
                            );
    
                            $this->verification->insertDoc($upload_data);
                            $doc_id = $this->verification->lastInsertDoc()->doc_id;
                        }
                        
                    }

                    $dt = new DateTimeImmutable('NOW', new DateTimeZone('UTC'));
                    $time = $dt->setTimezone(new DateTimeZone('Asia/Jakarta'))->format('Y-m-d H:i:s.v');

                    $doc    = [
                        'verif_shop_det_id' => 'NEWID()',
                        'verif_shop_id'     => $detail_id,
                        'verif_id'          => $verif_id,
                        'shop_id'           => $shop_id,
                        'shop_sequence'     => $i,
                        'doc_id'            => $doc_id,
                        'notes'             => $this->input->post('notes_'.$i),
                        'approval_status'   => 'NULL',
                        'approval_note'     => 'NULL',
                        'approval_date'     => 'NULL',
                        'approval_userid'   => 'NULL',
                        'update_date'       => 'NULL',
                        'update_by'         => 'NULL',
                        'create_date'       => $time,
                        'create_by'         => $this->session->userdata('user_name'),
                    ];
                    $data_doc[] = $doc;
                }

                $insertReqDoc   = $this->verification->insertReqDoc($data_doc);
                if($insertReqDoc > 0) {
                    $response   = [
                        'code'  => 0,
                        'msg'   => 'SUCCESS'
                    ];

                    echo json_encode($response, JSON_PRETTY_PRINT);
                    exit;
                }
            }
        }
    }

    public function getView(String $role_name = '') : String
    {
        $view = 'super_admin';
        switch ($role_name) {
            case 'Initiator':
                $view = 'initiator';
                break;
            case 'Verifikator':
                $view = 'verificator';
                break;
            case 'Bendahara':
                $view = 'treasurer';
                break;
            default:
                $view = 'index';
                break;
        }

        return $view;
    }

}

/* End of file Verification.php */
