<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// 刘金良
class Users_model extends CI_Model {
// 学生注册
	public function insert_student($account,$password,$phone,$sex){
		$arr = array(
			'account'=>$account,
			'password'=>$password,
			'phone'=>$phone,
			'sex'=>$sex
		);
		return $this->db->insert('student',$arr);
	}
// 教师注册
	public function insert_teacher($account,$password,$phone,$sex,$school,$education){
		$arr = array(
			'account'=>$account,
			'password'=>$password,
			'sex'=>$sex,
			'school'=>$school,
			'xueli'=>$education
		);
		return $this->db->insert('teacher',$arr);
	}
//注册验证账号
	public function test($account){
		$sql = "select * from student,teacher where student.account='$account' or teacher.account='$account'";
		$result = $this->db->query($sql)->row();
		if (!$result) return 1;
	}
// 登录验证
	public function login($account,$password){
		$sql1 = "select * from student where account='$account' and password='$password'";
		$sql2 = "select * from teacher where account='$account' and password='$password'";
		return $this->db->query($sql1)->row() ? $this->db->query($sql1)->row() : $this->db->query($sql2)->row();
	}
// 查找关注
	public function attention($id){
		return $this->db->from('attention')->where('attention.s_id',$id)->join('teacher','attention.t_id=teacher.id')->get()->result();
	}
//关注和取消关注
 	public function toggle_attention($t_id,$s_id){
 		$result = $this->db->from('attention')->where('s_id',$s_id)->where('t_id',$t_id)->get()->row();
 		$arr = array('s_id'=>$s_id,'t_id'=>$t_id);
 		if($result) {
 			$this->db->delete('attention',$arr);
 			$this->db->set('attention_num','attention_num-1',FALSE)->update('student');
 			echo "删除";
 		}else{
 			$this->db->insert('attention',$arr);
 			$this->db->set('attention_num','attention_num+1',FALSE)->update('student');
 			echo "增加";
 		}
 	}
// 获取学豆
	public function get_beans($id){
		return $this->db->set('beans','beans+100',FALSE)->where('id',$id)->update('student');
	}
// 兑换优惠券
	public function get_tickets($id){
		// 判断学豆够不够1000
		$sql = "select * from student where id='$id' and beans>=1000 ";
		$result = $this->db->query($sql)->row();
		if ($result) {
			return $this->db->set('tickets','tickets+1',FALSE)->set('beans','beans-1000',FALSE)->where('id',$id)->update('student');
		}
	}
//更改个人信息
	public function change_info($id,$form,$prop,$val){
		$this->db->set($prop,$val,TRUE)->where('id',$id)->update($form);
	}
	//sent sql to check the oldPassword is true
	public function check_old_student($oldPassword){
		$sql="select * from student where password='$oldPassword'";
		$query=$this->db->query($sql);
		return $query->row();
	}
	public function check_old_teacher($oldPassword){
		$sql="select * from teacher where password='$oldPassword'";
		$query=$this->db->query($sql);
		return $query->row();
	}
	//update the new password.
	public function update_student_password($newPassword,$id){
		$sql="update student set password='$newPassword' where id='$id'";
		$query=$this->db->query($sql);
		return $query;
	}
	public function update_teacher_password($newPassword,$id){
		$sql="update teacher set password='$newPassword' where id='$id'";
		$query=$this->db->query($sql);
		return $query;
	}
}
