<template>
  <div >
    <div class="border border-light fondo-covid sticky-top">
      <span class="d-flex justify-content-center mt-3 mb-3">Covid-19 : We are delivering to your region with limited shipping options. Please expect extended delivery time.</span>
    </div>
  </div>
</template>

<script>
export default {
    data (){
      return{
            calvo: {}
        }
        
    },
}
</script>

<style scoped>
  .fondo-covid{
    background-color: grey;
    color: white;
    font-weight: bold;
  }
</style>