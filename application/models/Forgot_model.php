<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Forgot_model extends CI_Model
{
  public $table = 'users';
  public $id    = 'id';
  public $order = 'DESC';

  function get_by_id($id,$email)
  {
    $this->db->where('username','davrinsyn');
    $this->db->where('email', 'davrinsyn@gmail.com');
    return $this->db->get($this->table)->row();
  }

}
