<script>
import { ref } from 'vue'
import HomePage from "../components/home/HomePage.vue";
import ProfilePage from "../components/profile/ProfilePage.vue";
import {defineComponent} from "vue";
import TabBar from "../components/TabBar.vue";

export default defineComponent({
  components: {TabBar}
})


const configuration = {
  home: {
    component: HomePage,
  },
  profile: {
    component: ProfilePage,
  }
}

const selected = ref('text')
</script>

<template>
  <component
  :is="configuration[selected].component"
  >

  </component>

  <div class="footer fixed-element">
    <footer>
      <TabBar/>
    </footer>
  </div>
</template>

<style scoped>

</style>