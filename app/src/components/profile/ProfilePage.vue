<script setup>
import ProfileIcon from './buttons/ProfileIcon.vue'
import MenuButton from "./buttons/MenuButton.vue";
</script>

<template>
  <div class="profile-header">
    <header>
      <MenuButton/>
      <ProfileIcon/>
    </header>
  </div>
</template>

<style scoped>
header {
  display: flex;
  justify-content: space-between;
  position: relative;
  top: 5vh;
  padding-left: 1em;
  padding-right: 0.5em;
}
select {
  justify-items: center;
}
</style>