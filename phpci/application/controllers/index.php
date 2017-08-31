<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Index extends CI_Controller{
    public function __construct(){
        parent::__construct();
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS,DELETE');
        header('Access-Control-Allow-Headers:X-Requested-With,Content-Type');
        $this->load->model('index_model');
    }
//    teacher_list get
    public function teacher_list(){
        $catalog=$this->input->post('catalog');
        $result=$this->index_model->teacher_list($catalog);
        echo json_encode($result);
    }
//    teacher_list order by asc years
    public function list_asc_order_years(){
        $dowell=$this->input->post('dowell');
        $result=$this->index_model->list_asc_order_years($dowell);
        echo json_encode($result);
    }
//    teacher_list order by desc years
    public function list_desc_order_years(){
        $dowell=$this->input->post('dowell');
        $result=$this->index_model->list_desc_order_years($dowell);
        echo json_encode($result);
    }
    //    teacher_list order by asc price
    public function list_asc_order_price(){
        $dowell=$this->input->post('dowell');
        $result=$this->index_model->list_asc_order_price($dowell);
        echo json_encode($result);
    }
    //    teacher_list order by desc price
    public function list_desc_order_price(){
        $dowell=$this->input->post('dowell');
        $result=$this->index_model->list_desc_order_price($dowell);
        echo json_encode($result);
    }
    //system info
    public function system_message(){
        $result=$this->index_model->system_message();
        echo json_encode($result);
    }
    //get the data of chat
    public function recommend(){
        $student_id=$this->input->get('student_id');
        $result=$this->index_model->recommend($student_id);
        echo json_encode($result);
    }
    //   focus or not when open
    public function index_focus(){
        $s_id=$this->input->get('s_id');
        $result=$this->index_model->index_focus($s_id);
        echo json_encode($result);
    }
    //focus or not when click
    public function change_focus(){
        $s_id=$this->input->post('s_id');
        $t_id=$this->input->post('t_id');
        $result=$this->index_model->change_focus($s_id,$t_id);
        if ($result) {
            $this->index_model->del_focus($s_id,$t_id);
            echo 'del';
        } else {
            $this->index_model->add_focus($s_id,$t_id);
            echo 'add';
        }

        // echo json_encode($result);
    }
}?>