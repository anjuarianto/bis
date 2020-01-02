<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_taxonomy extends CI_Model {

    public function tambah($data_klasifikasi) {
        $this->db->insert('taksonomi', $data_klasifikasi);
    }

}