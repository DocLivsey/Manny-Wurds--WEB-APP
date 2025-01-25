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
  <button class="menu-item">
    <div class="menu-img">
      <img :src="menuImg" alt="menu-image">
    </div>
    <div class="item-text">
      <div class="menu-title">
        <h3>
          {{ menuTitle }}
        </h3>
      </div>
      <div class="menu-description">
        {{ menuDescription }}
      </div>
    </div>
  </button>
</template>

<style scoped>
.menu-item {
  display: flex;
  background-color: var(--main-theme-gradient-top-color);
  border-radius: 20px;
  border-color: transparent;
  width: 67.4%;
  align-self: center;
  box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
}
.menu-img,
.item-text {
  padding: 0.5rem;
}
.item-text {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}
</style>