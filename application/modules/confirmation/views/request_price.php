<script src="<?php echo base_url(); ?>assets/plugins/custom/jquery-maskMoney/jquery.maskMoney.js"></script>
<div class="card shadow-sm">
    <div class="card-header bg-success">
        <h3 class="card-title text-white"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <button type="button" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2" onclick="return KTDataTables.init();">
            <i class="las la-sync fs-1 text-success"></i>
            </button>
        </div>
    </div>
    <div class="card-body py-1">
        <table id="kt_datatable_request_price" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                <th class="min-w-30px text-center">No.</th>
                <th class="min-w-80px text-center">Kode Barang</th>
                <th class="min-w-200px text-center">Deskripsi</th>
                <th class="min-w-80px text-center">Jumlah</th>
                <th class="min-w-50px text-center">Satuan</th>
                <th class="min-w-80px text-center">Tgl. Permintaan</th>
                <th class="min-w-100px text-center">Status</th>
                <th class="min-w-80px text-center">Status Harga</th>
                <th class="min-w-50px text-center">Aksi</th>
                </tr>
            </thead>
            <!-- <tbody class="text-gray-600 fw-bold">
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">7063463</td>
                    <td class="text-center">STOP KONTAK 6 LUBANG KUNINGAN "UTICON"</td>
                    <td class="text-center">4</td>
                    <td class="text-center">BH</td>
                    <td class="text-center">12 Dec 21</td>
                    <td class="text-center">Belum Konfirmasi</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_confirmation">
                            <i class="fas fa-envelope-open-text"></i>
                        </button>
                    </td>
                </tr>
            </tbody> -->
        </table>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="kt_modal_confirmation" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white">Permintaan Harga</h5>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-danger ms-2" data-kt-confirmation-modal-action="close" aria-label="Close">
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

            <form id="kt_modal_confirmation_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
                <!--begin::Modal body-->
                <input type="hidden" name="id">
                <div class="modal-body py-4 px-lg-17">
                    <!--begin::Scroll-->
                    <div class="scroll-y me-n7 pe-7" id="kt_modal_confirmation_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_confirmation_header" data-kt-scroll-wrappers="#kt_modal_confirmation_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                        <div class="fw-bold">
                            <h4 class="text-gray-900 fw-bolder">Data Permintaan</h4>
                        </div>
                        <!--begin::Notice-->
                        <div class="notice bg-light-warning rounded border-warning border border-dashed mb-10 p-6">
                            <!--begin::Icon-->
                            <!--begin::Svg Icon | path: icons/duotone/Code/Warning-1-circle.svg-->
                            <!-- <span class="svg-icon svg-icon-2tx svg-icon-warning me-4">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                                    <rect fill="#000000" x="11" y="7" width="2" height="8" rx="1"></rect>
                                    <rect fill="#000000" x="11" y="16" width="2" height="2" rx="1"></rect>
                                </svg>
                            </span> -->
                            <!--end::Svg Icon-->
                            <!--end::Icon-->
                            <!--begin::Wrapper-->
                            <div class="d-flex flex-row mb-4">
                                <!--begin::Content-->
                                <div class="fw-bold">
                                    <!-- <h4 class="text-gray-900 fw-bolder">Please Note!</h4> -->
                                    <div class="fs-6 text-gray-700">
                                        Permintaan ke vendor dengan harga
                                    </div>
                                </div>
                                <!--end::Content-->
                            </div>
                            <!--end::Wrapper-->
                            <!--Begin::Input Group-->
                            <div class="d-flex flex-row mb-6">
                                <!--begin::Label-->
                                <label class="col-lg-4 col-form-label required fw-bold fs-6">Harga</label>
                                <!--end::Label-->
                                <!--begin::Col-->
                                <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                    <input type="text" name="confirmation_price" class="form-control"  placeholder="Harga">
                                <div class="fv-plugins-message-container invalid-feedback"></div></div>
                                <!--end::Col-->
                            </div>
                            <!--end::Input Group-->
                            <!--Begin::Input Group-->
                            <div class="d-flex flex-row mb-6">
                                <!--begin::Label-->
                                <label class="col-lg-4 col-form-label required fw-bold fs-6">Mata Uang</label>
                                <!--end::Label-->
                                <!--begin::Col-->
                                <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                    <input type="text" name="confirmation_currency" class="form-control" placeholder="Mata Uang">
                                <div class="fv-plugins-message-container invalid-feedback"></div></div>
                                <!--end::Col-->
                            </div>
                            <!--end::Input Group-->
                        </div>
                        <!--end::Notice-->
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Jumlah Permintaan</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="number" name="request_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Permintaan" min="1">
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
                                <input type="text" name="measurement" class="form-control form-control-solid" readonly="true" placeholder="Satuan">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Jumlah Tersedia</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="number" name="available_total" class="form-control" placeholder="Jumlah Tersedia" min="0">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Jumlah Indent</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="number" name="indent_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Indent" min="0">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Lama Indent (Hari)</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="number" name="indent_day" class="form-control" placeholder="Lama Indent (Hari)" min="0">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!-- <div class="row mb-6">
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Status Harga</label>
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <select class="form-select form-select-solid" data-control="select2" data-placeholder="Pilih Status" data-hide-search="true">
                                    <option></option>
                                    <option value="1">Option 1</option>
                                    <option value="2">Option 2</option>
                                    <option value="3">Option 3</option>
                                    <option value="4">Option 4</option>
                                    <option value="5">Option 5</option>
                                </select>
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                        </div> -->
                    </div>
                    <!--end::Scroll-->
                </div>
                <!--end::Modal body-->
                <!--begin::Modal footer-->
                <div class="modal-footer flex-center">
                    <!--begin::Button-->
                    <button type="submit" id="kt_modal_confirmation_submit" class="btn btn-primary">
                        <span class="indicator-label">Simpan</span>
                        <span class="indicator-progress">Please wait...
                        <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                    </button>
                    <!--end::Button-->
                    <!--begin::Button-->
                    <button type="reset" id="kt_modal_confirmation_cancel" class="btn btn-danger me-3">Tutup</button>
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
            e = $("#kt_datatable_request_price").DataTable({
                processing:!0, 
                serverSide:!0,
                destroy: !0,
                // responsive: !0,
                // scrollY: "500px",
                scrollX: !0,
                // scrollCollapse: !0,
                dom: "<'row'<'col-sm-12 col-md-12 col-lg-12'f>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-12 col-md-1'l><'col-sm-12 col-md-3'i><'col-sm-12 col-md-8'p>>",
                // fixedHeader:    true,
                // fixedColumns:   {
                //     heightMatch: 'none',
                //     leftColumns: 1,
                //     rightColumns: 0
                // },
                paging: !0,
                ordering: !0,
                searching: !0,
                ajax: {
                    type: "POST",
                    url: "<?php echo site_url('confirmation/req_price');?>"
                },
                columns: [
                    { data: 'number', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'kode_material', className: 'text-center' },
                    { data: 'deskripsi'},
                    { data: 'jumlah' },
                    { data: 'satuan' },
                    { data: 'tanggal_kirim', className: 'text-center' },
                    { data: 'status' },
                    { data: 'status_harga' },
                    { data: 'actions', className: 'text-center', sortable: false, searchable: false, orderable: false }
                ],
                lengthMenu: [
                        [10, 15, 25, -1],
                        [10, 15, 25, "All"]
                    ],
                pageLength: 10,
                order: [1, 'ASC']
            }),
            $('#kt_datatable_request_price tbody').on('click', 'button', function () {
                var data = e.row($(this).parents('tr')).data();
                $("input[name=id]").val(data.kode_konfirmasi);
                $("input[name=confirmation_price]").maskMoney('mask', data.harga);
                // $("input[name=confirmation_price]").val(data.harga);
                $("input[name=confirmation_currency]").val(data.mata_uang);
                $("input[name=request_total]").val(data.jumlah);
                $("input[name=measurement]").val(data.satuan);
            });
        }
    };
})();


var KTModalConfirmationPrice = (function () {
    var t, e, n, o, i, r, z;
    return {
        init: function () {
            (r = document.querySelector("#kt_modal_confirmation")) &&
                ((i = new bootstrap.Modal(r)),
                (o = document.querySelector("#kt_modal_confirmation_form")),
                (t = document.getElementById("kt_modal_confirmation_submit")),
                (e = document.getElementById("kt_modal_confirmation_cancel")),
                (z = document.querySelector('[data-kt-confirmation-modal-action="close"]')),
                // $(o.querySelector('[name="category"]')).on("change", function () {
                //     n.revalidateField("category");
                // }),
                (n = FormValidation.formValidation(o, {
                    fields: {
                        confirmation_price: { validators: { notEmpty: { message: "Harga tidak boleh kosong" } } },
                        confirmation_currency: { validators: { notEmpty: { message: "Mata Uang tidak boleh kosong" } } },
                        request_total: { validators: { notEmpty: { message: "Jumlah permintaan tidak boleh kosong" } } },
                        measurement: { validators: { notEmpty: { message: "Satuan tidak boleh kosong" } } },
                        available_total: { validators: { notEmpty: { message: "Jumlah tersedia tidak boleh kosong" } } },
                        indent_total: { validators: { notEmpty: { message: "Jumlah indent tidak boleh kosong" } } },
                        indent_day: { validators: { notEmpty: { message: "Lama indent tidak boleh kosong" } } },
                    },
                    plugins: { trigger: new FormValidation.plugins.Trigger(), bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row", eleInvalidClass: "", eleValidClass: "" }) },
                })),
                t.addEventListener("click", function (e) {
                    e.preventDefault(),
                        n &&
                            n.validate().then(function (e) {
                                console.log("validated!"),
                                    "Valid" == e
                                        ? (
                                            Swal.fire({
                                                text: "Pastikan data yang Anda isi sudah benar dan dapat dipertanggung jawabkan",
                                                icon: "warning",
                                                showCancelButton: !0,
                                                buttonsStyling: !1,
                                                confirmButtonText: "Ya, Simpan",
                                                cancelButtonText: "Kembali",
                                                customClass: { confirmButton: "btn btn-primary", cancelButton: "btn btn-active-light" },
                                            }).then(function (r) {
                                                r.value
                                                    ? 
                                                    (
                                                        $.ajax({
                                                            type: 'POST',
                                                            url: '<?php echo site_url("confirmation/save_req_price"); ?>',
                                                            data: Object.fromEntries(new FormData(o).entries()),
                                                            beforeSend: function() {
                                                                t.setAttribute("data-kt-indicator", "on"),
                                                                (t.disabled = !0);
                                                            },
                                                            success: function(response) {
                                                                var obj = jQuery.parseJSON(response);
                                                                t.removeAttribute("data-kt-indicator"),
                                                                (t.disabled = !1);
                                                                Swal.fire({ 
                                                                    text: obj.msg, 
                                                                    icon: obj.status, 
                                                                    buttonsStyling: !1, 
                                                                    confirmButtonText: "Tutup", 
                                                                    customClass: { confirmButton: "btn btn-primary" } }).then(
                                                                    function (t) {
                                                                        t.isConfirmed && (obj.code == 0) ? (KTDataTables.init(),i.hide()) : r.dismiss;
                                                                    }
                                                                );
                                                            },
                                                            error: function() {
                                                                t.removeAttribute("data-kt-indicator"),
                                                                (t.disabled = !1);
                                                                Swal.fire({ 
                                                                    text: "Terjadi masalah koneksi", 
                                                                    icon: "error", 
                                                                    buttonsStyling: !1, 
                                                                    confirmButtonText: "Tutup", 
                                                                    customClass: { confirmButton: "btn btn-primary" } }).then(
                                                                    function (t) {
                                                                        t.isConfirmed && r.dismiss;
                                                                    }
                                                                );
                                                            }
                                                        })
                                                    )
                                                    : "cancel" === r.dismiss;
                                            })
                                          )
                                        : Swal.fire({
                                              text: "Maaf, masih ada field yang kosong, silahkan diisi.",
                                              icon: "error",
                                              buttonsStyling: !1,
                                              confirmButtonText: "Tutup",
                                              customClass: { confirmButton: "btn btn-primary" },
                                          });
                            });
                }),
                e.addEventListener("click", function (t) {
                    o.reset(), i.hide()
                })),
                z.addEventListener("click", function (t) {
                    o.reset(), i.hide()
                });
        },
    };
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
    KTModalConfirmationPrice.init();
    $("input[name=confirmation_price]").maskMoney({ thousands:'.', decimal:',', affixesStay: false, precision: 0});
    $("input[name=available_total]").on('keyup', function() {
        var request_total   = $("input[name=request_total]").val();
        var indent_total    = parseInt(request_total) - parseInt(this.value);
        if(indent_total < 0) {
            indent_total    = 0;
        } else {
            indent_total    = indent_total;
        }

        if(indent_total == 0) {
            $("input[name=indent_day]").attr('readonly', true).addClass('form-control-solid').val(0);
        } else {
            $("input[name=indent_day]").attr('readonly', false).removeClass('form-control-solid');
        }
        $("input[name=indent_total]").val(indent_total);
    });
    // $('#kt_modal_confirmation').on('shown.bs.modal', function () {
    //     $('input[name=confirmation_price]').trigger('focus');
    // });
}));
</script>