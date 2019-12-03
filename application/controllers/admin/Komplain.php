<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class komplain extends CI_Controller {
  function __construct()
  {
    parent::__construct();
    $this->load->helper('berat_helper');
    $this->load->helper(array('form', 'url'));

    $this->load->model('Cart_model');
    $this->load->model('Company_model');
    $this->load->model('Komplain_model');

    $this->data['module'] = 'Komplain';

    $this->data['company_data'] 			= $this->Company_model->get_by_company();

    if (!$this->ion_auth->logged_in()){redirect('admin/auth/login', 'refresh');}
  }

  public function index()
  {
    $this->data['title']            = 'Data Komplain';
    $this->data['komplain_data']   = $this->Komplain_model->get_all();
    $this->load->view('back/komplain/komplain_list', $this->data);
  }

  public function view($id)
  {
    $row      = $this->Komplain_model->get_by_id($id);
    $invoice = $row->id_komplain;

    $this->data['komplain'] = $this->Komplain_model->get_by_id($id);

    if($row)
    {
      $komid = $this->input->post('komid');
      $this->data['title']              = 'Detail '.$this->data['module'];
      $this->data['produk']             = $this->Komplain_model->getProductKomplain($id);
      $this->data['komplaindetail']     = $this->Komplain_model->getkomplaindet($komid);

      $this->load->view('back/komplain/komplain_detail', $this->data);
    }
      else
      {
        $this->session->set_flashdata('message', '<div class="alert alert-warning alert">Data tidak ditemukan</div>');
        redirect(site_url('admin/komplain'));
      }
  }

  public function accp($id){
    $status= array(
      'no_resi' => $this->input->post('resi'),
      'selesai' => 2,
    );
    // $transidval = $this->input->post('transidval');
    $this->Komplain_model->updatekomplain($id,$status);
    $this->data['title']            = 'Data Komplain';
    $this->data['komplain_data']   = $this->Komplain_model->get_all();
    $this->load->view('back/komplain/komplain_list', $this->data);
  }

  public function acc($id){

    if ($_FILES['foto']['error'] <> 4)
		{
			$nmfile = date('YmdHis');

			/* memanggil library upload ci */
			$config['upload_path']      = './assets/images/komplain/';
			$config['allowed_types']    = 'jpg|jpeg|png|gif';
			$config['max_size']         = '2048'; // 2 MB
			$config['file_name']        = $nmfile; //nama yang terupload nantinya

			$this->load->library('upload', $config);

			if (!$this->upload->do_upload('foto'))
			{
				//file gagal diupload -> kembali ke form tambah
				$error = array('error' => $this->upload->display_errors());
				$this->session->set_flashdata('message', '<div class="alert alert-danger alert">'.$error['error'].'</div>');

				// $this->create();
			}
				//file berhasil diupload -> lanjutkan ke query INSERT
				else
				{
					$foto = $this->upload->data();
					$thumbnail                = $config['file_name'];
					// library yang disediakan codeigniter
					$config['image_library']  = 'gd2';
					// gambar yang akan dibuat thumbnail
					$config['source_image']   = './assets/images/komplain/'.$foto['file_name'].'';
					// rasio resolusi
					$config['maintain_ratio'] = FALSE;
					// lebar
					$config['width']          = 400	;
					// tinggi
					$config['height']         = 400;

					$this->load->library('image_lib', $config);
					$this->image_lib->resize();

          $status= array(
            'foto_rek' => $nmfile,
            'foto_rek_type' => $foto['file_ext'],
            'selesai' => 2,
            'status' =>5,
          );
          $transidval = $this->input->post('transidval');
          $transtat = array(
            'komplain_status' => 0,
          );
          $this->Komplain_model->updatetranskomplain($transidval,$transtat);
          $this->Komplain_model->updatekomplain($id,$status);
          $this->data['title']            = 'Data Komplain';
          $this->data['komplain_data']   = $this->Komplain_model->get_all();
          $this->load->view('back/komplain/komplain_list', $this->data);
				}
		}

  }
  public function decline($id){
    $status= array(
      'selesai' => 2,
    );
    $this->Komplain_model->updatekomplain($id,$status);
    $this->data['title']            = 'Data Komplain';
    $this->data['komplain_data']   = $this->Komplain_model->get_all();
    $this->load->view('back/komplain/komplain_list', $this->data);
  }

  public function accf($id){
    $status= array(
      'selesai' => 1,
    );
    // $transidval = $this->input->post('transidval');
    // $transtat = array(
    //   'komplain_status' => 0,
    // );
    // $this->Komplain_model->updatetranskomplain($transidval,$transtat);
    $this->Komplain_model->updatekomplain($id,$status);
    $this->data['title']            = 'Data Komplain';
    $this->data['komplain_data']   = $this->Komplain_model->get_all();
    $this->load->view('back/komplain/komplain_list', $this->data);
  }

}
