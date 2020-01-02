<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_submissions extends CI_Model {


    public function all() {
        $hasil  = $this->db->get('submissions');

        return $hasil->result();
        
    }

    public function get($id) {
        $hasil = $this->db->select('nama_latin, nama_daerah, family, habitat, perawakan, potensi, gambar')
                          ->from('submissions')
                          ->where('id', $id)
                          ->get();

        if ($hasil->num_rows() > 0) {
            return $hasil->row_array();
        } else {
            return array();
        }
    }
	
	public function tambah($data){
		//Query INSERT INTO
		$this->db->insert('submissions', $data);
    }
    
    public function confirm($data) {
        $this->db->insert('tumbuhan', $data);
    }

    public function delete($id) {
        $this->db->where('id', $id)
                 ->delete('submissions');
    }
	
}