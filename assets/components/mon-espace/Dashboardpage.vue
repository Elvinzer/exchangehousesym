<template>
    <div>
        <div class="wrapper d-flex align-items-stretch">
            <SidebarDashboard></SidebarDashboard>
            <div class="container">
                <div  class="btn btn-primary"><router-link style="color: white;" to="/gestion-annonces">Gestion des annonces</router-link></div>
                <div  class="btn btn-primary"><router-link style="color: white;" to="/gestion-profil">Gestion de mon profil</router-link></div>
                <router-view></router-view>
                <div class="card">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Unde autem distinctio vitae nostrum laudantium itaque fugit obcaecati quidem, architecto aspernatur eveniet, fugiat, eligendi minima cumque a at natus soluta impedit perferendis incidunt! Earum, assumenda officiis alias animi eligendi maiores, illum provident sunt nemo deleniti, magni error nisi porro quos asperiores iusto quae doloremque minus labore sint rerum quidem quisquam consectetur? Iure tenetur deleniti quisquam enim reprehenderit voluptate atque harum, earum, architecto sit esse repellat minima fuga? Ut sequi delectus qui, alias quo recusandae libero est, officiis minima nesciunt ipsa facilis! Optio architecto recusandae, saepe non at culpa tempora adipisci blanditiis!</div>
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
            test: 'cc dashboard'
        }
    },
    methods: {
    
    }
}
</script>
<style>
    
</style>