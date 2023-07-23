<style>
    .card-header{
        background-color:#460046 !important;
    }
</style>
<script src="<?php echo base_url(); ?>assets/plugins/custom/jquery-maskMoney/jquery.maskMoney.js"></script>
<div class="card shadow-sm">
    <div class="card-header bg-success">
        <div class="card-toolbar">
            <a href="<?php echo site_url('rfq/rfq_goods'); ?>" class="btn btn-sm btn-bg-white btn-icon me-2 mb-2">
                <i class="las la-arrow-left fs-1 text-success"></i>
            </a>
        </div>
        <h3 class="card-title text-white">Summary Detail</h3>
        <div class="card-toolbar">
            <a href="<?php echo site_url('verification/add'); ?>" class="btn btn-sm btn-bg-white me-2 mb-2">
                Tambah Belanja
            </a>
        </div>
    </div>
    <div class="card-body">
        <!--begin::Row-->
        <div class="row mb-7">
            <div class="col-lg-6">
                <!--begin::Row-->
                <div class="row mb-7">
                    <!--begin::Label-->
                    <label class="col-lg-4 fw-bold text-muted">No. Verifikasi</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-8">
                        <span class="fw-bolder fs-6 text-gray-800">VR2306-001</span>
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
                        <span class="fs-6 text-gray-800">SEKRETARIAT BAPPENDA</span>
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
        <form id="kt_modal_det_rfq_goods_form" class="form fv-plugins-bootstrap5 fv-plugins-framework" method="post" enctype="multipart/form-data" action="<?php echo site_url('rfq/save_rfq'); ?>">
            <div class="row">
                <input type="hidden" name="id_rfq">
                <!--Begin::Input Group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label required fw-bold fs-6">Mata Uang</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-4 fv-row fv-plugins-icon-container">
                        <select class="form-select form-select-solid" name="currency" id="currency" data-control="select2" data-dropdown-parent="#kt_modal_det_rfq_goods" data-placeholder="Pilih Mata Uang">
                            <?php
                            foreach ($currencies as $currency) {
                            ?>
                                <option value="<?php echo $currency->kode_uang; ?>"><?php echo $currency->kode_uang; ?> (<?php echo $currency->deskripsi; ?>)</option>
                            <?php
                            }
                            ?>
                        </select>
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input Group-->
                <!--Begin::Input Group-->
                <div class="row mb-6">
                    <!--begin::Label-->
                    <label class="col-lg-4 col-form-label fw-bold fs-6">Harga Satuan</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-4 fv-row fv-plugins-icon-container">
                        <input type="text" name="unit_price" class="form-control" placeholder="Harga Satuan">
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                    <!--begin::Label-->
                    <label class="col-lg-1 col-form-label required fw-bold fs-6">Per</label>
                    <!--end::Label-->
                    <!--begin::Col-->
                    <div class="col-lg-3 fv-row fv-plugins-icon-container">
                        <select class="form-select form-select-solid" disabled name="unit_measure" id="unit_measure" data-control="select2" data-dropdown-parent="#kt_modal_det_rfq_goods" data-placeholder="Pilih Satuan">
                            <?php
                            foreach ($UoMs as $UoM) {
                            ?>
                                <option value="<?php echo $UoM->satuan; ?>"><?php echo $UoM->satuan; ?> (<?php echo $UoM->deskripsi_satuan; ?>)</option>
                            <?php
                            }
                            ?>
                        </select>
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Input Group-->
            </div>
            <!--begin::Modal footer-->
            <div class="row">
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
            <div></div>
        </form>
    </div>
</div>
<script type="text/javascript">
    "use strict";

    KTUtil.onDOMContentLoaded((function() {
        
    }));
</script>