// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-default/index.css'
import App from './App'
import router from './router'
import store from './vuex/store'
require('./assets/js/rem.js')
import './assets/css/reset.css'
import './assets/fonts/glyphicons/css/glyphicons.css'
Vue.config.productionTip = false

Vue.use(ElementUI)
// global.API = 'https://www.vue-js.com/api/v1/topics?tab='
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})
