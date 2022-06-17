<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Confirmation extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Confirmation_model', 'confirmation');
    }
    
    public function index()
    {
        
    }

    public function req_price()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->confirmation->getRequestPriceList();
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "Permintaan Harga";
        $data['menu']       = "Konfirmasi";
        $data['submenu']    = "Permintaan Harga";
        $data['content']    = "request_price";
        $this->load->view('default', $data);
    }

    public function con_price()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->confirmation->getConfirmationPriceList();
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "Konfirmasi Harga";
        $data['menu']       = "Konfirmasi";
        $data['submenu']    = "Konfirmasi Harga";
        $data['content']    = "confirmation_price";
        $this->load->view('default', $data);
    }

    public function save_req_price()
    {
        $id             = $this->input->post('id');
        $price          = $this->input->post('confirmation_price');
        $currency       = $this->input->post('confirmation_currency');
        $num_request    = $this->input->post('request_total');
        $measure        = $this->input->post('measurement');
        $num_available  = $this->input->post('available_total');
        $num_indent     = $this->input->post('indent_total');
        $indent_day     = $this->input->post('indent_day');

        $update         = $this->confirmation->update_request($id, $price, $currency, $num_request, $measure, $num_available, $num_indent, $indent_day);
        if($update > 0) {

            $response    = array(
                'code'      => 0,
                'msg'       => 'Berhasil',
                'status'    => 'success'
            );

        } else {

            $response    = array(
                'code'      => 100,
                'msg'       => 'Gagal',
                'status'    => 'error'
            );

        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

}

/* End of file Confirmation.php */
