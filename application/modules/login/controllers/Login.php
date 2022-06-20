<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once 'vendor/autoload.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/phpmailer/src/Exception.php';
require 'vendor/phpmailer/src/PHPMailer.php';
require 'vendor/phpmailer/src/SMTP.php';

class Login extends CI_Controller {
    
    /**
     * Construct Function
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Login_model', 'login');
    }
    
    /**
     * Index Function
     * 
     * Default view/route
     *
     * @return void
     */
    public function index()
    {
        $data['content']    = "login";
        $this->load->view('default_login', $data);
    }

    /**
     * Forgot Function
     * 
     * Page for forgot password
     *
     * @return void
     */
    public function forgot()
    {
        $data['content']    = "forgot";
        $this->load->view('default_login', $data);
    }

    /**
     * Do_login function
     * 
     * Action for login
     *
     * @return json
     */
    public function do_login()
    {
        $username   = $this->input->post('username');
        $password   = $this->input->post('password');
        $user_login = $this->login->getLogin($username, $password);

        echo json_encode($user_login, JSON_PRETTY_PRINT);
        exit;
    }

    /**
     * Reset function
     * 
     * Page for reset password if user first_login
     *
     * @return void
     */
    public function reset()
    {
        first_login();
        $data['content']    = "reset";
        $this->load->view('default_login', $data);
    }

    /**
     * Do_reset
     * 
     * Action for reset password in first_login user
     *
     * @return json
     */
    public function do_reset()
    {
        $vendor_id          = $this->input->post('vendor_id');
        $new_password       = $this->input->post('new_password');
        $confirm_password   = $this->input->post('confirm_password');
        $reset_password     = $this->login->resetPassword($vendor_id, $new_password, $confirm_password);

        echo json_encode($reset_password, JSON_PRETTY_PRINT);
        exit;
    }

    public function do_forgot()
    {
        $vendor_id      = $this->input->post('vendor_code');
        $vendor_mail    = $this->input->post('email');

        $get_user_mail  = $this->login->getUserMail($vendor_id, $vendor_mail);
        if($get_user_mail['code'] == 0) {

            $mail_body  = "Kepada Yth:, <br><b>PT. ".$get_user_mail['data']->nama_perusahaan."</b>,<br>Silahkan login dengan credential berikut:<br><br><b>USERNAME</b><br><b>".$get_user_mail['data']->kode_vendor."</b><br><b>PASSWORD</b><br><b>".$get_user_mail['data']->sandi."</b>";

            $mail = new PHPMailer;
            $mail->isSMTP(); 
            $mail->SMTPDebug = 0; // 0 = off (for production use) - 1 = client messages - 2 = client and server messages
            $mail->Host = "smtp.gmail.com"; // use $mail->Host = gethostbyname('smtp.gmail.com'); // if your network does not support SMTP over IPv6
            $mail->Port = 587; // TLS only
            $mail->SMTPSecure = 'tls'; // ssl is depracated
            $mail->SMTPAuth = true;
            $mail->Username = 'sigidh.budi@gmail.com';
            $mail->Password = 'mrdagvxoaexrciiw';
            $mail->setFrom('baragud@socfindo.co.id', 'Baragud Socfindo');
            $mail->addAddress($get_user_mail['data']->email_perusahaan);
            $mail->Subject = 'Reset Password';
            $mail->msgHTML($mail_body); //$mail->msgHTML(file_get_contents('contents.html'), __DIR__); //Read an HTML message body from an external file, convert referenced images to embedded,
            $mail->AltBody = 'HTML messaging not supported';
            // $mail->addStringAttachment($email_data['file'], 'Slip_Gaji_'.$email_data['emp_data']['emp_salary']['nik'].'_'.$periode.'.pdf'); //Attach an image file

            if(!$mail->send()){
                // echo "Mailer Error: " . $mail->ErrorInfo;
                $response   = array(
                    'code'      => 100,
                    'status'    => 'error',
                    'msg'       => 'Gagal mengirim email'
                );
            }else{
                // echo "Message sent!";
                $response   = array(
                    'code'      => 0,
                    'status'    => 'success',
                    'msg'       => 'Berhasil mengirim email. Silahkan cek email Anda.'
                );
            }

        } else {
            
            $response   = $get_user_mail;

        }

        echo json_encode($response, JSON_PRETTY_PRINT);
        exit;
    }

}

/* End of file Login.php */
