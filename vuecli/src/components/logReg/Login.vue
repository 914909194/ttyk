<template>
  <div id="login">
    <div class="header">
      <div class="back">
        <router-link to="/more"><img src="../../assets/img/back.png" alt=""></router-link>
      </div>
      <h1>登录</h1>
      <div class="reg">
        <router-link to="/reg">注册</router-link>
      </div>
    </div>
    <div class="logo">
      <img src="../../assets/img/33icn_ttc168.png" alt="">
    </div>
    <div class="login-content">
      <img src="../../assets/img/user.png" alt="">
      <input type="text" placeholder ="请输入用户名" id="account">
      <img src="../../assets/img/password.png" alt="">
      <input type="text" placeholder ="请输入密码" id="password">
      <div class="forget">
        <router-link to="/forgetpass">忘记密码？</router-link>
      </div>
      <input  type="button" value="登录" class="log-btn" @click="login()">
    </div>
  </div>
</template>

<script>
import Axios from 'axios'
import $ from 'jquery'
  export default {
    data() {
      return {

      }
    },
    methods:{
      login(){
        var $account = $('#account').val();
        var $password = $('#password').val();
        console.log(1111);
        Axios.get('http://localhost:3000/users/login',{
          params:{
            account: $account,
            password: $password
          }
        }).then((res)=>{
          console.log(2222);
          if (res.data!="null") {
            console.log(JSON.parse(res.data))
            localStorage.id = JSON.parse(res.data).id;
            localStorage.account = $account;
            localStorage.password = $password;
            localStorage.identify = JSON.parse(res.data).identify;
            history.go(-1);
          }else{
            alert('账号或密码错误');
          }
        })
      }
    }
  }
</script>

<style scoped>
@import "../../assets/css/reset.css";
 
  #login{
    position: absolute;
    top:0;
    bottom: 0;
    right: 0;
    left:0;
    height: 100%;
    background: url('/static/teaImg/1.jpg') no-repeat;
    background-size: cover;
  }
  #login .header{
    height:1rem;
    background: deepskyblue;
    color:#fff;
    position: fixed;
    top:0;
    width: 100%;
    line-height: 1rem;
    text-align: center;
    display: flex;
  }
  #login .header h1{
    flex:2;
    text-indent: 0.6rem;
    font-size: 0.4rem;
    line-height: 1rem;
  }
  #login .header .back{
    height: 0.4rem;
    width: 0.4rem;
    text-align: center;
    line-height: 1rem;
    float: right;
    margin-top: 0.3rem;
    margin-left: 0.1rem;
  }
  #login .header .reg{
    height: 1rem;
    width: 1rem;
    text-align: center;
    font-size: 0.3rem;

  }
  #login .header .reg a{
    color:#fff;
    outline: none;
  }
  #login .logo{
    text-align: center;
    margin-top: 2rem;
    height: 2rem;

  }
  #login .logo img{
    height: 100%;
  }
  #login .login-content{
    text-align: center;
    margin:0.5rem auto;
    width: 4rem;
    height: 0.5rem;
    font-size: 0.3rem;
  }
  #login .login-content img{
    height: 0.5rem;
    float: left;
  }
  #login .login-content input{
    outline: none;
    background:#fff;
    border-radius: 0.15rem;
    width: 3.2rem;
    height: 0.6rem;
    border:1px solid #ccc ;
    text-align: center;
    font-size: 0.2rem;
  }
  #login .login-content a{
    font-size: 0.2rem;
    color: green;
  }
  #login .login-content .forget{
    text-align: right;
  }
  #login .login-content .log-btn{
    margin-top: 0.5rem;
    width: 3rem;
    height: 0.8rem;
    background: deepskyblue;
    color: #fff;
    border:0;
    border-radius: 0.1rem;
  }
  #account{
    margin-bottom: .4rem;
  }
</style>
