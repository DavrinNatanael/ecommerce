<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Testimoni_model extends CI_Model
{
  public $table   = 'rating';
  public $table2  = 'users';

  function insertTesti($testi){
    $this->db->insert($this->table, $testi);
  }

  function testiUser($prd){
    $this->db->where('id_produk',$prd);
    return $this->db->get($this->table)->result();
  }
}
?>
