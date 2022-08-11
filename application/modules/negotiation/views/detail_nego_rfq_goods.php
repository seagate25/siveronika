<script src="<?php echo base_url(); ?>assets/plugins/custom/jquery-maskMoney/jquery.maskMoney.js"></script>
<div class="card shadow-sm">
    <div class="card-header bg-success">
        <div class="card-toolbar">
            <a href="<?php echo site_url('negotiation/rfq_goods'); ?>" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
                <i class="las la-arrow-left fs-1 text-success"></i>
            </a>
        </div>
        <h3 class="card-title text-white"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <button type="button" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2" onclick="return KTDataTables.init();">
                <i class="las la-sync fs-1 text-success"></i>
            </button>
        </div>
    </div>
    <div class="card-body">
        <table id="kt_datatable_detail_nego_rfq_goods" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                    <th class="min-w-50px text-center">No.</th>
                    <th class="min-w-50px text-center">Kode Material</th>
                    <th class="min-w-125px text-center">Nama Material</th>
                    <th class="min-w-50px text-center">Jumlah Permintaan</th>
                    <th class="min-w-50px text-center">Satuan Permintaan</th>
                    <th class="min-w-50px text-center">Status</th>
                    <th class="min-w-50px text-center">Harga Sesuai Permintaan</th>
                    <th class="min-w-200px text-center">Harga Permintaan Ekuivalen</th>
                </tr>
            </thead>
        </table>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="kt_modal_det_nego_rfq_goods" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="min-width:1280px;">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white">Pengisian RFQ</h5>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-danger ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <span class="svg-icon svg-icon-2x">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                            <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                                <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                                <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                            </g>
                        </svg>
                    </span>
                </div>
                <!--end::Close-->
            </div>

            <form id="kt_modal_det_nego_rfq_goods_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" method="post" enctype="multipart/form-data" action="<?php echo site_url('rfq/save_rfq'); ?>">
                <!--begin::Modal body-->
                <div class="modal-body py-4 px-lg-17">
                    <!--begin::Scroll-->
                    <div class="scroll-y me-n7 pe-7" id="kt_modal_det_rfq_goods_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_det_rfq_goods_header" data-kt-scroll-wrappers="#kt_modal_det_rfq_goods_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                        <div class="fw-bold">
                            <h4 class="text-gray-900 fw-bolder">RFQ No : <span id="txt_rfq_no"></span> | <span id="txt_material_code"></span></h4>
                        </div>
                        <input type="hidden" name="id_rfq">
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Kode Material</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="material_code" class="form-control form-control-solid" readonly="true" placeholder="Kode Material">
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Nama Material</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="material_name" class="form-control form-control-solid" readonly="true" placeholder="Nama Material">
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Jumlah Permintaan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="number" name="request_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Permintaan">
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Satuan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="measurement" class="form-control form-control-solid" readonly="true" placeholder="Satuan">
                                <input type="hidden" name="r_measurement">
                                <input type="hidden" name="desc_measure">
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Mata Uang</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-4 fv-row fv-plugins-icon-container">
                                <!-- <input type="text" name="currency" class="form-control" placeholder="Mata Uang"> -->
                                <select class="form-select form-select-solid" name="currency" id="currency" data-control="select2" data-dropdown-parent="#kt_modal_det_rfq_goods" data-placeholder="Pilih Mata Uang">
                                    <?php
                                    foreach ($currencies as $currency) {
                                    ?>
                                        <option value="<?php echo $currency->kode_uang; ?>"><?php echo $currency->kode_uang; ?> (<?php echo $currency->deskripsi; ?>)</option>
                                    <?php
                                    }
                                    ?>
                                </select>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Harga Satuan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-4 fv-row fv-plugins-icon-container">
                                <input type="text" name="unit_price" class="form-control" placeholder="Harga Satuan">
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                            <!--begin::Label-->
                            <label class="col-lg-1 col-form-label required fw-bold fs-6">Per</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-3 fv-row fv-plugins-icon-container">
                                <!-- <input type="text" name="unit_measure" class="form-control" placeholder="Satuan"> -->
                                <select class="form-select form-select-solid" disabled name="unit_measure" id="unit_measure" data-control="select2" data-dropdown-parent="#kt_modal_det_rfq_goods" data-placeholder="Pilih Satuan">
                                    <?php
                                    foreach ($UoMs as $UoM) {
                                    ?>
                                        <option value="<?php echo $UoM->satuan; ?>"><?php echo $UoM->satuan; ?> (<?php echo $UoM->deskripsi_satuan; ?>)</option>
                                    <?php
                                    }
                                    ?>
                                </select>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Apakah ada konversi?</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <div class="align-items-center mt-3">
                                    <!--begin::Option-->
                                    <label class="form-check form-check-inline form-check-solid me-5">
                                        <input class="form-check-input" name="convert" type="radio" value="1">
                                        <span class="fw-bold ps-2 fs-6">Ya</span>
                                    </label>
                                    <!--end::Option-->
                                    <!--begin::Option-->
                                    <label class="form-check form-check-inline form-check-solid">
                                        <input class="form-check-input" name="convert" type="radio" value="0" checked="true">
                                        <span class="fw-bold ps-2 fs-6">Tidak</span>
                                    </label>
                                    <!--end::Option-->
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6" id="form_convertion">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Masukkan Satuan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row">
                                <table class="table table-row-dashed table-row-gray-300 gy-7 align-middle">
                                    <thead>
                                        <tr class="fw-bolder fs-6 text-gray-800">
                                            <th class="text-center min-w-150px">Keterangan</th>
                                            <th class="text-center min-w-30px">Jumlah</th>
                                            <th class="text-center min-w-50px">Satuan</th>
                                            <th class="text-center min-w-20px"></th>
                                            <th class="text-center min-w-80px">Konversi Jumlah</th>
                                            <th class="text-center min-w-50px">Satuan</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Satuan Konversi</td>
                                            <td class="text-center">1</td>
                                            <td class="text-center">
                                                <input type="text" name="convertion_measure" class="form-control form-control-solid text-center" readonly="true">
                                            </td>
                                            <td class="text-center">=</td>
                                            <td class="text-center">
                                                <div class="fv-row fv-plugins-icon-container">
                                                    <input type="text" class="form-control" name="convertion_qty" placeholder="Konversi Jumlah">
                                                    <div class="fv-plugins-message-container invalid-feedback"></div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <!-- <input type="text" name="measurement" class="form-control form-control-solid" readonly="true"> -->
                                                <select class="form-select form-select-solid" disabled name="convertion_measurement" id="convertion_measurement" data-control="select2" data-dropdown-parent="#kt_modal_det_rfq_goods" data-placeholder="Pilih Satuan">
                                                    <?php
                                                    foreach ($UoMs as $UoM) {
                                                    ?>
                                                        <option value="<?php echo $UoM->satuan; ?>"><?php echo $UoM->satuan; ?> (<?php echo $UoM->deskripsi_satuan; ?>)</option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Status Ketersediaan Barang</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <div class="align-items-center mt-3">
                                    <!--begin::Option-->
                                    <label class="form-check form-check-inline form-check-solid me-5">
                                        <input class="form-check-input" name="available" type="radio" value="0">
                                        <span class="fw-bold ps-2 fs-6">Tersedia</span>
                                    </label>
                                    <!--end::Option-->
                                    <!--begin::Option-->
                                    <label class="form-check form-check-inline form-check-solid">
                                        <input class="form-check-input" name="available" type="radio" value="1" checked="true">
                                        <span class="fw-bold ps-2 fs-6">Indent</span>
                                    </label>
                                    <!--end::Option-->
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Masa Berlaku Harga</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input class="form-control form-control-solid" name="ed_price" placeholder="Masa Berlaku Harga" id="kt_daterangepicker_3" />
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label fw-bold fs-6">Keterangan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <!-- <input class="form-control" name="notes" placeholder="Keterangan"/> -->
                                <textarea class="form-control" name="notes" placeholder="Keterangan" rows="5"></textarea>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Dibuat Oleh</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input class="form-control" name="created_by" placeholder="Dibuat oleh" />
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label fw-bold fs-6">File Brosur</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container" id="input_file">
                                <!-- <span class="form-text text-muted">File yang diperbolehkan JPG, JPEG, PNG, & PDF.</span> -->
                                <span class="form-text text-muted">File yang diperbolehkan .PDF</span>
                                <div class="mb-3">
                                    <input class="form-control rfq_file" type="file" name="rfq_file[]">
                                </div>
                                <div class="mb-3">
                                    <input class="form-control rfq_file" type="file" name="rfq_file[]">
                                </div>
                                <div class="mb-3">
                                    <input class="form-control rfq_file" type="file" name="rfq_file[]">
                                </div>
                                <div class="mb-3">
                                    <input class="form-control rfq_file" type="file" name="rfq_file[]">
                                </div>
                                <div class="mb-3">
                                    <input class="form-control rfq_file" type="file" name="rfq_file[]">
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                    </div>
                    <!--end::Scroll-->
                </div>
                <!--end::Modal body-->
                <!--begin::Modal footer-->
                <div class="modal-footer flex-center">
                    <!--begin::Button-->
                    <button type="reset" id="kt_modal_det_rfq_goods_cancel" class="btn btn-light me-3">Tutup</button>
                    <!--end::Button-->
                    <!--begin::Button-->
                    <button type="submit" id="kt_modal_det_rfq_goods_submit" class="btn btn-primary">
                        <span class="indicator-label">Simpan</span>
                        <span class="indicator-progress">Please wait...
                            <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                    </button>
                    <!--end::Button-->
                </div>
                <!--end::Modal footer-->
                <div></div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="kt_modal_det_nego_rfq_goods_ekuivalen" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="min-width:1280px;">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white">Pengisian Ekuivalen</h5>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-danger ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <span class="svg-icon svg-icon-2x">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                            <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                                <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                                <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                            </g>
                        </svg>
                    </span>
                </div>
                <!--end::Close-->
            </div>

            <form id="kt_modal_det_nego_rfq_goods_ekuivalen_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
                <!--begin::Modal body-->
                <div class="modal-body py-4 px-lg-17">
                    <!--begin::Scroll-->
                    <div class="scroll-y me-n7 pe-7" id="kt_modal_det_nego_rfq_goods_ekuivalen_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_det_nego_rfq_goods_ekuivalen_header" data-kt-scroll-wrappers="#kt_modal_det_nego_rfq_goods_ekuivalen_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                        <div class="fw-bold">
                            <h4 class="text-gray-900 fw-bolder">Nego RFQ No : 6200272804 | 7013165 | 1</h4>
                        </div>
                       
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Kode Material</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="request_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Permintaan" value="7013165">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Nama Material</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="measurement" class="form-control form-control-solid" readonly="true" placeholder="Satuan" value="BAYGON CAIR @1L/KLG">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Jumlah Permintaan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="number" name="available_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Tersedia" value="30">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Satuan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Indent" value="KLG (KALENG)">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Spesifikasi</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <textarea name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)">BAYGON CAIR</textarea>
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Merk</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)" value="BAYGON">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Tipe</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)" value="Type 1">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Buatan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)" value="Baygon">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Satuan yang ditawarkan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Indent" value="KLG (KALENG)">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Mata Uang</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input class="form-control form-control-solid" placeholder="" id="" value="IDR"/>
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Harga Satuan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)" value="25.000">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Harga Satuan Nego</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)" value="25.000">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                    </div>
                    <!--end::Scroll-->
                </div>
                <!--end::Modal body-->
                <!--begin::Modal footer-->
                <div class="modal-footer flex-center">
                    <!--begin::Button-->
                    <button type="reset" id="kt_modal_det_nego_rfq_goods_ekuivalen_cancel" class="btn btn-light me-3">Tutup</button>
                    <!--end::Button-->
                    <!--begin::Button-->
                    <button type="submit" id="kt_modal_det_nego_rfq_goods_ekuivalen_submit" class="btn btn-primary">
                        <span class="indicator-label">Simpan</span>
                        <span class="indicator-progress">Please wait...
                        <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                    </button>
                    <!--end::Button-->
                </div>
                <!--end::Modal footer-->
            <div></div></form>
        </div>
    </div>
</div>
<script type="text/javascript">
"use strict";

var KTDataTables = (function() {
    var e;
    return {
        init: function() {
            e = $("#kt_datatable_detail_nego_rfq_goods").DataTable({
                processing: !0,
                serverSide: !0,
                destroy: !0,
                scrollX: !0,
                dom: "<'row'<'col-sm-6 col-md-6 col-lg-6 d-flex align-items-center'B><'col-sm-6 col-md-6 col-lg-6'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-12 col-md-1'l><'col-sm-12 col-md-3'i><'col-sm-12 col-md-8'p>>",
                // buttons: [
                //     {
                //         text: 'Biaya Lainnya',
                //         className: 'btn btn-sm btn-success',
                //         action: function ( e, dt, node, config ) {
                //             $.ajax({
                //                 type: "POST",
                //                 url: "<?php //echo site_url('rfq/get_other_data') ?>",
                //                 data: { id: $('input[name=id_rfq_other]').val() },
                //                 beforeSend: function() {
                //                     loading.block();
                //                 },
                //                 success: function(response) {
                //                     var obj = jQuery.parseJSON(response);
                //                     if(obj.data.length > 0) {
                //                         if(obj.data.length > 1) {
                //                             // console.log($("div[id^=el_add_]").length);
                //                             for(var i = 0; i < obj.data.length - 1; i++) {
                //                                 Elements.add_row();
                //                             }
                //                         }

                //                         $("div[id^=el_add_]").each( function(key, value) {
                //                             $("#add_price_type_"+(key+1)).val(obj.data[key].kode_biaya+'_'+obj.data[key].deskripsi_biaya).trigger('change');
                //                             $("#add_price_"+(key+1)).maskMoney('mask', parseInt(obj.data[key].jumlah_biaya));
                //                             $("#add_currency_"+(key+1)).val($.trim(obj.data[key].mata_uang)).trigger('change');
                //                         }),
                //                         loading.release(), modal_additional.show();
                //                     } else {
                //                         loading.release(), modal_additional.show();
                //                     }
                //                 },
                //                 error: function() {
                //                     loading.release();
                //                 }
                //             });
                //         }
                //     }
                // ],
                paging: !0,
                ordering: !0,
                searching: !0,
                ajax: {
                    type: "POST",
                    url: "<?php echo site_url('negotiation/det_rfq_goods/' . $this->uri->segment(3)); ?>"
                },
                columns: [
                    {
                        data: 'number',
                        className: 'text-center',
                        sortable: false,
                        searchable: false,
                        orderable: false,
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        data: 'kode_barang',
                        className: 'text-center'
                    },
                    {
                        data: 'deskripsi_barang',
                        className: 'text-center'
                    },
                    {
                        data: 'jumlah_permintaan',
                        className: 'text-center'
                    },
                    {
                        data: 'satuan',
                        className: 'text-center'
                    },
                    {
                        data: 'status',
                        className: 'text-center'
                    },
                    {
                        data: 'actions',
                        className: 'text-center',
                        sortable: false,
                        searchable: false,
                        orderable: false
                    },
                    {
                        data: 'actions_equivalen',
                        className: 'text-center',
                        sortable: false,
                        searchable: false,
                        orderable: false
                    }
                ],
                lengthMenu: [
                    [5, 10, 15, 25, -1],
                    [5, 10, 15, 25, "All"]
                ],
                pageLength: 10,
                order: [1, 'ASC']
            }),
            $("#kt_datatable_detail_nego_rfq_goods tbody").on('click', 'button.rfq_form', function() {
                var data = e.row($(this).parents('tr')).data();
                // console.log($(this));
                var modal_form = $("#kt_modal_det_nego_rfq_goods_form");
                var $input = modal_form.closest('div').find('input.form-control, select.form-select');
                console.log($input);
            }),
            $('#kt_datatable_detail_rfq_goods tbody').on('click', 'button.eqiv_form_1, button.eqiv_form_2, button.eqiv_form_3, button.eqiv_form_4', function() {
                var data = e.row($(this).parents('tr')).data();
            });
        }
    };
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
    $("#kt_daterangepicker_3").daterangepicker({
        singleDatePicker: true,
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format("YYYY"),10)
    }, function(start, end, label) {
        var years = moment().diff(start, "years");
        alert("You are " + years + " years old!");
    });
}));
</script>