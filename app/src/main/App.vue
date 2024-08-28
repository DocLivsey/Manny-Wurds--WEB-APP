<script setup>
import TabBar from "../components/TabBar.vue";
</script>

<script>
export default {
  data() {
    return {

    }
  }
}
</script>

<template>
  <div class="home-view">

    <div class="header">
      <header>
        It`s Main Page
      </header>
    </div>

    <div class="main">
      <h1 class="Hello">
        Hello Everyone!
      </h1>
    </div>

    <div class="footer fixed-element">
      <footer>
        <TabBar/>
      </footer>
    </div>

  </div>
</template>

<style scoped>

</style>