"use strict";
var KTSigninGeneral = (function () {
    var e, t, i;
    return {
        init: function () {
            (e = document.querySelector("#kt_sign_in_form")),
                (t = document.querySelector("#kt_sign_in_submit")),
                (i = FormValidation.formValidation(e, {
                    fields: {
                        username: { validators: { notEmpty: { message: "Username is required" } } },
                        password: {
                            validators: {
                                notEmpty: { message: "The password is required" },
                                callback: {
                                    message: "Please enter valid password",
                                    callback: function (e) {
                                        if (e.value.length > 0) return _validatePassword();
                                    },
                                },
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
                                  $.ajax({
                                    type: "POST",
                                    url: e.getAttribute('action'),
                                    data: Object.fromEntries(new FormData(e).entries()),
                                    success: function(response) {
                                        var obj = jQuery.parseJSON(response);
                                        // console.log(obj);
                                        $('input[type="hidden"][name="csrf_hilex_mfs_token"]').val(obj.csrf_hilex_mfs_token);
                                        if(obj.code == 0) {
                                            document.location = obj.data;
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
                                                        t.isConfirmed && ((e.querySelector('[name="username"]').value = ""), (e.querySelector('[name="password"]').value = ""));
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
