<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Testing extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    $this->load->model('Testing_model');


		if (!$this->ion_auth->logged_in()){redirect('admin/auth/login', 'refresh');}
  }

  public function index()
  {
    $this->data['title'] = "Testing";
    $this->data['testing']             = $this->Testing_model->get_all();
    $this->data['mae']             = $this->Testing_model->get_mae();
    $this->data['precision']             = $this->Testing_model->get_precision();
    $this->data['recall']             = $this->Testing_model->get_recall();
    $this->load->view('back/test/testing', $this->data);
  }

}
