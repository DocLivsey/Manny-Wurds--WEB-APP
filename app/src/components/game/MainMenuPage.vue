<script setup>
import MenuItem from '../basic/MenuItem.vue'

const menuItems = [
  {
    title: 'Timed quiz',
    menuDescription: 'Guess the word in time',
    menuImg: 'app/src/assets/public/timedquiz.png'
  },
  {
    title: 'Attempted quiz',
    menuDescription: 'Guess the word in a few tries',
    menuImg: 'app/src/assets/public/attemptedquiz.png'
  },
  {
    title: 'Daily quiz',
    menuDescription: 'Guess the daily quiz word',
    menuImg: 'app/src/assets/public/dailyquiz.png'
  },
  {
    title: 'Online quiz',
    menuDescription: 'Compete with others players',
    menuImg: 'app/src/assets/public/onlinequiz.png'
  }
]
</script>

<template>
  <div class="menu-page">
    <div class="title-line">
      Menu
    </div>
    <div class="menu-items-list">
      <MenuItem v-for="item in menuItems"
          :menu-title="item.title"
          :menu-description="item.menuDescription"
          :menu-img="item.menuImg"
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