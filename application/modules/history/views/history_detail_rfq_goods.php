<div class="card shadow-sm">
    <div class="card-header">
        <h3 class="card-title"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <button type="button" class="btn btn-sm btn-primary btn-icon me-2 mb-2">
            <i class="las la-sync fs-1"></i>
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
                    <th class="min-w-50px text-center">Status Harga Penawaran</th>
                    <th class="min-w-50px text-center">Harga Penawaran</th>
                    <th class="min-w-50px text-center">Status Harga Ekuivalen</th>
                    <th class="min-w-150px text-center">Harga Ekuivalen</th>
                </tr>
            </thead>
            <tbody class="text-gray-600 fw-bold">
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">7013165</td>
                    <td class="text-center">BAYGON CAIR @1L/KG</td>
                    <td class="text-center">30</td>
                    <td class="text-center">KG</td>
                    <td class="text-center">Sudah Isi</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_det_rfq_goods">
                            <i class="fas fa-envelope-open-text"></i>
                        </button>
                    </td>
                    <td class="text-center">Sudah Isi</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            1
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            2
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            3
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            4
                        </button>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">2</td>
                    <td class="text-center">7013165</td>
                    <td class="text-center">BAYGON CAIR @1L/KG</td>
                    <td class="text-center">30</td>
                    <td class="text-center">KG</td>
                    <td class="text-center">Sudah Isi</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                            <i class="fas fa-envelope-open-text"></i>
                        </button>
                    </td>
                    <td class="text-center">Sudah Isi</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            1
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            2
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            3
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            4
                        </button>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">3</td>
                    <td class="text-center">7013165</td>
                    <td class="text-center">BAYGON CAIR @1L/KG</td>
                    <td class="text-center">30</td>
                    <td class="text-center">KG</td>
                    <td class="text-center">Sudah Isi</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                            <i class="fas fa-envelope-open-text"></i>
                        </button>
                    </td>
                    <td class="text-center">Sudah Isi</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            1
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            2
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            3
                        </button>
                        <button type="button" class="btn btn-icon btn-sm btn-primary me-2 mb-2">
                            4
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="kt_modal_det_rfq_goods" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Pengisian RFQ</h5>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-active-danger ms-2" data-bs-dismiss="modal" aria-label="Close">
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

            <form id="kt_modal_det_rfq_goods_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
                <!--begin::Modal body-->
                <div class="modal-body py-4 px-lg-17">
                    <!--begin::Scroll-->
                    <div class="scroll-y me-n7 pe-7" id="kt_modal_det_rfq_goods_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_det_rfq_goods_header" data-kt-scroll-wrappers="#kt_modal_det_rfq_goods_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                        <div class="fw-bold">
                            <h4 class="text-gray-900 fw-bolder">RFQ No : 6200272804 | 7013165</h4>
                        </div>
                       
                        <!--Begin::Input Group-->
                        <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Kode Material</label>
                            <!--end::Label-->
                            <!--begin::Col-->
                            <div class="col-lg-8 fv-row fv-plugins-icon-container">
                                <input type="number" name="request_total" class="form-control" placeholder="Jumlah Permintaan" value="4">
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
                                <input type="text" name="measurement" class="form-control" placeholder="Satuan" value="BH">
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
                                <input type="number" name="available_total" class="form-control" placeholder="Jumlah Tersedia" value="3">
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
                                <input type="number" name="indent_total" class="form-control form-control-solid" readonly="true" placeholder="Jumlah Indent" value="1">
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
                                <input type="number" name="indent_day" class="form-control" placeholder="Lama Indent (Hari)" value="5">
                            <div class="fv-plugins-message-container invalid-feedback"></div></div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input Group-->
                         <!--Begin::Input Group-->
                         <div class="row mb-6">
                            <!--begin::Label-->
                            <label class="col-lg-4 col-form-label required fw-bold fs-6">Status Harga</label>
                            <!--end::Label-->
                            <!--begin::Col-->
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
            e = $("#kt_datatable_example_1").DataTable();
        }
    };
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
}));
</script>