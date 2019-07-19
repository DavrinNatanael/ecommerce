<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Testimoni_model extends CI_Model
{
  public $table   = 'rating';
  public $table2  = 'users';

  function insertTesti($testi){
    $this->db->insert($this->table, $testi);
  }

  function testiUser($prd){
    $this->db->join('users', 'rating.id_users=users.id');
    $this->db->where('item_id',$prd);
    return $this->db->get($this->table)->result();
  }
}
?>
