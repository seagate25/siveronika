
<style>
    .card-header{
        background-color:#460046 !important;
    }
</style>
<div class="card shadow-sm">
    <div class="card-header">
        <h3 class="card-title text-white"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <!-- <a href="<?php //echo site_url('verification/add'); ?>" class="btn btn-sm btn-bg-white me-2 mb-2">
                Pengajuan Baru
            </a> -->
        </div>
    </div>
    <div class="card-body p-2">
        <table id="kt_datatable_verif_head" class="align-middle table table-row-bordered gy-5" style="width: 100%;">
            <thead>
                <tr class="fw-bolder fs-6 text-dark">
                    <th class="min-w-50px text-center">No.</th>
                    <th class="min-w-125px text-left">No. Verifikasi</th>
                    <th class="min-w-150px text-left">Branch</th>
                    <th class="min-w-125px text-left">Tgl. Pengajuan</th>
                    <th class="min-w-100px text-center">Jenis Belanja</th>
                    <th class="min-w-200px text-left">Bidang</th>
                    <th class="min-w-150px text-left">Grand Total Belanja</th>
                    <th class="min-w-125px text-left">Status</th>
                    <th class="min-w-80px text-center">Actions</th>
                </tr>
            </thead>
        </table>
    </div>
    <div class="modal fade" tabindex="-1" id="kt_modal_decision" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" style="min-width:990px;">
            <div class="modal-content">
                <div class="modal-header bg-success">
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
            e = $("#kt_datatable_verif_head").DataTable({
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
                    url: "<?php echo site_url('verification');?>"
                },
                scrollX: !0,
                columns: [
                    { data: 'number', className: 'text-center', searchable: false,
                        render: function (data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    { data: 'verif_no', className: 'text-left' },
                    { data: 'branch_name', className: 'text-left' },
                    { data: 'verif_request_date', className: 'text-center' },
                    { data: 'shop_type', className: 'text-center' },
                    { data: 'bidang_name', className: 'text-left' },
                    { data: 'total', className: 'text-right',
                        render: function (data, type, row, meta) {
                            return 'Rp. ' + data;
                        }
                    },
                    { data: 'verif_status', className: 'text-left' },
                    { data: 'actions', className: 'text-left', searchable: false }
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
                d.addEventListener("click", function(e) {
                    e.preventDefault(),
                        g &&
                        g.validate().then(function(e) {
                            var frmData = new FormData(c);
                            frmData.append('id', id);
                            frmData.append('status', 'VERIFIED');
                            "Valid" == e
                                ?
                                (
                                    Swal.fire({
                                        text: "Pastikan data yang Anda isi sudah benar dan dapat dipertanggung jawabkan",
                                        icon: "warning",
                                        showCancelButton: !0,
                                        buttonsStyling: !1,
                                        confirmButtonText: "Ya, Simpan",
                                        cancelButtonText: "Kembali",
                                        customClass: {
                                            confirmButton: "btn btn-primary",
                                            cancelButton: "btn btn-active-light"
                                        },
                                    }).then(function(r) {
                                        r.value ?
                                            (
                                                $.ajax({
                                                    type: 'POST',
                                                    url: c.getAttribute('action'),
                                                    data: frmData,
                                                    processData: false,
                                                    contentType: false,
                                                    beforeSend: function() {
                                                        d.setAttribute("data-kt-indicator", "on"),
                                                            (d.disabled = !0);
                                                    },
                                                    success: function(response) {
                                                        var obj = jQuery.parseJSON(response);
                                                        d.removeAttribute("data-kt-indicator"),(d.disabled = !1);
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
                                                                t.isConfirmed && (obj.code == 0) ? ( KTDataTables.init(), g.resetForm(true), b.hide()) : r.dismiss;
                                                            }
                                                        );
                                                    },
                                                    error: function() {
                                                        d.removeAttribute("data-kt-indicator"),(d.disabled = !1);
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
                                            "cancel" === r.dismiss;
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
                }),
                e.addEventListener("click", function(t) {
                    t.preventDefault(),
                        g &&
                        g.validate().then(function(e) {
                            var frmData = new FormData(c);
                            frmData.append('id', id);
                            frmData.append('status', 'REJECTED');
                            "Valid" == e
                                ?
                                (
                                    Swal.fire({
                                        text: "Pastikan data yang Anda isi sudah benar dan dapat dipertanggung jawabkan",
                                        icon: "warning",
                                        showCancelButton: !0,
                                        buttonsStyling: !1,
                                        confirmButtonText: "Ya, Simpan",
                                        cancelButtonText: "Kembali",
                                        allowOutsideClick: false,
                                        customClass: {
                                            confirmButton: "btn btn-primary",
                                            cancelButton: "btn btn-active-light"
                                        },
                                    }).then(function(r) {
                                        r.value ?
                                            (
                                                $.ajax({
                                                    type: 'POST',
                                                    url: c.getAttribute('action'),
                                                    data: frmData,
                                                    processData: false,
                                                    contentType: false,
                                                    beforeSend: function() {
                                                        d.setAttribute("data-kt-indicator", "on"),
                                                            (d.disabled = !0);
                                                    },
                                                    success: function(response) {
                                                        var obj = jQuery.parseJSON(response);
                                                        d.removeAttribute("data-kt-indicator"),(d.disabled = !1);
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
                                                                t.isConfirmed && (obj.code == 0) ? ( KTDataTables.init(), g.resetForm(true), b.hide()) : r.dismiss;
                                                            }
                                                        );
                                                    },
                                                    error: function() {
                                                        d.removeAttribute("data-kt-indicator"),(d.disabled = !1);
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
                                            "cancel" === r.dismiss;
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
            });
        }
    }
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
    KTModalForm.decision_form();
}));
</script>