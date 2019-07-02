<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class recommendation extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    $this->load->model('Produk_model');
    $this->load->model('recommendation_model');

    $this->data['module'] = 'recommendation';

    if (!$this->ion_auth->logged_in()){redirect('admin/auth/login', 'refresh');}
    // elseif($this->ion_auth->is_user()){redirect('admin/auth/login', 'refresh');}
  }

  public function index()
  {
    $this->data['title'] = 'Data '.$this->data['module'];

    $this->data['recommendation_data'] = $this->recommendation_model->get_all();
    $this->load->view('back/recommendation/recommendation_list', $this->data);
  }

  public function ajax_list()
	{
		//get_datatables terletak di model
    $list = $this->recommendation_model->get_datatables();
    $data = array();
		$no = $_POST['start'];

    // Membuat loop/ perulangan sebagai Cuci_model
    foreach ($list as $data_recommendation) {
			$no++;
			$row = array();
      $row[] = '<p style="text-align: center">'.$data_recommendation->no_urut.'</p>';
      $row[] = '<p style="text-align: left">'.$data_recommendation->judul_produk.'</p>';
      // $row[] = '<p style="text-align: center">'.$data_recommendation->created.'</p>';

      // Penambahan tombol edit dan hapus
      $row[] = '
      <p style="text-align: center">
      	<a class="btn btn-sm btn-warning" href="'.base_url('admin/recommendation/update/').$data_recommendation->id_recommendation.'" title="Edit"><i class="fa fa-pencil"></i></a>
        <a class="btn btn-sm btn-danger" href="'.base_url('admin/recommendation/delete/').$data_recommendation->id_recommendation.'" title="Hapus" onclick="javasciprt: return confirm(\'Apakah Anda yakin ?\')"><i class="glyphicon glyphicon-remove"></i></a>
			</p>';

      $data[] = $row;
    }

    $output = array(
              "draw" => $_POST['draw'],
              "recordsTotal" => $this->recommendation_model->count_all(),
              "recordsFiltered" => $this->recommendation_model->count_filtered(),
              "data" => $data
              );
    //output to json format
    echo json_encode($output);
  }

  public function create()
  {
    $this->data['title']          = 'Tambah Data '.$this->data['module'];
    $this->data['action']         = site_url('admin/recommendation/create_action');
    $this->data['button_submit']  = 'Simpan';
    $this->data['button_reset']   = 'Reset';

    $this->data['no_urut'] = array(
      'name'      => 'no_urut',
      'id'        => 'no_urut',
      'class'     => 'form-control',
      'required'  => '',
      'type'      => 'number',
      'value'     => $this->form_validation->set_value('no_urut'),
    );

    $this->data['produk_id'] = array(
      'name'      => 'produk_id',
      'id'        => 'produk_id',
      'class'     => 'form-control',
      'required'  => '',
    );

    $this->data['get_combo_produk'] = $this->Produk_model->get_combo_produk();

    $this->load->view('back/recommendation/recommendation_add', $this->data);
  }

  public function create_action()
  {
    $this->form_validation->set_rules('no_urut', 'No. Urut', 'trim|required|is_unique[recommendation.no_urut]');
    $this->_rules();

    if ($this->form_validation->run() == FALSE)
    {
      $this->create();
    }
      else
      {
        $data = array(
          'no_urut'     => $this->input->post('no_urut'),
          'produk_id'   => $this->input->post('produk_id'),
          'created_by'  => $this->session->userdata('username'),
        );

        // eksekusi query INSERT
        $this->recommendation_model->insert($data);
        // set pesan data berhasil dibuat
        $this->session->set_flashdata('message', '<div class="alert alert-success alert">Data berhasil dibuat</div>');
        redirect(site_url('admin/recommendation'));
      }
  }

  public function update($id)
  {
    $row = $this->recommendation_model->get_by_id($id);
    $this->data['recommendation'] = $this->recommendation_model->get_by_id($id);

    if ($row)
    {
      $this->data['title']          = 'Ubah Data '.$this->data['module'];
      $this->data['action']         = site_url('admin/recommendation/update_action');
      $this->data['button_submit']  = 'Simpan';
      $this->data['button_reset']   = 'Reset';

      $this->data['id_recommendation'] = array(
        'name'  => 'id_recommendation',
        'id'    => 'id_recommendation',
        'type'  => 'hidden',
      );

      $this->data['no_urut'] = array(
        'name'  => 'no_urut',
        'id'    => 'no_urut',
        'class' => 'form-control',
        'required'    => '',
        'type'    => 'number',
      );

      $this->data['produk_id'] = array(
        'name'  => 'produk_id',
        'id'    => 'produk_id',
        'class' => 'form-control',
        'required'    => '',
      );

      $this->data['get_combo_produk'] = $this->Produk_model->get_combo_produk();

      $this->load->view('back/recommendation/recommendation_edit', $this->data);
    }
      else
      {
        $this->session->set_flashdata('message', '<div class="alert alert-warning alert">Data tidak ditemukan</div>');
        redirect(site_url('admin/recommendation'));
      }
  }

  public function update_action()
  {
    $this->form_validation->set_rules('no_urut', 'No. Urut', 'trim|required');
    $this->_rules();

    if ($this->form_validation->run() == FALSE)
    {
      $this->update($this->input->post('id_recommendation'));
    }
      else
      {
        $data = array(
          'no_urut'       => $this->input->post('no_urut'),
          'produk_id'     => $this->input->post('produk_id'),
          'modified_by'   => $this->session->userdata('username'),
        );

        $this->recommendation_model->update($this->input->post('id_recommendation'), $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success alert">Edit Data Berhasil</div>');
        redirect(site_url('admin/recommendation'));
      }
  }

  public function delete($id)
  {
    $row = $this->recommendation_model->get_by_id($id);

    if ($row)
    {
      $this->recommendation_model->delete($id);
      $this->session->set_flashdata('message', '<div class="alert alert-success alert">Data berhasil dihapus</div>');
      redirect(site_url('admin/recommendation'));
    }
      // Jika data tidak ada
      else
      {
        $this->session->set_flashdata('message', '<div class="alert alert-warning alert">Data tidak ditemukan</div>');
        redirect(site_url('admin/recommendation'));
      }
  }

  public function _rules()
  {
    // set pesan form validasi error
    $this->form_validation->set_message('required', '{field} wajib diisi');
    $this->form_validation->set_message('is_unique', '{field} telah ada, silahkan ganti');

    $this->form_validation->set_rules('id_recommendation', 'id_recommendation', 'trim');
    $this->form_validation->set_error_delimiters('<div class="alert alert-danger alert">', '</div>');
  }

}
