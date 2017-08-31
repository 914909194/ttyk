<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Course extends CI_Controller{
    public function __construct(){
        parent::__construct();
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS,DELETE');
        header('Access-Control-Allow-Headers:X-Requested-With,Content-Type');
        $this->load->model('course_model');
    }
//courseList_teacher
public function courseList_teacher(){
      $result =  $this->course_model->course_info();
      echo json_encode($result);
}
}
?>