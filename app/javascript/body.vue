<template>
  <div>
    <div class="row pt-4 pb-4">
        <div class="col-lg-3 offset-lg-5 justify-content-center">
            <h4><strong> Featured collections</strong></h4>
        </div>
    </div>
    <div class="row pl-5" >
      <div class="col-lg-3" v-for="col in collections" v-bind:key="col">
         <div class="row">
          <div class="col-lg-12">
            <a v-bind:href="'#'"><img class="img-fluid colImage"  v-bind:style="styleImages" v-bind:src="col.image"></a>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12 pt-4 " v-if="col.title==='Keyboards'">
              <a class="colTitle nav-item nav-link" v-bind:href="'/keyboards'">{{col.title}}</a>
          </div>
           <div class="col-lg-12 pt-4 " v-if="col.title==='Keycaps'">
              <a class="colTitle nav-item nav-link" v-bind:href="'/keycaps'">{{col.title}}</a>
          </div>
           <div class="col-lg-12 pt-4 " v-if="col.title==='Mice'">
              <a class="colTitle nav-item nav-link" v-bind:href="'/mouses'">{{col.title}}</a>
          </div>

         
        </div>
      </div>
    </div>
    <div class="row pt-5 pb-4">
        <div class="col-lg-4 offset-lg-4 justify-content-center">
            <h4>BUILD YOUR ENDGAME GAMING SETUP</h4>
        </div>
    </div>
    <div class="row pl-5" >
      <div class="col-lg-3" v-for="pro in productsEndGame" v-bind:key="pro">
         <div class="row">
          <div class="col-lg-12">
            <a v-bind:href="'#'"><img class="img-fluid colImage" v-bind:style="styleImages" :src="pro.image"></a>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12 pt-4">
              <p style="text-align:center" v-if="pro.status==='SOLD OUT'" v-bind:style="{color:soldColor}" >AGOTADO</p>
              <p style="text-align:center" v-else>EN STOCK</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12 pt-4" v-if="pro.category==='keyboard'">
            <a class="colTitle nav-item nav-link" v-bind:href="'/keyboards/'+pro.id">{{pro.name}}</a>
          </div>
          <div class="col-lg-12 pt-4" v-if="pro.category==='keycap'">
            <a class="colTitle nav-item nav-link" v-bind:href="'/keycap/'+pro.id">{{pro.name}}</a>
          </div>
          <div class="col-lg-12 pt-4" v-if="pro.category==='mouse'">
            <a class="colTitle nav-item nav-link" v-bind:href="'/mouses/'+pro.id">{{pro.name}}</a>
          </div>
          
        </div>
         <div class="row">
          <div class="col-lg-12 pt-4 justify-content-center">
              <p style="text-align:center">{{pro.price}}EUR</p>
              <p>{{variable}}
              </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import imageKeyboard from "../assets/images/hades.png"
import imageKeycaps from "../assets/images/keycaps.png"
import imageMice from "../assets/images/mice.png"
import imageSilver from "../assets/images/silver.png"
import durgod from "../assets/images/build-your-endgame/durgod.jpg"
import dyeKeycup from "../assets/images/build-your-endgame/dyeKeycup.jpg"
import miceYellow from "../assets/images/build-your-endgame/miceYellow.jpg"
import miraM from "../assets/images/build-your-endgame/miraM.jpg"

import axios from 'axios'
export default {
    data (){
        return{
          styleImages: {
            width: "250px",
            height: "250px"
          },
          soldColor: "red",
           collections:[
               {
                   image: imageKeyboard,
                   title: 'Keyboards'
               },
               {
                  image: imageKeycaps,
                   title: 'Keycaps'
               },
               {
                  image: imageMice,
                   title: 'Mice'
               },
               {
                  image: imageSilver,
                   title: 'Switches'
               }
           ],
           productsEndGame:[],

           drg: durgod,

           joke: {
            avatar: 'https://cdn.shopify.com/s/files/1/0283/3583/3187/products/venus_main_590x.jpg?v=1578893819'
          }
                  


        }
        
    },
    methods: {
       
    },
    computed: {
     
    },
     created () {
        axios
        .get('/home.json')
        .then(response => (this.productsEndGame = response.data))
    }
}
</script>

<style scoped>

.colTitle{
  text-align: center;
  font-size: 25px;
  text-decoration: none;
  color: black;
}
.colTitle:hover{
   text-align: center;
  font-size: 25px;
  text-decoration: none;
  color: grey;
}

.colImage{
  width: 350px;
  height: 250px;
}

</style>