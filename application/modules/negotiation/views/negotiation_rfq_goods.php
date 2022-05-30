<div class="card shadow-sm">
    <div class="card-header bg-success">
        <h3 class="card-title text-white"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <button type="button" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
            <i class="las la-sync fs-1"></i>
            </button>
        </div>
    </div>
    <div class="card-body">
        <table id="kt_datatable_example_1" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                    <th class="min-w-50px text-center">No.</th>
                    <th class="min-w-80px text-center">No. RFQ</th>
                    <th class="min-w-250px text-center">Berkas</th>
                    <th class="min-w-50px text-center">Tanggal RFQ</th>
                    <th class="min-w-50px text-center">Tanggal Jatuh Tempo</th>
                    <th class="min-w-50px text-center">Sisa Hari Pengisian</th>
                    <th class="min-w-50px text-center">Aksi</th>
                </tr>
            </thead>
            <tbody class="text-gray-600 fw-bold">
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">6200272804</td>
                    <td class="text-center">-</td>
                    <td class="text-center">19.01.2022</td>
                    <td class="text-center">26.01.2022</td>
                    <td class="text-center">7 Hari</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_detail_nego_rfq_goods">
                            <i class="fas fa-envelope-open-text"></i>
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="kt_modal_detail_nego_rfq_goods" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="min-width: 760px;">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white">Detail Negosiasi</h5>

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

            <!--begin::Modal body-->
            <div class="modal-body py-4 px-lg-17">
                <!--begin::Scroll-->
                <div class="scroll-y me-n7 pe-7" id="kt_modal_detail_nego_rfq_goods_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_detail_nego_rfq_goods_header" data-kt-scroll-wrappers="#kt_modal_detail_nego_rfq_goods_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                    <table id="kt_datatable_example_2" class="align-middle table table-row-bordered gy-5">
                        <thead>
                            <tr class="fw-bold fs-6 text-muted">
                                <th class="min-w-50px text-center">No.</th>
                                <th class="min-w-80px text-center">Kode Material</th>
                                <th class="min-w-250px text-center">Deskripsi</th>
                                <th class="min-w-50px text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-600 fw-bold">
                            <tr>
                                <td class="text-center">1</td>
                                <td class="text-center">7058119</td>
                                <td class="text-center">PUPUK UREA @50 KG/ZAK</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_detail_item_nego_rfq_goods">
                                        <i class="fas fa-envelope-open-text"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">2</td>
                                <td class="text-center">7058119</td>
                                <td class="text-center">PUPUK UREA @50 KG/ZAK</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_detail_item_nego_rfq_goods">
                                        <i class="fas fa-envelope-open-text"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">3</td>
                                <td class="text-center">7058119</td>
                                <td class="text-center">PUPUK UREA @50 KG/ZAK</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2" data-bs-toggle="modal" data-bs-target="#kt_modal_detail_item_nego_rfq_goods">
                                        <i class="fas fa-envelope-open-text"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--end::Scroll-->
            </div>
            <!--end::Modal body-->
            <!--begin::Modal footer-->
            <div class="modal-footer flex-center">
                <!--begin::Button-->
                <button type="button" id="kt_modal_detail_nego_rfq_goods_cancel" data-bs-dismiss="modal" aria-label="Close" class="btn btn-danger me-3">Tutup</button>
                <!--end::Button-->
                <!--begin::Button-->
                <!-- <button type="submit" id="kt_modal_detail_nego_rfq_goods_submit" class="btn btn-primary">
                    <span class="indicator-label">Simpan</span>
                    <span class="indicator-progress">Please wait...
                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                </button> -->
                <!--end::Button-->
            </div>
            <!--end::Modal footer-->
        </div>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="kt_modal_detail_item_nego_rfq_goods" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="min-width: 990px;">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white">Detail Item</h5>

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

            <!--begin::Modal body-->
            <div class="modal-body py-4 px-lg-17">
                <!--begin::Scroll-->
                <div class="scroll-y me-n7 pe-7" id="kt_modal_detail_item_nego_rfq_goods_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_detail_rfq_goods_header" data-kt-scroll-wrappers="#kt_modal_detail_rfq_goods_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                    <table id="kt_datatable_example_3" class="align-middle table table-row-bordered gy-5">
                        <thead>
                            <tr class="fw-bold fs-6 text-muted">
                                <th class="min-w-50px text-center">No.</th>
                                <th class="min-w-100px text-center">Item</th>
                                <th class="min-w-125px text-center">Merk</th>
                                <th class="min-w-125px text-center">Harga</th>
                                <th class="min-w-50px text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-600 fw-bold">
                            <tr>
                                <td class="text-center">1</td>
                                <td class="text-center">Ekuivalen 1</td>
                                <td class="text-center">Baygon</td>
                                <td class="text-center">Rp. XX.XXX</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                                        <i class="fas fa-envelope-open-text"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">2</td>
                                <td class="text-center">Ekuvalen 2</td>
                                <td class="text-center">HIT</td>
                                <td class="text-center">Rp. XX.XXX</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                                        <i class="fas fa-envelope-open-text"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">3</td>
                                <td class="text-center">Ekuvalen 3</td>
                                <td class="text-center">Kigkong</td>
                                <td class="text-center">Rp. XX.XXX</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                                        <i class="fas fa-envelope-open-text"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--end::Scroll-->
            </div>
            <!--end::Modal body-->
            <!--begin::Modal footer-->
            <div class="modal-footer flex-center">
                <!--begin::Button-->
                <button type="button" id="kt_modal_detail_item_rfq_goods_cancel" data-bs-dismiss="modal" aria-label="Close" class="btn btn-danger me-3">Tutup</button>
                <!--end::Button-->
                <!--begin::Button-->
                <!-- <button type="submit" id="kt_modal_detail_rfq_goods_submit" class="btn btn-primary">
                    <span class="indicator-label">Simpan</span>
                    <span class="indicator-progress">Please wait...
                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                </button> -->
                <!--end::Button-->
            </div>
            <!--end::Modal footer-->
        </div>
    </div>
</div>
<script type="text/javascript">
"use strict";

var KTDataTables = (function() {
    var e, f, g;
    return {
        init: function() {
            e = $("#kt_datatable_example_1").DataTable(),
            f = $("#kt_datatable_example_2").DataTable(),
            g = $("#kt_datatable_example_3").DataTable();
        }
    };
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
}));
</script>