<div class="card shadow-sm">
    <div class="card-header bg-success">
        <h3 class="card-title text-white"><?php echo $title; ?></h3>
        <div class="card-toolbar">
            <button type="button" class="btn btn-sm btn-icon btn-bg-white me-2 mb-2">
            <i class="las la-sync fs-1 text-success"></i>
            </button>
        </div>
    </div>
    <div class="card-body py-1">
        <table id="kt_datatable_example_1" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                    <th class="min-w-80px text-center">Kode Vendor</th>
                    <th class="min-w-125px text-center">Nama Perusahaan</th>
                    <th class="min-w-80px text-center">Tanggal Registrasi</th>
                    <th class="min-w-250px text-center">Surel</th>
                    <th class="min-w-250px text-center">Alamat</th>
                    <th class="min-w-80px text-center">No. Kantor</th>
                    <th class="min-w-30px text-center">Aksi</th>
                </tr>
            </thead>
            <tbody class="text-gray-600 fw-bold">
                <tr>
                    <td class="text-center">10029</td>
                    <td>MARCON ELEKTRIK</td>
                    <td class="text-center">12 dEC 21</td>
                    <td>esamahkota@yahoo.com</td>
                    <td>Jl. Ir. H. Juanda No. 23A</td>
                    <td class="text-center">0811613995</td>
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
            e = $("#kt_datatable_example_1").DataTable({
                scrollY:        "500px",
                scrollX:        true,
                scrollCollapse: true,
                paging:         true,
                // fixedHeader:    true,
                fixedColumns:   {
                    heightMatch: 'none',
                    leftColumns: 0,
                    rightColumns: 1
                }
            });
        }
    };
})();

KTUtil.onDOMContentLoaded((function() {
    KTDataTables.init();
}));
</script>