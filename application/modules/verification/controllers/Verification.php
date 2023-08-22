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
        $role_name  = $this->session->userdata('role_name');
        $view       = $this->getView($role_name);
        
        if($role_name == 'Reviewer/Kabag') {
            $view   = 'reviewer';
        }

        if($this->input->is_ajax_request()) {
            // if($view == 'initiator' || $view == 'verificator') {
            //     $verif_det_data = $this->verification->getVerifDetailListApprove($verif_no);
            // } else {
            //     $verif_det_data = $this->verification->getVerifDetailList($verif_no);
            // }
            $verif_det_data = $this->verification->getVerifDetailListApprove($verif_no);
            echo json_encode($verif_det_data, JSON_PRETTY_PRINT);
            exit;
        }
        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail";
        $data['content']    = $view."_detail";
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

    public function checklist()
    {
        $verif_shop_id  = $this->crypto->decode($this->uri->segment(3));
        $detailData     = $this->verification->getCheckListData($verif_shop_id);
        $docs_data      = $this->verification->getUploadedDetailDoc($verif_shop_id);
        
        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail - Checklist";
        $data['content']    = "checklist";
        $data['verif_data'] = $detailData;
        $data['docs']       = $docs_data['data'];
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

    public function item_detail()
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
        $data['submenu']    = "Detail - Belanja";
        $data['content']    = "item_detail";
        $data['fields']     = $fields;
        $data['shops']      = $shops;
        $data['docs']       = json_encode($uploadedDetailDocs, JSON_PRETTY_PRINT);
        $data['verif_data'] = $this->verification->getDetailVerifItem($id);
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
            'status_verifikasi'  => 'DRAFT',
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
                        'msg'   => 'Data Verifikasi Berhasil Disimpan',
                        'data'  => site_url('verification/detail/'.$this->crypto->encode($verif_no))
                    ];
                } else {

                    $response   = [
                        'code'  => 200,
                        'msg'   => 'Data Verifikasi Gagal Disimpan',
                        'data'  => NULL
                    ];

                }
            } else {

                $response   = [
                    'code'  => 200,
                    'msg'   => 'Data Verifikasi Gagal Disimpan',
                    'data'  => NULL
                ];

            }
        } else {

            $response   = [
                'code'  => 200,
                'msg'   => 'Data Verifikasi Gagal Disimpan',
                'data'  => NULL
            ];

        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function update()
    {
        $id             = $this->input->post('id');
        $verif_shop_id  = $this->crypto->decode($id);
        $verif_no       = $this->input->post('m_verification_no');
        $bidang_id      = $this->input->post('m_bidang');
        $shop_id        = $this->input->post('m_shop');
        $period         = $this->input->post('m_period');
        $total          = str_replace('.', '', str_replace('Rp. ', '', $this->input->post('m_price')));
        $req_doc        = $this->input->post('req_docs');

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

        $params_det = [
            'verif_shop_id' => $verif_shop_id
        ];

        $data_det   = [
            'period'        => $periode,
            'total'         => $total,
            'update_date'   => sqlsrv_datetime(),
            'update_by'     => $this->session->userdata('user_name')
        ];

        $update_detail  = $this->verification->update('t_verification_shop', $params_det, $data_det);
        if($update_detail > 0)
        {
            for($i = 1; $i  <= $req_doc; $i++)
            {
                $doc_id = 'NULL';
                $notes  = $this->input->post('notes_'.$i);
                
                if(!empty($_FILES[$shop_id.'_'.$i]['name']))
                {
                    $path       = 'documents/';
                    /** Upload Config */
                    $config['upload_path']      = $path;
                    $config['allowed_types']    = 'pdf';
                    $config['max_size']         = '22000';

                    /** Load CodeIgniter Upload Library */
                    $this->load->library('upload', $config);

                    $this->upload->initialize($config);

                    if($this->upload->do_upload($shop_id.'_'.$i))
                    {
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

                    if(!empty($notes))
                    {
                        $data_doc  = [
                            'doc_id'            => $doc_id,
                            'notes'             => $notes,
                            'approval_status'   => 'NULL',
                            'approval_note'     => 'NULL',
                            'approval_date'     => 'NULL',
                            'approval_userid'   => 'NULL',
                            'update_date'       => sqlsrv_datetime(),
                            'update_by'         => $this->session->userdata('user_name'),
                        ];
                    } else {
                        $data_doc  = [
                            'doc_id'            => $doc_id,
                            'approval_status'   => 'NULL',
                            'approval_note'     => 'NULL',
                            'approval_date'     => 'NULL',
                            'approval_userid'   => 'NULL',
                            'update_date'       => sqlsrv_datetime(),
                            'update_by'         => $this->session->userdata('user_name'),
                        ];
                    }

                    $params_doc = [
                        'verif_shop_id' => $verif_shop_id,
                        'shop_id'       => $shop_id,
                        'shop_sequence' => $i
                    ];

                    $this->verification->update('t_verification_shop_det', $params_doc, $data_doc);
                } else {
                    if(!empty($notes))
                    {
                        $data_doc  = [
                            'notes'             => $notes,
                            'approval_status'   => 'NULL',
                            'approval_note'     => 'NULL',
                            'approval_date'     => 'NULL',
                            'approval_userid'   => 'NULL',
                            'update_date'       => sqlsrv_datetime(),
                            'update_by'         => $this->session->userdata('user_name'),
                        ];
                    } else {
                        $data_doc  = [
                            'approval_status'   => 'NULL',
                            'approval_note'     => 'NULL',
                            'approval_date'     => 'NULL',
                            'approval_userid'   => 'NULL',
                            'update_date'       => sqlsrv_datetime(),
                            'update_by'         => $this->session->userdata('user_name'),
                        ];
                    }

                    $params_doc = [
                        'verif_shop_id' => $verif_shop_id,
                        'shop_id'       => $shop_id,
                        'shop_sequence' => $i
                    ];

                    $this->verification->update('t_verification_shop_det', $params_doc, $data_doc);
                }
            }

            $response   = [
                'code'  => 0,
                'msg'   => 'Data Verifikasi Berhasil Diubah',
                'data'  => site_url('verification/detail/'.$this->crypto->encode($verif_no))
            ];

        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Data Verifikasi Gagal Diubah',
                'data'  => NULL
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function delete()
    {
        $v_id           = $this->input->post('v_id');
        $vs_id          = $this->input->post('vs_id');
        $verif_id       = $this->crypto->decode($v_id);
        $verif_shop_id  = $this->crypto->decode($vs_id);

        $shop_total = $this->verification->getVerifShopTotal($verif_id);
        if($shop_total > 1)
        {
            $this->verification->deleteDetail($verif_shop_id);
            $response   = [
                'code'  => 0,
                'msg'   => 'Berhasil menghapus data belanja.',
                'data'  => NULL
            ];
        } else {
            $this->verification->deleteAll($verif_id);
            $response   = [
                'code'  => 0,
                'msg'   => 'Berhasil menghapus data.',
                'data'  => site_url('verification')
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
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
                        'msg'   => 'Data Verifikasi Berhasil Disimpan'
                    ];
                } else {
                    $response   = [
                        'code'  => 200,
                        'msg'   => 'Data Verifikasi Gagal Disimpan'
                    ];
                }
            } else {
                $response   = [
                    'code'  => 200,
                    'msg'   => 'Data Verifikasi Gagal Disimpan'
                ];
            }
        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Data Verifikasi Gagal Disimpan'
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_draft()
    {
        $uri        = $this->uri->segment(3);
        $verif_no   = $this->crypto->decode($uri);

        $params = [
            'verif_no' => $verif_no
        ];

        $data   = [
            'status_verifikasi' => 'DRAFT'
        ];

        $update     = $this->verification->updateHead($params, $data);
        if($update > 0) {
            $response   = [
                'code'  => 0,
                'msg'   => 'Berhasil menyimpan Draft'
            ];
        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Gagal menyimpan Draft'
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_draft_verif()
    {
        $uri        = $this->uri->segment(3);
        $verif_no   = $this->crypto->decode($uri);

        $params = [
            'verif_no' => $verif_no
        ];

        $data   = [
            'status_verifikasi' => 'ON-PROGRESS'
        ];

        $update     = $this->verification->updateHead($params, $data);
        if($update > 0) {
            $response   = [
                'code'  => 0,
                'msg'   => 'Berhasil menyimpan Draft'
            ];
        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Gagal menyimpan Draft'
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_submit()
    {
        $uri        = $this->uri->segment(3);
        $verif_no   = $this->crypto->decode($uri);

        $getStatus  = $this->verification->getApprovalStatus($verif_no);
        // var_dump($getStatus);exit;
        $verif_data     = $this->verification->getVerifDetail($verif_no);
        $status_header  = ($verif_data->status_verifikasi == 'DRAFT') ? 'SUBMITTED' : $getStatus;

        $params = [
            'verif_no' => $verif_no
        ];

        $data   = [
            // 'status_verifikasi'  => 'SUBMITTED',
            'status_verifikasi'  => $status_header,
            'verif_request_date' => sqlsrv_datetime()
        ];

        $update     = $this->verification->updateHead($params, $data);
        if($update > 0) {
            $response   = [
                'code'  => 0,
                'msg'   => 'Data Verifikasi Berhasil di Submit, Selanjutnya Data Verifikasi akan diterima oleh Verifikator untuk dilakukan Validasi.'
            ];
        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Data Verifikasi Gagal di Submit'
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_submit_verif()
    {
        /** Get Encode Uri String */
        $uri        = $this->uri->segment(3);

        /** Decode Uri String */
        $verif_no   = $this->crypto->decode($uri);

        /** Get SQL Server Datetime Format */
        $time       = sqlsrv_datetime();

        /** Get Approval Status */
        $getStatus  = $this->verification->getApprovalStatus($verif_no);
        $status     = $getStatus;

        /** Get Approval Notes */
        $getNotes   = $this->verification->getApprovalNote($verif_no);

        /** Iterate notes into single string */
        $i = 0;
        $notes  = '';
        foreach($getNotes as $note) {
            $notes .= $note->approval_note;
            if ($i === (count($getNotes) - 1)) {
                $notes .= "";
            } else {
                $notes .= ";";
            }

            $i++;
        }

        /** Parameter for update */
        $params = [
            'verif_no' => $verif_no
        ];

        /** Data to be update */
        $data = [
            'status_verifikasi' => $status,
            'approval_userid1'  => $this->session->userdata('user_id'),
            'approval_note1'    => $notes,
            'approval_date1'    => $time,
            'update_date'       => $time,
            'update_by'         => $this->session->userdata('user_name')
        ];

        /** Updating Verification Head */
        $update = $this->verification->update('t_verification', $params, $data);
        if($update > 0) {
            $response   = [
                'code'  => 0,
                'msg'   => 'Berhasil menyimpan data'
            ];
        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Gagal menyimpan data'
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_decision()
    {
        $id     = $this->input->post('id');
        $notes  = $this->input->post('notes');
        $status = $this->input->post('status');

        $convert_notes  = str_replace("'", "''", $notes);
        
        $params = ['verif_shop_det_id' => $id];
        $data   = [
            'approval_status'   => $status,
            'approval_note'     => utf8_decode($convert_notes),
            'approval_date'     => sqlsrv_datetime(),
            'approval_userid'   => $this->session->userdata('user_id'),
            'update_date'       => sqlsrv_datetime(),
            'update_by'         => $this->session->userdata('user_name')
        ];

        $update = $this->verification->update('t_verification_shop_det', $params, $data);
        if($update > 0) {
            $response   = [
                'code'  => 0,
                'msg'   => 'Data berhasil disimpan',
                'status'=> 'success'
            ];
        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Data gagal disimpan',
                'status'=> 'error'
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_decision_treasure()
    {
        $id         = $this->input->post('id');
        $no         = $this->input->post('no');
        $verif_no   = $this->crypto->decode($no);
        $verif_id   = $this->crypto->decode($id);
        $notes      = $this->input->post('notes');
        $status_det = $this->input->post('status');

        $convert_notes  = str_replace("'", "''", $notes);

        /** Parameter for update */
        $params_det = [
            'verif_shop_id' => $verif_id
        ];

        /** Data to be update */
        $data_det = [
            'approval_status'   => $status_det,
            'approval_date'     => sqlsrv_datetime(),
            'approval_userid'   => $this->session->userdata('user_id'),
            'update_date'       => sqlsrv_datetime(),
            'update_by'         => $this->session->userdata('user_name')
        ];

        /** Updating Verification Head */
        $update_det = $this->verification->update('t_verification_shop', $params_det, $data_det);
        if($update_det > 0) {

            $status_header  = $this->verification->getBendaharaStatus($verif_no);

            $params_header = [
                'verif_no' => $verif_no
            ];

            $data_header = [
                'status_bendahara'  => $status_header,
                'approval_userid2'  => $this->session->userdata('user_id'),
                'approval_note2'    => utf8_decode($convert_notes),
                'approval_date2'    => sqlsrv_datetime(),
                'update_date'       => sqlsrv_datetime(),
                'update_by'         => $this->session->userdata('user_name')
            ];

            $update_header = $this->verification->update('t_verification', $params_header, $data_header);

            if($update_header > 0) {
                
                $response   = [
                    'code'  => 0,
                    'msg'   => 'Berhasil menyimpan data',
                    'data'  => $status_header
                ];

            } else {
                
                $response   = [
                    'code'  => 200,
                    'msg'   => 'Gagal menyimpan data'
                ];

            }
        } else {
            $response   = [
                'code'  => 200,
                'msg'   => 'Gagal menyimpan data'
            ];
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function getFile()
    {
        $file_id    = $this->input->post('fName');
        $getFile    = $this->verification->getDetailFile($file_id);
        if($getFile->num_rows() > 0) {
            $file_data  = $getFile->row();
            $full_path  = $file_data->doc_path.$file_data->doc_filename.".".$file_data->doc_type;
            if(file_exists($full_path)) {
                $response = [
                    'code'  => 0,
                    'msg'   => 'SUCCESS',
                    'data'  => $full_path
                ];
            } else {
                
            }
        } else {
            
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
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
