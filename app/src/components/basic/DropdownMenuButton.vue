<script setup>
defineProps({
  menu_list: {
    type: Array,
    required: true,
  }
})
</script>

<template>
  <select name="menu">
    <option
        v-for="menu_item in menu_list"
        :value="menu_item">
      {{ menu_item }}
    </option>
  </select>
</template>

<style scoped>
select {
  background: transparent url("../../assets/public/icon _Bars icon_.png") no-repeat !important;
  border-color: transparent;
  color: transparent;
  height: 32px;
}
option {
  background-color: var(--profile-menu-backgroung-color);
  color: #FFFFFF;
  font-family: 'SF Pro Display', sans-serif;
  font-size: 90%;
}
</style>