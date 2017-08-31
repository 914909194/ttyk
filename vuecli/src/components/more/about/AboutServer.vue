<template>
  <div id="about-server" >

    <div id="header">
      <img src="../../../assets/img/back.png" alt="" @click="back">
      <h3>服务协议</h3>
    </div>
  </div>

</template>


<script>
  import $ from 'jquery'


  export default {
    data() {
      return {

      }
    },
    mounted:function(){

    },
    methods:{
      back:function(){
        history.go(-1);
      }
    },
    components:{

    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../../assets/css/reset.css";
  #header{
    width: 100%;
    position: fixed;
    height: 1rem;
    background: #2c93e0;
  }
  #header img{
    height: 0.4rem;
    position:absolute;
    left: 0.2rem;
    top: 0.3rem;
  }
  #header h3{
    text-align: center;
    color: #fff;
    line-height: 1rem;
  }
</style>
