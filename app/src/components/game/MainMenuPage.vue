<script setup>
import MenuItem from '../basic/MenuItem.vue'
</script>

<template>
  <div class="menu-page">
    <div class="title-line">
      Menu
    </div>
    <div class="menu-items-list">
      <MenuItem
          menu-title="Timed quiz"
          menu-description="Guess the word in time"
          menu-img="app/src/assets/public/timedquiz.png"
      />
    </div>
  </div>
</template>

<style scoped>
.menu-items-list {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.title-line {
  text-transform: uppercase;
  text-align: center;
}
</style>