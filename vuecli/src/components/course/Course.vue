<template>
  <div id="course">
   <common-header>
     <div class="page-title">我的课程表</div>
   </common-header>
    <ul class="nav">
      <li><router-link to="/course/class" >正在上课 &nbsp({{$store.state.sentlength}})</router-link></li>
      <li><router-link to="/course/waiting">等待上课&nbsp({{$store.state.sentlength}})</router-link></li>
      <li><router-link to="/course/finish">已结束&nbsp({{$store.state.sentlength}})</router-link></li>
    </ul>
    <router-view></router-view>
    <common-footer></common-footer>
  </div>
</template>

<script>
  import CommonHeader from '@/components/common/CommonHeader'
  import CommonFooter from '@/components/common/CommonFooter'
  export default {
    data () {
      return {

      }
    },
    components:{
        CommonHeader,
        CommonFooter,
    }
  }
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .page-title{
    background-color: skyblue;
    width: 6.4rem;
    text-align: center;
    height: 1rem;
    z-index: 100;
  }
 .nav{
   display: flex;
   height: 1rem;
   position: fixed;
   top: 1rem;
   width: 100%;
   z-index: 100;
   background: #fff;
 }
  .nav li{
    height: 1rem;
    flex: 1;
    text-align: center;
    line-height: 1rem;
  }
  .nav li a{
    padding: 0;
  }
  .nav li a{
    display: block;
    width: 100%;
    height: 100%;
    color: #ccc;
    outline: none;
  }
  .nav li a.router-link-active{
    background: #fff;
    color:deepskyblue;
    border-bottom: 1px solid deepskyblue;

  }


</style>
