<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('model_tumbuhan');
		
	}

	public function index()
	{
		$this->load->view('home');
	}

	public function detail($id) {
		// $id = $this->uri->segment(3);
		$data['detail'] = $this->model_tumbuhan->detail($id);
		
		$this->load->view('detail', $data);
	}
}

