<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Verification extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Verification_model', 'verification');
    }
    
    public function index()
    {
        if($this->input->is_ajax_request()) {
            $verification_data  = $this->verification->getVerificationList();
            echo json_encode($verification_data, JSON_PRETTY_PRINT);
            exit;
        }
        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "";
        $data['content']    = "index";
        $this->load->view('default', $data);
    }

    public function detail()
    {
        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail";
        $data['content']    = "detail";
        $this->load->view('default', $data);
    }

    public function add()
    {
        $fields = $this->verification->getBidangList();

        $data['title']      = "Verification";
        $data['menu']       = "Verification";
        $data['submenu']    = "Detail - Tambah Belanja";
        $data['content']    = "add";
        $data['fields']     = $fields;
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
            $shop_type  = $this->input->post('shop_type');
            $shop_name  = $this->input->post('shop_name');
            $params     = ['shop_type' => $shop_type, 'shop_name' => $shop_name];
            $docs_data  = $this->verification->getRequireDocs($params);
            
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

}

/* End of file Verification.php */
