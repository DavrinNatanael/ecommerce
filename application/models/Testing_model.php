<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Testing_model extends CI_Model
{
  public $table = 'recommendation';
  public $id    = 'id_featured';
  public $order = 'DESC';

  function get_all(){
    $this->db->group_by('user_id');
    $this->db->order_by('user_id', 'ASC');
    return $this->db->get($this->table)->result();
  }

  function get_mae(){
    $this->db->group_by('user_id');
    $this->db->order_by('user_id', 'ASC');
    $this->db->select_avg('pengujian','pengujian');
    return $this->db->get($this->table)->result();
  }
  function get_precision(){
    $query = $this->db->query("SELECT COUNT(IF(rating>='3',1, NULL)) 'rating',COUNT(IF(prediksi>='3',1, NULL)) 'prediksi' FROM recommendation GROUP BY `user_id` ORDER BY `user_id`");
    return $query->result();
  }
  function get_recall(){
    $query = $this->db->query("SELECT COUNT(IF(rating>='3',1, NULL)) 'rating',COUNT(IF(prediksi>='3',1, NULL)) 'prediksi' FROM recommendation GROUP BY `user_id` ORDER BY `user_id`");
    return $query->result();
  }
}
