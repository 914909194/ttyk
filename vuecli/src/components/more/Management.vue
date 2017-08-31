<template>
	<div class="management">
		<common-header></common-header>
		<div class="btn-box">
			<button>修改头像</button><br/>
			<button>修改昵称</button><br/>
			<button>绑定修改</button><br/>
			<router-link to='/more/changepassword'><button>修改密码</button></router-link><br/>
		</div>
		<common-footer></common-footer>
	</div>
</template>
<script>
import CommonHeader from './CommonHeader'
import CommonFooter from '@/components/common/CommonFooter'
	export default{
		components:{
			CommonHeader,
			CommonFooter
		}
	}
</script>
<style scoped>
	.btn-box {
		width: 5.2rem;
		margin: 1rem auto;
		text-align: center;
	}
	.btn-box button{
		margin-bottom: 1rem;
		padding: .2rem 1rem;
	}
</style>