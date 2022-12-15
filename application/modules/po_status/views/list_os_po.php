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
                    <th class="min-w-50px text-center">Tanggal Terima</th>
                    <th class="min-w-50px text-center">Tanggal Jatuh Tempo</th>
                    <!-- <th class="min-w-30px text-center">Aksi</th> -->
                </tr>
            </thead>
        </table>
    </div>
</div>
<script type="text/javascript">
"use strict";

var json_data;

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
                    { data: 'po_no', className: 'text-center' },
                    { data: 'attachment_po', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'template', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'upload', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'tanggal_document', className: 'text-center' },
                    { data: 'tanggal_dibuat', className: 'text-center' },
                    { data: 'jatuh_tempo', className: 'text-center' }
                    // ,{ data: 'actions', className: 'text-center', sortable: false, searchable: false, orderable: false }
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

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
}));
</script>