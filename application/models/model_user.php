<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_user extends CI_Model {

	public function check_credential()
	{
		$username = set_value('username');
		$password = set_value('password');
		
		$hasil = $this->db->where('username', $username)
						  ->where('password', $password)
						  ->limit(1)
						  ->get('user');
		
		if($hasil->num_rows() > 0){
			return $hasil->row();
		} else {
			return array();
		}
	}

	public function check_username($username) {
		$query = $this->db->where('username', $username)
				 		  ->limit(1)
				 		  ->get('user');
		
		if($query->num_rows() > 0) {
			return true;
		} else {
			return false;
		}
	}

	public function tambah_user($data) {
		$this->db->insert('user', $data);
	}

}