<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Metronic - Bootstrap 5 HTML, VueJS, React, Angular & Laravel Admin Dashboard Theme
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
		<title>SiVeronika - Sistem Verifikasi Online Keuangan - Badan Pengelolaan Pendapatan Daerah Kabupaten Bogor</title>
		<meta name="description" content="The most advanced Bootstrap Admin Theme on Themeforest trusted by 94,000 beginners and professionals. Multi-demo, Dark Mode, RTL support and complete React, Angular, Vue &amp; Laravel versions. Grab your copy now and get life-time updates for free." />
		<meta name="keywords" content="Metronic, bootstrap, bootstrap 5, Angular, VueJs, React, Laravel, admin themes, web design, figma, web development, free templates, free admin themes, bootstrap theme, bootstrap template, bootstrap dashboard, bootstrap dak mode, bootstrap button, bootstrap datepicker, bootstrap timepicker, fullcalendar, datatables, flaticon" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta charset="utf-8" />
		<meta property="og:locale" content="en_US" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Metronic - Bootstrap 5 HTML, VueJS, React, Angular &amp; Laravel Admin Dashboard Theme" />
		<meta property="og:url" content="https://keenthemes.com/metronic" />
		<meta property="og:site_name" content="Keenthemes | Metronic" />
		<link rel="canonical" href="Https://preview.keenthemes.com/metronic8" />
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Global Stylesheets Bundle(used by all pages)-->
		<link href="<?php echo base_url();?>assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="<?php echo base_url();?>assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<style>
			.dropdown.show>.form-control.form-control-solid, .form-control.form-control-solid.active, .form-control.form-control-solid.focus, .form-control.form-control-solid:active, .form-control.form-control-solid:focus {
				background-color: #eef3f7;
				border-color: #460046 !important;
				color: #5e6278;
				transition: color .2s ease,background-color .2s ease;
			}

			.form-control.form-control-solid {
				background-color: #f5f8fa;
				border-color: #460046 !important;
				color: #5e6278;
				transition: color .2s ease,background-color .2s ease;
			}

			.btn-info {
				background-color: #460046 !important;
			}
		</style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="bg-body">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Authentication - Sign-in -->
			<div class="d-flex flex-column flex-lg-row flex-column-fluid">
				<!--begin::Aside-->
				<div class="d-flex flex-column flex-lg-row-auto w-xl-600px positon-xl-relative" style="background-color: #FFFFFF">
					<!--begin::Wrapper-->
					<div class="d-flex flex-column position-xl-fixed top-0 bottom-0 w-xl-600px">
						<!--begin::Content-->
						<div class="d-flex flex-row-fluid flex-column text-center p-10 pt-lg-20">
							<!--begin::Logo-->
							<a href="../../demo1/dist/index.html" class="py-9">
								<img alt="Logo" src="<?php echo base_url();?>assets/media/logos/logo.svg" class="h-125px" />
							</a>
							<!--end::Logo-->
							<!--begin::Title-->
							<h1 class="fw-bolder fs-2qx pb-0" style="color: #460046;">SiVeronika</h1>
							<!--end::Title-->
							<!--begin::Description-->
							<p class="fw-bold fs-2 mb-0" style="color: #000000;">Sistem Verifikasi Online Keuangan</p>
                            <div class="fw-bolder mb-0"><hr class="h-5px" style="color: #460046; opacity: 1 !important;"></div>
							<p class="fw-bold fs-2" style="color: #000000;">Badan Pengelolaan Pendapatan Daerah
                            <br />Kabupaten Bogor</p>
							<!--end::Description-->
						</div>
						<!--end::Content-->
						<!--begin::Illustration-->
						<div class="d-flex flex-row-auto bgi-no-repeat bgi-position-x-center bgi-size-contain bgi-position-y-bottom min-h-100px min-h-lg-350px" style="background-image: url(assets/media/illustrations/checkout.png)"></div>
						<!--end::Illustration-->
					</div>
					<!--end::Wrapper-->
				</div>
				<!--end::Aside-->
				<!--begin::Body-->
				<div class="d-flex flex-column flex-lg-row-fluid py-10">
					<!--begin::Content-->
					<div class="d-flex flex-center flex-column flex-column-fluid">
						<!--begin::Wrapper-->
						<div class="d-flex flex-column position-xl-fixed w-lg-500px p-10 p-lg-15 mx-auto">
							<!--begin::Form-->
							<form class="form w-100" novalidate="novalidate" id="kt_sign_in_form" action="<?php echo site_url('login/do_login'); ?>">
								<!--begin::Heading-->
								<div class="text-center mb-10">
									<!--begin::Logo-->
									<img alt="Logo" src="<?php echo base_url();?>assets/media/logos/logo-bappenda.png" class="h-100px" />
									<!--end::Logo-->
								</div>
								<!--begin::Heading-->
								<!--begin::Input group-->
								<div class="fv-row mb-10">
									<!--begin::Label-->
									<label class="form-label fs-6 fw-bolder text-dark">Username</label>
									<!--end::Label-->
									<!--begin::Input-->
									<input class="form-control form-control-lg form-control-solid" type="text" name="username" autocomplete="off" />
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
										<!-- <a href="../../demo1/dist/authentication/flows/aside/password-reset.html" class="link-danger fs-6 fw-bolder">Lupa Password ?</a> -->
										<!--end::Link-->
									</div>
									<!--end::Wrapper-->
									<!--begin::Input-->
									<input class="form-control form-control-lg form-control-solid" type="password" name="password" autocomplete="off" />
									<!--end::Input-->
								</div>
								<!--end::Input group-->
								<!--begin::Actions-->
								<div class="text-center">
									<!--begin::Submit button-->
									<button type="submit" id="kt_sign_in_submit" class="btn btn-lg btn-info w-100 mb-5">
										<span class="indicator-label">Login</span>
										<span class="indicator-progress">Please wait...
										<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
									</button>
									<!--end::Submit button-->
								</div>
								<!--end::Actions-->
							</form>
							<!--end::Form-->
						</div>
						<!--end::Wrapper-->
					</div>
					<!--end::Content-->
				</div>
				<!--end::Body-->
			</div>
			<!--end::Authentication - Sign-in-->
		</div>
		<!--end::Main-->
        <!--begin::Footer-->
            <div class="footer py-4 d-flex flex-lg-column" style="background-color: #460046;" id="kt_footer">
                <!--begin::Container-->
                <div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-center">
                    <!--begin::Copyright-->
                    <div class="text-dark text-center">
                        <span class="text-center text-light fw-bold me-1">Sistem Verifikasi Online Keuangan - Badan Pengelolaan Pendapatan Daerah Kabupaten Bogor</span>
                    </div>
                    <!--end::Copyright-->
                </div>
                <!--end::Container-->
            </div>
        <!--end::Footer-->
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="<?php echo base_url();?>assets/plugins/global/plugins.bundle.js"></script>
		<script src="<?php echo base_url();?>assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<script type="text/javascript">
            "use strict";
            var KTSigninGeneral = (function () {
                var t, e, i, d;
                return {
                    init: function () {
                        (t = document.querySelector("#kt_sign_in_form")),
                            (e = document.querySelector("#kt_sign_in_submit")),
                            (i = FormValidation.formValidation(t, {
                                fields: {
                                    username: { validators: { notEmpty: { message: "Username tidak boleh kosong" } } },
                                    password: { validators: { notEmpty: { message: "Password tidak boleh kosong" } } },
                                },
                                plugins: { trigger: new FormValidation.plugins.Trigger(), bootstrap: new FormValidation.plugins.Bootstrap5({ rowSelector: ".fv-row" }) },
                            })),
                            e.addEventListener("click", function (n) {
                                n.preventDefault(),
                                    i.validate().then(function (i) {
                                        "Valid" == i
                                            ? (
												e.setAttribute("data-kt-indicator", "on"),
                                            	(e.disabled = !0),
												d = Object.fromEntries(new FormData(t).entries()),
												$.ajax({
													type: "POST",
													url: t.getAttribute('action'),
													data: d,
													success: function(response) {
														var obj = jQuery.parseJSON(response);
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
		<!--end::Page Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>