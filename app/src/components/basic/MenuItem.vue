<script setup>
defineProps({
  menuTitle: {
    type: String,
    required: true,
    default: 'TITLE'
  },
  menuDescription: {
    type: String,
    required: true,
    default: 'description',
  },
  menuImg: {
    type: String,
    required: true,
    default: '../../assets/public/_TabBar-label.png',
  }
})
</script>

<template>
  <div class="menu-item">
    <div class="menu-img">
      <img :src="menuImg" alt="menu-image">
    </div>
    <div class="menu-title">
      <h3>
        {{ menuTitle }}
      </h3>
    </div>
    <div class="menu-description">
      {{ menuDescription }}
    </div>
  </div>
</template>

<style scoped>

</style>