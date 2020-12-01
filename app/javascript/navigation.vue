<template>
  <div>
    <div class="row pt-2 pb-2 navibar">
      <div class="col-lg-4 offset-lg-1">
         <button type="button" class="btn btn-outline-dark mr-2">
            Search
           <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"></path>
            <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"></path>
           </svg>
          </button>
          | <span class="Currency">Currency</span> <select class="select-menu" v-model="selected">
                        <option selected>EUR</option>
                        <option>USD</option>
                        <option>HKD</option>
                        <option>GBP</option>
                        <option>CAD</option>
                        <option>JPY</option>
                      </select>
       </div>
       <div class="col-lg-7 d-flex justify-content-center">
         <span class="pr-3 Currency">Log in</span>|<span class="pl-3 Currency">Create account</span><span class="pl-3">  <button type="button" class="btn btn-outline-dark mr-2">Carrito ()</button></span>
       </div>
    </div>
    <div class="row navStyle">
      <div class="col-lg-4 pl-5 pt-2 pb-2 pr-5">
        <img v-bind:src="require('../assets/images/hkgaming.png')">  
      </div>
      <div class="col-lg-3 offset-lg-4 menuNav">
        <nav class="navbar navbar-expand-lg navbar-light ">
          <a class="navbar-brand" v-bind:href="link.home">HOME</a>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-item nav-link" v-bind:href="link.keyboard">KEYBOARDS</a>
              <a class="nav-item nav-link" v-bind:href="link.mice">MICE</a>
              <a class="nav-item nav-link" v-bind:href="link.mousepad">MOUSEPADS</a>
              <a class="nav-item nav-link" v-bind:href="link.keycap">KEYCAPS</a> 
            </div>
          </div>
        </nav>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    data (){
        return{
            calvo: {},
            selected: 'EUR',
            logoImage: "../assets/images/hkgaming.png",
            link:{
              home: "/",
              keyboard: "/keyboards",
              mice: "/mouses",
              mousepad: "/mousepads",
              keycap: "/keycaps"
            }
        }
        
    },
    methods: {

    },
    computed: {
      logoImageNav(){
        return this.logoImage
      }
    }
}
</script>

<style scoped>
.navibar{
  background-color: red;
}
.select-menu{
  background-color: red;
  color: white;
}
.Currency{
  color: white;
}
.navStyle{
  background-color: white;
}
 .menuNav{
  
 } 
</style>