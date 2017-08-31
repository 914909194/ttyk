<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Index_model extends CI_Model{
//   get all teacher_list in tea_id
public function teacher_list($id){

    $sql="select * from teacher where dowell='$id' order by id desc";
    $query=$this->db->query($sql);
    return $query->result();
}
//get teacher_list by years asc order
public function list_asc_order_years($dowell){
    $sql="select * from teacher where dowell='$dowell' order by years asc";
    $query=$this->db->query($sql);
    return $query->result();
}
//get teacher_list by years desc order
public function list_desc_order_years($dowell){
    $sql="select * from teacher where dowell='$dowell' order by years desc";
    $query=$this->db->query($sql);
    return $query->result();
}
//get teacher_list by price asc order
public function list_asc_order_price($dowell){
    $sql="select * from teacher where dowell='$dowell' order by price2 asc";
    $query=$this->db->query($sql);
    return $query->result();
}
//get teacher_list by years desc order
public function list_desc_order_price($dowell){
    $sql="select * from teacher where dowell='$dowell' order by price2 desc";
    $query=$this->db->query($sql);
    return $query->result();
} 
//system info
public function system_message(){
    $sql='select * from message  order by system_time desc';
    $query=$this->db->query($sql);
    return $query->result();
}
//get the list of chat
public function recommend($student_id){
    $sql="select * from message where student_id='$student_id' order by student_time desc";
    $query=$this->db->query($sql);
    return $query->result();
}
//focus or not 
public function index_focus($s_id){
    $sql="select * from attention where s_id='$s_id'";
    $query=$this->db->query($sql);
    return $query->result();
}
//focus or not when click
public function change_focus($s_id,$t_id){
    $sql="select * from attention where $s_id='$s_id' and $t_id='$t_id'";
    $query=$this->db->query($sql);
    return $query->row();
}
public function del_focus($s_id,$t_id){
    $sql="update student set attention_num=attention_num-1 where id='$s_id'";
    $this->db->query($sql);
    $sql="delete from attention where $s_id='$s_id' and $t_id='$t_id'";
    $query=$this->db->query($sql);
    return $query;
}
public function add_focus($s_id,$t_id){
    $sql="update student set attention_num=attention_num+1 where id='$s_id'";
    $this->db->query($sql);    
    $sql="insert into attention(s_id,t_id) values('$s_id','$t_id')";
    $query=$this->db->query($sql);
    return $query;
}
}
?>