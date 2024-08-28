<script setup>
defineProps({
  menu_list: {
    type: Array,
    required: true,
  }
})
</script>

<template>
  <div class="dropdown-menu" v-for="menu_item in menu_list">
    {{ menu_item }}
  </div>
</template>

<style scoped>

</style>