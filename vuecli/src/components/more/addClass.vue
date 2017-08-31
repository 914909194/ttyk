
<template>
  <div id="add-class">
    <div class="header">
        <i class="glyphicon glyphicon-menu-left" @click="back()"></i>
        <h4>发布课程</h4>
    </div>
    <div class='add-class'>
        
        <ul class="class-list">
          <li><span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</span><input type="text" v-model='name'></li>
          <li><span>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级:</span><input type="text" v-model='grade'></li>
          <li><span>科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目:</span><input type="text" v-model='subject'></li>
          <li><span>课程描述:</span><input type="text" v-model='describe'></li>
          <li><span>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:</span><input type="text" v-model='price'></li>
          
          <li><span>授课方式:</span><input type="text" v-model='method'></li>
          <li class='try'><span>可否试听:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name='try' value="1" v-model=c_try>YES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name='try' value="0" v-model=c_try>NO</li>
          <li><span>上课时间:</span><input type="text" v-model='time'></li>
          <li><span>上课地点:</span><input type="text" v-model='address'></li>
          <li><span>联系电话:</span><input type="text" v-model='tel'></li>
          <button class='submit' @click='submit'>发布课程</button>
        </ul>
        
        
    </div>
    <common-footer></common-footer>
  </div>
</template>

<script>
import CommonFooter from '@/components/common/CommonFooter'
import $ from 'jquery'
import Axios from 'axios'
export default{
  data(){
    return{
      name:'',
      grade:'',
      subject:'',
      describe:'',
      price:'',
      method:'',
      time:'',
      c_try:'',
      address:'',
      tel:'',

    }
  },
  components:{
    CommonFooter,
  },
  methods:{
    back(){
      history.go(-1);
    },
    submit:function(){
        if(!localStorage.id){
                  alert('请你先登录');
        }else{
            Axios.get('http://localhost:3000/addClass',   {
                params:{
                    id:localStorage.id,
                    name:this.name,
                    grade:this.grade,
                    subject:this.subject,
                    describe:this.describe,
                    price:this.price,
                    method:this.method,
                    time:this.time,
                    c_try:this.c_try,
                    address:this.address,
                    tel:this.tel,
                        }
                     }).then((res)=>{
                      console.log(res.data);
                      if(res.data=='success'){
                        this.$router.push('/more');
                      }else{
                        alert('发布课程失败')
                      }
                      
                   });
                }
            }

  // 
  }
}
</script>

<style scoped>
  /*@import "../../assets/bootstrap/css/bootstrap.min.css"*/
  #add-class{
    position: absolute;
    left: 0;
    top: 1rem;
    right:0;
    bottom:1rem;
    background: url('/static/bgImg/b3.jpg') no-repeat;
    background-size: cover;
    color: #000;
  }
  .header{
    width: 100%;
    position: fixed;
    top: 0;
    height: 1rem;
    background: skyblue;
    text-align: center;
  }
  .header i{
    font-size: 0.55rem;
    color: #fff;
    position: absolute;
    left:0.2rem;
    top: 0.2rem;
  }
  .header h4{
    line-height: 1rem;
    color: #fff;
    font-size: 0.35rem;
  }
  .class-list{
    text-align: center;
    margin-top: 0.5rem;

  }
  .class-list li{
    height:0.7rem;
    line-height: 0.7rem;
    font-size: 0.25rem;
  }
  input{
    outline: none;
    border:1px solid skyblue;
    height:0.5rem;
    border-radius: 0.1rem;
  }
  .submit{
    margin-top: 0.3rem;
    width: 2rem;
    height: 0.7rem;
    border:0;
    background:skyblue;
    color: #fff;
    border-radius: 0.15rem;
    outline:none;
  }
  .try input{
    line-height: 0.7rem;
    position: relative;
    top: .15rem;
  }
</style>
