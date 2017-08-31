<template>
  <div id="message">
    <ul>
      <li class="content-box" v-for='chat in chatlist'>
        <div class="left">
          <div>
            <img src="../../../static/teaImg/1.jpg" alt="" v-show='flag'>
          </div>
        </div>
        <div class="mid">{{chat.student_msg}}</div>
        <div class="right"><img src="../../../static/teaImg/2.jpg" alt="" v-show='!flag'></div>
      </li>
    </ul>
  </div>
</template>
<script>
  import MessageNav from './MessageNav'
  import Axios from "axios"
  export default {
    data() {
      return {
        flag:true,
        chatlist:''
      }
    },
    components: {
      MessageNav
    },
    mounted(){
      Axios.get('http://localhost:3000/index_recommend',{params:{
        student_id:localStorage.id
      }}).then((res)=>{
        console.log(JSON.parse(res.data));
        this.chatlist=JSON.parse(res.data);
      })
    }
  }
</script>

<style scoped>
  @import "../../assets/css/reset.css";
  #message{
    padding-top: 1.8rem;
  }
  .content-box{
    overflow: hidden;
    margin-top: .2rem;
  }
  .content-box >div{
    float: left;
    padding: .2rem 0;

  }
  .content-box .left,.content-box .right{
    width: 1.2rem;
    height: 1.2rem;
    text-align: center;
    /*background: #ccc;*/

  }
  .left >div{
    width: .8rem;
    height: .8rem;
    border-radius: 50%;
    overflow: hidden;
    margin: 0 auto;
  }
  .left img{
    /*height: 100%;*/
    width: 100%;
  }
  .content-box .mid{
    width: 4rem;
    /*background: #ccc;*/
    text-indent: 10px;
  }
</style>
