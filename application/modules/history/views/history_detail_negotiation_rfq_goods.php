<script src="<?php echo base_url(); ?>assets/plugins/custom/jquery-maskMoney/jquery.maskMoney.js"></script>
<div class="card shadow-sm">
    <div class="card-header bg-success">
        <div class="card-toolbar">
            <a href="<?php echo site_url('history/nego_rfq_goods'); ?>" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
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
        <table id="kt_datatable_example_1" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                    <th class="min-w-50px text-center">No.</th>
                    <th class="min-w-100px text-center">Kode Material</th>
                    <th class="min-w-125px text-center">Nama Material</th>
                    <th class="min-w-50px text-center">Jumlah Permintaan</th>
                    <th class="min-w-50px text-center">Satuan Permintaan</th>
                    <th class="min-w-50px text-center">Status</th>
                    <th class="min-w-50px text-center">Harga Sesuai Permintaan</th>
                    <th class="min-w-150px text-center">Harga Permintaan Ekuivalen</th>
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

            <form id="kt_modal_det_nego_rfq_goods_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
                <!--begin::Modal body-->
                <div class="modal-body py-4 px-lg-17">
                    <!--begin::Scroll-->
                    <div class="scroll-y me-n7 pe-7" id="kt_modal_det_nego_rfq_goods_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_det_nego_rfq_goods_header" data-kt-scroll-wrappers="#kt_modal_det_nego_rfq_goods_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                        <div class="fw-bold">
                            <h4 class="text-gray-900 fw-bolder">Nego RFQ No : 6200272804 | 7013165</h4>
                        </div>
                       
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Kode Material</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="request_total" class="form-control form-control-solid" readonly="true" placeholder="Kode Material">
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
                                <input type="text" name="measurement" class="form-control form-control-solid" readonly="true" placeholder="Nama Material">
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
                                <input type="number" name="available_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Permintaan">
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
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Mata Uang</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)" value="IDR">
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
                            <div class="col-lg-4 fv-row fv-plugins-icon-container">
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
                            <div class="col-lg-4 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control form-control-solid" placeholder="Lama Indent (Hari)" value="25.000">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                            <!--begin::Label-->
                            <label class="col-lg-1 col-form-label required fw-bold fs-6">Per</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-3 fv-row fv-plugins-icon-container">
                                <input type="text" name="indent_day" class="form-control" placeholder="Lama Indent (Hari)" value="KALENG">
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
                    <button type="reset" id="kt_modal_det_nego_rfq_goods_cancel" class="btn btn-light me-3">Tutup</button>
                    <!--end::Button-->
                    <!--begin::Button-->
                    <button type="submit" id="kt_modal_det_nego_rfq_goods_submit" class="btn btn-primary">
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
        var target = document.querySelector("#kt_modal_det_rfq_goods_ekuivalen .modal-content");
        var blockUI = new KTBlockUI(target);
        return {
            init: function() {
                e = $("#kt_datatable_detail_rfq_goods").DataTable({
                        processing: !0,
                        serverSide: !0,
                        destroy: !0,
                        scrollX: !0,
                        dom: "<'row'<'col-sm-12 col-md-12 col-lg-12'f>>" +
                            "<'row'<'col-sm-12'tr>>" +
                            "<'row'<'col-sm-12 col-md-1'l><'col-sm-12 col-md-3'i><'col-sm-12 col-md-8'p>>",
                        paging: !0,
                        ordering: !0,
                        searching: !0,
                        ajax: {
                            type: "POST",
                            url: "<?php echo site_url('history/det_nego_rfq_goods/' . $this->uri->segment(3)); ?>"
                        },
                        columns: [{
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
                    $('#kt_datatable_detail_rfq_goods tbody').on('click', 'button.rfq_form', function() {
                        var data = e.row($(this).parents('tr')).data();
                        $("#kt_modal_det_rfq_goods h4 span#txt_rfq_no").text(data.nomor_rfq);
                        $("#kt_modal_det_rfq_goods h4 span#txt_material_code").text(data.kode_barang);
                        $("input[name=id_rfq]").val('<?php echo $this->uri->segment(3); ?>');
                        $("input[name=unit_price]").maskMoney('mask', data.harga_satuan);
                        $("input[name=material_code]").val(data.kode_barang);
                        $("input[name=material_name]").val(data.deskripsi_barang);
                        $("input[name=request_total]").val(data.jumlah_permintaan);
                        $("input[name=measurement]").val(data.satuan + ' (' + data.deskripsi_satuan + ')');
                        // if($('input[name="convert"]:checked').val() == 0) {
                        //     $("#form_convertion").hide();
                        // } else {
                        //     $("#form_convertion").show();
                        // }

                        // if(data.modified_date != null && data.modified_by != null) {
                        //     $("input[name=currency]").val(data.mata_uang);
                        //     $("input[name=unit_measure]").val(data.per_harga_satuan);
                        //     $('input[name="convert"][value="' + data.konversi + '"]').prop('checked', true);
                        //     if($('input[name="convert"]:checked').val() == 0) {
                        //         $("#form_convertion").hide();
                        //     } else {
                        //         $("#form_convertion").show();
                        //     }
                        //     $('input[name="available"][value="' + data.ketersediaan_barang + '"]').prop('checked', true);
                        //     $("input[name=ed_price]").val(data.masa_berlaku_harga);
                        //     $("input[name=notes]").val(data.keterangan);
                        //     $("input[name=created_by]").val(data.dibuat_oleh);
                        // }

                        // Last Modify (2022-07-04)
                        $("input[name=currency]").val(data.mata_uang);
                        $("input[name=unit_measure]").val(data.per_harga_satuan);
                        $('input[name="convert"][value="' + data.konversi + '"]').prop('checked', true);
                        if ($('input[name="convert"]:checked').val() == 0) {
                            $("#form_convertion").hide();
                        } else {
                            $("#form_convertion").show();
                            $("input[name=convertion_qty]").val(parseInt(data.jumlah_konversi));
                            $("input[name=convertion_measure]").val(data.per_harga_satuan);
                        }
                        $('input[name="available"][value="' + data.ketersediaan_barang + '"]').prop('checked', true);
                        $("input[name=ed_price]").val(data.masa_berlaku_harga);
                        $("textarea[name=notes]").val(data.keterangan);
                        $("input[name=created_by]").val(data.dibuat_oleh);

                        if (data.modified_date != null && data.modified_by != null) {
                            $.ajax({
                                type: "POST",
                                url: "<?php echo site_url('history/get_files'); ?>",
                                data: {
                                    val_1: '<?php echo $this->uri->segment(3); ?>',
                                    val_2: 0
                                },
                                success: function(response) {
                                    var obj = jQuery.parseJSON(response);
                                    var i_file = '';
                                    if (obj.code == 0) {
                                        var uploaded_files = obj.data.length;
                                        if (uploaded_files > 0) {
                                            $.each(obj.data, function(index, value) {
                                                i_file += '<div class="row mb-3">';
                                                i_file += '<div class="col-lg-8" id="row_' + index + '"><input class="form-control form-control-solid" type="text" disabled value="' + value.nama_berkas_asli + '"></div>';
                                                i_file += '<div class="col-lg-2" id="link_' + index + '">';
                                                i_file += '<a href="<?php echo site_url('history/download/'); ?>' + value.nama_berkas + '" class="btn btn-icon btn-sm btn-success me-2"><i class = "fas fa-download"></i></a>';
                                                i_file += '</div>';
                                                i_file += '</div>';
                                            });
                                        } else {
                                            i_file += '<div class="row mb-3">';
                                            i_file += '<div class="col-lg-8" id="row"><input class="form-control form-control-solid" type="text" disabled value="Tidak ada berkas yang diupload"></div>';
                                            i_file += '</div>';
                                        }
                                    } else {
                                        i_file += '<div class="row mb-3">';
                                        i_file += '<div class="col-lg-8" id="row"><input class="form-control form-control-solid" type="text" disabled value="Tidak ada berkas yang diupload"></div>';
                                        i_file += '</div>';
                                    }
                                    $("#input_file").html(i_file);
                                }
                            });
                        }
                    }),
                    $('#kt_datatable_detail_rfq_goods tbody').on('click', 'button.eqiv_form_1, button.eqiv_form_2, button.eqiv_form_3, button.eqiv_form_4', function() {
                        blockUI.release();

                        var data = e.row($(this).parents('tr')).data();
                        var id = $(this).attr('id');
                        var eqiv_id = id.replace('btn_eqiv_', '');

                        $("#kt_modal_det_rfq_goods_ekuivalen h4 span#txt_rfq_no_eqiv").text(data.nomor_rfq);
                        $("#kt_modal_det_rfq_goods_ekuivalen h4 span#txt_material_code_eqiv").text(data.kode_barang);
                        $("#kt_modal_det_rfq_goods_ekuivalen h4 span#txt_seq_eqiv").text(eqiv_id);
                        $("input[name=id_rfq_eqiv]").val('<?php echo $this->uri->segment(3); ?>');
                        $("input[name=id_eqiv]").val(eqiv_id);
                        $("input[name=seq_eqiv]").val(data.urutan_rfq);
                        $("input[name=material_code_eqiv]").val(data.kode_barang);
                        $("input[name=material_name_eqiv]").val(data.deskripsi_barang);
                        $("input[name=request_total_eqiv]").val(data.jumlah_permintaan);
                        $("input[name=measurement_eqiv]").val(data.satuan + ' (' + data.deskripsi_satuan + ')');
                        $("input[name=r_measurement_eqiv]").val(data.satuan);
                        $("input[name=desc_measure_eqiv]").val(data.deskripsi_satuan);

                        $.ajax({
                            type: "POST",
                            url: "<?php echo site_url('history/get_det_rfq_eqiv'); ?>",
                            data: {
                                val_1: '<?php echo $this->uri->segment(3); ?>',
                                val_2: eqiv_id
                            },
                            beforeSend: function() {
                                blockUI.block();
                            },
                            success: function(response) {
                                blockUI.release();
                                var obj = jQuery.parseJSON(response);
                                if (obj.code == 0) {
                                    $("input[name=currency_eqiv]").val(obj.data.mata_uang);
                                    $("input[name=unit_price_eqiv]").maskMoney('mask', parseInt(obj.data.harga_satuan));
                                    $("input[name=unit_measure_eqiv]").val(obj.data.per_harga_satuan);
                                    $('input[name="convert_eqiv"][value="' + obj.data.konversi + '"]').prop('checked', true);
                                    if ($('input[name="convert_eqiv"]:checked').val() == 0) {
                                        $("#form_convertion_eqiv").hide();
                                    } else {
                                        $("#form_convertion_eqiv").show();
                                        $("input[name=convertion_qty_eqiv]").val(parseInt(obj.data.jumlah_konversi));
                                        $("input[name=convertion_measure_eqiv]").val(obj.data.satuan_konversi);
                                    }
                                    $('input[name="available_eqiv"][value="' + obj.data.ketersediaan_barang + '"]').prop('checked', true);
                                    $("input[name=ed_price_eqiv]").val(obj.data.masa_berlaku_harga);
                                    $("textarea[name=notes_eqiv]").val(obj.data.keterangan);
                                    $("input[name=created_by_eqiv]").val(obj.data.dibuat_oleh);
                                    var i_file = '';
                                    if (obj.files.length > 0) {
                                        $.each(obj.files, function(index, value) {
                                            i_file += '<div class="row mb-3">';
                                            i_file += '<div class="col-lg-8" id="row_eqiv_' + index + '"><input class="form-control form-control-solid" type="text" disabled value="' + value.nama_berkas_asli + '"></div>';
                                            i_file += '<div class="col-lg-2" id="link_eqiv_' + index + '">';
                                            i_file += '<a href="<?php echo site_url('history/download/'); ?>' + value.nama_berkas + '" class="btn btn-icon btn-sm btn-success me-2"><i class = "fas fa-download"></i></a>';
                                            i_file += '</div>';
                                            i_file += '</div>';
                                        });
                                    } else {
                                        i_file += '<div class="row mb-3">';
                                        i_file += '<div class="col-lg-8" id="row_eqiv"><input class="form-control form-control-solid" type="text" disabled value="Tidak ada berkas yang diupload"></div>';
                                        i_file += '</div>';
                                    }
                                    $("#input_file_eqiv").html(i_file);
                                }
                            },
                            error: function() {
                                blockUI.release();
                            }
                        });
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