<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

    public function login() {
        $this->load->view('v_login');
        
    }
    
    public function proses() {
        $this->form_validation->set_rules('username','Username','required|alpha_numeric');
		$this->form_validation->set_rules('password','Password','required|alpha_numeric');
		
		if($this->form_validation->run() == FALSE) {
			$this->load->view('form_login');
		} else {
            $this->load->model('model_user');
            $valid_user = $this->model_user->check_credential();
        
            if($valid_user == FALSE)
            {
                $this->session->set_flashdata('error','Wrong Username / Password!');
                redirect('user/login');
            } else {
                // if the username and password is a match
                $this->session->set_userdata('username', $valid_user->username);
                $this->session->set_userdata('level', $valid_user->level);
                $this->session->set_userdata('status', 'login');
                
                switch($valid_user->level){
                    case 1 : //admin
                                redirect('admin'); 
                                break;
                    case 2 : //user
                                redirect(base_url());
                                break;
                    default: break; 
                }
            }
        }
    }

    public function register() {
        $this->load->view('v_register');
    }

    public function save() {

        $this->load->model('model_user');
        $nama = $this->input->post('nama');
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        $cek_username = $this->model_user->check_username($username);

        if($cek_username == true) {
            $this->session->set_flashdata('error','Username Sudah Ada!');
            redirect('user/register');
        } else {
            $data = array(
                'nama'     => $nama,
                'username' => $username,
                'password' => $password,
                'level'    => '2'
            );
    
            $this->model_user->tambah_user($data);
            redirect('user/login');
        }
        
        
       
    }
       

    public function logout() {
        $this->session->sess_destroy();
        redirect('home');
    }
    
	
}

