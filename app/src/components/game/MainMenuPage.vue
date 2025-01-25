<script>
import { defineComponent, ref } from 'vue';
import MenuItem from '../basic/MenuItem.vue'
import TimedQuizPage from "./modes/TimedQuizPage.vue";
import {GameModes} from "@/enums.js";

export default defineComponent({
  methods: {
    i() {
      return i
    }
  },
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
      gameMode: GameModes.NOT_SELECTED,
      menuItems: [
        {
          title: 'Timed quiz',
          menuDescription: 'Guess the word in time',
          menuImg: 'app/src/assets/public/timedquiz.png',
          gameMode: GameModes.TIMED_QUIZ,
        },
        {
          title: 'Attempted quiz',
          menuDescription: 'Guess the word in a few tries',
          menuImg: 'app/src/assets/public/attemptedquiz.png',
          gameMode: GameModes.ATTEMPTED_QUIZ,
        },
        {
          title: 'Daily quiz',
          menuDescription: 'Guess the daily quiz word',
          menuImg: 'app/src/assets/public/dailyquiz.png',
          gameMode: GameModes.DAILY_QUIZ,
        },
        {
          title: 'Online quiz',
          menuDescription: 'Compete with others players',
          menuImg: 'app/src/assets/public/onlinequiz.png',
          gameMode: GameModes.ONLINE_QUIZ,
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
                  v-model:gameMode="item.gameMode"
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