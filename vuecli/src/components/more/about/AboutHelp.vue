<template>
  <div id="about-help" >

    <div id="header">
      <img src="../../../assets/img/back.png" alt="" @click="back">
      <h3>使用帮助</h3>
    </div>
    <div id="contain">
      <div class="help">
        <router-link to="/more/about/helpflow">
          <p>一、买课流程 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
      <div class="help">
        <router-link to="/more/about/helpclass">
          <p>二、我的上课人 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
      <div class="help">
        <router-link to="/more/about/helppay">
          <p>三、付款 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
      <div class="help">
        <router-link to="/more/about/helprefund">
          <p>四、退款流程 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
      <div class="help">
        <router-link to="/more/about/helporder">
          <p>五、订单 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
      <div class="help">
        <router-link to="/more/about/helptable">
          <p>六、我的课程表 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
      <div class="help">
        <router-link to="/more/about/helpeva">
          <p>七、评价 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
      <div class="help">
        <router-link to="/more/about/helpabout">
          <p>八、关于我们 <i class="more-in glyphicon glyphicon-chevron-right"></i></p>
        </router-link>
      </div>
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
  #contain{
    position: absolute;
    top: 1rem;
    bottom: 0;
    left: 0;
    right: 0;
    background: #f0f0f0;
    padding-top: 0.2rem;
  }
  a{
    color: #000;
  }
  .help{
    background: #fff;
    border-bottom: 1px solid #ccc;
    height: 0.8rem;
    line-height: 0.8rem;
    padding-left: 0.2rem;
    font-size: 15px;
  }
  .more-in{
    float: right;
    line-height: 0.8rem;
    padding-right: 0.1rem;
    color: #777;
  }
</style>
