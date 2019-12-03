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
  public function _rules()
  {
    $this->form_validation->set_rules('kode_promo', 'Kode Promo', 'trim|required');

    // set pesan form validasi error
    $this->form_validation->set_message('required', '{field} wajib diisi');

    $this->form_validation->set_rules('id_promo', 'id_promo', 'trim');
    $this->form_validation->set_error_delimiters('<div class="alert alert-danger alert" align="left">', '</div>');
  }

  public function create()
  {
    $this->data['title']          = 'Tambah Data '.$this->data['module'];
    $this->data['action']         = site_url('admin/promo/create_action');
    $this->data['button_submit']  = 'Simpan';
    $this->data['button_reset']   = 'Reset';

    $this->data['id_promo'] = array(
      'name'  => 'id_promo',
      'id'    => 'id_promo',
      'type'  => 'hidden',
    );
    $this->data['kode_promo'] = array(
      'name'  => 'kode_promo',
      'id'    => 'kode_promo',
      'class' => 'form-control',
      'placeholder'=>'Ex : HAPPY',
    );
    $this->data['ket_promo'] = array(
      'name'  => 'ket_promo',
      'id'    => 'ket_promo',
      'class' => 'form-control',
      'placeholder'=>'Ex : Promo akhir tahun',
    );
    $this->data['discount'] = array(
      'name'  => 'discount',
      'id'    => 'discount',
      'class' => 'form-control',
      'placeholder'=>'Ex : 10',
    );
    $this->data['max_pembelian'] = array(
      'name'  => 'max_pembelian',
      'id'    => 'max_pembelian',
      'class' => 'form-control',
      'placeholder'=>'Ex : 10000',
    );
    $this->data['max_users'] = array(
      'name'  => 'max_users',
      'id'    => 'max_users',
      'class' => 'form-control',
      'placeholder'=>'Ex : 20',
    );

    $this->load->view('back/promo/promo_add', $this->data);
  }

  public function create_action()
  {
    $this->_rules();

    if ($this->form_validation->run() == FALSE)
    {
      $this->create();
    }
      else
      {
        $data = array(
          'kode_promo'  => $this->input->post('kode_promo'),
          'ket_promo'  => $this->input->post('ket_promo'),
          'discount'  => $this->input->post('discount'),
          'max_pembelian'  => $this->input->post('max_pembelian'),
          'max_users'  => $this->input->post('max_users'),
        );

        // eksekusi query INSERT
        $this->Promo_model->insert($data);
        // set pesan data berhasil dibuat
        $this->session->set_flashdata('message', '
        <div class="alert alert-block alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
					<i class="ace-icon fa fa-bullhorn green"></i> Data berhasil disimpan
        </div>');
        redirect(site_url('admin/promo'));
      }
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
      $row[] = '<p style="text-align: center">'.$data_promo->discount.' %</p>';
      $row[] = '<p style="text-align: center">'.number_format($data_promo->max_pembelian).'</p>';
      $row[] = '<p style="text-align: center">'.$data_promo->max_users.'</p>';

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

  public function update($id)
  {
    $row = $this->Promo_model->get_by_id($id);
    $this->data['promo'] = $this->Promo_model->get_by_id($id);

    if ($row)
    {
      $this->data['title']          = 'Ubah Data '.$this->data['module'];
      $this->data['action']         = site_url('admin/promo/update_action');
      $this->data['button_submit']  = 'Simpan';
      $this->data['button_reset']   = 'Reset';

      $this->data['id_promo'] = array(
        'name'  => 'id_promo',
        'id'    => 'id_promo',
        'type'  => 'hidden',
      );
      $this->data['kode_promo'] = array(
        'name'  => 'kode_promo',
        'id'    => 'kode_promo',
        'class' => 'form-control',
      );
      $this->data['ket_promo'] = array(
        'name'  => 'ket_promo',
        'id'    => 'ket_promo',
        'class' => 'form-control',
      );
      $this->data['discount'] = array(
        'name'  => 'discount',
        'id'    => 'discount',
        'class' => 'form-control',
      );
      $this->data['max_pembelian'] = array(
        'name'  => 'max_pembelian',
        'id'    => 'max_pembelian',
        'class' => 'form-control',
      );
      $this->data['max_users'] = array(
        'name'  => 'max_users',
        'id'    => 'max_users',
        'class' => 'form-control',
      );

      $this->load->view('back/promo/promo_edit', $this->data);
    }
      else
      {
        $this->session->set_flashdata('message', '
        <div class="alert alert-block alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
          <i class="ace-icon fa fa-bullhorn green"></i> Data tidak ditemukan
        </div>');
        redirect(site_url('admin/blog'));
      }
  }


  public function update_action()
  {
    $this->_rules();

    if ($this->form_validation->run() == FALSE)
    {
      $this->update($this->input->post('id_promo'));
    }
      else
      {
        $data = array(
          'kode_promo'  => $this->input->post('kode_promo'),
          'ket_promo'  => $this->input->post('ket_promo'),
          'discount'  => $this->input->post('discount'),
          'max_pembelian'  => $this->input->post('max_pembelian'),
          'max_users'  => $this->input->post('max_users'),
        );

        $this->Promo_model->update($this->input->post('id_promo'), $data);
        $this->session->set_flashdata('message', '
        <div class="alert alert-block alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
					<i class="ace-icon fa fa-bullhorn green"></i> Data berhasil disimpan
        </div>');
        redirect(site_url('admin/promo'));
      }
  }

  public function delete($id){
    $delete = $this->Promo_model->get_by_id($id);

    if($delete)
    {
      $this->Promo_model->delete($id);
      $this->session->set_flashdata('message', '
      <div class="alert alert-block alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
        <i class="ace-icon fa fa-bullhorn green"></i> Data berhasil dihapus
      </div>');
      redirect(site_url('admin/promo'));
    }
      // Jika data tidak ada
      else
      {
        $this->session->set_flashdata('message', '
        <div class="alert alert-block alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button>
					<i class="ace-icon fa fa-bullhorn green"></i> Data tidak ditemukan
        </div>');
        redirect(site_url('admin/promo'));
      }
  }

}
