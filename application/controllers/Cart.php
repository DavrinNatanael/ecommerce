<?php error_reporting(0); ?>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends CI_Controller {

	function __construct()
  {
    parent::__construct();
		$this->load->helper('berat_helper');

		$this->load->model('Bank_model');
		$this->load->model('Cart_model');
    $this->load->model('Company_model');
    $this->load->model('Kontak_model');
		$this->load->model('Produk_model');
		$this->load->model('Testimoni_model');
		$this->load->model('Promo_model');
		$this->load->model('Produk_model');

		$this->data['company_data'] 			= $this->Company_model->get_by_company();
    $this->data['kontak'] 						= $this->Kontak_model->get_all();
		$this->data['total_cart_navbar'] 	= $this->Cart_model->total_cart_navbar();
		$this->data['lastid']							= $this->Testimoni_model->get_last_id();

  }

	public function index()
	{
		$this->data['title'] 										= 'Keranjang Belanja';

		// ambil data keranjang
		$this->data['cart_data'] 			    			= $this->Cart_model->get_cart_per_customer();
		// ambil total_berat_dan_subtotal
		$this->data['total_berat_dan_subtotal'] = $this->Cart_model->get_total_berat_dan_subtotal();
		// ambil data customer
		$this->data['customer_data'] 			    	= $this->Cart_model->get_data_customer();

    $this->load->view('front/cart/body', $this->data);

		$this->data['promo']							= $this->Promo_model->get_promo($kode);

		$this->data['promocek']							= $this->Promo_model->userPromoCheck($kode);

  }

	public function cek_promo(){

		$this->data['title'] 										= 'Keranjang Belanja';
		$this->data['cart_data'] 			    			= $this->Cart_model->get_cart_per_customer();
		// ambil total_berat_dan_subtotal
		$this->data['total_berat_dan_subtotal'] = $this->Cart_model->get_total_berat_dan_subtotal();
		// ambil data customer
		$this->data['customer_data'] 			    	= $this->Cart_model->get_data_customer();

		$kode = $this->input->post('kode');
		$this->data['promo']							= $this->Promo_model->get_promo($kode);
		$this->data['promocek']							= $this->Promo_model->userPromoCheck($kode);
		$total = $this->input->post('total1');
		$tmp = $this->Promo_model->userPromoCheck($kode);

		if(empty($this->Promo_model->get_promo($kode)) || !empty($this->Promo_model->get_promo($kode)) && $total>$tmp->max_pembelian || $kode==$tmp->kode_promo) {
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert">Promo tidak tersedia atau anda sudah menggunakannya sebelumnya atau total belanja anda tidak memenuhi syarat</div>');
			$nuke = 0;
			$this->load->view('front/cart/body', $this->data,$nuke);
		}
		else {
			$nuke = 1;
			$this->session->set_flashdata('message', '<div class="alert alert-success alert">Promo tersedia dan dapat digunakan</div>');
			$this->load->view('front/cart/body', $this->data,$nuke);
		}
	}

	public function buy2($id)
	{
		// ambil data produk
		$row = $this->Produk_model->get_by_id($id);
		// cek id produk
		if($row)
		{
			// cek transaksi per user sedang login
			$cek_transaksi 	= $this->Cart_model->cek_transaksi();
			$id_trans 			= $cek_transaksi->id_trans;

			// cek data barang yang dibeli dan masuk ke tabel transaksi_detail
			$notransdet 				= $this->Cart_model->get_notransdet($id);

			// jika transaksi sudah ada
			if($this->input->post('counthi') > $this->input->post('stok')){
				$this->session->set_flashdata('message', '<div class="alert alert-danger alert">Quantity barang melebihi stok yang tersedia</div>');
				redirect(site_url('cart'));
			}else{
			if($cek_transaksi)
			{
				// jika barang yang dibeli sudah ada di cart == update
				if($notransdet)
				{
					$jmllama          = $notransdet->total_qty;
					$qty_new        	= $jmllama + $this->input->post('counthi');
					$subtotaltambah   = $qty_new * $row->harga_diskon;

					$jmlberatlama     = $row->berat;
					$jmlberattambah   = $jmlberatlama * $qty_new;
					$stok = array(
						'stok' => $this->input->post('stok')-$this->input->post('counthi'),
					);
					$this->Produk_model->update_stok($stok,$id);
					$data = array(
						'total_qty'  	=> $qty_new,
						'total_berat' => $jmlberattambah,
						'subtotal'  	=> $subtotaltambah,
					);

					// update transaksi
					$this->Cart_model->update_transdet($id,$data);

					// set pesan data berhasil dibuat
					$this->session->set_flashdata('message', '<div class="alert alert-success alert">Barang berhasil ditambahkan</div>');
					redirect(site_url('cart'));
				}
					// jika barang yang dibeli belum ada di cart == tambahkan
					else
					{
						$stok = array(
							'stok' => $this->input->post('stok')-$this->input->post('counthi'),
						);
						$this->Produk_model->update_stok($stok,$id);
						$data2 = array(
							'trans_id'  	=> $id_trans,
							'user'  			=> $this->session->userdata('user_id'),
							'produk_id' 	=> $id,
							'harga'  			=> $row->harga_diskon,
							'berat'  			=> $row->berat,
							'total_qty'  	=> $this->input->post('counthi'),
							'total_berat' => $row->berat*$this->input->post('counthi'),
							'subtotal'  	=> $row->harga_diskon*$this->input->post('counthi'),
							'catatan'     => $this->input->post('catatanhi'),
						);
						$this->Cart_model->insert_detail($data2);
						// set pesan data berhasil dibuat
						$this->session->set_flashdata('message', '<div class="alert alert-success alert">Barang berhasil ditambahkan</div>');
						redirect(site_url('cart'));
					}
			}
				// jika belum ada transaksi
				else
				{
					$data = array(
						'user_id'  => $this->session->userdata('user_id'),
					);
					$stok = array(
						'stok' => $this->input->post('stok')-$this->input->post('counthi'),
					);
					$this->Produk_model->update_stok($stok,$id);

					// eksekusi query INSERT
					$this->Cart_model->insert($data);

					$cek_transaksi 	= $this->Cart_model->cek_transaksi();

					$data2 = array(
						'trans_id'  	=> $cek_transaksi->id_trans,
						'user'  			=> $this->session->userdata('user_id'),
						'produk_id' 	=> $id,
						'harga'  			=> $row->harga_diskon,
						'berat'  			=> $row->berat,
						'total_qty'  	=> $this->input->post('counthi'),
						'total_berat' => $row->berat*$this->input->post('counthi'),
						'subtotal'  	=> $row->harga_diskon*$this->input->post('counthi'),
						'catatan'     => $this->input->post('catatanhi'),
					);

					$this->Cart_model->insert_detail($data2);

					// set pesan data berhasil dibuat
					$this->session->set_flashdata('message', '<div class="alert alert-success alert">Barang berhasil ditambahkan</div>');
					redirect(site_url('cart'));
				}
			}
		}
		else
		{
			$this->session->set_flashdata('message', '
			<div class="alert alert-block alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
				<i class="ace-icon fa fa-bullhorn green"></i> Data tidak ditemukan
			</div>');
			redirect(base_url());
		}
	}

	public function buy($id)
	{
		// ambil data produk
		$row = $this->Produk_model->get_by_id($id);

		// cek id produk
    if($row)
    {
			// cek transaksi per user sedang login
			$cek_transaksi 	= $this->Cart_model->cek_transaksi();
			$id_trans 			= $cek_transaksi->id_trans;

			// cek data barang yang dibeli dan masuk ke tabel transaksi_detail
			$notransdet 				= $this->Cart_model->get_notransdet($id);

			// jika transaksi sudah ada
			if($cek_transaksi)
			{
				// jika barang yang dibeli sudah ada di cart == update
				if($notransdet)
				{
					$stok = array(
						'stok' => $this->input->post('stokout')-1,
					);
					$this->Produk_model->update_stok($stok,$id);
					$jmllama          = $notransdet->total_qty;
					$qty_new        	= $jmllama + 1;
					$subtotaltambah   = $qty_new * $row->harga_diskon;

					$jmlberatlama     = $row->berat;
					$jmlberattambah   = $jmlberatlama * $qty_new;

					$data = array(
						'total_qty'  	=> $qty_new,
						'total_berat' => $jmlberattambah,
						'subtotal'  	=> $subtotaltambah,
					);

					// update transaksi
					$this->Cart_model->update_transdet($id,$data);

					// set pesan data berhasil dibuat
					$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-block alert-success"><i class="ace-icon fa fa-bullhorn green"></i> Barang berhasil ditambahkan</div></div>');
					redirect(base_url(),'refresh');
				}
					// jika barang yang dibeli belum ada di cart == tambahkan
					else
					{
						$stok = array(
							'stok' => $this->input->post('stokout')-1,
						);
						$this->Produk_model->update_stok($stok,$id);
						$data2 = array(
							'trans_id'  	=> $id_trans,
							'user'  			=> $this->session->userdata('user_id'),
							'produk_id' 	=> $id,
							'harga'  			=> $row->harga_diskon,
							'berat'  			=> $row->berat,
							'total_qty'  	=> '1',
							'total_berat' => $row->berat,
							'subtotal'  	=> $row->harga_diskon,
						);

						$this->Cart_model->insert_detail($data2);

						// set pesan data berhasil dibuat
						$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-block alert-success"><i class="ace-icon fa fa-bullhorn green"></i> Barang berhasil ditambahkan</div></div>');
						redirect(base_url(),'refresh');
					}
			}
				// jika belum ada transaksi
				else
				{
					$data = array(
						'user_id'  => $this->session->userdata('user_id'),
					);

					// eksekusi query INSERT
					$this->Cart_model->insert($data);

					$cek_transaksi 	= $this->Cart_model->cek_transaksi();

					$data2 = array(
						'trans_id'  	=> $cek_transaksi->id_trans,
						'user'  			=> $this->session->userdata('user_id'),
						'produk_id' 	=> $id,
						'harga'  			=> $row->harga_diskon,
						'berat'  			=> $row->berat,
						'total_qty'  	=> '1',
						'total_berat' => $row->berat,
						'subtotal'  	=> $row->harga_diskon,
					);

					$this->Cart_model->insert_detail($data2);

					// set pesan data berhasil dibuat
					$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-block alert-success"><i class="ace-icon fa fa-bullhorn green"></i> Barang berhasil ditambahkan</div></div>');
					redirect(base_url(),'refresh');
				}
		}
			else
			{
				$this->session->set_flashdata('message', '
				<div class="col-lg-12"><div class="alert alert-block alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
					<i class="ace-icon fa fa-bullhorn green"></i> Data tidak ditemukan
				</div></div>');
				redirect(base_url(),'refresh');
			}
	}

	public function update($id)
	{
		$id = $this->input->post('produk_id');

		$row 			= $this->Produk_model->get_by_id($id);

		$promo						= $this->input->post('promo');

		if(isset($_POST['update']))
		{
			if($this->input->post('qty')>$this->input->post('qtyholder') && $this->input->post('stok')>0 && ($this->input->post('qty')-$this->input->post('qtyholder'))<=$this->input->post('stok')){
				$stok = array(
					'stok'  	=> $this->input->post('stok')-($this->input->post('qty')-$this->input->post('qtyholder')),
				);
				$this->Produk_model->update_stok($stok,$id);
				$qty_new        	= $this->input->post('qty');
				$subtotaltambah   = $qty_new * $row->harga_diskon;
				$jmlberatlama     = $row->berat;
				$jmlberattambah   = $jmlberatlama * $qty_new;

				$data = array(
					'total_qty'  	=> $this->input->post('qty'),
					'total_berat' => $jmlberattambah,
					'subtotal'  	=> $subtotaltambah,
					'catatan' => $this->input->post('catatan'),
				);

				$this->Cart_model->update_transdet($id,$data);

				// set pesan data berhasil dibuat
				$this->session->set_flashdata('message', '<div class="alert alert-success alert">Berhasil Update Keranjang</div>');
				redirect(site_url('cart'));
			}else if($this->input->post('qty')<$this->input->post('qtyholder')&& $this->input->post('stok')>0){
				$stok = array(
					'stok'  	=> $this->input->post('stok')+($this->input->post('qtyholder')-$this->input->post('qty')),
				);
				$this->Produk_model->update_stok($stok,$id);
				$qty_new        	= $this->input->post('qty');
				$subtotaltambah   = $qty_new * $row->harga_diskon;
				$jmlberatlama     = $row->berat;
				$jmlberattambah   = $jmlberatlama * $qty_new;

				$data = array(
					'total_qty'  	=> $this->input->post('qty'),
					'total_berat' => $jmlberattambah,
					'subtotal'  	=> $subtotaltambah,
					'catatan' => $this->input->post('catatan'),
				);

				$this->Cart_model->update_transdet($id,$data);

				// set pesan data berhasil dibuat
				$this->session->set_flashdata('message', '<div class="alert alert-success alert">Berhasil Update Keranjang</div>');
				redirect(site_url('cart'));
			}else if($this->input->post('qty')<$this->input->post('qtyholder') && $this->input->post('stok')==0){
				$stok = array(
					'stok'  	=> $this->input->post('stok')+($this->input->post('qtyholder')-$this->input->post('qty')),
				);
				$this->Produk_model->update_stok($stok,$id);
				$qty_new        	= $this->input->post('qty');
				$subtotaltambah   = $qty_new * $row->harga_diskon;
				$jmlberatlama     = $row->berat;
				$jmlberattambah   = $jmlberatlama * $qty_new;

				$data = array(
					'total_qty'  	=> $this->input->post('qty'),
					'total_berat' => $jmlberattambah,
					'subtotal'  	=> $subtotaltambah,
					'catatan' => $this->input->post('catatan'),
				);

				$this->Cart_model->update_transdet($id,$data);

				// set pesan data berhasil dibuat
				$this->session->set_flashdata('message', '<div class="alert alert-success alert">Berhasil Update Keranjang</div>');
				redirect(site_url('cart'));
			}
			elseif ($this->input->post('qty')>$this->input->post('stok')) {
				$this->session->set_flashdata('message', '<div class="alert alert-warning alert">Quantity barang melebihi stok yang tersedia</div>');
				redirect(site_url('cart'));
			}
			$this->session->set_flashdata('message', '<div class="alert alert-success alert">Berhasil Update Keranjang</div>');
			redirect(site_url('cart'));
		}
		elseif(isset($_POST['delete']))
		{
	    if ($row)
	    {
				$stok = array(
					'stok'  	=> $this->input->post('stok')+$this->input->post('qtyholder'),
				);
				$this->Produk_model->update_stok($stok,$id);
				$cek_transaksi 	= $this->Cart_model->cek_transaksi();

				$id_trans 			= $cek_transaksi->id_trans;

	      $this->Cart_model->delete($id,$id_trans);
	      $this->session->set_flashdata('message', '<div class="alert alert-success alert">Barang berhasil dihapus</div>');
	      redirect(site_url('cart'));
	    }
	      // Jika data tidak ada
	      else
	      {
	        $this->session->set_flashdata('message', '<div class="alert alert-warning alert">Barang tidak ditemukan</div>');
	        redirect(site_url('cart'));
	      }
		}
	}

	public function empty_cart($id_trans)
	{
		$id_trans = $this->uri->segment(3);

		$this->Cart_model->kosongkan_keranjang($id_trans);

		$this->session->set_flashdata('message', '<div class="alert alert-block alert-success"><i class="ace-icon fa fa-bullhorn green"></i> Keranjang Anda telah dikosongkan</div>');

		redirect(site_url('cart'));
	}

	public function checkout()
	{
		$this->data['title'] 							= 'Transaksi Selesai';

		$id_trans = $this->input->post('id_trans');
		$datatot = array(
			'subtotal'  	=> $this->input->post('total'),
		);

		$this->Cart_model->updatecheckout($id_trans,$datatot);

		$promdet = array(
			'promo' => $this->input->post('kodepromo'),
			'trans' => $id_trans,
			'user' => $this->session->userdata('user_id'),
		);
		$this->Promo_model->inserPromoDet($promdet);

		$data = array(
			'kurir'  		=> $this->input->post('kurir'),
			'ongkir' 		=> $this->input->post('ongkir'),
			'service'  	=> $this->input->post('service'),
			'status'		=> '1',
		);

		$this->Cart_model->checkout($id_trans,$data);

		$this->data['cart_finished']	    			= $this->Cart_model->get_cart_per_customer_finished($id_trans);
		$this->data['customer_data'] 						= $this->Cart_model->get_data_customer();
		$this->data['total_berat_dan_subtotal'] = $this->Cart_model->get_total_berat_dan_subtotal_finished($id_trans);
		$this->data['data_bank'] 								= $this->Bank_model->get_all();


		$this->load->view('front/cart/finished', $this->data);

	}

	public function download_invoice($id)
	{
    $row 			= $this->Cart_model->get_by_id($id);

    if ($row)
    {
      ob_start();

			$this->data['cart_finished']	    				= $this->Cart_model->get_cart_per_customer_finished($id);
			$this->data['total_berat_dan_subtotal'] 	= $this->Cart_model->get_total_berat_dan_subtotal_finished($id);
			$this->data['customer_data'] 							= $this->Cart_model->get_data_customer();
			$this->data['data_bank'] 									= $this->Bank_model->get_all();

      $this->load->view('front/cart/download_invoice', $this->data);

      $html = ob_get_contents();
      $html = '<title style="font-family: freeserif">'.nl2br($html).'</title>';
      ob_end_clean();

      require_once('application/libraries/html2pdf/html2pdf.class.php');
      $pdf = new HTML2PDF('P', 'A4', 'en', true, 'UTF-8', array(10, 0, 10, 0));
      $pdf->setDefaultFont('Arial');
      $pdf->setTestTdInOnePage(false);
      $pdf->WriteHTML($html);
      $pdf->Output('download_invoice.pdf');
    }
      else
      {
        $this->session->set_flashdata('message', "<script>alert('Data tidak ditemukan');</script>");
        redirect(site_url());
      }

	}

	public function history()
	{
		$this->data['title'] 							= 'Daftar Transaksi';
		$this->data['cek_cart_history']	  = $this->Cart_model->cart_history()->row();
		$this->data['cart_history']	    	= $this->Cart_model->cart_history()->result();

		$this->load->view('front/cart/history', $this->data);
	}

	public function history_detail($id)
	{
		$this->data['title'] 								= 'Detail Riwayat Transaksi';

		$this->data['history_detail']	    	= $this->Cart_model->history_detail($id)->result();
		$this->data['history_detail_row']		= $this->Cart_model->history_detail($id)->row();
		$this->data['history_total_berat'] 	= $this->Cart_model->history_total_berat($id);
		$this->data['subtotal_history'] 		= $this->Cart_model->subtotal_history($id);

		$this->load->view('front/cart/history_detail', $this->data);
	}

	public function konfirm($id){
		$this->data['title'] 							= 'Detail Riwayat Transaksi';
		// $data = array(
		// 	'status'		=> '4',
		// );
		// $testi = array(
		// 	'id_users' => $this->input->post('usid'),
		// 	'item_id' => $this->input->post('prod'),
		// 	'rating' => $this->input->post('rate'),
		// 	'testimoni' => $this->input->post('testi'),
		// 	'date_crate' => date("Y/m/d"),
		// );
		//$this->Testimoni_model->insertTesti($testi);
		//$this->Testimoni_model->get_id_test($id);
		$this->data['cek_cart_history']	  	= $this->Cart_model->cart_history()->row();
		$this->data['cart_history']	    		= $this->Cart_model->cart_history()->result();
		$this->data['history_detail']	    	= $this->Cart_model->history_detail($id)->result();
		$this->data['history_detail_row']		= $this->Cart_model->history_detail($id)->row();
		$this->data['history_total_berat'] 	= $this->Cart_model->history_total_berat($id);
		$this->data['subtotal_history'] 		= $this->Cart_model->subtotal_history($id);

		//$this->load->view('front/cart/history_detail', $this->data);
		$this->load->view('front/page/insert_testi');
	}

	public function kurirdata()
	{
		$this->load->library('rajaongkir');
		$tujuan	= $this->input->get('kota');
		$dari		= '278';
		$berat	= $this->input->get('berat');
		$kurir	= $this->input->get('kurir');
		$dc			= $this->rajaongkir->cost($dari,$tujuan,$berat,$kurir);
		$data		= json_decode($dc,TRUE);
		$o			= '';

		if(!empty($data['rajaongkir']['results']))
		{
			$data['data']=$data['rajaongkir']['results'][0]['costs'];
			$this->load->view('front/cart/datakurir',$data);
		}
	}
}
