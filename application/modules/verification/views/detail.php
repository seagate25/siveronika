<style>
    .card-header{
        background-color:#460046 !important;
    }
</style>
<script src="<?php echo base_url(); ?>assets/plugins/custom/jquery-maskMoney/jquery.maskMoney.js"></script>
<div class="card shadow-sm">
    <div class="card-header bg-success">
        <div class="card-toolbar">
            <a href="<?php echo site_url('verification'); ?>" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
                <i class="las la-arrow-left fs-1 text-dark"></i>
            </a>
        </div>
        <h3 class="card-title text-white">Summary Detail</h3>
        <div class="card-toolbar">
            <a href="<?php echo site_url('verification/edit'); ?>" class="btn btn-sm btn-bg-white me-2 mb-2">
                Tambah Belanja
            </a>
        </div>
    </div>
    <div class="card-body">
        <!--begin::Row-->
        <div class="row mb-2">
            <div class="col-lg-6">
                <!--begin::Row-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">No. Verifikasi</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fw-bolder fs-6 text-gray-800"><?=$verif_data->verif_no?></span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
                <!--begin::Input group-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">Bidang</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8 d-flex align-items-center">
                        <span class="fs-6 text-gray-800"><?=$verif_data->bidang_name?></span>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input group-->
            </div>
            <div class="col-lg-6">
                <!--begin::Input group-->
                <div class="row mb-7">
                    
                </div>
                <!--end::Input group-->
            </div>
        </div>
        <!--end::Row-->
        <table id="kt_datatable_verif_detail" class="align-middle table table-row-bordered gy-5">
            <thead>
                <tr class="fw-bold fs-6 text-muted">
                    <th class="min-w-50px text-center">No.</th>
                    <th class="min-w-50px text-center">Tipe</th>
                    <th class="min-w-125px text-center">Nama Belanja</th>
                    <th class="min-w-50px text-center">Periode</th>
                    <th class="min-w-50px text-center">Nilai</th>
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
                e = $("#kt_datatable_verif_detail").DataTable({
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
                        url: "<?php echo site_url('verification/detail/' . $this->uri->segment(3));?>"
                    },
                    scrollX: !1,
                    columns: [
                        { data: 'number', className: 'text-center', searchable: false,
                            render: function (data, type, row, meta) {
                                return meta.row + meta.settings._iDisplayStart + 1;
                            }
                        },
                        { data: 'shop_type', className: 'text-center' },
                        { data: 'shop_name', className: 'text-center' },
                        { data: 'period', className: 'text-center' },
                        { data: 'total', className: 'text-right',
                            render: function (data, type, row, meta) {
                                return 'Rp. ' + data;
                            }
                        },
                        { data: 'actions', className: 'text-center', searchable: false }
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

    var Actions = (function(){
        return {
            btnEdit: function(x, y, z) {
                // $.ajax({
                //     type: "GET",
                //     url: "<?php echo site_url('verification/edit'); ?>",
                //     data: {
                //         verif_id: x,
                //         shop_id: y,
                //         period: z
                //     },
                //     success: function() {
                //         document.location = "<?php echo site_url('verification/edit'); ?>"
                //     }
                // })
                $.post("<?php echo site_url('verification/edit'); ?>", {verif_id: x,shop_id: y,period: z}, function(data) {
                    console.log(data);
                    document.location = "<?php echo site_url('verification/edit'); ?>";
                });
            }
        }
    })();

    KTUtil.onDOMContentLoaded((function() {
        KTDataTables.init();
    }));
</script>