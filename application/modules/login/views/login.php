<div class="w-lg-500px bg-body rounded shadow-sm py-6 px-10 mx-auto">
    <!--begin::Form-->
    <form class="form w-100" novalidate="novalidate" id="kt_sign_in_form" action="<?php echo site_url('login/do_login'); ?>">
        <!--begin::Heading-->
        <div class="text-center mb-2">
            <!--begin::Title-->
            <h1 class="text-dark mb-1">Sistem Baragud</h1>
            <!--end::Title-->
            <!--begin::Link-->
            <div class="text-gray-400 fw-bold fs-4">Proses Pengadaan Barang & Jasa Yang Cepat, Akurat, & Fair
                <!-- <a href="../../demo1/dist/authentication/flows/basic/sign-up.html" class="link-primary fw-bolder">Create an Account</a> -->
            </div>
            <!--end::Link-->
        </div>
        <!--begin::Heading-->
        <!--begin::Input group-->
        <div class="fv-row mb-10">
            <!--begin::Label-->
            <label class="form-label fs-6 fw-bolder text-dark">Username</label>
            <!--end::Label-->
            <!--begin::Input-->
            <input class="form-control form-control-lg form-control-solid" type="text" name="username" id="username" autocomplete="off" />
            <!--end::Input-->
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class="fv-row mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-stack mb-2">
                <!--begin::Label-->
                <label class="form-label fw-bolder text-dark fs-6 mb-0">Password</label>
                <!--end::Label-->
                <!--begin::Link-->
                <a href="<?php echo site_url('login/forgot'); ?>" class="link-danger fs-6 fw-bolder">Forgot Password ?</a>
                <!--end::Link-->
            </div>
            <!--end::Wrapper-->
            <!--begin::Input-->
            <input class="form-control form-control-lg form-control-solid" type="password" name="password" id="password" autocomplete="off" />
            <!--end::Input-->
        </div>
        <!--end::Input group-->
        <!--begin::Actions-->
        <div class="text-center">
            <!--begin::Submit button-->
            <button type="submit" id="kt_sign_in_submit" class="btn btn-lg btn-success w-100 mb-5">
                <span class="indicator-label">Continue</span>
                <span class="indicator-progress">Please wait...
                <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
            </button>
            <!--end::Submit button-->
        </div>
        <!--end::Actions-->
    </form>
    <!--end::Form-->
</div>
<script type="text/javascript">
    "use strict";
    var KTSigninGeneral = (function () {
        var t, e, i;
        return {
            init: function () {
                (t = document.querySelector("#kt_sign_in_form")),
                (e = document.querySelector("#kt_sign_in_submit")),
                (i = FormValidation.formValidation(t, {
                    fields: {
                        username: { validators: { notEmpty: { message: "Username is required" } } },
                        password: { 
                            validators: { 
                                notEmpty: { 
                                    message: "The password is required" 
                                } 
                            } 
                        },
                    },
                        plugins: { 
                            trigger: new FormValidation.plugins.Trigger(), 
                            bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row" }) 
                        },
                })),
                e.addEventListener("click", function (n) {
                    n.preventDefault(),
                    i.validate().then(function (i) {
                        "Valid" == i
                            ? (
                                e.setAttribute("data-kt-indicator", "on"),
                                (e.disabled = !0),
                                $.ajax({
                                    type: "POST",
                                    url: t.getAttribute('action'),
                                    data: Object.fromEntries(new FormData(t).entries()),
                                    success: function(response) {
                                        var obj = jQuery.parseJSON(response);
                                        // console.log(obj);
                                        if(obj.code == 0) {
                                            document.location = obj.data;
                                        } else {
                                            e.removeAttribute("data-kt-indicator"),
                                            (e.disabled = !1),
                                            Swal.fire({ 
                                                text: obj.msg, 
                                                icon: "error", buttonsStyling: !1, 
                                                confirmButtonText: "Ok",
                                                allowOutsideClick: false,
                                                customClass: { confirmButton: "btn btn-primary" } })
                                            .then(function (t) {
                                                t.isConfirmed && ((e.querySelector('[name="username"]').value = ""), (e.querySelector('[name="password"]').value = ""));
                                            });
                                        }
                                    }
                                })
                                // setTimeout(function () {
                                // 	e.removeAttribute("data-kt-indicator"),
                                // 	(e.disabled = !1);
                                // 	// Swal.fire({ 
                                // 	//     text: "You have successfully logged in!", 
                                // 	//     icon: "success", 
                                // 	//     buttonsStyling: !1, 
                                // 	//     confirmButtonText: "Ok, got it!", 
                                // 	//     customClass: { 
                                // 	//         confirmButton: "btn btn-primary" } 
                                // 	//     })
                                // 	// .then(function (e) {
                                // 	//     e.isConfirmed && ((t.querySelector('[name="email"]').value = ""), (t.querySelector('[name="password"]').value = ""));
                                // 	// });
                                // }, 2e3),
                                // (window.location = "<?php echo site_url('dashboard')?>")
                            )
                            : Swal.fire({
                                    text: "Sorry, looks like there are some errors detected, please try again.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: { confirmButton: "btn btn-primary" },
                                });
                    });
                });
            },
        };
    })();

    KTUtil.onDOMContentLoaded(function () {
        KTSigninGeneral.init();
    });
</script>