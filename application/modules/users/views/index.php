
<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Metronic - #1 Selling Bootstrap 5 HTML Multi-demo Admin Dashboard Theme
Purchase: https://1.envato.market/EA4JP
Website: http://www.keenthemes.com
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: For each use you must have a valid license purchased only from above link in order to legally use the theme for your project.
-->
<html lang="en">
	<!--begin::Head-->
	<head><base href="../../../">
		<meta charset="utf-8" />
		<title>Buat Pengguna Baru</title>
		<meta name="description" content="Metronic admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Metronic, bootstrap, bootstrap 5, Angular 11, VueJs, React, Laravel, admin themes, web design, figma, web development, ree admin themes, bootstrap admin, bootstrap dashboard" />
		<link rel="canonical" href="Https://preview.keenthemes.com/metronic8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="<?php echo base_url();?>assets/css/google_font_apis.css"  type="text/css"/>
		<!--end::Fonts-->
		<!--begin::Global Stylesheets Bundle(used by all pages)-->
		<link href="<?php echo base_url();?>assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="<?php echo base_url();?>assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="bg-white">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Authentication - Sign-in -->
			<div class="d-flex flex-column flex-column-fluid bgi-position-y-bottom position-x-center bgi-no-repeat bgi-size-contain bgi-attachment-fixed" style="background-image: url(<?php echo base_url(); ?>assets/media/illustrations/progress-hd.png)">
				<!--begin::Content-->
				<div class="d-flex flex-center flex-column flex-column-fluid p-5 pb-lg-5">
					<!--begin::Logo-->
					<a href="index.html" class="mb-12">
						<!-- <img alt="Logo" src="<?php //echo base_url();?>assets/media/logos/hilex-com.png" class="h-45px" /> -->
					</a>
					<!--end::Logo-->
					<!--begin::Wrapper-->
					<div class="w-lg-500px bg-white rounded shadow-sm p-10 p-lg-15 mx-auto">
						<!--begin::Form-->
						<form class="form w-100" novalidate="novalidate" id="kt_sign_in_form" action="<?php echo site_url('users/save'); ?>" autocomplete="off">
							<!--begin::Heading-->
							<div class="text-center mb-10">
								<!--begin::Title-->
								<h1 class="text-dark mb-3">Buat Pengguna Baru</h1>
								<!--end::Title-->

								<!--begin::Link-->
								<!-- <div class="text-gray-400 fw-bold fs-4">Sign In -->
									<!-- <a href="authentication/flows/basic/sign-up.html" class="link-primary fw-bolder">Create an Account</a> -->
								<!-- </div> -->
								<!--end::Link-->

							</div>
							<!--begin::Heading-->
							<!--begin::Input group-->
							<div class="fv-row mb-10">
								<!--begin::Label-->
								<label class="form-label fs-6 fw-bolder text-dark">Nama</label>
								<!--end::Label-->
								<!--begin::Input-->
								<input class="form-control form-control-lg form-control-solid" type="text" name="name" id="name" autocomplete="off" placeholder="Silahkan Masukkan Nama" />
								<!--end::Input-->
							</div>
							<!--end::Input group-->
                            <!--begin::Input group-->
							<div class="fv-row mb-10">
								<!--begin::Label-->
								<label class="form-label fs-6 fw-bolder text-dark">Alamat Rumah</label>
								<!--end::Label-->
								<!--begin::Input-->
								<input class="form-control form-control-lg form-control-solid" type="text" name="addr_home" id="addr_home" autocomplete="off" placeholder="Silahkan Masukkan Alamat Rumah" />
								<!--end::Input-->
							</div>
							<!--end::Input group-->
                            <!--begin::Input group-->
							<div class="fv-row mb-10">
								<!--begin::Label-->
								<label class="form-label fs-6 fw-bolder text-dark">Alamat Domisili</label>
								<!--end::Label-->
								<!--begin::Input-->
								<input class="form-control form-control-lg form-control-solid" type="text" name="addr_dom" id="addr_dom" autocomplete="off" placeholder="Silahkan Masukkan Alamat Domisili" />
								<!--end::Input-->
							</div>
							<!--end::Input group-->
							<!--begin::Input group-->
							<div class="fv-row mb-10">
								<!--begin::Wrapper-->
								<div class="d-flex flex-stack mb-2">
									<!--begin::Label-->
									<label class="form-label fw-bolder text-dark fs-6 mb-0">Email</label>
									<!--end::Label-->

									<!--begin::Link-->
									<!-- <a href="authentication/flows/basic/password-reset.html" class="link-primary fs-6 fw-bolder">Forgot Password ?</a> -->
									<!--end::Link-->

								</div>
								<!--end::Wrapper-->
								<!--begin::Input-->
								<input class="form-control form-control-lg form-control-solid" type="text" name="email" id="email" autocomplete="off" placeholder="Silahkan Masukkan Email" />
								<!--end::Input-->
							</div>
							<!--end::Input group-->
							<!--begin::Actions-->
							<div class="text-center">
								<!--begin::Submit button-->
								<button type="submit" id="kt_sign_in_submit" class="btn btn-lg btn-primary w-100 mb-5">
									<span class="indicator-label">Sign In</span>
									<span class="indicator-progress">Please wait...
									<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
								</button>
								<!--end::Submit button-->

								<!--begin::Separator-->
								<!-- <div class="text-center text-muted text-uppercase fw-bolder mb-5">or</div> -->
								<!--end::Separator-->

								<!--begin::Google link-->
								<!-- <a href="#" class="btn btn-flex flex-center btn-light btn-lg w-100 mb-5">
								<img alt="Logo" src="<?php //echo base_url();?>assets/media/svg/brand-logos/google-icon.svg" class="h-20px me-3" />Continue with Google</a> -->
								<!--end::Google link-->

								<!--begin::Google link-->
								<!-- <a href="#" class="btn btn-flex flex-center btn-light btn-lg w-100 mb-5">
								<img alt="Logo" src="<?php //echo base_url();?>assets/media/svg/brand-logos/facebook-4.svg" class="h-20px me-3" />Continue with Facebook</a> -->
								<!--end::Google link-->

								<!--begin::Google link-->
								<!-- <a href="#" class="btn btn-flex flex-center btn-light btn-lg w-100">
								<img alt="Logo" src="<?php //echo base_url();?>assets/media/svg/brand-logos/apple-black.svg" class="h-20px me-3" />Continue with Apple</a> -->
								<!--end::Google link-->
							</div>
							<!--end::Actions-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Wrapper-->
				</div>
				<!--end::Content-->
			</div>
			<!--end::Authentication - Sign-in-->
		</div>
		<!--end::Main-->
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="<?php echo base_url();?>assets/plugins/global/plugins.bundle.js"></script>
		<script src="<?php echo base_url();?>assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<!-- <script src="<?php //echo base_url();?>assets/js/custom/authentication/sign-in/general.min.js"></script> -->
        <script type="text/javascript">
            "use strict";
            var KTSigninGeneral = (function () {
                var e, t, i;
                return {
                    init: function () {
                        (e = document.querySelector("#kt_sign_in_form")),
                            (t = document.querySelector("#kt_sign_in_submit")),
                            (i = FormValidation.formValidation(e, {
                                fields: {
                                    name: { validators: { notEmpty: { message: "Nama tidak boleh kosong" } } },
                                    addr_home: { validators: { notEmpty: { message: "Alamat rumah tidak boleh kosong" } } },
                                    addr_dom: { validators: { notEmpty: { message: "Alamata domisili tidak boleh kosong" } } },
                                    email: {
                                        validators: {
                                            notEmpty: { message: "Email tidak boleh kosong" },
                                            emailAddress: { message: "Email tidak sesuai" },
                                        },
                                    },
                                },
                                plugins: { trigger: new FormValidation.plugins.Trigger(), bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row", eleInvalidClass: "", eleValidClass: "" }) },
                            })),
                            t.addEventListener("click", function (n) {
                                n.preventDefault(),
                                    i.validate().then(function (i) {
                                        console.log(e.getAttribute('action'));
                                        "Valid" == i
                                            ? (t.setAttribute("data-kt-indicator", "on"),
                                            (t.disabled = !0),
                                            console.log(Object.fromEntries(new FormData(e).entries())),
                                            $.ajax({
                                                type: "POST",
                                                url: e.getAttribute('action'),
                                                data: Object.fromEntries(new FormData(e).entries()),
                                                success: function(response) {
                                                    var obj = jQuery.parseJSON(response);
                                                    // console.log(obj);
                                                    if(obj.code == 200) {
                                                        setTimeout(function () {
                                                            t.removeAttribute("data-kt-indicator"),
                                                                (t.disabled = !1),
                                                                Swal.fire({ 
                                                                    text: obj.msg, 
                                                                    icon: "success", buttonsStyling: !1, 
                                                                    confirmButtonText: "Ok",
                                                                    allowOutsideClick: false,
                                                                    customClass: { confirmButton: "btn btn-primary" } })
                                                                .then(function (t) {
                                                                    t.isConfirmed && ((e.querySelector('[name="name"]').value = ""), (e.querySelector('[name="addr_home"]').value = ""), (e.querySelector('[name="addr_dom"]').value = ""), (e.querySelector('[name="email"]').value = ""));
                                                                });
                                                        }, 2e3)
                                                    } else {
                                                        setTimeout(function () {
                                                            t.removeAttribute("data-kt-indicator"),
                                                                (t.disabled = !1),
                                                                Swal.fire({ 
                                                                    text: obj.msg, 
                                                                    icon: "error", buttonsStyling: !1, 
                                                                    confirmButtonText: "Ok",
                                                                    allowOutsideClick: false,
                                                                    customClass: { confirmButton: "btn btn-primary" } })
                                                                .then(function (t) {
                                                                    t.isConfirmed && ((e.querySelector('[name="name"]').value = ""), (e.querySelector('[name="addr_home"]').value = ""), (e.querySelector('[name="addr_dom"]').value = ""), (e.querySelector('[name="email"]').value = ""));
                                                                });
                                                        }, 2e3)
                                                    }
                                                }
                                            }))
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
		<!--end::Page Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>