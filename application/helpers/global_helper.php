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

// if(!function_exists('generate_menu')) {
//     function generate_menu()
//     {
//         $menu   = [

//         ];
//     }
// }