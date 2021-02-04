import Vue from 'vue';

import Products from './components/products'

var $ = require('jquery')
global.$ = global.jQuery = $;

const products = new Vue({
    el: '#products',
    render(h){
        return h(Products)
    }
})
