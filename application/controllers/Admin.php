<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('model_tumbuhan');
		$this->load->model('model_submissions');
		$this->load->model('model_taxonomy');
		
	}

	public function index()
	{
		if ($this->session->userdata('level') != 1) {
			$this->load->view('prohibited_access');
		} else {
			$data['tumbuhan'] = $this->model_tumbuhan->all();
			$this->load->view('v_admin_tumbuhan', $data);
		}
		
	}

	public function submissions_data() {
		if ($this->session->userdata('level') != 1) {
			$this->load->view('prohibited_access');
		} else {
			$data['submissions'] = $this->model_submissions->all();
			$this->load->view('v_admin_submissions', $data);
		}
	}

	public function confirm_submissions($id) {

		if ($this->session->userdata('level') != 1) {
			
			$this->load->view('prohibited_access');
			
		} else {
			
			$data = $this->model_submissions->get($id);
			$this->model_submissions->confirm($data);

			$status = array(
				'status' => 'confirmed'
			);

			$this->db->where('id', $id);
			$this->db->update('submissions', $status);

			redirect('admin/submissions_data');
			}
			
	}

	public function reject_submissions($id) {
		if ($this->session->userdata('level') != 1) {
			$this->load->view('prohibited_access');
		} else {
			$this->model_submissions->delete($id);
			redirect('admin/submissions_data');
		}
	}

	public function tambah() {
		if ($this->session->userdata('level') != 1) {
			$this->load->view('prohibited_access');
		} else {
			$this->form_validation->set_rules('nama_latin', 'Nama Latin', 'required');
			$this->form_validation->set_rules('nama_daerah', 'Nama Daerah', 'required');
			$this->form_validation->set_rules('habitat', 'Habitat', 'required');
			$this->form_validation->set_rules('perawakan', 'Perawakan', 'required');		
			$this->form_validation->set_rules('potensi', 'Potensi', 'required');		
			//$this->form_validation->set_rules('userfile', 'Product Image', 'required');

			if ($this->form_validation->run() == FALSE)
			{
				$this->load->view('v_tambah_data');
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
					$data_tumbuhan =	array(
						'nama_latin'	=> set_value('nama_latin'),
						'nama_daerah'	=> set_value('nama_daerah'),
						'family'		=> set_value('family'),
						'habitat'		=> set_value('habitat'),
						'perawakan'		=> set_value('perawakan'),
						'potensi'		=> set_value('potensi')
					);

					$data_klasifikasi = array(
						'filum'		=> set_value('filum'),
						'kelas'		=> set_value('kelas'),
						'ordo'		=> set_value('ordo'),
						'family'	=> set_value('family'),
						'genus'		=> set_value('genus'),
						'species'	=> set_value('nama_latin')
					);
					
					$this->model_tumbuhan->tambah($data_tumbuhan);
					$this->model_taxonomy->tambah($data_klasifikasi);
					redirect('admin');
				} else {
					//file berhasil diupload -> lanjutkan ke query INSERT
					// eksekusi query INSERT
					$image = $this->upload->data();
					$data =	array(
						'nama_latin'	=> set_value('nama_latin'),
						'nama_daerah'	=> set_value('nama_daerah'),
						'family'		=> set_value('family'),
						'habitat'		=> set_value('habitat'),
						'perawakan'		=> set_value('perawakan'),
						'potensi'		=> set_value('potensi'),
						'gambar'		=> $image['file_name']
					);

					$this->model_tumbuhan->tambah($data);
					redirect('admin');
				}
				
			}

		}


		
	}

	public function ubah($id) {
		if ($this->session->userdata('level') != 1) {
			$this->load->view('prohibited_access');
		} else { 
			$this->form_validation->set_rules('nama_latin', 'Nama Latin', 'required');
			$this->form_validation->set_rules('nama_daerah', 'Nama Daerah', 'required');
			$this->form_validation->set_rules('family', 'Family', 'required');
			$this->form_validation->set_rules('habitat', 'Habitat', 'required');
			$this->form_validation->set_rules('perawakan', 'Perawakan', 'required');		
			$this->form_validation->set_rules('potensi', 'Potensi', 'required');		
			//$this->form_validation->set_rules('userfile', 'Product Image', 'required');

			if ($this->form_validation->run() == FALSE) {
				$data['tumbuhan'] = $this->model_tumbuhan->detail($id);
				$this->load->view('v_ubah_data', $data);
			} else {
				if($_FILES['userfile']['name'] != ''){
					//form submit dengan gambar diisi
					//load uploading file library
					$config['upload_path'] = './uploads/';
					$config['allowed_types'] = 'jpg|png';
					$config['max_size']	= '300'; //KB
					$config['max_width']  = '2000'; //pixels
					$config['max_height']  = '2000'; //pixels

					$this->load->library('upload', $config);
				
					if ( ! $this->upload->do_upload()) {
						$data['tumbuhan'] = $this->model_tumbuhan->detail($id);
						$this->load->view('v_ubah_data', $data);
					} else {
						$gambar = $this->upload->data();
						$data =	array(
							'nama_latin'	=> set_value('nama_latin'),
							'nama_daerah'	=> set_value('nama_daerah'),
							'family'		=> set_value('family'),
							'habitat'		=> set_value('habitat'),
							'perawakan'		=> set_value('perawakan'),
							'potensi'		=> set_value('potensi'),
							'gambar'		=> $gambar['file_name']
						);
						$this->model_tumbuhan->ubah($id, $data);
						redirect('admin');
					}
				} else {
					//form submit dengan gambar dikosongkan
					$data =	array(
						'nama_latin'	=> set_value('nama_latin'),
						'nama_daerah'	=> set_value('nama_daerah'),
						'family'		=> set_value('family'),
						'habitat'		=> set_value('habitat'),
						'perawakan'		=> set_value('perawakan'),
						'potensi'		=> set_value('potensi')
					);
					$this->model_tumbuhan->ubah($id, $data);
					redirect('admin');
				}
			}
		}
	}

	public function hapus($id) {
		if ($this->session->userdata('level') != 1) {
			$this->load->view('prohibited_access');
		} else {
			$this->model_tumbuhan->hapus($id);
			redirect('admin');
		}
		
		
	}

}

