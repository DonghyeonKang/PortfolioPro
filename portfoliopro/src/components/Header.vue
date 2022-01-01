<template>
  <div class="header">
    <router-link to="/" class="logo">PortFolio Pro</router-link>
    <router-link
      v-if="sessionCheck()"
      to="/Myfolio"
      class="login"
      @click="goToMyfolio(user.user_id)"
      >profile</router-link
    >
    <router-link v-else to="/login" class="login">Login</router-link>
  </div>
</template>

<style scoped>
.header {
  width: 100%;
  height: 3rem;
  background-color: #1a1a1a;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 5rem;
}
.logo {
  text-decoration: none;
  color: #eaadad;
}
.login {
  position: absolute;
  right: 1rem;
  text-decoration: none;
  color: white;
}
</style>

<script>
export default {
  data() {
    return {
      user: [], // 데이터 정의해서
    };
  },
  methods: {
    sessionCheck() {
      return true;
    },
    goToMyfolio(user_id) {
        this.$router.push({path:'/detail', query:{user_id:user_id}})
    },
  },
};
</script>
