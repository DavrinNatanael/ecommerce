<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Komplain_model extends CI_Model
{
  public $table = 'komplain';
  public $table2 = 'transaksi';
  public $id    = 'id_komplain';
  public $order = 'DESC';

  function get_all(){

    $this->db->join('users', 'komplain.user = users.id');
    return $this->db->get($this->table)->result();
  }
  function get_by_id($id)
  {
    $this->db->where('transid', $id);
    return $this->db->get($this->table)->row();
  }

  function getkomplaindet($komid){
    $this->db->where('id_komplain', $komid);
    return $this->db->get($this->table)->row();
  }

  function getProductKomplain($kom){
    $this->db->join('transaksi_detail', 'komplain.transid = transaksi_detail.trans_id');
    $this->db->join('produk', 'transaksi_detail.produk_id = produk.id_produk');
    $this->db->where('transid',$kom);
    return $this->db->get($this->table)->result();
  }


  function updatekomplain($id,$status){
    $this->db->where('id_komplain',$id);
    $this->db->update($this->table,$status);
  }

  function updatetranskomplain($id,$status){
    $this->db->where('id_trans',$id);
    $this->db->update($this->table2,$status);
  }

}
