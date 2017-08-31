<template>
  <div id="help-flow" >

    <div id="header">
      <img src="../../../assets/img/back.png" alt="" @click="back">
      <h3>一、买课流程</h3>
    </div>
    <div id="footer">
      <router-link to="/more/about/helpclass">
        <p>下一条</p>
      </router-link>
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
  #footer{
    height: 1rem;
    display: flex;
    width: 100%;
    position: fixed;
    bottom: 0;
    background-color: #f0f0f0;
    border: 1px solid #ccc;
  }
  a{
    color: #0066FF;
    display: block;
    width: 100%;
  }
  #footer p{
    width: 100%;
    font-size: 16px;
    text-align: center;
    line-height: 1rem;
  }
</style>
