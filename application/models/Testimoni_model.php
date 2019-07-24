<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Testimoni_model extends CI_Model
{
  public $table   = 'rating';
  public $table2  = 'users';
  public $table3  = 'transaksi_detail';

  function get_last_id(){
    $this->db->select_max('trans_id', 'trans_id');
    return $this->db->get($this->table3)->row();
  }

  function testiPending($id){
    $this->db->join('produk', 'transaksi_detail.produk_id=produk.id_produk');
    $this->db->join('transaksi', 'transaksi_detail.trans_id=transaksi.id_trans');
    $this->db->where('trans_id',$id);
    $this->db->where('user',$this->session->userdata('user_id'));
    $this->db->where_not_in('rating_status',1);
    $this->db->where('status',5);
    return $this->db->get($this->table3)->result();
  }

  function testiPendingdet($id){
    $this->db->where('trans_id',$id);
    $this->db->where_not_in('rating_status',1);
    $this->db->join('produk', 'transaksi_detail.produk_id=produk.id_produk');
    return $this->db->get($this->table3)->row();
  }

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
