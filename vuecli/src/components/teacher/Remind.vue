<template>
  <div id="message">
  <ul>
    <li v-for='info in infos'>
      <div class="content">{{info.system_info}}</div>
      <div class="time">{{info.system_time}}</div>
    </li>
  </ul>
  </div>
</template>
<script>
  import MessageNav from './MessageNav'
  import Axios from 'axios'
  export default {
    data() {
      return {
        infos:[]
      }
    },
    components: {
      MessageNav
    },
    mounted(){
      Axios.get('http://localhost:3000/index_system_message').then((res)=>{
        // console.log(res.data);
        this.infos=JSON.parse(res.data);
      })
    }
  }
</script>

<style scoped>
  @import "../../assets/css/reset.css";
  #message{
    padding-top: 1.8rem;
  }
  #message li {
    padding: .1rem .2rem 0;
  }
  .content{
    text-indent: 10px;
  }
  .time{
    padding-right: .2rem;
    text-align: right;
    border-bottom: 1px solid #ccc;
  }
</style>
