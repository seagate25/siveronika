<div class="card shadow-sm">
    <div class="card-header" style="background-color:#460046 !important;">
        <div class="card-toolbar">
            <a href="<?php echo site_url('verification/detail/'.$this->crypto->encode($verif_data->verif_no)); ?>" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
                <i class="las la-arrow-left fs-1 text-dark"></i>
            </a>
        </div>
        <h3 class="card-title text-white">Checklist</h3>
        <div class="card-toolbar">
            <!-- <a href="<?php //echo site_url('verification/add_item/'.$this->crypto->encode($verif_data->verif_no)); ?>" class="btn btn-sm btn-bg-white me-2 mb-2 <?//=($verif_data->verif_status == 'SUBMITTED') ? 'disabled' : ''?>">
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
                        <span class="fw-bolder fs-6 text-gray-800"><?=$verif_data->verif_no;?></span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Input group-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">Tgl. Pengajuan</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 d-flex align-items-center">
                        <span class="fs-6 text-gray-800"><?=($verif_data->verif_request_date == NULL) ? '- - -' : $verif_data->verif_request_date;?></span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->
            </div>
            <div class="col-lg-6">
                <!--begin::Row-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">Nilai</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fs-6 text-gray-800">Rp. <?=number_format($verif_data->total,0,',','.');?>,-</span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Row-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">Status</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fs-6 text-gray-800"><?=($verif_data->status_verifikasi == 'SUBMITTED') ? '-' : $verif_data->status_verifikasi?></span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
            </div>
        </div>
        <!--end::Row-->
        <div class="row mb-2">
            <div class="col-lg-3">
                <div id="kt_example_js_anchor" class="rounded border p-0 p-lg-5">
                    <!--begin::Scroll-->
                    <!-- <h3 id="kt_example_js_header" class="pb-5">This is a header</h3> -->
                    <div class="scroll pe-5" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_example_js_content" data-kt-scroll-dependencies="#kt_example_js_header, #kt_example_js_footer, #kt_header" data-kt-scroll-offset="100px" style="height: 716px;">
                        <div id="kt_example_js_content">
                        <?php
                            foreach($docs as $doc) {
                        ?>
                            <div class="card card-bordered mb-5">
                                <div class="card-header">
                                    <h3 class="card-title"><?=$doc->shop_type?></h3>
                                    <div class="card-toolbar">
                                    <?php
                                        if($doc->approval_status == 'COMPLETED') {
                                    ?>
                                        <span class="badge badge-success fw-bolder fs-6">V</span>
                                    <?php
                                        } else if($doc->approval_status == 'UNCOMPLETE') {
                                    ?>
                                        <span class="badge badge-danger fw-bolder fs-6">!</span>
                                    <?php
                                        } else {
                                    ?>
                                        <span class="badge badge-warning fw-bolder fs-6">-</span>
                                    <?php
                                        }
                                    ?>
                                    </div>
                                </div>
                                <div class="card-body px-5 py-2">
                                    <p class="mb-2"><?=$doc->shop_name?></p>
                                    <p class="mb-2"><?=$doc->shop_detail?></p>
                                </div>
                                <div class="card-footer d-flex justify-content-center p-3">
                                    <button type="button" class="btn btn-sm btn-primary me-2" onclick="return Actions.preview('<?=$doc->file_id;?>');" id="btn_preview">Preview</button>
                                <?php
                                    if($doc->approval_status !== '-') {
                                ?>
                                    <a href="" class="btn btn-sm btn-primary disabled">Decision</a>
                                <?php
                                    } else {
                                ?>
                                    <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-id="<?=$doc->verif_shop_det_id?>" data-bs-target="#kt_modal_decision" data-bs-backdrop="static" data-bs-keyboard="false" id="btn_submit">Decision</button>
                                <?php
                                    }
                                ?>
                                </div>
                            </div>
                        <?php
                            }
                        ?>
                        </div>
                    </div>
                    <!-- <h3 id="kt_example_js_footer" class="pt-5">This is a footer</h3> -->
                    <!--end::Scroll-->
                </div>
            </div>
            <div class="col-md-12 col-xs-12 col-lg-9" id="img">
                <div class="h-100 embed-responsive embed-responsive-21by9">
                    <iframe id="show_pdf" class="embed-responsive-item w-100 h-100" src="" allowfullscreen></iframe> <!--  class="embed-responsive-item" -->
                </div>
            </div>
        </div>
    </div>
    <!--begin::Card footer-->
    <!-- <div class="card-footer d-flex justify-content-start py-6 px-9">
        <button type="button" class="btn btn-primary me-2" onclick="return Actions.btnDraft(event);" id="btn_draft">Save Draft</button>
        <button type="button" class="btn btn-primary" onclick="return Actions.btnSubmit(event);" id="btn_submit">Submit</button>
    </div> -->
    <!--end::Card footer-->
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

                <form id="kt_modal_decision_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" method="post" action="<?php echo site_url('verification/save_decision'); ?>">
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
                                        t.isConfirmed && (obj.code == 0) ? (g.resetForm(true), b.hide(), location.reload()) : r.dismiss;
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
                                                        t.isConfirmed && (obj.code == 0) ? (g.resetForm(true), b.hide(), location.reload()) : r.dismiss;
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
                });
            }
        }
    })();

    var Actions = (function(){
        return {
            preview: function(name) {
                if(name !== '') {
                    $.ajax({
                        type: "POST",
                        url: "<?php echo site_url('verification/getFile')?>",
                        data: { fName: name },
                        processData: true,
                        success: function(response) {
                            var obj = jQuery.parseJSON(response);
                            if(obj.code == 0) {
                                $('#show_pdf').attr('src', '<?php echo base_url();?>' + obj.data);
                            } else {
                                $('#show_pdf').attr('src', '<?php echo base_url('documents/notFound/No_Preview_image_2.png');?>' + obj.data);
                            }
                        }
                    });
                }
            },
            btnDraft: function(e) {
                $(e.target).attr('data-kt-indicator', 'on').attr('disabled', 'disabled');
                $.ajax({
                    type: "GET",
                    url: "<?php echo site_url('verification/save_draft_verif/'.$this->crypto->encode($verif_data->verif_no)); ?>",
                    success: function(response) {
                        var obj = jQuery.parseJSON(response);
                        if(obj.code == 0) {
                            $(e.target).removeAttr('data-kt-indicator').removeAttr('disabled');
                            Swal.fire({ 
                                text: obj.msg, 
                                buttonsStyling: !1, 
                                confirmButtonText: "Ok",
                                allowOutsideClick: false,
                                customClass: { confirmButton: "btn btn-primary" } 
                            }).then(function (t) {
                                t.isConfirmed && (document.location = "<?php echo site_url('verification/detail/'.$this->crypto->encode($verif_data->verif_no))?>");
                            });
                        } else {
                            $(e.target).removeAttr('data-kt-indicator').removeAttr('disabled');
                            Swal.fire({ 
                                text: obj.msg, 
                                icon: "error",
                                buttonsStyling: !1, 
                                confirmButtonText: "Ok",
                                allowOutsideClick: false,
                                customClass: { confirmButton: "btn btn-primary" } 
                            });
                        }
                    }
                })
            },
            btnSubmit: function(e) {
                $(e.target).attr('data-kt-indicator', 'on').attr('disabled', 'disabled');
                $.ajax({
                    type: "GET",
                    url: "<?php echo site_url('verification/save_submit/'.$this->uri->segment(3)); ?>",
                    success: function(response) {
                        var obj = jQuery.parseJSON(response);
                        if(obj.code == 0) {
                            $(e.target).removeAttr('data-kt-indicator').removeAttr('disabled');
                            Swal.fire({ 
                                text: obj.msg, 
                                buttonsStyling: !1, 
                                confirmButtonText: "Ok",
                                allowOutsideClick: false,
                                customClass: { confirmButton: "btn btn-primary" } 
                            }).then(function (t) {
                                t.isConfirmed && (document.location = '<?php echo site_url("verification")?>');
                            });
                        } else {
                            $(e.target).removeAttr('data-kt-indicator').removeAttr('disabled');
                            Swal.fire({ 
                                text: obj.msg, 
                                icon: "error",
                                buttonsStyling: !1, 
                                confirmButtonText: "Ok",
                                allowOutsideClick: false,
                                customClass: { confirmButton: "btn btn-primary" } 
                            });
                        }
                    }
                })
            }
        }
    })();

    KTUtil.onDOMContentLoaded((function() {
        KTModalForm.decision_form();
    }));
</script>