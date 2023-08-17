<style>
    .card-header{
        background-color:#460046 !important;
    }
</style>
<script src="<?php

use phpDocumentor\Reflection\Types\This;

 echo base_url(); ?>assets/plugins/custom/jquery-maskMoney/jquery.maskMoney.js"></script>
<div class="card shadow-sm">
    <div class="card-header bg-success">
        <div class="card-toolbar">
            <a href="<?php echo site_url('verification'); ?>" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
                <i class="las la-arrow-left fs-1 text-dark"></i>
            </a>
        </div>
        <h3 class="card-title text-white">Summary Belanja Bendahara</h3>
        <div class="card-toolbar">
            <!-- <a href="<?php //echo site_url('verification/add_item/'.$this->crypto->encode($verif_data->verif_no)); ?>" class="btn btn-sm btn-bg-white me-2 mb-2 <?=($verif_data->status_verifikasi == 'SUBMITTED') ? 'disabled' : ''?>">
                Tambah Belanja
            </a> -->
        </div>
    </div>
    <div class="card-body">
        <!--begin::Row-->
        <div class="row mb-2">
            <div class="col-lg-6">
                <!--begin::Row-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">No. Verifikasi</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fw-bolder fs-6 text-gray-800"><?=$verif_data->verif_no?></span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Input group-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">Bidang</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 d-flex align-items-center">
                        <span class="fs-6 text-gray-800"><?=$verif_data->bidang_name?></span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->
                <!--begin::Row-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">Status</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fs-6 text-gray-800" id="txt_status">
                            <?=($verif_data->status_verifikasi == 'UNCOMPLETE' || $verif_data->status_verifikasi == 'ON-PROGRESS' || $verif_data->status_verifikasi == 'COMPLETED') ? '-' : $verif_data->status_bendahara?>
                        </span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
            </div>
            <div class="col-lg-6">
                <!--begin::Input group-->
                <div class="row mb-7">
                    
                </div>
                <!--end::Input group-->
            </div>
        </div>
        <!--end::Row-->
        <table id="kt_datatable_verif_detail" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                    <th class="min-w-50px text-center">No.</th>
                    <th class="min-w-50px text-center">Tipe</th>
                    <th class="min-w-125px text-center">Nama Belanja</th>
                    <th class="min-w-50px text-center">Periode</th>
                    <th class="min-w-50px text-center">Nilai</th>
                    <th class="min-w-50px text-center">Status</th>
                    <th class="min-w-50px text-center">Actions</th>
                </tr>
            </thead>
        </table>
    </div>
    <div class="modal fade" tabindex="-1" id="kt_modal_decision" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" style="min-width:480px;">
            <div class="modal-content">
                <div class="modal-header" style="background-color:#460046 !important;">
                    <h5 class="modal-title text-white">Decision</h5>

                    <!--begin::Close-->
                    <div class="btn btn-icon btn-sm btn-light ms-2" data-kt-decision-modal-action="close" aria-label="Close">
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

                <form id="kt_modal_decision_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" method="post" action="<?php echo site_url('verification/save_decision_treasure'); ?>">
                    <!--begin::Modal body-->
                    <div class="modal-body py-4 px-lg-17">
                        <!--begin::Scroll-->
                        <div class="scroll-y me-n7 pe-7 mt-5" id="kt_modal_decision_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_decision_header" data-kt-scroll-wrappers="#kt_modal_decision_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                            <!--Begin::Input Group-->
                            <div class="row mb-6">
                                <!--begin::Label-->
                                <label class="col-lg-4 col-form-label fw-bold fs-6">Catatan</label>
                                <!--end::Label-->
                                <!--begin::Col-->
                                <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                    <textarea class="form-control" name="notes" placeholder="Notes" rows="5"></textarea>
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
                        <button type="submit" id="kt_modal_decision_submit" class="btn btn-primary">
                            <span class="indicator-label">OK</span>
                            <span class="indicator-progress">Please wait...
                                <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                        </button>
                        <!--end::Button-->
                        <!--begin::Button-->
                        <button type="submit" id="kt_modal_decision_reject" class="btn btn-danger me-3">
                            <span class="indicator-label">Tolak</span>
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
</div>
<script type="text/javascript">
    "use strict";

    var KTDataTables = (function() {
        var e;
        return {
            init: function() {
                e = $("#kt_datatable_verif_detail").DataTable({
                    processing:!0, 
                    serverSide:!0,
                    destroy: !0,
                    paging: !0,
                    ordering: !0,
                    searching: !0,
                    dom: "<'row'<'col-sm-12 col-md-12 col-lg-12'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-12 col-md-1'l><'col-sm-12 col-md-3'i><'col-sm-12 col-md-8'p>>",
                    ajax: {
                        type: "POST",
                        url: "<?php echo site_url('verification/detail/' . $this->uri->segment(3));?>"
                    },
                    scrollX: !1,
                    columns: [
                        { data: 'number', className: 'text-center', searchable: false,
                            render: function (data, type, row, meta) {
                                return meta.row + meta.settings._iDisplayStart + 1;
                            }
                        },
                        { data: 'shop_type', className: 'text-center' },
                        { data: 'shop_name', className: 'text-center' },
                        { data: 'period', className: 'text-center' },
                        { data: 'total', className: 'text-right',
                            render: function (data, type, row, meta) {
                                return 'Rp. ' + data;
                            }
                        },
                        { data: 'vstatus', className: 'text-center' },
                        { data: 'actions', className: 'text-center', searchable: false, sortable: false }
                    ],
                    lengthMenu: [
                            [5, 10, 15, 25, -1],
                            [5, 10, 15, 25, "All"]
                        ],
                    pageLength: 10,
                    order: [1, 'ASC']
                });
            }
        };
    })();

    var KTModalForm = (function() {
        var a, b, c, d, e, f, g, id;
        return {
            decision_form: function() {
                (a = document.querySelector("#kt_modal_decision")) &&
                ((b = new bootstrap.Modal(a)),
                    (c = document.querySelector("#kt_modal_decision_form")),
                    (d = document.getElementById("kt_modal_decision_submit")),
                    (e = document.getElementById("kt_modal_decision_reject")),
                    (f = document.querySelector('[data-kt-decision-modal-action="close"]')),
                    (g = FormValidation.formValidation(c, {
                        fields: {
                            notes: {
                                validators: {
                                    notEmpty: {
                                        message: "Notes tidak boleh kosong"
                                    },
                                    stringLength: {
                                        message: 'Input Min 20 karakter',
                                        min: 20
                                    }
                                }
                            },
                        },
                        plugins: {
                            trigger: new FormValidation.plugins.Trigger(),
                            bootstrap: new FormValidation.plugins.Bootstrap5({
                                rowSelector: ".fv-row",
                                eleInvalidClass: "",
                                eleValidClass: ""
                            })
                        },
                    })),
                    d.addEventListener("click", function(x) {
                        x.preventDefault();
                        var frmData = new FormData(c);
                        frmData.append('id', id);
                        frmData.append('status', 1);
                        frmData.append('no', '<?=$this->crypto->encode($verif_data->verif_no)?>');
                        $.ajax({
                            type: 'POST',
                            url: c.getAttribute('action'),
                            data: frmData,
                            processData: false,
                            contentType: false,
                            beforeSend: function() {
                                d.setAttribute("data-kt-indicator", "on"),
                                (d.disabled = !0), (e.disabled = !0);
                            },
                            success: function(response) {
                                var obj = jQuery.parseJSON(response);
                                d.removeAttribute("data-kt-indicator"),(d.disabled = !1),(e.disabled = !1);
                                Swal.fire({
                                    text: obj.msg,
                                    icon: obj.status,
                                    buttonsStyling: !1,
                                    confirmButtonText: "Tutup",
                                    allowOutsideClick: false,
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                }).then(
                                    function(t) {
                                        t.isConfirmed && (obj.code == 0) ? ( $("#txt_status").text(obj.data), KTDataTables.init(), g.resetForm(true), b.hide()) : r.dismiss;
                                    }
                                );
                            },
                            error: function() {
                                d.removeAttribute("data-kt-indicator"),(d.disabled = !1),(e.disabled = !1);
                                Swal.fire({
                                    text: "Terjadi masalah koneksi",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Tutup",
                                    allowOutsideClick: false,
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                }).then(
                                    function(t) {
                                        t.isConfirmed && r.dismiss;
                                    }
                                );
                            }
                        })
                    }),
                    e.addEventListener("click", function(t) {
                        t.preventDefault(),
                            g &&
                            g.validate().then(function(v) {
                                var frmData = new FormData(c);
                                frmData.append('id', id);
                                frmData.append('status', 0);
                                frmData.append('no', '<?=$this->crypto->encode($verif_data->verif_no)?>')
                                "Valid" == v
                                    ?
                                    (
                                        $.ajax({
                                            type: 'POST',
                                            url: c.getAttribute('action'),
                                            data: frmData,
                                            processData: false,
                                            contentType: false,
                                            beforeSend: function() {
                                                e.setAttribute("data-kt-indicator", "on"),
                                                (e.disabled = !0),(d.disabled = !0);
                                            },
                                            success: function(response) {
                                                var obj = jQuery.parseJSON(response);
                                                e.removeAttribute("data-kt-indicator"),(e.disabled = !1),(d.disabled = !1);
                                                Swal.fire({
                                                    text: obj.msg,
                                                    icon: obj.status,
                                                    buttonsStyling: !1,
                                                    confirmButtonText: "Tutup",
                                                    allowOutsideClick: false,
                                                    customClass: {
                                                        confirmButton: "btn btn-primary"
                                                    }
                                                }).then(
                                                    function(t) {
                                                        t.isConfirmed && (obj.code == 0) ? ( $("#txt_status").text(obj.data), KTDataTables.init(), g.resetForm(true), b.hide()) : r.dismiss;
                                                    }
                                                );
                                            },
                                            error: function() {
                                                e.removeAttribute("data-kt-indicator"),(e.disabled = !1),(d.disabled = !1);
                                                Swal.fire({
                                                    text: "Terjadi masalah koneksi",
                                                    icon: "error",
                                                    buttonsStyling: !1,
                                                    confirmButtonText: "Tutup",
                                                    allowOutsideClick: false,
                                                    customClass: {
                                                        confirmButton: "btn btn-primary"
                                                    }
                                                }).then(
                                                    function(t) {
                                                        t.isConfirmed && r.dismiss;
                                                    }
                                                );
                                            }
                                        })
                                    ) :
                                    Swal.fire({
                                        text: "Silahkan lengkapi data dan pastikan data input sudah benar.",
                                        icon: "error",
                                        buttonsStyling: !1,
                                        confirmButtonText: "Tutup",
                                        allowOutsideClick: false,
                                        customClass: {
                                            confirmButton: "btn btn-primary"
                                        },
                                    });
                            });
                    })),
                f.addEventListener("click", function(t) {
                    g.resetForm(true), b.hide();
                }),
                a.addEventListener('shown.bs.modal', function (e) {
                    id = $(e.relatedTarget).data('bsId');
                    console.log(id);
                });
            }
        }
    })();

    KTUtil.onDOMContentLoaded((function() {
        KTDataTables.init();
        KTModalForm.decision_form();
    }));
</script>