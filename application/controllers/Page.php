<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {

	function __construct()
  {
    parent::__construct();

    /* memanggil model untuk ditampilkan pada masing2 modul */
		$this->load->model('Blog_model');
		$this->load->model('Cart_model');
    $this->load->model('Company_model');
		$this->load->model('recommendation_model');
		$this->load->model('Kategori_model');
		$this->load->model('Kontak_model');
    $this->load->model('Produk_model');

    /* memanggil function dari masing2 model yang akan digunakan */
    $this->data['blog_data'] 					= $this->Blog_model->get_all_sidebar();
    $this->data['company_data'] 			= $this->Company_model->get_by_company();
    $this->data['recommendation_data']= $this->recommendation_model->get_all_front();
    $this->data['kategori_data'] 			= $this->Kategori_model->get_all();
		$this->data['kontak'] 						= $this->Kontak_model->get_all();
		$this->data['total_cart_navbar'] 	= $this->Cart_model->total_cart_navbar();
		$this->data['itemName'] = $this->input->post('itemName');
		$this->data['itemNumber'] = "PN12345";
		$this->data['itemPrice'] = $this->input->post('bayartotal');
		$this->data['idtrans'] = $this->input->post('idtrans');
		$this->data['code'] = $this->input->post('code');
		$this->data['currency'] = "IDR";
  }

	public function company()
	{
		$this->data['title'] 							= 'Profil Toko';

    /* melakukan pengecekan data, apabila ada maka akan ditampilkan */
  	$this->data['company']            = $this->Company_model->get_by_company();

    /* memanggil view yang telah disiapkan dan passing data dari model ke view*/
		$this->load->view('front/company/body', $this->data);
	}


	public function konfirmasi_pembayaran()
	{
		$this->data['title'] 							= 'Konfirmasi Pembayaran';

		$this->load->view('front/page/konfirmasi_pembayaran', $this->data);
	}

	public function bayarcc($id_trans)
	{
		$this->data['cart_finished']	    			= $this->Cart_model->get_cart_per_customer_finished($id_trans);
		$this->data['customer_data'] 						= $this->Cart_model->get_data_customer();
		$this->data['title'] 							= 'Konfirmasi Pembayaran';
		$this->load->view('front/page/bayarcc', $this->data);
	}

	public function testimoni($id)
	{
		$this->data['history_detail_row']		= $this->Cart_model->history_detail($id)->row();
		$this->data['title'] 							= 'Testimoni';
		$this->load->view('front/page/testimoni', $this->data);
	}

	public function payment($id_trans)
	{

		$data = array(
			'status'		=> '2',
		);

		$this->Cart_model->bayar($id_trans,$data);
		$this->data['title'] 							= 'Konfirmasi Pembayaran';

		$this->data['cart_finished']	    			= $this->Cart_model->get_cart_per_customer_finished($id_trans);
		$this->data['customer_data'] 						= $this->Cart_model->get_data_customer();

		$this->load->view('front/page/payment',$this->data);

	}


	public function konfirmasi_kirim()
	{
		// ambil value dari masing2 form input
		$invoice 			= $this->input->post('invoice');
		$nama 				= $this->input->post('nama');
		$jumlah 			= $this->input->post('jumlah');
		$bank_asal 		= $this->input->post('bank_asal');
		$bank_tujuan 	= $this->input->post('bank_tujuan');

		// setingan default tanpa smtp
		// $this->load->library('email');
		//
		// $this->email->from('synyuvi@gmail.com', 'Konfirmasi Pembayaran Baru');
		// $this->email->to('davrinsyn@gmail.com');
		// $this->email->subject('Konfirmasi Pembayaran Baru');
		// $this->email->message('Halo bos, ada konfirmasi pembayaran baru dengan rincian sebagai berikut: <br>
		// No. Invoice: '.$invoice.'<br>
		// Nama Lengkap: '.$nama.'<br>
		// Jumlah: '.$jumlah.'<br>
		// Bank Asal: '.$bank_asal.'<br>
		// Bank Tujuan: '.$bank_tujuan.'<br>
		// Silahkan diproses bos pesanannya. Customer menunggu.
		// ');
		//
		// if ($this->email->send())
    // {
		// 	$this->session->set_flashdata('message', '<div class="row"><div class="col-lg-12"><div class="alert alert-success alert">Konfirmasi pembayaran telah berhasil</div></div></div>');
		// 	redirect(site_url('konfirmasi_pembayaran'));
    // }
    // else
    // {
		// 	$this->session->set_flashdata('message', '<div class="row"><div class="col-lg-12"><div class="alert alert-success alert">Konfirmasi pembayaran gagal, silahkan coba kembali</div></div></div>');
		// 	redirect(site_url('konfirmasi_pembayaran'));
    // }

		// Konfigurasi email dengan smtp
    $config = [
       'smtp_host' => 'ssl://smtp.gmail.com',
       'smtp_user' => 'davrinsyn@gmail.com',   // Ganti dengan email gmail Anda.
       'smtp_pass' => 'ganbaruby',             // Password gmail Anda.
       'smtp_port' => 465,
   	];

    // Load library email dan konfigurasinya.
    $this->load->library('email', $config);

    // Pengirim dan penerima email.
    $this->email->from('no-reply@ecommerceV3.com', 'no-reply');    // Email dan nama pegirim.
    $this->email->to('synyuvi@gmail.com');                       // Penerima email.

    // Subject email.
    $this->email->subject('Kirim Email pada CodeIgniter');

    // Isi email. Bisa dengan format html.
		$this->email->message('Halo bos, ada konfirmasi pembayaran baru dengan rincian sebagai berikut: <br>
		No. Invoice: '.$invoice.'<br>
		Nama Lengkap: '.$nama.'<br>
		Jumlah: '.$jumlah.'<br>
		Bank Asal: '.$bank_asal.'<br>
		Bank Tujuan: '.$bank_tujuan.'<br>
		Silahkan diproses bos pesanannya. Customer menunggu.
		');

    if ($this->email->send())
    {
			$this->session->set_flashdata('message', '<div class="row"><div class="col-lg-12"><div class="alert alert-success alert">Konfirmasi pembayaran telah berhasil</div></div></div>');
			redirect(site_url('konfirmasi_pembayaran'));
    }
    else
    {
			$this->session->set_flashdata('message', '<div class="row"><div class="col-lg-12"><div class="alert alert-success alert">Konfirmasi pembayaran gagal, silahkan coba kembali</div></div></div>');
			redirect(site_url('konfirmasi_pembayaran'));
    }
	}

}