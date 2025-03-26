<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Submissions extends CI_Controller {

	public function __construct()
	{
        parent::__construct();
		$this->load->model('model_submissions');

		if($this->session->userdata('username') == FALSE) {
			$this->session->set_flashdata('error','*Anda harus login terlebih dahulu');
			redirect('user/login');
		}
		
	}

	public function index() {
		$this->load->view('v_submissions');
		
    }
    
    public function tambah() {
		$this->form_validation->set_rules('nama_ilmiah', 'Nama Ilmiah', 'required');
		$this->form_validation->set_rules('nama_lokal', 'Nama Lokal', 'required');
		$this->form_validation->set_rules('family', 'Family', 'required');
		$this->form_validation->set_rules('fungsi_utama', 'Fungsi Utama', 'required');		
		$this->form_validation->set_rules('fungsi_pendukung', 'Fungsi Pendukung', 'required');	
		$this->form_validation->set_rules('penyakit', 'Penyakit', 'required');
		$this->form_validation->set_rules('bagian_tumbuhan', 'Bagian Tumbuhan', 'required');
		$this->form_validation->set_rules('cara_pengolahan', 'Cara Pengolahan', 'required');
		//$this->form_validation->set_rules('userfile', 'Product Image', 'required');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('v_submissions');
		} else {
			//load uploading file library
			$config['upload_path'] = './assets/img/gambar/';
			$config['allowed_types'] = 'jpg|png';
			$config['max_size']	= '30000'; //KB
			$config['max_width']  = '20000'; //pixels
			$config['max_height']  = '20000'; //pixels

			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload())
			{
				//file gagal diupload -> kembali ke form tambah
				$data_tumbuhan = array(
					'nama_ilmiah'		=> set_value('nama_ilmiah'),
					'nama_lokal'		=> set_value('nama_lokal'),
					'family'			=> set_value('family'),
					'fungsi_utama'		=> set_value('fungsi_utama'),
					'fungsi_pendukung'	=> set_value('fungsi_pendukung'),
					'penyakit'			=> set_value('penyakit'),
					'bagian_tumbuhan'	=> set_value('bagian_tumbuhan'),
					'cara_pengolahan'	=> set_value('cara_pengolahan'),
					'status'        	=> 'unconfirm',
					'username'			=> $this->session->userdata('username')
				);
				
				$this->model_submissions->tambah($data_tumbuhan);
				redirect('submissions/success_pengajuan');
			} else {
				//file berhasil diupload -> lanjutkan ke query INSERT
				// eksekusi query INSERT
				$image = $this->upload->data();
				$data =	array(
					'nama_ilmiah'		=> set_value('nama_ilmiah'),
					'nama_lokal'		=> set_value('nama_lokal'),
					'family'			=> set_value('family'),
					'fungsi_utama'		=> set_value('fungsi_utama'),
					'fungsi_pendukung'	=> set_value('fungsi_pendukung'),
					'penyakit'			=> set_value('penyakit'),
					'bagian_tumbuhan'	=> set_value('bagian_tumbuhan'),
					'cara_pengolahan'	=> set_value('cara_pengolahan'),
                    'gambar'			=> base_url().'assets/img/gambar/'.$image['file_name'],
					'status'        	=> 'unconfirm',
					'username'			=> $this->session->userdata('username')
				);

				$this->model_submissions->tambah($data);
				redirect('submissions/success_pengajuan');
			}
			
		}
    }
    
    public function success_pengajuan() {
        echo "data diterima";
        echo '<a href="'.base_url().'">Kembali</a>';
    }
}

