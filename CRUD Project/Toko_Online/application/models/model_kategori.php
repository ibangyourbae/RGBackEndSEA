<?php
class Model_kategori extends CI_Model
{
    public function data_akun()
    {
        return  $this->db->get_where('tb_barang', array('kategori' => 'Akun'));
    }
    public function data_elektronik()
    {
        return  $this->db->get_where('tb_barang', array('kategori' => 'Elektronik'));
    }
    public function data_buku()
    {
        return  $this->db->get_where('tb_barang', array('kategori' => 'Buku'));
    }
    public function data_reksadana()
    {
        return  $this->db->get_where('tb_barang', array('kategori' => 'Reksadana'));
    }
}