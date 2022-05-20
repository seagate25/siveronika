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
                    <th class="min-w-125px text-center">No.</th>
                    <th class="min-w-125px text-center">Kode Barang</th>
                    <th class="min-w-125px text-center">Deskripsi</th>
                    <th class="min-w-125px text-center">Jumlah Permintaan</th>
                    <th class="min-w-125px text-center">Satuan</th>
                    <th class="min-w-125px text-center">Tanggal Konfirmasi</th>
                    <th class="min-w-50px text-center">Status</th>
                    <th class="min-w-50px text-center">Status Harga</th>
                    <th class="min-w-50px text-center">Aksi</th>
                </tr>
            </thead>
            <tbody class="text-gray-600 fw-bold">
                <tr>
                    <td class="text-center">1</td>
                    <td class="text-center">7063463</td>
                    <td class="text-center">STOP KONTAK 6 LUBANG KUNINGAN "UTICON"</td>
                    <td class="text-center">4</td>
                    <td class="text-center">BH</td>
                    <td class="text-center">12 Dec 21</td>
                    <td class="text-center">Belum Konfirmasi</td>
                    <td class="text-center"></td>
                    <td class="text-center">
                        <a href="#" class="btn btn-icon btn-sm btn-success me-2 mb-2">
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