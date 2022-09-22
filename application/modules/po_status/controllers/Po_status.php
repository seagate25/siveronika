<?php

use phpDocumentor\Reflection\Type;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

defined('BASEPATH') OR exit('No direct script access allowed');

class Po_Status extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        logged_in();
        $this->load->model('Po_status_model', 'po_status');
        $this->load->library(['Crypto', 'zip']);
    }

    /**
     * Index Function
     *
     * @return void
     */
    public function po_goods()
    {
        if($this->input->is_ajax_request()) {
            $rows   = $this->po_status->getPOHeadList();
            echo json_encode($rows, JSON_PRETTY_PRINT);
            exit;
        }
        $data['title']      = "PO Barang";
        $data['menu']       = "Status PO";
        $data['submenu']    = "PO Barang";
        $data['content']    = "po_goods";
        $this->load->view('default', $data);
    }

    public function po_service()
    {
        $data['title']      = "PO Jasa";
        $data['menu']       = "Status PO";
        $data['submenu']    = "PO Jasa";
        $data['content']    = "po_service";
        $this->load->view('default', $data);
    }

    /**
     * Download file
     *
     * @return void
     */
    public function download()
    {
        $this->load->helper(['directory', 'download']);

        $filename   = '';
        $type       = $this->uri->segment(3);    
        $nomor_po   = $this->crypto->decode($this->uri->segment(4));
        
        $dir    = 'upload_files/Dokumen_PO';
        $scan   =  directory_map($dir);
        if($type === 'head') {

            $filename   = $nomor_po . '.pdf';
            if(in_array($filename, $scan)) {

                force_download($filename, file_get_contents($dir . '/' . $filename));

            } else {
                // var_dump(FALSE);
            }

        } else if($type === 'detail') {

            $filename   = $nomor_po . '_';
            if(strpos(json_encode($scan), $filename) !== FALSE) {
                foreach($scan as $file) {
                    if(strpos($file, $filename) !== FALSE) {
                        $file_path = $dir. '/' . $file;
                        $this->zip->read_file($file_path);
                    }
                }

                // $this->zip->archive($dir .'/'. $nomor_po . '.zip');
                $this->zip->download($nomor_po . '.zip');
            } else {
                var_dump(FALSE);
            }
            exit;

        } else if($type === 'template') {

            $this->create_template($nomor_po);

        }

    }

    /**
     * Create batch template Excel
     *
     * @param string $po_number
     * @return void
     */
    public function create_template($po_number = '')
    {
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet()->setShowGridlines(FALSE);

        $style_title = [
            'font' => [
                'bold'  => true,
                'size'  => 13.5,
                'name'  => 'Calibri'
            ]
        ];

        // Buat sebuah variabel untuk menampung pengaturan style dari header tabel
        $style_col = [
            'font' => ['bold' => true], // Set font nya jadi bold
            'alignment' => [
                'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];

        // Buat sebuah variabel untuk menampung pengaturan style dari isi tabel
        $style_row = [
            'alignment' => [
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];

        $sheet->setCellValue('A1', "Upload Batch data PO Barang");
        // $sheet->mergeCells('A1:E1'); // Set Merge Cell pada kolom A1 sampai E1
        $sheet->getStyle('A1')->applyFromArray($style_title);

        // Buat header tabel nya pada baris ke 3
        $sheet->setCellValue('A3', "NO");
        $sheet->setCellValue('B3', "PO NO");
        $sheet->setCellValue('C3', "Item");
        $sheet->setCellValue('D3', "Item Code");
        $sheet->setCellValue('E3', "Description");
        $sheet->setCellValue('F3', "Qty");
        $sheet->setCellValue('G3', "UoM");
        $sheet->setCellValue('H3', "Batch No");
        $sheet->setCellValue('I3', "Expiry Date");
        $sheet->setCellValue('J3', "Manufacture Date");

        // Apply style header yang telah kita buat tadi ke masing-masing kolom header
        $sheet->getStyle('A3')->applyFromArray($style_col);
        $sheet->getStyle('B3')->applyFromArray($style_col);
        $sheet->getStyle('C3')->applyFromArray($style_col);
        $sheet->getStyle('D3')->applyFromArray($style_col);
        $sheet->getStyle('E3')->applyFromArray($style_col);
        $sheet->getStyle('F3')->applyFromArray($style_col);
        $sheet->getStyle('G3')->applyFromArray($style_col);
        $sheet->getStyle('H3')->applyFromArray($style_col);
        $sheet->getStyle('I3')->applyFromArray($style_col);
        $sheet->getStyle('J3')->applyFromArray($style_col);

        // Panggil function view yang ada di SiswaModel untuk menampilkan semua data siswanya
        $details = $this->po_status->getPODetail($po_number);

        $no = 1; // Untuk penomoran tabel, di awal set dengan 1
        $numrow = 4; // Set baris pertama untuk isi tabel adalah baris ke 4
        foreach($details as $data){ // Lakukan looping pada variabel siswa
            $sheet->setCellValue('A'.$numrow, $no);
            $sheet->setCellValue('B'.$numrow, $data->nomor_po);
            $sheet->setCellValue('C'.$numrow, $data->item);
            $sheet->setCellValue('D'.$numrow, $data->kode_barang);
            $sheet->setCellValue('E'.$numrow, $data->short_text);
            $sheet->setCellValue('F'.$numrow, $data->jumlah);
            $sheet->setCellValue('G'.$numrow, $data->unit);
            $sheet->setCellValue('H'.$numrow, '');
            $sheet->setCellValue('I'.$numrow, '');
            $sheet->setCellValue('J'.$numrow, '');
            
            // Apply style row yang telah kita buat tadi ke masing-masing baris (isi tabel)
            $sheet->getStyle('A'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('B'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('C'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('D'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('E'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('F'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('G'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('H'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('I'.$numrow)->applyFromArray($style_row);
            $sheet->getStyle('J'.$numrow)->applyFromArray($style_row);
            
            $no++; // Tambah 1 setiap kali looping
            $numrow++; // Tambah 1 setiap kali looping
        }

        // Set width kolom
        $sheet->getColumnDimension('A')->setWidth( 5 );
        $sheet->getColumnDimension('B')->setAutoSize( true );
        $sheet->getColumnDimension('C')->setAutoSize( true );
        $sheet->getColumnDimension('D')->setAutoSize( true );
        $sheet->getColumnDimension('E')->setAutoSize( true );
        $sheet->getColumnDimension('F')->setAutoSize( true );
        $sheet->getColumnDimension('G')->setWidth( 8 );
        $sheet->getColumnDimension('H')->setAutoSize( true );
        $sheet->getColumnDimension('I')->setAutoSize( true );
        $sheet->getColumnDimension('J')->setAutoSize( true );
        
        // Set height semua kolom menjadi auto (mengikuti height isi dari kolommnya, jadi otomatis)
        $sheet->getDefaultRowDimension()->setRowHeight(-1);

        // Set orientasi kertas jadi LANDSCAPE
        $sheet->getPageSetup()->setOrientation(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::ORIENTATION_LANDSCAPE);

        // Set judul file excel nya
        $sheet->setTitle($po_number);
        
        // Proses file excel
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="'.$po_number.'_batch.xlsx"'); // Set nama file excel nya
        header('Cache-Control: max-age=0');
        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
    }

    /**
     * Upload batch file
     *
     * @return void
     */
    public function do_upload()
    {
        $path   = 'upload_files/Dokumen_PO';
        /** Upload Config */
        $config['upload_path']      = $path;
        $config['allowed_types']    = 'xls|xlsx';
        $config['max_size']         = '51200';

        /** Load CodeIgniter Upload Library */
        $this->load->library('upload', $config);

        $this->upload->initialize($config);

        if(!$this->upload->do_upload('batch_file')) {

            // $data['error'] = $this->upload->display_errors();

            $data['error'] = $this->upload->display_errors();
            
        } else {

            $file_data  = $this->upload->data();
            $arr_file   = explode('.', $file_data['orig_name']);
            $extension  = end($arr_file);

            $excel_data = [];

            if($extension === 'xls') {
                $reader 	        = \PhpOffice\PhpSpreadsheet\IOFactory::createReader('Xls');
            } else {
                $reader 	        = \PhpOffice\PhpSpreadsheet\IOFactory::createReader('Xlsx');
            }
            
            $spreadsheet        = $reader->load($path . '/' . $file_data['orig_name']);
            $worksheet          = $spreadsheet->getActiveSheet();
            $highestRow         = $worksheet->getHighestRow(); // e.g. 10
            $highestColumn      = $worksheet->getHighestColumn(); // e.g 'F'
            // $highestColumnIndex = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::columnIndexFromString($highestColumn); // e.g. 5
            
            for ($row = 4; $row <= $highestRow; ++$row) {
                $rowData    = $spreadsheet->getActiveSheet()->rangeToArray('A' . $row . ':' . $highestColumn . $highestRow,NULL,TRUE,TRUE,TRUE);
                $rows       = [
                    'id' => $rowData[$row]['A'],
                    'nomor_po' => $rowData[$row]['B'],
                    'item_po' => $rowData[$row]['C'],
                    'kode_material' => $rowData[$row]['D'],
                    'deskripsi_material' => $rowData[$row]['E'],
                    'quantity' => $rowData[$row]['F'],
                    'satuan' => $rowData[$row]['G'],
                    'batch' => $rowData[$row]['H'],
                    'kadaluarsa' => $rowData[$row]['I'],
                    'tanggal_produksi' => $rowData[$row]['J'],
                ];

                $excel_data[] = $rows;
            }

            $data['data'] = $excel_data;
        }

        unlink($path . '/' . $file_data['orig_name']);
        echo json_encode($data, JSON_PRETTY_PRINT);
        exit;
    }

    public function save_batch()
    {
        $nomor_po       = $this->crypto->decode($this->input->post('po_no'));
        $upload_data    = json_decode($this->input->post('upload_data'), TRUE);
        
        foreach($upload_data as $row) {
            $row['kadaluarsa']          = date('Y-m-d', strtotime($row['kadaluarsa']));
            $row['tanggal_produksi']    = date('Y-m-d', strtotime($row['tanggal_produksi']));
        }

        $save   = $this->po_status->insertBatch($upload_data);
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

}

/* End of file Master.php */
