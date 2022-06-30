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

    /**
     * Undocumented function
     *
     * @return void
     */
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

    /**
     * Undocumented function
     *
     * @return void
     */
    public function get_det_rfq_eqiv()
    {
        $rfq_no = $this->crypto->decode($this->input->post('val_1'));
        $id     = (int)$this->input->post('val_2');

        $data   = $this->rfq->getDetailEqiv($rfq_no, $id);
        if($data->num_rows() > 0) {
            $response = array(
                'code'  => 0,
                'msg'   => 'SUCCESS',
                'data'  => $data->row()
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
        $available      = $this->input->post('available');
        $ed_price       = $this->input->post('ed_price');
        $notes          = $this->input->post('notes');
        $created_by     = $this->input->post('created_by');

        // $old_name   = $this->input->post('old_name');
        // $files      = $_FILES['rfq_file']['name'];
        // $arr_exists = array();
        // if(isset($old_name)) {
        //     foreach($old_name as $key => $value) {
        //         if(array_key_exists($key, $files)) {
        //             array_push($arr_exists, $key);
        //         }
        //     }


        // } else {
            
        // }
        // exit;

        $attach_files   = array();

        $path   = 'upload_files/dokumen_quotation/';
        if(!file_exists($path . $rfq_no)) {
            mkdir($path . $rfq_no, 0777, TRUE);
        }

        $jumlah_berkas = count($_FILES['rfq_file']['name']);
		for($i = 0; $i < $jumlah_berkas;$i++)
		{
            if(!empty($_FILES['rfq_file']['name'][$i])){
 
				$_FILES['file']['name'] = $_FILES['rfq_file']['name'][$i];
				$_FILES['file']['type'] = $_FILES['rfq_file']['type'][$i];
				$_FILES['file']['tmp_name'] = $_FILES['rfq_file']['tmp_name'][$i];
				$_FILES['file']['error'] = $_FILES['rfq_file']['error'][$i];
				$_FILES['file']['size'] = $_FILES['rfq_file']['size'][$i];

                $next = $i + 1;
                $filename  = date('Ymd').'_'.$rfq_no.'_0_'.$next;

                $original_name  = $_FILES['file']['name'];

                /** Upload Config */
                $config['file_name']        = $filename;
                $config['upload_path']      = $path.$rfq_no.'/';
                $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                $config['max_size']         = '51200';

                /** Load CodeIgniter Upload Library */
                $this->load->library('upload', $config);

                $this->upload->initialize($config);
	   
				if($this->upload->do_upload('file')){
					
					$uploadData = $this->upload->data();
                    $upload_data    = array(
                        'nomor_quotation'   => $rfq_no,
                        'ekuivalen'         => 0,
                        'urutan_berkas'     => $next,
                        'kode_barang'       => $material_code,
                        'alamat_berkas'     => $path.$rfq_no.'/',
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
            'kode_barang'   => $material_code
        );

        $data   = array(
            'mata_uang'             => $currency,
            'harga_satuan'          => $unit_price,
            'per_harga_satuan'      => $unit_measure,
            'konversi'              => $convert,
            'ketersediaan_barang'   => $available,
            'masa_berlaku_harga'    => $ed_price,
            'keterangan'            => $notes,
            'dibuat_oleh'           => $created_by,
            'modified_date'         => date('Y-m-d'),
            'modified_by'           => 'WEB'
        );

        $save   = $this->rfq->saveRFQ($params, $data);
        if($save > 0) {
            
            if(count($attach_files) > 0) {
                $uploaded_files = $this->rfq->saveFile($attach_files);
            } else {
                $uploaded_files = 0;
            }
            
            $response = array(
                'code'      => 0,
                'msg'       => 'Berhasil menyimpan data. '.$uploaded_files.' file berhasil diupload.',
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
        $available      = $this->input->post('available_eqiv');
        $ed_price       = $this->input->post('ed_price_eqiv');
        $notes          = $this->input->post('notes_eqiv');
        $created_by     = $this->input->post('created_by_eqiv');

        $exist  = $this->rfq->getDetailEqiv($rfq_no, $id_eqiv);
        if($exist->num_rows() > 0) {

            $attach_files   = array();

            $path   = 'upload_files/dokumen_quotation/';
            if(!file_exists($path . $rfq_no)) {
                mkdir($path . $rfq_no, 0777, TRUE);
            }

            $jumlah_berkas = count($_FILES['eqiv_file']['name']);
            for($i = 0; $i < $jumlah_berkas;$i++)
            {
                if(!empty($_FILES['eqiv_file']['name'][$i])){
    
                    $_FILES['file']['name'] = $_FILES['eqiv_file']['name'][$i];
                    $_FILES['file']['type'] = $_FILES['eqiv_file']['type'][$i];
                    $_FILES['file']['tmp_name'] = $_FILES['eqiv_file']['tmp_name'][$i];
                    $_FILES['file']['error'] = $_FILES['eqiv_file']['error'][$i];
                    $_FILES['file']['size'] = $_FILES['eqiv_file']['size'][$i];

                    $next = $i + 1;
                    $filename  = date('Ymd').'_'.$rfq_no.'_'.$id_eqiv.'_'.$next;

                    /** Upload Config */
                    $config['file_name']        = $filename;
                    $config['upload_path']      = $path.$rfq_no.'/';
                    $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                    $config['max_size']         = '51200';

                    /** Load CodeIgniter Upload Library */
                    $this->load->library('upload', $config);

                    $this->upload->initialize($config);
        
                    if($this->upload->do_upload('file')){
                        
                        $uploadData = $this->upload->data();
                        $upload_data    = array(
                            'nomor_quotation'   => $rfq_no,
                            'ekuivalen'         => $id_eqiv,
                            'urutan_berkas'     => $next,
                            'kode_barang'       => $material_code,
                            'alamat_berkas'     => $path.$rfq_no.'/',
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
                'ketersediaan_barang'   => $available,
                'masa_berlaku_harga'    => $ed_price,
                'keterangan'            => $notes,
                'dibuat_oleh'           => $created_by,
                'modified_date'         => date('Y-m-d'),
                'modified_by'           => 'WEB'
            );
    
            $save   = $this->rfq->updateRFQEqiv($params, $data);
            if($save > 0) {
                
                if(count($attach_files) > 0) {
                    $uploaded_files = $this->rfq->saveFile($attach_files);
                } else {
                    $uploaded_files = 0;
                }
            
                $response = array(
                    'code'      => 0,
                    'msg'       => 'Berhasil menyimpan data. '.$uploaded_files.' file berhasil diupload.',
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

            $attach_files   = array();

            $path   = 'upload_files/dokumen_quotation/';
            if(!file_exists($path . $rfq_no)) {
                mkdir($path . $rfq_no, 0777, TRUE);
            }

            $jumlah_berkas = count($_FILES['eqiv_file']['name']);
            for($i = 0; $i < $jumlah_berkas;$i++)
            {
                if(!empty($_FILES['eqiv_file']['name'][$i])){
    
                    $_FILES['file']['name'] = $_FILES['eqiv_file']['name'][$i];
                    $_FILES['file']['type'] = $_FILES['eqiv_file']['type'][$i];
                    $_FILES['file']['tmp_name'] = $_FILES['eqiv_file']['tmp_name'][$i];
                    $_FILES['file']['error'] = $_FILES['eqiv_file']['error'][$i];
                    $_FILES['file']['size'] = $_FILES['eqiv_file']['size'][$i];

                    $next = $i + 1;
                    $filename  = date('Ymd').'_'.$rfq_no.'_'.$id_eqiv.'_'.$next;

                    /** Upload Config */
                    $config['file_name']        = $filename;
                    $config['upload_path']      = $path.$rfq_no.'/';
                    $config['allowed_types']    = 'jpg|jpeg|png|pdf';
                    $config['max_size']         = '51200';

                    /** Load CodeIgniter Upload Library */
                    $this->load->library('upload', $config);

                    $this->upload->initialize($config);
        
                    if($this->upload->do_upload('file')){
                        
                        $uploadData = $this->upload->data();
                        $upload_data    = array(
                            'nomor_quotation'   => $rfq_no,
                            'ekuivalen'         => $id_eqiv,
                            'urutan_berkas'     => $next,
                            'kode_barang'       => $material_code,
                            'alamat_berkas'     => $path.$rfq_no.'/',
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
                'ketersediaan_barang'   => $available,
                'masa_berlaku_harga'    => $ed_price,
                'keterangan'            => $notes,
                'dibuat_oleh'           => $created_by,
                'modified_date'         => date('Y-m-d'),
                'modified_by'           => 'WEB'
            );

            $save   = $this->rfq->saveRFQEqiv($data);
            if($save > 0) {
                
                if(count($attach_files) > 0) {
                    $uploaded_files = $this->rfq->saveFile($attach_files);
                } else {
                    $uploaded_files = 0;
                }
            
                $response = array(
                    'code'      => 0,
                    'msg'       => 'Berhasil menyimpan data. '.$uploaded_files.' file berhasil diupload.',
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
