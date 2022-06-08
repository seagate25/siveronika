<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if(!function_exists('logged_in')) {
    function logged_in()
    {
        $CI =& get_instance();
        $CI->load->library('session');
        $logged_in = $CI->session->userdata('logged_in');
        if(!$logged_in) {
            $CI->session->sess_destroy();
            redirect('welcome');
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