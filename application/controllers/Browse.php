<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Browse extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('model_tumbuhan');
		
	}

	public function index() {

		$this->load->library('pagination');

		$config['base_url'] = 'http://localhost/bis/index.php/browse/index';
		$config['total_rows'] = $this->db->get('tumbuhan')->num_rows();
		$config['per_page'] = 12;
		$config['num_links'] = 2;
		
		$config['full_tag_open'] = '<ul class="pagination justify-content-end" style="padding-top:40px;">';
		$config['full_tag_close'] = '</ul>';
		$config['attributes'] = ['class' => 'page-link'];
		$config['first_tag_open'] = '<li class="page-item">';
		$config['first_tag_close'] = '</li>';
		$config['prev_link'] = '&laquo';
		$config['prev_tag_open'] = '<li class="page-item">';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = '&raquo';
		$config['next_tag_open'] = '<li class="page-item">';
		$config['next_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li class="page-item">';
		$config['last_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
		$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
		$config['num_tag_open'] = '<li class="page-item">';
		$config['num_tag_close'] = '</li>';

		$this->pagination->initialize($config);

		$data['tumbuhan'] = $this->db->get('tumbuhan', $config['per_page'], $this->uri->segment(3))->result();

		$data['pagination'] =  $this->pagination->create_links();
		$data['message'] = "";
		$this->load->view('v_browse', $data);

	
		
	}

	public function detail($id) {
		// $id = $this->uri->segment(3);
		$data['detail'] = $this->model_tumbuhan->detail($id);
		$this->load->view('detail', $data);
	}

	public function search()
    {
		$keyword = $this->input->post('keyword');
		$this->load->library('pagination');

		$config['base_url'] = 'http://localhost/bis/index.php/browse/search';
		$config['total_rows'] = $this->db->get('tumbuhan')->num_rows();
		$config['per_page'] = 12;
		$config['num_links'] = 2;
		
		$config['full_tag_open'] = '<ul class="pagination justify-content-end" style="padding-top:40px;">';
		$config['full_tag_close'] = '</ul>';
		$config['attributes'] = ['class' => 'page-link'];
		$config['first_tag_open'] = '<li class="page-item">';
		$config['first_tag_close'] = '</li>';
		$config['prev_link'] = '&laquo';
		$config['prev_tag_open'] = '<li class="page-item">';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = '&raquo';
		$config['next_tag_open'] = '<li class="page-item">';
		$config['next_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li class="page-item">';
		$config['last_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
		$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
		$config['num_tag_open'] = '<li class="page-item">';
		$config['num_tag_close'] = '</li>';

		$this->pagination->initialize($config);

		$data['tumbuhan'] = $this->db->or_like(array('nama_daerah' => $keyword, 'nama_latin' => $keyword))
									 ->get('tumbuhan', $config['per_page'], $this->uri->segment(3))->result();

		$data['pagination'] =  $this->pagination->create_links();
		$data['message'] = "";
		$this->load->view('v_browse', $data);

		
    }
}

