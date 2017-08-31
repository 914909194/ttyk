<template>
    <div id="tancen-img" @click="show3">
        <div class="tancen-img">
             <img src="../../assets/img/teaImg/t1.jpg" alt="">
             <p><b>单伟&nbsp;&nbsp;</b><span>男&nbsp;</span><span>硕士</span></p>
             <p>哈佛大学</p>
             <p>学府四道街 烧烤摊</p>
        </div>
    </div>
</template>

  
<script>
    import $ from 'jquery'
    import Axios from 'axios'
    

export default {
  // props: {
  //   teacherList: {
  //     type: Array,
  //     required: true
  //    }
  //  },
  data() {
    return {
      teacherList:[],
    }
  },
  mounted:function(){
    // Axios.get('http://localhost:3000/teacherList').then((res)=>{
    //       this.teacherList=JSON.parse(res.data);
    //       console.log(this.teacherList);
    // })
  },
  methods:{
    show3:function(){
      $('#tancen-img').hide().css('z-index','0');
    },
  
  },
  components:{
   
  },
  //   computed:{
  //   address(){
  //     return 'https://www.vue-js.com/api/v1/topics?tab='+this.title+'&page='+this.page
      
  //   }
  // }
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

  @import "../../assets/css/reset.css";
  #tancen-img{
    display: none;
    position: absolute;
    left: 0;
    right:0;
    top:0;
    bottom: 0; 
    background-color:rgba(100,100,100,0.3);
  }
  .tancen-img{
    position: absolute;
    left: 50%;
    top:50%;
    margin-left: -2.4rem;
    margin-top:-3.2rem;
    width: 4.8rem;
    height: 6.4rem;
    background: #fff;
    border-radius: 0.3rem;
    overflow: hidden;
  }
  .tancen-img img{
    width: 100%;
    height: 4.5rem;
  }
  .tancen-img b{
   font-size: 18px;
   color: skyblue;
  }
  .tancen-img p{
    padding: 5px 15px;
    color: #999;
  }
 

</style>