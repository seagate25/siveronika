
<style>
    .card-header{
        background-color:#460046 !important;
    }
</style>
<div class="card shadow-sm">
    <div class="card-header">
        <h3 class="card-title text-white"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <!-- <button type="button" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2" onclick="return KTDataTables.init();">
                <i class="las la-sync fs-1 text-success"></i>
            </button> -->
        </div>
    </div>
    <div class="card-body p-2">
        <table id="kt_datatable_rfq_head" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                    <th class="min-w-50px text-center">No.</th>
                    <th class="min-w-125px text-left">No. Verifikasi</th>
                    <th class="min-w-150px text-left">Branch</th>
                    <th class="min-w-125px text-left">Tgl. Pengajuan</th>
                    <th class="min-w-50px text-center">Jenis Belanja</th>
                    <th class="min-w-200px text-left">Bidang</th>
                    <th class="min-w-125px text-right">Grand Total Belanja</th>
                    <th class="min-w-125px text-left">Status</th>
                    <th class="min-w-50px text-center" colspan="3">Decision</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-left">VR2306-001</td>
                    <td class="text-left">BR001 - UPT Cigudeg</td>
                    <td class="text-left">10-Juni-2023</td>
                    <td class="text-center">GU</td>
                    <td class="text-left">[0001] Sekretariat BAPPENDA</td>
                    <td class="text-right">Rp. 35,000,000</td>
                    <td class="text-left">COMPLETED</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            OK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-danger">
                            TOLAK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            Detail
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">2</td>
                    <td class="text-left">VR2305-001</td>
                    <td class="text-left">BR002 - UPT Ciomas</td>
                    <td class="text-left">13-Mei-2023</td>
                    <td class="text-center">GU</td>
                    <td class="text-left">[0001] Sekretariat BAPPENDA</td>
                    <td class="text-right">Rp. 50,000,000</td>
                    <td class="text-left">UN-COMPLETE</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            OK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-danger">
                            TOLAK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            Detail
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">3</td>
                    <td class="text-left">VR2306-002</td>
                    <td class="text-left">BR003 - UPT Parung</td>
                    <td class="text-left">28-Juni-2023</td>
                    <td class="text-center">GU</td>
                    <td class="text-left">[0001] Sekretariat BAPPENDA</td>
                    <td class="text-right">Rp. 15,000,000</td>
                    <td class="text-left">ON-PROGRESS</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            OK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-danger">
                            TOLAK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            Detail
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">4</td>
                    <td class="text-left">VR2307-001</td>
                    <td class="text-left">BR004 - UPT Cibinong</td>
                    <td class="text-left">02-Juli-2023</td>
                    <td class="text-center">GU</td>
                    <td class="text-left">[0001] Sekretariat BAPPENDA</td>
                    <td class="text-right">Rp. 6,500,000</td>
                    <td class="text-left">SUBMITED</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            OK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-danger">
                            TOLAK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            Detail
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">5</td>
                    <td class="text-left">VR2306-001</td>
                    <td class="text-left">BR001 - UPT Cigudeg</td>
                    <td class="text-left">10-Juni-2023</td>
                    <td class="text-center">GU</td>
                    <td class="text-left">[0001] Sekretariat BAPPENDA</td>
                    <td class="text-right">Rp. 35,000,000</td>
                    <td class="text-left">COMPLETED</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            OK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-danger">
                            TOLAK
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="<?php echo site_url('verification/detail');?>" class="text-success">
                            Detail
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<script type="text/javascript">
"use strict";

var KTDataTables = (function() {
    var e;
    return {
        init: function() {
            e = $("#kt_datatable_rfq_head").DataTable({
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
                    url: "<?php echo site_url('rfq/rfq_goods');?>"
                },
                columns: [
                    { data: 'number', className: 'text-center', sortable: false, searchable: false, orderable: false, 
                        render: function (data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    { data: 'nomor_rfq', className: 'text-center' },
                    { data: 'berkas', className: 'text-center', sortable: false, searchable: false, orderable: false },
                    { data: 'tanggal_rfq', className: 'text-center' },
                    { data: 'tanggal_jatuh_tempo', className: 'text-center' },
                    { data: 'sisa_hari', className: 'text-center' },
                    { data: 'actions', className: 'text-center', sortable: false, searchable: false, orderable: false }
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
    // KTDataTables.init();
}));
</script>