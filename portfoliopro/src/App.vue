<template>
  <Header></Header>
  <router-view/>
  <Footer></Footer>
</template>

<style>
body {
  margin: 0px;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
<script>
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'

export default {
  name: 'App',
  components: {
    Header,
    Footer
  },
  data() {
    return {
      webtoons: [
        {
          name: "햄스터와 그녀",
          link: "http://webtoon.daum.net/webtoon/view/hamsterandher",
          img:
            "http://t1.daumcdn.net/webtoon/op/478cdf37f585607982ffa9e35b432e8503be8a54"
        },
        {
          name: "프롬 스타",
          link: "http://webtoon.daum.net/webtoon/view/fromstar",
          img:
            "http://t1.daumcdn.net/webtoon/op/a7fb953d722c1130bfc18440f7e3ce448ece57a1"
        },
        {
          name: "위대한 로맨스",
          link: "http://webtoon.daum.net/webtoon/view/greatromance",
          img:
            "http://t1.daumcdn.net/webtoon/op/a816281cb4df5c50a20ac386fd6e496643d0f085"
        },
        {
          name: "빛나는 손을",
          link: "http://webtoon.daum.net/webtoon/view/Hand",
          img: "http://t1.daumcdn.net/cartoon/5913FCAC0234C50001"
        }
      ]
    };
  }
}
</script>
