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
                    <th class="min-w-80px text-center">No. PO/ Unduh</th>
                    <th class="min-w-50px text-center">Lampiran PO</th>
                    <th class="min-w-50px text-center">Download Template</th>
                    <th class="min-w-50px text-center">Unggah File Batch</th>
                    <th class="min-w-50px text-center">Tanggal Dokumen</th>
                    <th class="min-w-50px text-center">Tanggal Dibuat</th>
                    <th class="min-w-50px text-center">Tanggal Jatuh Tempo</th>
                    <th class="min-w-30px text-center">Aksi</th>
                </tr>
            </thead>
        </table>
    </div>
</div>
<div class="modal fade" tabindex="-1" id="kt_modal_detail_po_goods" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="min-width: 1280px;">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white">Detail PO</h5>

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
            <div class="modal-body py-1 px-lg-4">
                <!--begin::Scroll-->
                <div class="scroll-y me-n7 pe-7" id="kt_modal_detail_po_goods_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_detail_po_goods_header" data-kt-scroll-wrappers="#kt_modal_detail_po_goods_scroll" data-kt-scroll-offset="300px" style="max-height: 144px;">
                    <table id="kt_datatable_example_2" class="align-middle table table-row-bordered gy-5">
                        <thead>
                            <tr class="fw-bold fs-6 text-muted">
                                <th class="min-w-40px text-center">No.</th>
                                <th class="min-w-125px text-center">MR. No</th>
                                <th class="min-w-80px text-center">Item Code</th>
                                <th class="min-w-250px text-center">Description</th>
                                <th class="min-w-40px text-center">Qty</th>
                                <th class="min-w-40px text-center">UoM</th>
                                <th class="min-w-80px text-center">Unit Price</th>
                                <th class="min-w-100px text-center">Amount</th>
                                <th class="min-w-70px text-center">Qty that has been sent</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-600 fw-bold">
                            <tr>
                                <td class="text-center">1</td>
                                <td class="text-center">BB/TK/MR/128/X/21</td>
                                <td class="text-center">7015898</td>
                                <td class="text-center">BALL BEARING 6206 2Z/2C</td>
                                <td class="text-center">0</td>
                                <td class="text-center">BM</td>
                                <td class="text-center">75.000</td>
                                <td class="text-center">450.000</td>
                                <td class="text-center">6</td>
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
                <button type="button" id="kt_modal_detail_po_goods_cancel" data-bs-dismiss="modal" aria-label="Close" class="btn btn-danger me-3">Tutup</button>
                <!--end::Button-->
                <!--begin::Button-->
                <button type="submit" id="kt_modal_detail_po_goods_submit" class="btn btn-primary">
                    <span class="indicator-label">Simpan</span>
                    <span class="indicator-progress">Please wait...
                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                </button>
                <!--end::Button-->
            </div>
            <!--end::Modal footer-->
        </div>
    </div>
</div>
<script type="text/javascript">
"use strict";

var KTDataTables = (function() {
    var e, f;
    return {
        init: function() {
            e = $("#kt_datatable_example_1").DataTable({
                processing:!0, 
                serverSide:!0,
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
                    url: "<?php echo site_url('po_status/po_goods');?>"
                },
                columns: [
                    { data: 'number', className: 'text-center', sortable: false, searchable: false, orderable: false, 
                        render: function (data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    { data: 'nomor_po', className: 'text-center' },
                    { data: 'attachment_po', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'template', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'upload', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'tanggal_document', className: 'text-center' },
                    { data: 'tanggal_dibuat', className: 'text-center' },
                    { data: 'jatuh_tempo', className: 'text-center' },
                    { data: 'actions', className: 'text-center', sortable: false, searchable: false, orderable: false }
                ],
                lengthMenu: [
                        [5, 10, 15, 25, -1],
                        [5, 10, 15, 25, "All"]
                    ],
                pageLength: 10,
                order: [1, 'ASC']
            }),
            f = $("#kt_datatable_example_2").DataTable();
        }
    };
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
}));
</script>