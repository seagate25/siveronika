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