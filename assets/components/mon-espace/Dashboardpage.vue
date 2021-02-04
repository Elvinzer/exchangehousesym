<template>
    <div>
        <div class="wrapper d-flex align-items-stretch">
            <SidebarDashboard></SidebarDashboard>
            <div class="container">
                <button type="button" class="btn btn-primary">Primary</button>
                test {{ compteur }}
                <div class="btn btn-primary"><router-link to="/foo">Aller à Foo</router-link></div>
                <div class="btn btn-primary"><router-link to="/bar">Aller à Bar</router-link></div>
                <router-view></router-view>
                <!-- <AdManagement></AdManagement> -->
            </div>
        </div>
    </div>
</template>

<script>
import SidebarDashboard from './SidebarDashboard'
import AdManagement from './AdManagement'

export default {
    name: 'Dashboardpage',
    components :{
        SidebarDashboard,
        AdManagement
    },
    data(){
        return {
            test: 'cc dashboard',
            compteur: 0
        }
    },
    methods: {
        setCompteur : function() {
            this.compteur++
        }
    }
}
</script>
<style>
</style>