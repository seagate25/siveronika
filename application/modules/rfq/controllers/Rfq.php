<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Rfq extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Rfq_model', 'rfq');
        $this->load->model('Global_model', 'global');
        $this->load->library('Crypto');
    }

    public function index()
    {
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function rfq_goods()
    {
        if ($this->input->is_ajax_request()) {
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

    /**
     * Undocumented function
     *
     * @return void
     */
    public function rfq_service()
    {
        $data['title']      = "RFQ Jasa";
        $data['menu']       = "RFQ";
        $data['submenu']    = "RFQ Jasa";
        $data['content']    = "rfq_service";
        $this->load->view('default', $data);
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function det_rfq_goods()
    {
        $rfq_no             = $this->crypto->decode($this->uri->segment(3));
        if ($this->input->is_ajax_request()) {
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
        $data   = $this->global->get_by('TB_S_MST_RFQ_BARANG_EQIV', $params);
        if ($data->num_rows() > 0) {

            unset($params['nomor_rfq']);
            $params['nomor_quotation']  = $rfq_no;

            $files  = $this->global->get_by('TB_TR_QUOTATION_LAMPIRAN', $params);
            $response = array(
                'code'  => 0,
                'msg'   => 'SUCCESS',
                'data'  => $data->row(),
                'files' => $files->result()
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
    public function get_files()
    {
        $rfq_no     = $this->crypto->decode($this->input->post('val_1'));
        $ekuivalen  = (int)$this->input->post('val_2');

        $result = $this->rfq->getFiles($rfq_no, (int)$ekuivalen);
        if ($result->num_rows() > 0) {

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

    /**
     * Undocumented function
     *
     * @return void
     */
    public function save_rfq()
    {
        $rfq_no         = $this->crypto->decode($this->input->post('id_rfq'));
        $material_code  = $this->input->post('material_code');
        $material_name  = $this->input->post('material_name');
        $request_total  = $this->input->post('request_total');
        $measurement    = $this->input->post('measurement');
        $currency       = $this->input->post('currency');
        $unit_price     = str_replace('.', '', $this->input->post('unit_price'));
        $unit_measure   = $this->input->post('unit_measure');
        $convert        = $this->input->post('convert');
        $convertion_qty = $this->input->post('convertion_qty');
        $available      = $this->input->post('available');
        $ed_price       = $this->input->post('ed_price');
        $notes          = $this->input->post('notes');
        $created_by     = $this->input->post('created_by');

        $attach_files       = array();
        $attach_new_files   = array();

        $path   = 'upload_files/dokumen_quotation/';
        if (!file_exists($path . $rfq_no)) {
            mkdir($path . $rfq_no, 0777, TRUE);
        }

        $old_name       = $this->input->post('old_name');
        $files          = $_FILES['rfq_file']['name'];
        $arr_exists     = array();
        $arr_not_exists = array();
        if (isset($old_name)) {
            foreach ($files as $key => $value) {
                if (array_key_exists($key, $old_name)) {
                    if (!empty($value)) {
                        array_push($arr_exists, $key);
                    }
                } else {
                    array_push($arr_not_exists, $key);
                }
            }

            foreach ($arr_exists as $x) {

                $sequence   = $x + 1;

                $fileData   = $this->rfq->getFiles($rfq_no, 0)->result();
                foreach ($fileData as $fData) {
                    if ($sequence == $fData->urutan_berkas) {
                        $path_file = $fData->alamat_berkas . $fData->nama_berkas;
                        unlink($path_file);
                        break;
                    }
                }

                if (!empty($files[$x])) {

                    $_FILES['file']['name'] = $_FILES['rfq_file']['name'][$x];
                    $_FILES['file']['type'] = $_FILES['rfq_file']['type'][$x];
                    $_FILES['file']['tmp_name'] = $_FILES['rfq_file']['tmp_name'][$x];
                    $_FILES['file']['error'] = $_FILES['rfq_file']['error'][$x];
                    $_FILES['file']['size'] = $_FILES['rfq_file']['size'][$x];

                    $next = $sequence;
                    $filename  = date('Ymd') . '_' . $rfq_no . '_0_' . $next;

                    $original_name  = $_FILES['file']['name'];

                    /** Upload Config */
                    $config['file_name']        = $filename;
                    $config['upload_path']      = $path . $rfq_no . '/';
                    $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                    $config['max_size']         = '51200';

                    /** Load CodeIgniter Upload Library */
                    $this->load->library('upload', $config);

                    $this->upload->initialize($config);

                    if ($this->upload->do_upload('file')) {

                        $uploadData = $this->upload->data();
                        $upload_data    = array(
                            'nama_berkas_asli'  => $original_name,
                            'nama_berkas'       => $uploadData['orig_name'],
                            'modified_date'     => date('Y-m-d H:i:s'),
                            'modified_by'       => 'WEB'
                        );

                        $attach_files[] = $upload_data;
                    }
                }

                $params_file = array(
                    'nomor_quotation'   => $rfq_no,
                    'ekuivalen'         => 0,
                    'urutan_berkas'     => $sequence
                );

                $this->rfq->updateFiles($params_file, $upload_data);
            }

            if (count($arr_not_exists) > 0) {
                $check_files    = $this->rfq->getFiles($rfq_no, 0);
                $files_data     = $check_files->result();
                $sequence       = array_column($files_data, 'urutan_berkas');
                $last_sequence  = max($sequence);

                foreach ($arr_not_exists as $x) {

                    if (!empty($files[$x])) {

                        $_FILES['file']['name'] = $_FILES['rfq_file']['name'][$x];
                        $_FILES['file']['type'] = $_FILES['rfq_file']['type'][$x];
                        $_FILES['file']['tmp_name'] = $_FILES['rfq_file']['tmp_name'][$x];
                        $_FILES['file']['error'] = $_FILES['rfq_file']['error'][$x];
                        $_FILES['file']['size'] = $_FILES['rfq_file']['size'][$x];

                        $next = $last_sequence + 1;
                        $filename  = date('Ymd') . '_' . $rfq_no . '_0_' . $next;

                        $original_name  = $_FILES['file']['name'];

                        /** Upload Config */
                        $config['file_name']        = $filename;
                        $config['upload_path']      = $path . $rfq_no . '/';
                        $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                        $config['max_size']         = '51200';

                        /** Load CodeIgniter Upload Library */
                        $this->load->library('upload', $config);

                        $this->upload->initialize($config);

                        if ($this->upload->do_upload('file')) {

                            $uploadData = $this->upload->data();
                            $upload_data    = array(
                                'nomor_quotation'   => $rfq_no,
                                'ekuivalen'         => 0,
                                'urutan_berkas'     => $next,
                                'kode_barang'       => $material_code,
                                'alamat_berkas'     => $path . $rfq_no . '/',
                                'nama_berkas_asli'  => $original_name,
                                'nama_berkas'       => $uploadData['orig_name'],
                                'modified_date'     => date('Y-m-d H:i:s'),
                                'modified_by'       => 'WEB'
                            );

                            $attach_new_files[] = $upload_data;
                        }

                        $last_sequence++;
                    }
                }
            }

            $params = array(
                'nomor_rfq'     => $rfq_no,
                'kode_barang'   => $material_code
            );

            $data   = array(
                'mata_uang'             => $currency,
                'harga_satuan'          => $unit_price,
                'per_harga_satuan'      => $unit_measure,
                'konversi'              => $convert,
                'jumlah_konversi'       => ($convert == '1') ? $convertion_qty : '',
                'satuan_konversi'       => ($convert == '1') ? $measurement : '',
                'ketersediaan_barang'   => $available,
                'masa_berlaku_harga'    => $ed_price,
                'keterangan'            => $notes,
                'dibuat_oleh'           => $created_by,
                'modified_date'         => date('Y-m-d'),
                'modified_by'           => 'WEB'
            );

            $save   = $this->rfq->saveRFQ($params, $data);
            if ($save > 0) {

                if (count($attach_new_files) > 0) {
                    $updated_files  = $this->rfq->saveFile($attach_new_files);
                    $uploaded_files = count($attach_files) + $updated_files;
                } else {
                    $uploaded_files = count($attach_files);
                }

                $response = array(
                    'code'      => 0,
                    'msg'       => 'Berhasil menyimpan data. ' . $uploaded_files . ' file berhasil diupload.',
                    'status'    => 'success'
                );
            } else {

                $response = array(
                    'code'      => 100,
                    'msg'       => 'Gagal menyimpan data',
                    'status'    => 'error'
                );
            }
        } else {

            $check_files    = $this->rfq->getFiles($rfq_no, 0);
            if ($check_files->num_rows() > 0) {

                $files_data     = $check_files->result();
                $sequence       = array_column($files_data, 'urutan_berkas');
                $last_sequence  = max($sequence);
            } else {

                $last_sequence = 0;
            }

            $jumlah_berkas = count($_FILES['rfq_file']['name']);
            for ($i = 0; $i < $jumlah_berkas; $i++) {
                if (!empty($_FILES['rfq_file']['name'][$i])) {

                    $_FILES['file']['name'] = $_FILES['rfq_file']['name'][$i];
                    $_FILES['file']['type'] = $_FILES['rfq_file']['type'][$i];
                    $_FILES['file']['tmp_name'] = $_FILES['rfq_file']['tmp_name'][$i];
                    $_FILES['file']['error'] = $_FILES['rfq_file']['error'][$i];
                    $_FILES['file']['size'] = $_FILES['rfq_file']['size'][$i];

                    $next = $last_sequence + 1;
                    $filename  = date('Ymd') . '_' . $rfq_no . '_0_' . $next;

                    $original_name  = $_FILES['file']['name'];

                    /** Upload Config */
                    $config['file_name']        = $filename;
                    $config['upload_path']      = $path . $rfq_no . '/';
                    $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                    $config['max_size']         = '51200';

                    /** Load CodeIgniter Upload Library */
                    $this->load->library('upload', $config);

                    $this->upload->initialize($config);

                    if ($this->upload->do_upload('file')) {

                        $uploadData = $this->upload->data();
                        $upload_data    = array(
                            'nomor_quotation'   => $rfq_no,
                            'ekuivalen'         => 0,
                            'urutan_berkas'     => $next,
                            'kode_barang'       => $material_code,
                            'alamat_berkas'     => $path . $rfq_no . '/',
                            'nama_berkas_asli'  => $original_name,
                            'nama_berkas'       => $uploadData['orig_name'],
                            'modified_date'     => date('Y-m-d H:i:s'),
                            'modified_by'       => 'WEB'
                        );

                        $attach_files[] = $upload_data;
                    }

                    $last_sequence++;
                }
            }

            $params = array(
                'nomor_rfq'     => $rfq_no,
                'kode_barang'   => $material_code
            );

            $data   = array(
                'mata_uang'             => $currency,
                'harga_satuan'          => $unit_price,
                'per_harga_satuan'      => $unit_measure,
                'konversi'              => $convert,
                'jumlah_konversi'       => ($convert == '1') ? $convertion_qty : '',
                'satuan_konversi'       => ($convert == '1') ? $measurement : '',
                'ketersediaan_barang'   => $available,
                'masa_berlaku_harga'    => $ed_price,
                'keterangan'            => $notes,
                'dibuat_oleh'           => $created_by,
                'modified_date'         => date('Y-m-d'),
                'modified_by'           => 'WEB'
            );

            $save   = $this->rfq->saveRFQ($params, $data);
            if ($save > 0) {

                if (count($attach_files) > 0) {
                    $uploaded_files = $this->rfq->saveFile($attach_files);
                } else {
                    $uploaded_files = 0;
                }

                $response = array(
                    'code'      => 0,
                    'msg'       => 'Berhasil menyimpan data. ' . $uploaded_files . ' file berhasil diupload.',
                    'status'    => 'success'
                );
            } else {

                $response = array(
                    'code'      => 100,
                    'msg'       => 'Gagal menyimpan data',
                    'status'    => 'error'
                );
            }
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function save_eqiv()
    {
        $id_eqiv        = (int)$this->input->post('id_eqiv');
        $seq_eqiv       = (int)$this->input->post('seq_eqiv');
        $rfq_no         = $this->crypto->decode($this->input->post('id_rfq_eqiv'));
        $material_code  = $this->input->post('material_code_eqiv');
        $material_name  = $this->input->post('material_name_eqiv');
        $request_total  = $this->input->post('request_total_eqiv');
        $measurement    = $this->input->post('r_measurement_eqiv');
        $desc_measure   = $this->input->post('desc_measure_eqiv');
        $currency       = $this->input->post('currency_eqiv');
        $unit_price     = str_replace('.', '', $this->input->post('unit_price_eqiv'));
        $unit_measure   = $this->input->post('unit_measure_eqiv');
        $convert        = $this->input->post('convert_eqiv');
        $convertion_qty = $this->input->post('convertion_qty_eqiv');
        $available      = $this->input->post('available_eqiv');
        $ed_price       = $this->input->post('ed_price_eqiv');
        $notes          = $this->input->post('notes_eqiv');
        $created_by     = $this->input->post('created_by_eqiv');

        $attach_files       = array();
        $attach_new_files   = array();

        $path   = 'upload_files/dokumen_quotation/';
        if (!file_exists($path . $rfq_no)) {
            mkdir($path . $rfq_no, 0777, TRUE);
        }

        $old_name       = $this->input->post('old_name_eqiv');
        $files          = $_FILES['eqiv_file']['name'];
        $arr_exists     = array();
        $arr_not_exists = array();

        $exist  = $this->rfq->getDetailEqiv($rfq_no, $id_eqiv);
        if ($exist->num_rows() > 0) {

            if (isset($old_name)) {
                foreach ($files as $key => $value) {
                    if (array_key_exists($key, $old_name)) {
                        if (!empty($value)) {
                            array_push($arr_exists, $key);
                        }
                    } else {
                        array_push($arr_not_exists, $key);
                    }
                }

                foreach ($arr_exists as $x) {
                    $sequence   = $x + 1;

                    $fileData   = $this->rfq->getFiles($rfq_no, (int)$id_eqiv)->result();
                    foreach ($fileData as $fData) {
                        if ($sequence == $fData->urutan_berkas) {
                            $path_file = $fData->alamat_berkas . $fData->nama_berkas;
                            unlink($path_file);
                            break;
                        }
                    }

                    if (!empty($files[$x])) {

                        $_FILES['file']['name'] = $_FILES['eqiv_file']['name'][$x];
                        $_FILES['file']['type'] = $_FILES['eqiv_file']['type'][$x];
                        $_FILES['file']['tmp_name'] = $_FILES['eqiv_file']['tmp_name'][$x];
                        $_FILES['file']['error'] = $_FILES['eqiv_file']['error'][$x];
                        $_FILES['file']['size'] = $_FILES['eqiv_file']['size'][$x];

                        $next = $sequence;
                        $filename  = date('Ymd') . '_' . $rfq_no . '_' . $id_eqiv . '_' . $next;

                        $original_name  = $_FILES['file']['name'];

                        /** Upload Config */
                        $config['file_name']        = $filename;
                        $config['upload_path']      = $path . $rfq_no . '/';
                        $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                        $config['max_size']         = '51200';

                        /** Load CodeIgniter Upload Library */
                        $this->load->library('upload', $config);

                        $this->upload->initialize($config);

                        if ($this->upload->do_upload('file')) {

                            $uploadData = $this->upload->data();
                            $upload_data    = array(
                                'nama_berkas_asli'  => $original_name,
                                'nama_berkas'       => $uploadData['orig_name'],
                                'modified_date'     => date('Y-m-d H:i:s'),
                                'modified_by'       => 'WEB'
                            );

                            $attach_files[] = $upload_data;
                        }
                    }

                    $params_file = array(
                        'nomor_quotation'   => $rfq_no,
                        'ekuivalen'         => $id_eqiv,
                        'urutan_berkas'     => $sequence
                    );

                    $this->rfq->updateFiles($params_file, $upload_data);
                }

                if (count($arr_not_exists) > 0) {
                    $check_files    = $this->rfq->getFiles($rfq_no, (int)$id_eqiv);
                    $files_data     = $check_files->result();
                    $sequence       = array_column($files_data, 'urutan_berkas');
                    $last_sequence  = max($sequence);

                    foreach ($arr_not_exists as $x) {
                        if (!empty($files[$x])) {

                            $_FILES['file']['name'] = $_FILES['eqiv_file']['name'][$x];
                            $_FILES['file']['type'] = $_FILES['eqiv_file']['type'][$x];
                            $_FILES['file']['tmp_name'] = $_FILES['eqiv_file']['tmp_name'][$x];
                            $_FILES['file']['error'] = $_FILES['eqiv_file']['error'][$x];
                            $_FILES['file']['size'] = $_FILES['eqiv_file']['size'][$x];

                            $next = $last_sequence + 1;
                            $filename  = date('Ymd') . '_' . $rfq_no . '_' . $id_eqiv . '_' . $next;

                            $original_name  = $_FILES['file']['name'];

                            /** Upload Config */
                            $config['file_name']        = $filename;
                            $config['upload_path']      = $path . $rfq_no . '/';
                            $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                            $config['max_size']         = '51200';

                            /** Load CodeIgniter Upload Library */
                            $this->load->library('upload', $config);

                            $this->upload->initialize($config);

                            if ($this->upload->do_upload('file')) {

                                $uploadData = $this->upload->data();
                                $upload_data    = array(
                                    'nomor_quotation'   => $rfq_no,
                                    'ekuivalen'         => $id_eqiv,
                                    'urutan_berkas'     => $next,
                                    'kode_barang'       => $material_code,
                                    'alamat_berkas'     => $path . $rfq_no . '/',
                                    'nama_berkas_asli'  => $original_name,
                                    'nama_berkas'       => $uploadData['orig_name'],
                                    'modified_date'     => date('Y-m-d H:i:s'),
                                    'modified_by'       => 'WEB'
                                );

                                $attach_new_files[] = $upload_data;
                            }

                            $last_sequence++;
                        }
                    }
                }

                $params = array(
                    'nomor_rfq'     => $rfq_no,
                    'ekuivalen'     => $id_eqiv,
                    'kode_barang'   => $material_code
                );

                $data   = array(
                    'mata_uang'             => $currency,
                    'harga_satuan'          => $unit_price,
                    'per_harga_satuan'      => $unit_measure,
                    'konversi'              => $convert,
                    'jumlah_konversi'       => ($convert == '1') ? $convertion_qty : '',
                    'satuan_konversi'       => ($convert == '1') ? $measurement : '',
                    'ketersediaan_barang'   => $available,
                    'masa_berlaku_harga'    => $ed_price,
                    'keterangan'            => $notes,
                    'dibuat_oleh'           => $created_by,
                    'modified_date'         => date('Y-m-d'),
                    'modified_by'           => 'WEB'
                );

                $save   = $this->rfq->updateRFQEqiv($params, $data);
                if ($save > 0) {

                    if (count($attach_new_files) > 0) {
                        $updated_files  = $this->rfq->saveFile($attach_new_files);
                        $uploaded_files = count($attach_files) + $updated_files;
                    } else {
                        $uploaded_files = count($attach_files);
                    }

                    $response = array(
                        'code'      => 0,
                        'msg'       => 'Berhasil menyimpan data. ' . $uploaded_files . ' file berhasil diupload.',
                        'status'    => 'success'
                    );
                } else {

                    $response = array(
                        'code'      => 100,
                        'msg'       => 'Gagal menyimpan data',
                        'status'    => 'error'
                    );
                }
            } else {

                $check_files    = $this->rfq->getFiles($rfq_no, $id_eqiv);
                if ($check_files->num_rows() > 0) {

                    $files_data     = $check_files->result();
                    $sequence       = array_column($files_data, 'urutan_berkas');
                    $last_sequence  = max($sequence);
                } else {

                    $last_sequence = 0;
                }

                $jumlah_berkas = count($_FILES['eqiv_file']['name']);
                for ($i = 0; $i < $jumlah_berkas; $i++) {
                    if (!empty($_FILES['eqiv_file']['name'][$i])) {

                        $_FILES['file']['name'] = $_FILES['eqiv_file']['name'][$i];
                        $_FILES['file']['type'] = $_FILES['eqiv_file']['type'][$i];
                        $_FILES['file']['tmp_name'] = $_FILES['eqiv_file']['tmp_name'][$i];
                        $_FILES['file']['error'] = $_FILES['eqiv_file']['error'][$i];
                        $_FILES['file']['size'] = $_FILES['eqiv_file']['size'][$i];

                        $next = $last_sequence + 1;
                        $filename  = date('Ymd') . '_' . $rfq_no . '_' . $id_eqiv . '_' . $next;

                        $original_name  = $_FILES['file']['name'];

                        /** Upload Config */
                        $config['file_name']        = $filename;
                        $config['upload_path']      = $path . $rfq_no . '/';
                        $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                        $config['max_size']         = '51200';

                        /** Load CodeIgniter Upload Library */
                        $this->load->library('upload', $config);

                        $this->upload->initialize($config);

                        if ($this->upload->do_upload('file')) {

                            $uploadData = $this->upload->data();
                            $upload_data    = array(
                                'nomor_quotation'   => $rfq_no,
                                'ekuivalen'         => $id_eqiv,
                                'urutan_berkas'     => $next,
                                'kode_barang'       => $material_code,
                                'alamat_berkas'     => $path . $rfq_no . '/',
                                'nama_berkas_asli'  => $original_name,
                                'nama_berkas'       => $uploadData['orig_name'],
                                'modified_date'     => date('Y-m-d H:i:s'),
                                'modified_by'       => 'WEB'
                            );

                            $attach_files[] = $upload_data;
                        }
                    }
                }

                $params = array(
                    'nomor_rfq'     => $rfq_no,
                    'ekuivalen'     => $id_eqiv,
                    'kode_barang'   => $material_code
                );

                $data   = array(
                    'mata_uang'             => $currency,
                    'harga_satuan'          => $unit_price,
                    'per_harga_satuan'      => $unit_measure,
                    'konversi'              => $convert,
                    'jumlah_konversi'       => ($convert == '1') ? $convertion_qty : '',
                    'satuan_konversi'       => ($convert == '1') ? $measurement : '',
                    'ketersediaan_barang'   => $available,
                    'masa_berlaku_harga'    => $ed_price,
                    'keterangan'            => $notes,
                    'dibuat_oleh'           => $created_by,
                    'modified_date'         => date('Y-m-d'),
                    'modified_by'           => 'WEB'
                );

                $save   = $this->rfq->updateRFQEqiv($params, $data);
                if ($save > 0) {

                    if (count($attach_files) > 0) {
                        $uploaded_files = $this->rfq->saveFile($attach_files);
                    } else {
                        $uploaded_files = 0;
                    }

                    $response = array(
                        'code'      => 0,
                        'msg'       => 'Berhasil menyimpan data. ' . $uploaded_files . ' file berhasil diupload.',
                        'status'    => 'success'
                    );
                } else {

                    $response = array(
                        'code'      => 100,
                        'msg'       => 'Gagal menyimpan data',
                        'status'    => 'error'
                    );
                }
            }
        } else {

            $jumlah_berkas = count($_FILES['eqiv_file']['name']);
            for ($i = 0; $i < $jumlah_berkas; $i++) {
                if (!empty($_FILES['eqiv_file']['name'][$i])) {

                    $_FILES['file']['name'] = $_FILES['eqiv_file']['name'][$i];
                    $_FILES['file']['type'] = $_FILES['eqiv_file']['type'][$i];
                    $_FILES['file']['tmp_name'] = $_FILES['eqiv_file']['tmp_name'][$i];
                    $_FILES['file']['error'] = $_FILES['eqiv_file']['error'][$i];
                    $_FILES['file']['size'] = $_FILES['eqiv_file']['size'][$i];

                    $next = $i + 1;
                    $filename  = date('Ymd') . '_' . $rfq_no . '_' . $id_eqiv . '_' . $next;

                    $original_name  = $_FILES['file']['name'];

                    /** Upload Config */
                    $config['file_name']        = $filename;
                    $config['upload_path']      = $path . $rfq_no . '/';
                    $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                    $config['max_size']         = '51200';

                    /** Load CodeIgniter Upload Library */
                    $this->load->library('upload', $config);

                    $this->upload->initialize($config);

                    if ($this->upload->do_upload('file')) {

                        $uploadData = $this->upload->data();
                        $upload_data    = array(
                            'nomor_quotation'   => $rfq_no,
                            'ekuivalen'         => $id_eqiv,
                            'urutan_berkas'     => $next,
                            'kode_barang'       => $material_code,
                            'alamat_berkas'     => $path . $rfq_no . '/',
                            'nama_berkas_asli'  => $original_name,
                            'nama_berkas'       => $uploadData['orig_name'],
                            'modified_date'     => date('Y-m-d H:i:s'),
                            'modified_by'       => 'WEB'
                        );

                        $attach_files[] = $upload_data;
                    }
                }
            }

            $data   = array(
                'nomor_rfq'             => $rfq_no,
                'urutan_rfq'            => $seq_eqiv,
                'ekuivalen'             => $id_eqiv,
                'kode_barang'           => $material_code,
                'deskripsi_barang'      => $material_name,
                'jumlah_permintaan'     => $request_total,
                'satuan'                => $measurement,
                'deskripsi_satuan'      => $desc_measure,
                'mata_uang'             => $currency,
                'harga_satuan'          => $unit_price,
                'per_harga_satuan'      => $unit_measure,
                'konversi'              => $convert,
                'jumlah_konversi'       => ($convert == '1') ? $convertion_qty : '',
                'satuan_konversi'       => ($convert == '1') ? $measurement : '',
                'ketersediaan_barang'   => $available,
                'masa_berlaku_harga'    => $ed_price,
                'keterangan'            => $notes,
                'dibuat_oleh'           => $created_by,
                'modified_date'         => date('Y-m-d'),
                'modified_by'           => 'WEB'
            );

            $save   = $this->rfq->saveRFQEqiv($data);
            if ($save > 0) {

                if (count($attach_files) > 0) {
                    $uploaded_files = $this->rfq->saveFile($attach_files);
                } else {
                    $uploaded_files = 0;
                }

                $response = array(
                    'code'      => 0,
                    'msg'       => 'Berhasil menyimpan data. ' . $uploaded_files . ' file berhasil diupload.',
                    'status'    => 'success'
                );
            } else {

                $response = array(
                    'code'      => 100,
                    'msg'       => 'Gagal menyimpan data',
                    'status'    => 'error'
                );
            }
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }
}

/* End of file Confirmation.php */
