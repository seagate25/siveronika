
<style>
    .card-header{
        background-color:#460046 !important;
    }
</style>
<div class="card shadow-sm">
    <div class="card-header">
        <h3 class="card-title text-white"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <a href="<?php echo site_url('verification/add'); ?>" class="btn btn-sm btn-bg-white me-2 mb-2">
                Pengajuan Baru
            </a>
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
                    <th class="min-w-125px text-left">Status Verifikasi</th>
                    <th class="min-w-125px text-left">Status Bendahara</th>
                    <th class="min-w-50px text-center">Actions</th>
                </tr>
            </thead>
        </table>
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
                    { data: 'status_verifikasi', className: 'text-left' },
                    { data: 'status_bendahara', className: 'text-left' },
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

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
}));
</script>