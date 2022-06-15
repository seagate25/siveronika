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
                    <th class="min-w-125px text-center">No. RFQ</th>
                    <th class="min-w-125px text-center">Berkas</th>
                    <th class="min-w-80px text-center">Tgl. RFQ</th>
                    <th class="min-w-80px text-center">Tgl. Jatuh Tempo</th>
                    <th class="min-w-80px text-center">Sisa Hari Pengisian</th>
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
                        <a href="<?php echo site_url('negotiation/det_nego_rfq_goods/6200272804');?>" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                            <i class="fas fa-envelope-open-text"></i>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">2</td>
                    <td class="text-center">6300272804</td>
                    <td class="text-center">-</td>
                    <td class="text-center">20.01.2022</td>
                    <td class="text-center">27.01.2022</td>
                    <td class="text-center">6 Hari</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('negotiation/det_nego_rfq_goods/6200272804');?>" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                            <i class="fas fa-envelope-open-text"></i>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">3</td>
                    <td class="text-center">6400272804</td>
                    <td class="text-center">-</td>
                    <td class="text-center">21.01.2022</td>
                    <td class="text-center">28.01.2022</td>
                    <td class="text-center">7 Hari</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('negotiation/det_nego_rfq_goods/6200272804');?>" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                            <i class="fas fa-envelope-open-text"></i>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">4</td>
                    <td class="text-center">6700272804</td>
                    <td class="text-center">-</td>
                    <td class="text-center">25.01.2022</td>
                    <td class="text-center">01.02.2022</td>
                    <td class="text-center">5 Hari</td>
                    <td class="text-center">
                        <a href="<?php echo site_url('negotiation/det_nego_rfq_goods/6200272804');?>" class="btn btn-icon btn-sm btn-success me-2 mb-2">
                            <i class="fas fa-envelope-open-text"></i>
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
            e = $("#kt_datatable_example_1").DataTable();
        }
    };
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
}));
</script>