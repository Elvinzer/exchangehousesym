<template>
    <div>
        <input @keyup ="getList" @input= "filterHouses" v-model = "typedSearch" class="form-control  ds-input searchInput" type="search" value="" placeholder="Rechercher">
        <div v-if="filteredHouses && typedSearch">
            <ul class ="resultSearchbis p-0">
                <li class="resultSearch" v-for="(item, index) in filteredHouses" :key="index" @click="setHouse(item)">{{ item.city }}</li>
            </ul>
        </div>
    </div>
</template>

<script>

export default {
    name : 'Search',
    data() {
        return {
            typedSearch : '',
            filteredHouses : null,
            modal : false,
            counterSearch: -1,
            selection : ''
        }
    },
    methods : {
        filterHouses : function (){
            this.filteredHouses = this.estatesFinalResult.filter(house => {
                return house.city.toLowerCase().startsWith(this.typedSearch.toLowerCase())
            })
        },
        setHouse : function (house){
            this.typedSearch = house.city
            this.modal = false
        },
        input : function(){
            console.log('cc lol')
        },
        getList: function(e){
            let max = $( ".resultSearch" ).length
            if(e.key == 'ArrowDown' && this.counterSearch < max){
                if (this.counterSearch == max - 1){
                    $( ".resultSearchbis" )[0].children[this.counterSearch-1].className = "resultSearch"
                    this.typedSearch = $( ".resultSearchbis" )[0].children[this.counterSearch].textContent
                    $( ".resultSearchbis" )[0].children[this.counterSearch].className = "selectedResult resultSearch"
                }
                else{
                    this.counterSearch+=1
                    this.counterSearch == 0 ? $( ".resultSearchbis" )[0].children[0].className = "resultSearch" : $( ".resultSearchbis" )[0].children[this.counterSearch-1].className = "resultSearch"
                    this.typedSearch = $( ".resultSearchbis" )[0].children[this.counterSearch].textContent
                    $( ".resultSearchbis" )[0].children[this.counterSearch].className = "selectedResult resultSearch"
                }      
            }
            if (e.key == 'ArrowUp' && this.counterSearch >= 0){
                if (this.counterSearch == 0){
                    $( ".resultSearchbis" )[0].children[this.counterSearch+1].className = "resultSearch"
                    this.typedSearch = $( ".resultSearchbis" )[0].children[this.counterSearch].textContent
                    $( ".resultSearchbis" )[0].children[this.counterSearch].className = "selectedResult resultSearch"
                }
                else{
                    $( ".resultSearchbis" )[0].children[this.counterSearch].className = "resultSearch"
                    this.counterSearch-=1
                    this.typedSearch = $( ".resultSearchbis" )[0].children[this.counterSearch].textContent
                    $( ".resultSearchbis" )[0].children[this.counterSearch].className = "selectedResult resultSearch"
                }  
            }
            if (e.key == 'Enter'){
                this.typedSearch = this.selection
            }
        }
    },
    props : ['estatesFinalResult']
}
</script>

<style>
    .resultSearch{
        padding : 0 !important;
        width: 100%;
        background-color: aliceblue;
    }
    .resultSearch:hover{
        background-color: #58dfe9 !important;
    }
    ul{
        list-style:none;
    }
    .selectedResult{
        background-color: orange;
        color: white;    
    }
</style>