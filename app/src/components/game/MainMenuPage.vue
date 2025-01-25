<script>
import { defineComponent, ref } from 'vue';
import MenuItem from '../basic/MenuItem.vue'
import TimedQuizPage from "./modes/TimedQuizPage.vue";

export default defineComponent({
  components: {
    MenuItem,
    TimedQuizPage,
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
  data() {
    return {
      menuItems: [
        {
          title: 'Timed quiz',
          menuDescription: 'Guess the word in time',
          menuImg: 'app/src/assets/public/timedquiz.png'
        },
        {
          title: 'Attempted quiz',
          menuDescription: 'Guess the word in a few tries',
          menuImg: 'app/src/assets/public/attemptedquiz.png'
        },
        {
          title: 'Daily quiz',
          menuDescription: 'Guess the daily quiz word',
          menuImg: 'app/src/assets/public/dailyquiz.png'
        },
        {
          title: 'Online quiz',
          menuDescription: 'Compete with others players',
          menuImg: 'app/src/assets/public/onlinequiz.png'
        }
      ]
    }
  }
})
</script>

<template>
  <div class="menu-page">
    <div class="menu-block">
      <div class="title-line">
        Menu
      </div>
      <div class="menu-items-list">
        <MenuItem class="menu-item" v-for="item in menuItems"
                  :menu-title="item.title"
                  :menu-description="item.menuDescription"
                  :menu-img="item.menuImg"
        />
      </div>
    </div>
  </div>
</template>

<style scoped>
.menu-block {
  height: 45%;
}
.menu-items-list {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.menu-item {
  margin: 0.25rem;
}
.title-line {
  text-transform: uppercase;
  text-align: center;
  margin: 1.25rem;
}
</style>