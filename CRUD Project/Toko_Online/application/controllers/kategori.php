<?php
class Kategori extends CI_Controller
{
    public function akun()
    {
        $data['akun'] = $this->model_kategori->data_akun()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('akun', $data);
        $this->load->view('templates/footer');
    }
    public function buku()
    {
        $data['buku'] = $this->model_kategori->data_buku()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('buku', $data);
        $this->load->view('templates/footer');
    }
    public function elektronik()
    {
        $data['elektronik'] = $this->model_kategori->data_elektronik()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('elektronik', $data);
        $this->load->view('templates/footer');
    }
    public function reksadana()
    {
        $data['reksadana'] = $this->model_kategori->data_reksadana()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('reksadana', $data);
        $this->load->view('templates/footer');
    }
}