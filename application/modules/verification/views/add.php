<style>
    .card-header{
        background-color:#460046 !important;
    }

    /* .table-condensed thead tr:nth-child(2),
    .table-condensed tbody {
        display: none
    } */
</style>
<script src="<?php echo base_url(); ?>assets/plugins/custom/jquery-maskMoney/jquery.maskMoney.js"></script>
<div class="card shadow-sm">
    <div class="card-header bg-success">
        <div class="card-toolbar">
            <a href="<?php echo site_url('verification'); ?>" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
                <i class="las la-arrow-left fw-bolder fs-1 text-danger"></i>
            </a>
        </div>
        <h3 class="card-title text-white">Pengajuan Verifikasi</h3>
        <div class="card-toolbar">
            <!-- <a href="<?php //echo site_url('verification/add'); ?>" class="btn btn-sm btn-bg-white me-2 mb-2">
                Tambah Belanja
            </a> -->
        </div>
    </div>
    <form id="form_verification_new" class="form fv-plugins-bootstrap5 fv-plugins-framework" method="post" enctype="multipart/form-data" action="<?php echo site_url('verification/save'); ?>">
        <div class="card-body border-top p-9">
            <div class="row">
                <!--Begin::Input Group-->
                <div class="row mb-0">
                    <!--begin::Label-->
                    <label class="col-lg-2 col-form-label required fw-bold fs-6">No. Verifikasi</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-4 fv-row fv-plugins-icon-container">
                        <input type="text" name="m_verification_no" id="m_verification_no" class="form-control form-control-solid" readonly="true" value="<?=$verif_no?>">
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input Group-->
                <div class="separator separator-dashed my-6"></div>
                <!--Begin::Input Group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-2 col-form-label required fw-bold fs-6">Tipe Belanja</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-3 fv-row fv-plugins-icon-container">
                        <select class="form-select form-select-solid" name="m_type" id="m_type">
                            <option></option>
                            <option value="GU">GU</option>
                            <option value="LS">LS</option>
                        </select>
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input Group-->
                <!--Begin::Input Group-->
                <div class="row mb-2">
                    <!--begin::Label-->
                    <label class="col-lg-2 col-form-label required fw-bold fs-6">Bidang</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 fv-row fv-plugins-icon-container">
                        <select class="form-select form-select-solid" name="m_bidang" id="m_bidang">
                            <option></option>
                            <?php
                                foreach($fields as $field) {
                            ?>
                            <option value="<?=$field->bidang_code;?>">[<?=$field->bidang_code;?>] <?=$field->bidang_name;?></option>
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
                    <label class="col-lg-2 col-form-label required fw-bold fs-6">Belanja</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-6 fv-row fv-plugins-icon-container">
                        <select class="form-select form-select-solid" name="m_shop" id="m_shop">
                            <option></option>
                        </select>
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input Group-->
                <!--Begin::Input Group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-2 col-form-label required fw-bold fs-6">Periode</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-2 fv-row fv-plugins-icon-container">
                        <input class="form-control form-control-solid" name="m_period" placeholder="Periode" id="kt_daterangepicker_3" readonly/>
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input Group-->
                <!--Begin::Input Group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-2 col-form-label required fw-bold fs-6">Nilai</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-4 fv-row fv-plugins-icon-container">
                        <input type="text" name="m_price" id="m_price" class="form-control" placeholder="Rp.">
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input Group-->
            </div>
            <div class="row">
                <table id="kt_datatable_document" class="align-middle table table-row-bordered">
                    <thead>
                        <tr class="fw-bold fs-6 text-muted">
                            <th class="min-w-50px text-center">No.</th>
                            <th class="min-w-50px text-center">Tipe</th>
                            <th class="min-w-125px text-left">Detail</th>
                            <th class="min-w-125px text-center">Doc</th>
                            <th class="min-w-80px text-center">Notes</th>
                            <th class="min-w-50px text-center">Aksi</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
        <!--begin::Card footer-->
        <div class="card-footer d-flex justify-content-end py-6 px-9">
            <button type="submit" class="btn btn-primary" id="kt_form_verification_new_submit">Simpan</button>
        </div>
        <!--end::Card footer-->
    </form>
</div>
<script type="text/javascript">
    "use strict";

    var docs = [];

    var KTFormVerifNew = (function () {
        var t, e, i, d;
        return {
            init: function () {
                (t = document.querySelector("#form_verification_new")),
                    (e = document.querySelector("#kt_form_verification_new_submit")),
                    (i = FormValidation.formValidation(t, {
                        fields: {
                            m_type: { validators: { notEmpty: { message: "Tipe Belanja tidak boleh kosong" } } },
                            m_bidang: { validators: { notEmpty: { message: "Bidang tidak boleh kosong" } } },
                            m_shop: { validators: { notEmpty: { message: "Belanja tidak boleh kosong" } } },
                            m_period: { validators: { notEmpty: { message: "Periode tidak boleh kosong" } } },
                            m_price: { validators: { notEmpty: { message: "Nilai tidak boleh kosong" } } },
                        },
                        plugins: { trigger: new FormValidation.plugins.Trigger(), bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row" }) },
                    })),
                    e.addEventListener("click", function (n) {
                        n.preventDefault(),
                            i.validate().then(function (i) {
                                var frmData = new FormData(t);
                                "Valid" == i
                                    ? (
                                        e.setAttribute("data-kt-indicator", "on"),
                                        (e.disabled = !0),
                                        $.ajax({
                                            type: "POST",
                                            url: t.getAttribute('action'),
                                            data: frmData,
                                            processData: false,
                                            contentType: false,
                                            success: function(response) {
                                                var obj = jQuery.parseJSON(response);
                                                if(obj.code == 0) {
                                                    document.location = obj.data;
                                                } else {
                                                    e.removeAttribute("data-kt-indicator"),
                                                    (e.disabled = !1),
                                                    Swal.fire({ 
                                                        text: obj.msg, 
                                                        icon: "error", buttonsStyling: !1, 
                                                        confirmButtonText: "Ok",
                                                        allowOutsideClick: false,
                                                        customClass: { confirmButton: "btn btn-primary" } })
                                                    .then(function (t) {
                                                        t.isConfirmed && ((e.querySelector('[name="username"]').value = ""), (e.querySelector('[name="password"]').value = ""));
                                                    });
                                                }
                                            }
                                        })
                                    )
                                    : Swal.fire({
                                        text: "Sorry, looks like there are some errors detected, please try again.",
                                        icon: "error",
                                        buttonsStyling: !1,
                                        confirmButtonText: "Ok, got it!",
                                        customClass: { confirmButton: "btn btn-primary" },
                                    });
                            });
                    });
            },
        };
    })();

    var Select2 = (function() {
        return {
            init_m_type: function() {
                $("#m_type").select2({
                    placeholder: 'Pilih Tipe Belanja',
                    minimumResultsForSearch: -1
                }),
                $("#m_type").on('select2:select', function(e) {
                    var id  = e.params.data.id;
                    Select2.init_m_shop(id);
                });
            },
            init_m_bidang: function() {
                $("#m_bidang").select2({
                    placeholder: 'Pilih Bidang'
                });
            },
            init_m_shop: function(type) {
                $("#m_shop").select2({
                    placeholder: 'Pilih Belanja',
                    ajax: {
                        url: "<?php echo site_url('verification/get_shop'); ?>",
                        dataType: "json",
                        type: "POST",
                        data: function (params) {

                            var queryParameters = {
                                term: type
                            }
                            return queryParameters;
                        },
                        processResults: function (data) {
                            return {
                                results: $.map(data, function (item) {
                                    return {
                                        text: item.shop_name,
                                        id: item.shop_id
                                    }
                                })
                            };
                        }
                    }
                });
            },
            onselect_m_shop: function() {
                $("#m_shop").on('select2:select', function(e) {
                    var id = e.params.data.id;
                    $.ajax({
                        type: "POST",
                        url: "<?php echo site_url('verification/get_require_docs'); ?>",
                        data: { shop_id: id },
                        success: function(response) {
                            docs = [];
                            var obj = jQuery.parseJSON(response);
                            docs = obj;
                            KTDataTables.init(docs);
                        }
                    })
                });
            }
        }
    })();

    var KTDataTables = (function() {
        var table;
        return {
            init: function(x) {
                table = $("#kt_datatable_document").DataTable({
                    processing:!1, 
                    serverSide:!1,
                    destroy: !0,
                    paging: !0,
                    data: x,
                    columns: [
                        { data: 'shop_sequence', className: 'text-center', sortable: false, searchable: false, orderable: false },
                        { data: 'shop_type', className: 'text-center', sortable: false, searchable: false, orderable: false },
                        { data: 'shop_detail', className: 'text-left', sortable: false, searchable: false, orderable: false },
                        { data: 'doc', className: 'text-center', sortable: false, searchable: false, orderable: false,
                            render: function(data, type, row, meta) {
                                return '<input type="file" name="'+row.shop_id+'_'+row.shop_sequence+'">';
                            }
                        },
                        { data: 'notes', className: 'text-center', sortable: false, searchable: false, orderable: false,
                            render: function (data, type, row, meta) {
                                return '<input type="text" name="notes_'+row.shop_sequence+'">';
                            }
                        },
                        { data: 'action', className: 'text-center', sortable: false, searchable: false, orderable: false,
                            render: function (data, type, row, meta) {
                                return '<a href="" class="text-success fw-bolder">Edit</a>';
                            }
                        },
                    ],
                    lengthMenu: [
                            [5, 10, 15, 25, -1],
                            [5, 10, 15, 25, "All"]
                        ],
                    pageLength: 10
                });
            }
        };
    })();

    var Daterangepicker = (function() {
        return {
            init_m_period: function() {
                moment.locale('id');
                $("#kt_daterangepicker_3").daterangepicker({
                    autoApply: true,
                    singleDatePicker: true,
                    showDropdowns: true,
                    minYear: new Date().getFullYear() - 5,
                    drops: 'down',
                    viewMode: 'months',
                    minViewMode: 'months',
                    maxYear: new Date().getFullYear() + 5,
                    locale: {
                        format: 'MMMM-YYYY',
                        monthNames: [
                            "Januari",
                            "Februari",
                            "Maret",
                            "April",
                            "Mei",
                            "Juni",
                            "Juli",
                            "Agustus",
                            "September",
                            "Oktober",
                            "November",
                            "Desember"
                        ],
                    }
                });
            }
        }
    })();

    var Maskmoney = (function() {
        return {
            init_m_price: function() {
                $("#m_price").maskMoney({
                    thousands: '.',
                    decimal: ',',
                    affixesStay: true,
                    precision: 0,
                    allowZero: !0,
                    prefix: 'Rp. '
                });
            }
        }
    })();

    KTUtil.onDOMContentLoaded((function() {
        KTFormVerifNew.init();
        Select2.init_m_type();
        Select2.init_m_shop();
        Select2.init_m_bidang();
        Select2.onselect_m_shop();
        Daterangepicker.init_m_period();
        Maskmoney.init_m_price();
        KTDataTables.init(docs);
    }));
</script>