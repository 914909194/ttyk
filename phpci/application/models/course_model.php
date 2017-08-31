<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Course_model extends CI_Model{
//courseList_teacher course_info
public function course_info(){
     $sql="select * from teacher";
     $query=$this->db->query($sql);
      return $query->result();
}



}
?>