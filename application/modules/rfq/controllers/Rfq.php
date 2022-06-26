<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Rfq extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Rfq_model', 'rfq');
        $this->load->library('Crypto');
    }
    
    public function index()
    {
        
    }

    public function rfq_goods()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->rfq->getRfqGoodsList();
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "RFQ Barang";
        $data['menu']       = "RFQ";
        $data['submenu']    = "RFQ Barang";
        $data['content']    = "rfq_goods";
        $this->load->view('default', $data);
    }

    public function rfq_service()
    {
        $data['title']      = "RFQ Jasa";
        $data['menu']       = "RFQ";
        $data['submenu']    = "RFQ Jasa";
        $data['content']    = "rfq_service";
        $this->load->view('default', $data);
    }

    public function det_rfq_goods()
    {
        $rfq_no             = $this->crypto->decode($this->uri->segment(3));
        if($this->input->is_ajax_request()) {
            $rows   = $this->rfq->getDetRfqGoodsList($rfq_no);
            echo json_encode($rows);
            exit;
        }
        $data['title']      = "RFQ No : " . $rfq_no;
        $data['menu']       = "RFQ";
        $data['submenu']    = "Detail RFQ Barang";
        $data['content']    = "detail_rfq_goods";
        $this->load->view('default', $data);
    }

    public function save_rfq()
    {
        $rfq_no         = $this->crypto->decode($this->input->post('id_rfq'));
        $material_code  = $this->input->post('material_code');
        $material_name  = $this->input->post('material_name');
        $request_total  = $this->input->post('request_total');
        $measurement    = $this->input->post('measurement');
        $currency       = $this->input->post('currency');
        $unit_price     = $this->input->post('unit_price');
        $unit_measure   = $this->input->post('unit_measure');
        $convert        = $this->input->post('convert');
        $available      = $this->input->post('available');
        $ed_price       = $this->input->post('ed_price');
        $notes          = $this->input->post('notes');
        $created_by     = $this->input->post('created_by');

        $explode_ed_price   = explode("/", $ed_price);
        $new_ed_price       = $explode_ed_price[2].'-'.$explode_ed_price[0].'-'.$explode_ed_price[1];
        
        $params = array(
            'nomor_rfq'     => $rfq_no,
            'kode_barang'   => $material_code
        );

        $data   = array(
            'mata_uang'             => $currency,
            'harga_satuan'         => $unit_price,
            'per_harga_satuan'      => $unit_measure,
            'konversi'              => $convert,
            'ketersediaan_barang'   => $available,
            'masa_berlaku_harga'    => $new_ed_price,
            'keterangan'            => $notes,
            'dibuat_oleh'           => $created_by,
            'modified_date'         => date('Y-m-d'),
            'modified_by'           => 'WEB'
        );

        $save   = $this->rfq->saveRFQ($params, $data);
        if($save > 0) {
            
            $response = array(
                'code'      => 0,
                'msg'       => 'Berhasil menyimpan data',
                'status'    => 'success'
            );

        } else {

            $response = array(
                'code'      => 100,
                'msg'       => 'Gagal menyimpan data',
                'status'    => 'error'
            );

        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_eqiv()
    {
        var_dump($this->input->post());exit;
        // $rfq_no         = $this->crypto->decode($this->input->post('id_rfq'));
        // $material_code  = $this->input->post('material_code');
        // $material_name  = $this->input->post('material_name');
        // $request_total  = $this->input->post('request_total');
        // $measurement    = $this->input->post('measurement');
        // $currency       = $this->input->post('currency');
        // $unit_price     = $this->input->post('unit_price');
        // $unit_measure   = $this->input->post('unit_measure');
        // $convert        = $this->input->post('convert');
        // $available      = $this->input->post('available');
        // $ed_price       = $this->input->post('ed_price');
        // $notes          = $this->input->post('notes');
        // $created_by     = $this->input->post('created_by');

        // $explode_ed_price   = explode("/", $ed_price);
        // $new_ed_price       = $explode_ed_price[2].'-'.$explode_ed_price[0].'-'.$explode_ed_price[1];
        
        // $params = array(
        //     'nomor_rfq'     => $rfq_no,
        //     'kode_barang'   => $material_code
        // );

        // $data   = array(
        //     'mata_uang'             => $currency,
        //     'harga_satuan'         => $unit_price,
        //     'per_harga_satuan'      => $unit_measure,
        //     'konversi'              => $convert,
        //     'ketersediaan_barang'   => $available,
        //     'masa_berlaku_harga'    => $new_ed_price,
        //     'keterangan'            => $notes,
        //     'dibuat_oleh'           => $created_by,
        //     'modified_date'         => date('Y-m-d'),
        //     'modified_by'           => 'WEB'
        // );

        // $save   = $this->rfq->saveRFQ($params, $data);
        // if($save > 0) {
            
        //     $response = array(
        //         'code'      => 0,
        //         'msg'       => 'Berhasil menyimpan data',
        //         'status'    => 'success'
        //     );

        // } else {

        //     $response = array(
        //         'code'      => 100,
        //         'msg'       => 'Gagal menyimpan data',
        //         'status'    => 'error'
        //     );

        // }

        // echo json_encode($response, JSON_PRETTY_PRINT);
        // exit;
    }

}

/* End of file Confirmation.php */
