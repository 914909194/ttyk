<template>
	<div class="accountmanage">
		<common-header></common-header>
		<div class="content">
			当前密码：<input class="old" type="password" v-model='oldPassword' placeholder="输入当前密码"><br/>
			新密码：<input class="new" type="password" v-model='newPassword' placeholder="输入新密码"><br/>
			新密码：<input class="newagain" type="password" v-model='newPasswordAgain' placeholder="再次输入新密码"><br/>
			<button @click='go()'>放弃修改</button>
			<button @click='submit()'>提交</button>
		</div>
		<common-footer></common-footer>
	</div>
</template>

<script>
import $ from 'jquery'
import Axios from 'axios'
import CommonHeader from './CommonHeader'
import CommonFooter from '@/components/common/CommonFooter'
	export default{
		data(){
			return {
				oldPassword:'',
				newPassword:'',
				newPasswordAgain:'',
				oldPasswordstate:0,
				newPasswordstate:0
			}
		},
		mounted(){
			var that=this;
			$('.old').blur(function(){
				// console.log(that.oldPassword);
				// console.log(localStorage.identify);
				Axios.get('http://localhost:3000/users/check_old',{params:{
					oldPassword:that.oldPassword,
					identify:localStorage.identify
				}}).then((res)=>{
					// console.log(res);
					// console.log(JSON.parse(res.data));
					// console.log(JSON.parse(res.data).password);
					// var pwd=JSON.parse(res.data).password;
					if (JSON.parse(res.data)) {
						// console.log('success');
						that.oldPasswordstate=1;
						$(this).css('background','green');
					}else{
						// console.log('failed');
						// console.log($(this));
						that.oldPasswordstate=0;
						$(this).css('background','red');
					}
				})
			})
			$('.new').blur(function(){
				console.log(that.newPassword);
			})
			$('.newagain').blur(function(){
				console.log(that.newPasswordAgain);
				if(that.newPasswordAgain==that.newPassword){
					$('.new').css('background','green');
					$('.newagain').css('background','green');
					that.newPasswordstate=1;
				}else{
					$('.new').css('background','red');
					$('.newagain').css('background','red');
					that.newPasswordstate=0;
				}
			})						
		},
		components:{
			CommonHeader,
			CommonFooter
		},
		methods:{
			submit:function(){
				if (this.oldPasswordstate==1&&this.newPasswordstate==1) {
					$.post('http://localhost:3000/users/update_password',{newPassword :this.newPassword,
					identify:localStorage.identify,id:localStorage.id},function(data){
						console.log('success');
						history.go(-1);
					})
				} else {
					alert("some password is wrong,please check those password which background is red.");
				}
			},
			go:function(){
				history.go(-1);
			}
		}
	}
</script>
<style scoped>
	.content{
		margin-top: 2rem;
		text-align: center;
	}
	.content input{
		border: 1px solid #ccc;
		height: .5rem;
		line-height: .5rem;
		margin-bottom: 1rem;
		text-align: center;
	}
	.content button {
		/*margin: .3rem .6rem 0 ;*/
		margin: .5rem;
		
	}
</style>