<script>
  import { defineComponent, ref } from 'vue';
  import TabBar from '../components/TabBar.vue';
  import HomePage from '../components/home/HomePage.vue';
  import ProfilePage from '../components/profile/ProfilePage.vue';
  import MainMenuPage from "../components/game/MainMenuPage.vue";

  export default defineComponent({
    components: {
      TabBar,
      ProfilePage,
      HomePage,
      MainMenuPage,
    },
    setup() {
      const currentPage = ref('HomePage');

      const changePage = (page) => {
        currentPage.value = page;
      };

      return {
        currentPage,
        changePage,
      };
    },
  });
</script>

<template>
  <component :is="currentPage" ></component>

  <div class="footer fixed-element">
    <footer>
      <TabBar @change-page="changePage" />
    </footer>
  </div>
</template>

<style scoped>

</style>