<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Promo_model extends CI_Model
{
  public $table = 'promo';
  public $table2 = 'promo_detail';
  public $id = 'id_promo';
  public $order ='DESC';

  var $column = array('kode_promo','ket_promo','discount','max_pembelian','max_users');

  private function _get_datatables_query()
  {
    $this->db->from($this->table);

    $i = 0;

		foreach ($this->column as $item) // loop column
		{
			if($_POST['search']['value']) // if datatable send POST for search
			{

				if($i===0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				}
				else
				{
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$column[$i] = $item; // set column array variable to order processing
			$i++;
		}

		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		}
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}
  function insert($data)
  {
    $this->db->insert($this->table, $data);
  }

  function kuranguser($nuklir,$promuser)
  {
    $this->db->where('kode_promo',$nuklir);
    $this->db->update($this->table, $promuser);
  }

  function get_by_id($id)
  {
    $this->db->where($this->id, $id);
    return $this->db->get($this->table)->row();
  }
  function update($id, $data)
  {
    $this->db->where($this->id,$id);
    $this->db->update($this->table, $data);
  }

  function delete($id)
  {
    $this->db->where($this->id, $id);
    $this->db->delete($this->table);
  }

  public function get_datatables()
	{
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}
  public function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}
  public function count_all()
	{
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}
  function get_all()
  {
    return $this->db->get($this->table)->result();
  }

    public function get_promo($idp)
    {
      $this->db->where('kode_promo',$idp);
      return $this->db->get($this->table)->row();
    }

    public function userPromoCheck($kode)
    {
      $this->db->join('promo', 'promo_detail.promo = promo.id_promo');
      $this->db->where('user',$this->session->userdata('user_id'));
      $this->db->where('kode_promo',$kode);
      return $this->db->get($this->table2)->row();
    }

    public function inserPromoDet($promdet){
      $this->db->insert($this->table2, $promdet);
    }
}

?>
