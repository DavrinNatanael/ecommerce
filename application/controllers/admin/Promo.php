<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Promo extends CI_Controller {

  function __construct()
  {
    parent::__construct();
    $this->load->model('Promo_model');

    $this->data['module'] = 'Promo';

		if (!$this->ion_auth->logged_in()){redirect('admin/auth/login', 'refresh');}
  }
  public function index()
  {
    $this->data['title'] = "Promo";

    $this->data['slider_data'] = $this->Promo_model->get_all();
    $this->load->view('back/promo/promo_list', $this->data);
  }

  public function ajax_list()
	{
    //get_datatables terletak di model
    $list = $this->Promo_model->get_datatables();
    $data = array();
		$no = $_POST['start'];

    // Membuat loop/ perulangan
    foreach ($list as $data_promo) {
			$no++;
			$row = array();
      $row[] = '<p style="text-align: center">'.$no. '</p>';
      $row[] = '<p style="text-align: left">'.$data_promo->kode_promo.'</p>';
      $row[] = '<p style="text-align: center">'.$data_promo->ket_promo.'</p>';
      $row[] = '<p style="text-align: center">'.$data_promo->discount.'</p>';
      $row[] = '<p style="text-align: center">'.number_format($data_promo->max_pembelian).'</p>';
      $row[] = '<p style="text-align: center">'.$data_promo->max_user.'</p>';

      // Penambahan tombol edit dan hapus
      $row[] = '
      <p style="text-align: center">
      	<a class="btn btn-sm btn-warning" href="'.base_url('admin/promo/update/').$data_promo->id_promo.'" title="Edit"><i class="fa fa-pencil"></i></a>
        <a class="btn btn-sm btn-danger" href="'.base_url('admin/promo/delete/').$data_promo->id_promo.'" title="Hapus" onclick="javasciprt: return confirm(\'Apakah Anda yakin ?\')"><i class="fa fa-remove"></i></a>
			</p>';

      $data[] = $row;
    }

    $output = array(
              "draw" => $_POST['draw'],
              "recordsTotal" => $this->Promo_model->count_all(),
              "recordsFiltered" => $this->Promo_model->count_filtered(),
              "data" => $data
              );
    //output to json format
    echo json_encode($output);
  }

}
