<template>
    <div>
        <div class="searchdiv">
            <Search :estatesFinalResult= "estatesFinalResult" class = "searchComponent mt-3"></Search>
        </div>
        <div class = "mainFrame mt-2">
            <!-- Début filtres -->
            <div class = "lateralMenu p-1 ml-5 mt-2">
                <p class ="text-center">Filtres</p>
                <!-- range select de la superficie -->
                <div data-role="main" class="ui-content">
                    <div class = "text-center" data-role="rangeslider">
                        <label for="surface-min">Surface min: {{ filtres.surfaceMin }}m²</label>
                        <input @input="getSurfaceMin" class = "slider" type="range" name="surface-min" id="surface-min" value="1" min="1" max="600">
                        <label for="surface-max">surface max: {{ filtres.surfaceMax }}m²</label>
                        <input @input="getSurfaceMax" class = "slider" type="range" name="surface-max" id="surface-max" value="600" min="1" max="600">
                        <p>Nombre de résultats : {{ filtres.nbResultat }}</p>
                    </div>
                </div>
                <!-- fin filtres -->
            </div>
            <!-- Vignettes de maisons -->
            <div data-role="allHousesResult" class="allResults container">
                <div class = "estate p-2 m-2" v-for="(maData, index) in estatesFinalResult" :key = index>                       
                    <img class ="mb-1" width = 50% src="/assets/house_sample.png" alt="image">
                    Lieu : {{ maData.city }}<br>
                    Type de bien : {{ maData.type }} <br>
                    Surface : {{ parseInt(maData.surface).toLocaleString() }}m²<br><br>
                    Prix : {{ parseInt(maData.price).toLocaleString() }}€
                </div>
            </div>
            <!-- Fin vignettes -->
        </div>
    </div>
</template>

<script>

import axios from 'axios'
import Search from './search'

//import $ from 'jquery'

export default {
    name: 'Products',
    components : {
        Search
    },
    data(){
        return {
            isLoaded: false,
            type : 'getAllHouses',
            solidEstatesResult : null,
            estatesFinalResult : null,
            tempData : [],
            filtres : {
                surfaceMin : 0,
                surfaceMax : 600,
                nbResultat : null
            }
        }
    },
    created(){
        this.getHouses()
        this.isLoaded = true
    },
    mounted(){
        console.log(this.estatesFinalResult)
    },
    methods: {
        getHouses : async function(){
            axios
          .post('https://localhost/exchangehouse-back/handlerDatabase.php', JSON.stringify({action : 'getAllHouses'}))
          .then(response => (
                this.solidEstatesResult = response.data,
                this.estatesFinalResult = response.data,
                this.filtres.nbResultat = response.data.length
            ))
        },
        getSurfaceMin : function(e) {
            this.filtres.surfaceMin = e.target.value
            this.estatesFinalResult = []
            this.solidEstatesResult.forEach(element => {
                if(parseInt(element.surface) >= this.filtres.surfaceMin)
                    this.estatesFinalResult.push(element)  
            });
            this.filtres.nbResultat = this.estatesFinalResult.length
        },
        getSurfaceMax : function(e) {
            this.filtres.surfaceMax = e.target.value
            this.estatesFinalResult = []
            this.solidEstatesResult.forEach(element => {
                if(parseInt(element.surface) <= this.filtres.surfaceMax)
                    this.estatesFinalResult.push(element)
            });
            this.filtres.nbResultat = this.estatesFinalResult.length
        },
    },
    props : ['test']
}
</script>

<style>
.searchdiv{
    height: 100px;;
}
.searchComponent{
    width: 40%;
    margin: auto;
}
.mainFrame{
    display: flex;
}
.lateralMenu{
    height: 100vh;
    width: 210px;
    border: solid 1px grey;
    border-radius: 5px;
}

.allResults{
    display: flex;
    position: relative;
    right: 200px;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.estate{
    display: flex;
    flex-direction: row;
    text-align: center;
    width: 800px;
    box-shadow: 0 2px 8px 0 rgba(0,0,0,0.16);
}
</style>