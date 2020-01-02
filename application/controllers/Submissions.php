<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Submissions extends CI_Controller {

	public function __construct()
	{
        parent::__construct();
		$this->load->model('model_submissions');
		
	}

	public function index()
	{
		if($this->session->userdata('username') == FALSE) {
			$this->session->set_flashdata('error','*Anda harus login terlebih dahulu');
			redirect('user/login');
		} else {
			$this->load->view('v_submissions');
		}
		
    }
    
    public function tambah() {
		$this->form_validation->set_rules('nama_latin', 'Nama Latin', 'required');
		$this->form_validation->set_rules('nama_daerah', 'Nama Daerah', 'required');
		$this->form_validation->set_rules('habitat', 'Habitat', 'required');
		$this->form_validation->set_rules('perawakan', 'Perawakan', 'required');		
		$this->form_validation->set_rules('potensi', 'Potensi', 'required');		
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
					'nama_latin'	=> set_value('nama_latin'),
					'nama_daerah'	=> set_value('nama_daerah'),
					'habitat'		=> set_value('habitat'),
					'perawakan'		=> set_value('perawakan'),
                    'potensi'		=> set_value('potensi'),
                    'status'        => 'unconfirm'
				);
				
				$this->model_submissions->tambah($data_tumbuhan);
				redirect('submissions/success_pengajuan');
			} else {
				//file berhasil diupload -> lanjutkan ke query INSERT
				// eksekusi query INSERT
				$image = $this->upload->data();
				$data =	array(
					'nama_latin'	=> set_value('nama_latin'),
					'nama_daerah'	=> set_value('nama_daerah'),
					'habitat'		=> set_value('habitat'),
					'perawakan'		=> set_value('perawakan'),
					'potensi'		=> set_value('potensi'),
                    'gambar'		=> $image['file_name'],
                    'status'        => 'unconfirm'
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

