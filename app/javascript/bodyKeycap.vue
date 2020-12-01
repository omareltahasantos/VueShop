<template>
  <div>
    <div class="row pt-5">
        <div class="col-lg-3 offset-lg-1">
            <h5>Main menu</h5>
            <hr>
        </div>
        <div class="col-lg-7">
            <h4>{{mainPage}}</h4>
            <hr>
        </div>
    </div>
    <div class="row">
      <div class="col-lg-1 offset-lg-1">
        <ul class="lista pl-0">
          <li><a v-bind:href="link.home" class="lista-item">Home</a></li>
          <li>
            <a  v-bind:href="link.keyboard" class="lista-item" v-if="mainPage==='Keyboards'" v-bind:style="{color:activePage}">Keyboards</a>
            <a  v-bind:href="link.keyboard" class="lista-item" v-else>Keyboards</a>
            </li>
          <li>
            <a  v-bind:href="link.mousepad" class="lista-item" v-if="mainPage==='Mousepads'" v-bind:style="{color:activePage}">Mousepads</a>
            <a  v-bind:href="link.mousepad" class="lista-item" v-else>Mousepads</a>
            </li>
          <li>
            <a v-bind:href="link.mice" class="lista-item" v-if="mainPage==='Mouses'" v-bind:style="{color:activePage}">Mice</a>
              <a  v-bind:href="link.mice" class="lista-item" v-else>Mice</a>
          </li>
          <li>
            <a v-bind:href="link.keycap" class="lista-item" v-if="mainPage==='Keycap'" v-bind:style="{color:activePage}">Keycaps</a>
              <a  v-bind:href="link.keycap" class="lista-item" v-else>Keycaps</a>
            </li>
        </ul>
      </div>
      <div class="col-lg-7 offset-lg-2 pt-5">
        <!--Por cada row , pones 3 columnas y cada una con un elemento de array bd-->
        <div class="row">
          <div class="col-lg-4 " v-for="keycap in keycapArray" v-bind:key="keycap">
            <div class="row">
              <div class="col-lg-12">
                <a v-bind:href="'/keycaps/'+keycap.id"><img class="img-fluid colImage" v-bind:style="styleImages" :src="keycap.image"></a>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12 pt-2">
                  <p style="text-align:center" v-if="keycap.status==='SOLD OUT'" v-bind:style="{color:activePage}" >AGOTADO</p>
                  <p style="text-align:center" v-else>EN STOCK</p>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12 pt-0">
                <a class="colTitle nav-item nav-link" v-bind:href="'/keycaps/'+keycap.id">{{keycap.name}}</a>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12 pt-0 justify-content-center">
                  <p style="text-align:center">{{keycap.price}}EUR</p>
                  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
 
<script>
import axios from 'axios'

export default {
    data (){
        return{
          mainPage:'Keycap',
           link:{
              home: "/",
              keyboard: "/keyboards",
              mice: "/mouses",
              mousepad: "/mousepads",
              keycap: "/keycaps"
            }, 
             styleImages: {
            width: "250px",
            height: "250px"
          },
            activePage: 'red',
            keycapArray: []
        }
        
    },
    methods: {
 
    },
    computed: {
     mainPage(){
       return this.mainPage
     }

    },
     created () {
        axios
        .get('/keycaps.json')
        .then(response => (this.keycapArray = response.data))
    }
}
</script>
 
<style scoped>
 .lista{
   list-style:none;
 }
 .colTitle{
  text-align: center;
  font-size: 20px;
  text-decoration: none;
  color: black;
}
.colTitle:hover{
   text-align: center;
  font-size: 20px;
  text-decoration: none;
  color: grey;
}

.colImage{
  width: 350px;
  height: 250px;
}
 .lista-item{
   color: grey;
   text-decoration: none;
 }
 .lista-item:hover{
   color: black;
 }
 
</style>
