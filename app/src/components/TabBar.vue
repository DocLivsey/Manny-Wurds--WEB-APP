<script setup>
import { defineEmits } from 'vue';

const emit = defineEmits(['change-page']);

const goToPage = (page) => {
  emit('change-page', page);
};
</script>

<template>
  <div class="tab-bar">
    <div class="bar">
      <button @click="goToPage('HomePage')" class="tab-button">
        <img alt="home.png" src="../assets/public/_TabBar-home.png">
      </button>
    </div>
    <div class="bar">
      <button @click="" class="tab-button">
        <img alt="label.png" src="../assets/public/_TabBar-label.png">
      </button>
    </div>
    <div class="bar">
      <button @click="goToPage('ProfilePage')" class="tab-button">
        <img alt="profile.png" src="../assets/public/_TabBar-profile.png">
      </button>
    </div>
  </div>
</template>

<style scoped>
  .tab-bar {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
  }
  .tab-button {
    padding: 0;
    background-color: transparent;
    border-color: transparent;
  }
</style>