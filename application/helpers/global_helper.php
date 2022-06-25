<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if(!function_exists('logged_in')) {
    function logged_in()
    {
        $CI =& get_instance();
        $CI->load->library('session');
        $logged_in  = $CI->session->userdata('logged_in');
        $first_log  = $CI->session->userdata('first_login');
        if($first_log == 1) {
            redirect('login/reset');
        } else {
            if(!$logged_in) {
                $CI->session->sess_destroy();
                redirect('welcome');
            }
        }
    }
}

if(!function_exists('first_login')) {
    function first_login()
    {
        $CI =& get_instance();
        $CI->load->library('session');
        $logged_in  = $CI->session->userdata('logged_in');
        $first_log  = $CI->session->userdata('first_login');
        if($first_log == 0 && $logged_in) {
            redirect('dashboard');
        } else {
            if(!$logged_in) {
                $CI->session->sess_destroy();
                redirect('welcome');
            }
        }
    }
}

if(!function_exists('generate_menu')) {
    function generate_menu()
    {
        $CI =& get_instance();
        $html   = '';
        $html   .= '
                <div class="menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500" id="#kt_aside_menu" data-kt-menu="true">
                    <div class="menu-item">
                        <a class="menu-link" href="'.site_url('dashboard').'">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: icons/duotone/Design/PenAndRuller.svg-->
                                <span class="svg-icon svg-icon-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" fill="#000000" opacity="0.3" />
                                        <path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" fill="#000000" />
                                    </svg>
                                </span>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="menu-title">Dashboard</span>
                        </a>
                    </div>
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <span class="menu-link">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: assets/media/icons/duotone/Interface/Grid-Horizontal.svg-->
                                    <span class="svg-icon svg-icon-2"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path d="M19.5174 2.26209C20.724 2.36644 21.6636 3.27253 21.8279 4.47244C21.9222 5.16065 22 5.90816 22 6.5C22 7.09184 21.9222 7.83935 21.8279 8.52756C21.6636 9.72747 20.724 10.6336 19.5174 10.7379C18.027 10.8668 15.6129 11 12 11C8.38715 11 5.97301 10.8668 4.48263 10.7379C3.27603 10.6336 2.33642 9.72747 2.17209 8.52756C2.07784 7.83935 2 7.09184 2 6.5C2 5.90816 2.07784 5.16064 2.17209 4.47244C2.33642 3.27253 3.27603 2.36644 4.48263 2.26209C5.97302 2.13319 8.38715 2 12 2C15.6129 2 18.027 2.13319 19.5174 2.26209Z" fill="#12131A"/>
                                    <path opacity="0.25" d="M19.5174 13.2621C20.724 13.3664 21.6636 14.2725 21.8279 15.4724C21.9222 16.1606 22 16.9082 22 17.5C22 18.0918 21.9222 18.8394 21.8279 19.5276C21.6636 20.7275 20.724 21.6336 19.5174 21.7379C18.027 21.8668 15.6129 22 12 22C8.38715 22 5.97301 21.8668 4.48263 21.7379C3.27603 21.6336 2.33642 20.7275 2.17209 19.5276C2.07784 18.8394 2 18.0918 2 17.5C2 16.9082 2.07784 16.1606 2.17209 15.4724C2.33642 14.2725 3.27603 13.3664 4.48263 13.2621C5.97302 13.1332 8.38715 13 12 13C15.6129 13 18.027 13.1332 19.5174 13.2621Z" fill="#12131A"/>
                                    </svg></span>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="menu-title">Master</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('master/vendor').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Vendor</span>
                                </a>
                            </div>
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('master/change_password').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Ubah Kata Sandi</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <span class="menu-link">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: assets/media/icons/duotone/Design/Verified.svg-->
                                    <span class="svg-icon svg-icon-2"><svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <path d="M10.0813 3.7242C10.8849 2.16438 13.1151 2.16438 13.9187 3.7242V3.7242C14.4016 4.66147 15.4909 5.1127 16.4951 4.79139V4.79139C18.1663 4.25668 19.7433 5.83365 19.2086 7.50485V7.50485C18.8873 8.50905 19.3385 9.59842 20.2758 10.0813V10.0813C21.8356 10.8849 21.8356 13.1151 20.2758 13.9187V13.9187C19.3385 14.4016 18.8873 15.491 19.2086 16.4951V16.4951C19.7433 18.1663 18.1663 19.7433 16.4951 19.2086V19.2086C15.491 18.8873 14.4016 19.3385 13.9187 20.2758V20.2758C13.1151 21.8356 10.8849 21.8356 10.0813 20.2758V20.2758C9.59842 19.3385 8.50905 18.8873 7.50485 19.2086V19.2086C5.83365 19.7433 4.25668 18.1663 4.79139 16.4951V16.4951C5.1127 15.491 4.66147 14.4016 3.7242 13.9187V13.9187C2.16438 13.1151 2.16438 10.8849 3.7242 10.0813V10.0813C4.66147 9.59842 5.1127 8.50905 4.79139 7.50485V7.50485C4.25668 5.83365 5.83365 4.25668 7.50485 4.79139V4.79139C8.50905 5.1127 9.59842 4.66147 10.0813 3.7242V3.7242Z" fill="#00A3FF"/>
                                    <path class="permanent" d="M14.8563 9.1903C15.0606 8.94984 15.3771 8.9385 15.6175 9.14289C15.858 9.34728 15.8229 9.66433 15.6185 9.9048L11.863 14.6558C11.6554 14.9001 11.2876 14.9258 11.048 14.7128L8.47656 12.4271C8.24068 12.2174 8.21944 11.8563 8.42911 11.6204C8.63877 11.3845 8.99996 11.3633 9.23583 11.5729L11.3706 13.4705L14.8563 9.1903Z" fill="white"/>
                                </svg></span>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="menu-title">Konfirmasi</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('confirmation/req_price').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Permintaan Harga</span>
                                </a>
                            </div>
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('confirmation/con_price').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Konfirmasi Harga</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <span class="menu-link">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: assets/media/icons/duotone/General/Clipboard.svg-->
                                <span class="svg-icon svg-icon-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M8,3 L8,3.5 C8,4.32842712 8.67157288,5 9.5,5 L14.5,5 C15.3284271,5 16,4.32842712 16,3.5 L16,3 L18,3 C19.1045695,3 20,3.8954305 20,5 L20,21 C20,22.1045695 19.1045695,23 18,23 L6,23 C4.8954305,23 4,22.1045695 4,21 L4,5 C4,3.8954305 4.8954305,3 6,3 L8,3 Z" fill="#000000" opacity="0.3"/>
                                        <path d="M11,2 C11,1.44771525 11.4477153,1 12,1 C12.5522847,1 13,1.44771525 13,2 L14.5,2 C14.7761424,2 15,2.22385763 15,2.5 L15,3.5 C15,3.77614237 14.7761424,4 14.5,4 L9.5,4 C9.22385763,4 9,3.77614237 9,3.5 L9,2.5 C9,2.22385763 9.22385763,2 9.5,2 L11,2 Z" fill="#000000"/>
                                        <rect fill="#000000" opacity="0.3" x="7" y="10" width="5" height="2" rx="1"/>
                                        <rect fill="#000000" opacity="0.3" x="7" y="14" width="9" height="2" rx="1"/>
                                    </g>
                                </svg></span>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="menu-title">RFQ</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('rfq/rfq_goods').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">RFQ Barang</span>
                                </a>
                            </div>
                            <!-- <div class="menu-item">
                                <a class="menu-link" href="'.site_url('rfq/rfq_service').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">RFQ Jasa</span>
                                </a>
                            </div> -->
                        </div>
                    </div>
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <span class="menu-link">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: assets/media/icons/duotone/Communication/Group.svg-->
                                <span class="svg-icon svg-icon-2"><svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <path d="M18,14 C16.3431458,14 15,12.6568542 15,11 C15,9.34314575 16.3431458,8 18,8 C19.6568542,8 21,9.34314575 21,11 C21,12.6568542 19.6568542,14 18,14 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/>
                                    <path d="M17.6011961,15.0006174 C21.0077043,15.0378534 23.7891749,16.7601418 23.9984937,20.4 C24.0069246,20.5466056 23.9984937,21 23.4559499,21 L19.6,21 C19.6,18.7490654 18.8562935,16.6718327 17.6011961,15.0006174 Z M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"/>
                                </svg></span>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="menu-title">Negosiasi</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('negotiation/rfq_goods').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Nego RFQ Barang</span>
                                </a>
                            </div>
                            <!-- <div class="menu-item">
                                <a class="menu-link" href="'.site_url('negotiation/rfq_service').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Nego RFQ Jasa</span>
                                </a>
                            </div> -->
                        </div>
                    </div>
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <span class="menu-link">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: assets/media/icons/duotone/Design/Stamp.svg-->
                                <span class="svg-icon svg-icon-2"><svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <path d="M12.9863016,8.83409843 C12.9953113,8.88805868 13,8.94348179 13,9 L13,11 L17,11 C18.1045695,11 19,11.8954305 19,13 L19,16 L5,16 L5,13 C5,11.8954305 5.8954305,11 7,11 L11,11 L11,9 C11,8.94348179 11.0046887,8.88805868 11.0136984,8.83409843 C9.84135601,8.42615464 9,7.31133193 9,6 C9,4.34314575 10.3431458,3 12,3 C13.6568542,3 15,4.34314575 15,6 C15,7.31133193 14.158644,8.42615464 12.9863016,8.83409843 Z" fill="#000000"/>
                                        <rect fill="#000000" opacity="0.3" x="5" y="18" width="14" height="2" rx="1"/>
                                </svg></span>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="menu-title">Status PO</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('po_status/po_goods').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">PO Barang</span>
                                </a>
                            </div>
                            <div class="menu-item">
                                <a class="menu-link" href="#">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">List Of Outstanding PO</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <span class="menu-link">
                            <span class="menu-icon">
                                <span class="svg-icon svg-icon-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <polygon points="0 0 24 0 24 24 0 24"/>
                                        <path d="M5.85714286,2 L13.7364114,2 C14.0910962,2 14.4343066,2.12568431 14.7051108,2.35473959 L19.4686994,6.3839416 C19.8056532,6.66894833 20,7.08787823 20,7.52920201 L20,20.0833333 C20,21.8738751 19.9795521,22 18.1428571,22 L5.85714286,22 C4.02044787,22 4,21.8738751 4,20.0833333 L4,3.91666667 C4,2.12612489 4.02044787,2 5.85714286,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/>
                                        <path d="M8.95128003,13.8153448 L10.9077535,13.8153448 L10.9077535,15.8230161 C10.9077535,16.0991584 11.1316112,16.3230161 11.4077535,16.3230161 L12.4310522,16.3230161 C12.7071946,16.3230161 12.9310522,16.0991584 12.9310522,15.8230161 L12.9310522,13.8153448 L14.8875257,13.8153448 C15.1636681,13.8153448 15.3875257,13.5914871 15.3875257,13.3153448 C15.3875257,13.1970331 15.345572,13.0825545 15.2691225,12.9922598 L12.3009997,9.48659872 C12.1225648,9.27584861 11.8070681,9.24965194 11.596318,9.42808682 C11.5752308,9.44594059 11.5556598,9.46551156 11.5378061,9.48659872 L8.56968321,12.9922598 C8.39124833,13.2030099 8.417445,13.5185067 8.62819511,13.6969416 C8.71848979,13.773391 8.8329684,13.8153448 8.95128003,13.8153448 Z" fill="#000000"/>
                                    </g>
                                </svg></span>
                            </span>
                            <span class="menu-title">Berkas Data</span>
                            <span class="menu-arrow"></span>
                        </span>
                    </div> -->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <span class="menu-link">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: assets/media/icons/duotone/Files/Compilation.svg-->
                                <span class="svg-icon svg-icon-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000" opacity="0.3"/>
                                        <rect fill="#000000" opacity="0.3" transform="translate(8.984240, 14.127098) rotate(-45.000000) translate(-8.984240, -14.127098) " x="7.41281179" y="12.5556689" width="3.14285714" height="3.14285714" rx="0.75"/>
                                        <rect fill="#000000" opacity="0.3" transform="translate(15.269955, 14.127098) rotate(-45.000000) translate(-15.269955, -14.127098) " x="13.6985261" y="12.5556689" width="3.14285714" height="3.14285714" rx="0.75"/>
                                        <rect fill="#000000" transform="translate(12.127098, 17.269955) rotate(-45.000000) translate(-12.127098, -17.269955) " x="10.5556689" y="15.6985261" width="3.14285714" height="3.14285714" rx="0.75"/>
                                        <rect fill="#000000" transform="translate(12.127098, 10.984240) rotate(-45.000000) translate(-12.127098, -10.984240) " x="10.5556689" y="9.41281179" width="3.14285714" height="3.14285714" rx="0.75"/>
                                    </g>
                                </svg></span>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="menu-title">Riwayat</span>
                            <span class="menu-arrow"></span>
                        </span>
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('history/rfq_goods').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">RFQ Barang</span>
                                </a>
                            </div>
                            <!-- <div class="menu-item">
                                <a class="menu-link" href="'.site_url('history/rfq_service').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">RFQ Jasa</span>
                                </a>
                            </div> -->
                            <div class="menu-item">
                                <a class="menu-link" href="'.site_url('history/negotiation_rfq_goods').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Nego RFQ Barang</span>
                                </a>
                            </div>
                            <!-- <div class="menu-item">
                                <a class="menu-link" href="'.site_url('history/negotiation_rfq_service').'">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">Nego RFQ Jasa</span>
                                </a>
                            </div> -->
                        </div>
                    </div>
                </div>';
    }
}

if(!function_exists('diff_date')) {
    /**
     * Get difference between 2 dates
     *
     * @param string $date_1
     * Must be filled
     * Like End Date or Max Date
     * 
     * @param string|null $date_2
     * 
     * [optional]
     * Default value : date('Y-m-d') / Current Date.
     * 
     * @return array
     * ['years'] integer
     * ['months'] integer
     * ['days'] integer
     */
    function diff_date(string $date_1, string $date_2 = NULL)
    {
        $date_2 = ($date_2 === NULL) ? date('Y-m-d') : $date_2;
        $diff   = abs(strtotime($date_1) - strtotime($date_2));

        $years  = floor($diff / (365*60*60*24));
        $months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
        $days   = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));

        return array(
            'years'     => (int)$years,
            'months'    => (int)$months,
            'days'      => (int)$days
        );
    }
}