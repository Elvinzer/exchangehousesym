import Vue from 'vue';

import Dashboardpage from './components/mon-espace/Dashboardpage'
import AdManagement from './components/mon-espace/AdManagement'
import MonProfil from './components/mon-espace/MonProfil'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

var $ = require('jquery')
global.$ = global.jQuery = $;

const router = new VueRouter({
    routes: [
      // dynamic segments start with a colon
      { path: '/foo', component: AdManagement },
      { path: '/bar', component: MonProfil }
    ]
  })

const dashboardpage = new Vue({
    el: '#dashboardpage',
    router,
    mode : 'history',
    render(h){
        return h(Dashboardpage)
    }
})

