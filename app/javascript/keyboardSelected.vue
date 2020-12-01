<template>
  <div>
    
  </div>
</template>
 
<script>
export default {
    data (){
        return{
           keyboardsArray: []
        }
        
    },
    methods: {
 
    },
    computed: {
     
    },
    created () {
        axios
        .get('/keyboards/show.json')
        .then(response => (this.keyboardsArray = response.data))
    }
}
</script>
 
<style scoped>
 
 
</style>
