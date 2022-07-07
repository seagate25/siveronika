<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Confirmation extends CI_Controller
{

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
        if ($this->input->is_ajax_request()) {
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
        if ($this->input->is_ajax_request()) {
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
        $this->load->model('Global_model', 'global');

        $id             = $this->input->post('id');
        $price          = str_replace('.', '', $this->input->post('confirmation_price'));
        $currency       = $this->input->post('confirmation_currency');
        $num_request    = $this->input->post('request_total');
        $measure        = $this->input->post('measurement');
        $num_available  = $this->input->post('available_total');
        $num_indent     = $this->input->post('indent_total');
        $indent_day     = $this->input->post('indent_day');

        $params = array('kode_konfirmasi' => $id);
        $data   = array(
            'harga'             => $price,
            'mata_uang'         => $currency,
            'jumlah'            => $num_request,
            'satuan'            => $measure,
            'jumlah_tersedia'   => $num_available,
            'jumlah_inden'      => $num_indent,
            'lama_inden'        => $indent_day,
            'modified_date'     => date('Y-m-d H:i:s'),
            'modified_by'       => 'WEB'
        );

        $update = $this->global->update('TB_S_MST_KONFIRMASI', $params, $data);
        if ($update > 0) {

            $response    = array(
                'code'      => 0,
                'msg'       => 'Berhasil menyimpan data',
                'status'    => 'success'
            );
        } else {

            $response    = array(
                'code'      => 100,
                'msg'       => 'Gagal menyimpan data',
                'status'    => 'error'
            );
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_con_price()
    {
        $this->load->model('Global_model', 'global');

        $id             = $this->input->post('id');
        $repeat_order   = $this->input->post('repeat_order');
        $num_available  = $this->input->post('available_total');
        $num_indent     = $this->input->post('indent_total');
        $indent_day     = $this->input->post('indent_day');

        $params = array('kode_konfirmasi' => $id);
        $data   = array(
            'jumlah_tersedia'   => $num_available,
            'jumlah_inden'      => $num_indent,
            'lama_inden'        => $indent_day,
            'pesan_ulang'       => $repeat_order,
            'modified_by'       => 'WEB',
            'modified_date'     => date('Y-m-d H:i:s')
        );

        $update = $this->global->update('TB_S_MST_KONFIRMASI', $params, $data);
        if ($update > 0) {

            $response    = array(
                'code'      => 0,
                'msg'       => 'Berhasil menyimpan data',
                'status'    => 'success'
            );
        } else {

            $response    = array(
                'code'      => 100,
                'msg'       => 'Gagal menyimpan data',
                'status'    => 'error'
            );
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }
}

/* End of file Confirmation.php */
