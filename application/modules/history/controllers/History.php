<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class History extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('History_model', 'history');
        $this->load->library('Crypto');
    }

    /**
     * Index Function
     *
     * @return void
     */
    public function rfq_goods()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->history->getRfqGoodsList();
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "Riwayat RFQ Barang";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Riwayat RFQ Barang";
        $data['content']    = "history_rfq_goods";
        $this->load->view('default', $data);
    }

    public function rfq_service()
    {
        $data['title']      = "RFQ Jasa";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "RFQ Jasa";
        $data['content']    = "history_rfq_service";
        $this->load->view('default', $data);
    }

    public function negotiation_rfq_goods()
    {
        $data['title']      = "Nego RFQ Barang";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Nego RFQ Barang";
        $data['content']    = "history_negotiation_rfq_goods";
        $this->load->view('default', $data);
    }

    public function negotiation_rfq_service()
    {
        $data['title']      = "Negosiasi RFQ Jasa";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Nego RFQ Jasa";
        $data['content']    = "history_negotiation_rfq_service";
        $this->load->view('default', $data);
    }

    public function det_rfq_goods()
    {
        $rfq_no             = $this->crypto->decode($this->uri->segment(3));
        if($this->input->is_ajax_request()) {
            $rows   = $this->history->getDetRfqGoodsList($rfq_no);
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "RFQ No : " . $rfq_no;
        $data['menu']       = "Riwayat";
        $data['submenu']    = "RFQ Barang";
        $data['content']    = "history_detail_rfq_goods";
        $this->load->view('default', $data);
    }

    public function det_nego_rfq_goods()
    {
        $material_code      = $this->uri->segment(3);
        $data['title']      = "RFQ No : " . $material_code;
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Nego RFQ Barang";
        $data['content']    = "history_detail_negotiation_rfq_goods";
        $this->load->view('default', $data);
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function get_files()
    {
        $rfq_no     = $this->crypto->decode($this->input->post('val_1'));
        $ekuivalen  = (int)$this->input->post('val_2');

        $result     = $this->history->getFiles($rfq_no, (int)$ekuivalen);
        if($result->num_rows() > 0) {

            $response   = array(
                'code'  => 0,
                'msg'   => 'SUCCESS',
                'data'  => $result->result()
            );

        } else {

            $response   = array(
                'code'  => 100,
                'msg'   => 'NOT FOUND',
                'data'  => NULL
            );

        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }
}

/* End of file Master.php */
