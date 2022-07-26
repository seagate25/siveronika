<?php

defined('BASEPATH') or exit('No direct script access allowed');

class History extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('History_model', 'history');
        $this->load->library('Crypto');
    }

    /**
     * History RFQ Goods View
     *
     * @return view
     */
    public function rfq_goods()
    {
        if ($this->input->is_ajax_request()) {
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

    /**
     * History RFQ Service View
     *
     * @return view
     */
    public function rfq_service()
    {
        $data['title']      = "RFQ Jasa";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "RFQ Jasa";
        $data['content']    = "history_rfq_service";
        $this->load->view('default', $data);
    }

    /**
     * History Negotiation RFQ Goods View
     *
     * @return view
     */
    public function nego_rfq_goods()
    {
        $data['title']      = "Nego RFQ Barang";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Nego RFQ Barang";
        $data['content']    = "history_negotiation_rfq_goods";
        $this->load->view('default', $data);
    }

    /**
     * History Negotiation RFQ Service View
     *
     * @return view
     */
    public function nego_rfq_service()
    {
        $data['title']      = "Negosiasi RFQ Jasa";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Nego RFQ Jasa";
        $data['content']    = "history_negotiation_rfq_service";
        $this->load->view('default', $data);
    }

    /**
     * History Request Price View
     *
     * @return view
     */
    public function req_price()
    {
        if($this->input->is_ajax_request()) {
            $rows = $this->history->getReqPriceList();
            echo json_encode($rows, JSON_PRETTY_PRINT);
            exit;
        }
        $data['title']      = "Riwayat Permintaan Harga";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Riwayat Permintaan Harga";
        $data['content']    = "history_req_price";
        $this->load->view('default', $data);
    }

    /**
     * History Confirmation Price View
     *
     * @return view
     */
    public function con_price()
    {
        if($this->input->is_ajax_request()) {
            $rows = $this->history->getConPriceList();
            echo json_encode($rows, JSON_PRETTY_PRINT);
            exit;
        }
        $data['title']      = "Riwayat Konfirmasi Harga";
        $data['menu']       = "Riwayat";
        $data['submenu']    = "Riwayat Konfirmasi Harga";
        $data['content']    = "history_con_price";
        $this->load->view('default', $data);
    }

    /**
     * History Detail RFQ Goods View
     *
     * @return view
     */
    public function det_rfq_goods()
    {
        $rfq_no             = $this->crypto->decode($this->uri->segment(3));
        if ($this->input->is_ajax_request()) {
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

    /**
     * History Detail Negotiation RFQ Goods View
     *
     * @return view
     */
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
     * Get_files function
     * 
     * Get equivalent uploaded files
     *
     * @return void
     */
    public function get_files()
    {
        $rfq_no     = $this->crypto->decode($this->input->post('val_1'));
        $ekuivalen  = (int)$this->input->post('val_2');

        $params = array('nomor_quotation' => $rfq_no, 'ekuivalen' => $ekuivalen);
        $result = $this->history->getHistoryAttachedFiles($params);
        if ($result->num_rows() > 0) {
            $files  = $result->result();
            foreach ($files as $res) {
                $res->nama_berkas = $this->crypto->encode($res->nama_berkas);
            }

            $response   = array(
                'code'  => 0,
                'msg'   => 'SUCCESS',
                'data'  => $files
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

    /**
     * Undocumented function
     *
     * @return void
     */
    public function get_det_rfq_eqiv()
    {
        $rfq_no = $this->crypto->decode($this->input->post('val_1'));
        $id     = (int)$this->input->post('val_2');

        $params = array('nomor_rfq' => $rfq_no, 'ekuivalen' => $id);
        $data   = $this->history->getHistoryDetailEquivalent($params);
        if ($data->num_rows() > 0) {

            $eqiv_data  = $data->row();
            $eqiv_data->jumlah_inden = (int)$eqiv_data->jumlah_inden;
            unset($params['nomor_rfq']);
            $params['nomor_quotation']  = $rfq_no;

            $files  = $this->history->getHistoryAttachedFiles($params);
            if ($files->num_rows() > 0) {
                $files_data = $files->result();
                foreach ($files_data as $res) {
                    $res->nama_berkas = $this->crypto->encode($res->nama_berkas);
                }
            }

            $response = array(
                'code'  => 0,
                'msg'   => 'SUCCESS',
                'data'  => $eqiv_data,
                'files' => $files_data
            );
        } else {
            $response = array(
                'code'  => 100,
                'msg'   => 'FAILED',
                'data'  => NULL
            );
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function download()
    {
        $this->load->helper('download');

        $filename       = $this->crypto->decode($this->uri->segment(3));
        $explode_ext    = explode(".", $filename);
        $file_name      = $explode_ext[0];
        $explode_fName  = explode("_", $file_name);
        $rfq_no         = $explode_fName[1];
        $equivalent     = $explode_fName[2];
        $sequence       = $explode_fName[3];

        $params     = array('nomor_quotation' => $rfq_no, 'ekuivalen' => $equivalent, 'urutan_berkas' => $sequence);
        $get_file   = $this->history->getHistoryAttachedFiles($params);
        $file_data  = $get_file->row();

        force_download($file_data->nama_berkas_asli, file_get_contents($file_data->alamat_berkas . $file_data->nama_berkas));
    }
}

/* End of file Master.php */
