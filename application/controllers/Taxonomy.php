<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Taxonomy extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('model_taxonomy');
		
	}

	public function index() {
		$this->load->view('taxonomy');
	}

    
    

}

