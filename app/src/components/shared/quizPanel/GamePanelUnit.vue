<script setup>
defineProps({
  id: {
    type: Number,
    required: true
  }
})
</script>

<template>
  <div class="panel-unit">
    <input type="text" maxlength="1" :id="`quiz-unit-${id}`">
  </div>
</template>

<style scoped>
.panel-unit {
  display: flex;
  justify-content: center;
  align-content: center;
  height: 3.125rem;
  width: 3.125rem;
  background: #FFFFFF;
  box-shadow: 0 0.5rem 0.5rem 0 rgba(0, 0, 0, 0.25);
}

.panel-unit input {
  font: 2rem bolder;
  width: 100%;
  height: 100%;
  background: transparent;
  border: none;
  outline: none;
  text-align: center;
}
</style>