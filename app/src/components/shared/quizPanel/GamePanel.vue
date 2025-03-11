<script setup>
import GamePanelUnit from "./GamePanelUnit.vue";
import {ref} from "vue";

const unitsList = ref([
  {
    id: 1,
  },
  {
    id: 2,
  },
  {
    id: 3,
  },
  {
    id: 4,
  },
  {
    id: 5,
  },
  {
    id: 6,
  },
])
</script>

<template>
  <div class="game-panel">
    <GamePanelUnit
        v-for="unit in unitsList"
        :key="unit.id"
        :id="unit.id" />
  </div>
</template>

<style scoped>
.game-panel {
  display: flex;
  flex-direction: row;
  gap: 0.2rem;
}
</style>