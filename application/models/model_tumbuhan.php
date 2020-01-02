<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_tumbuhan extends CI_Model {

	public function all(){
		//query semua record di table products
		$hasil = $this->db->get('tumbuhan');
		if($hasil->num_rows() > 0){
			return $hasil->result();
		} else {
			return array();
		}
    }

    public function detail($id) {
		$hasil = $this->db->select('tu.*, ta.*')
						  ->from('tumbuhan as tu, taksonomi as ta')
						  ->where('tu.id_taksonomi=ta.id')
						  ->limit(1)
						  ->where('tu.id', $id)
						  ->get();

		if($hasil->num_rows() > 0){
			return $hasil->row();
		} else {
			return array();
		}
	}

	function search($keyword)
    {
		$hasil  =   $this->db->or_like(array('nama_daerah' => $keyword, 'nama_latin' => $keyword))
							 ->get('tumbuhan');

		if($hasil->num_rows() > 0) {
			return $hasil;
		} else {
			return array();
		}
	}
	
	public function tambah($data){
		//Query INSERT INTO
		$this->db->insert('tumbuhan', $data);
	}

	public function ubah($id, $data){
		//Query UPDATE FROM ... WHERE id=...
		$this->db->where('id', $id)
				 ->update('tumbuhan', $data);
	}

	public function hapus($id) {
		$this->db->where('id', $id)
				 ->delete('tumbuhan');
	}
	
	
}