<template>
  <div class="wrap">
    <div class="folio_box" @click="goToDetail(folio.portfolio_name)" :key="i" v-for="(folio, i) in folioList">
      <img :src="folio.portfolio_image_path" alt="folioImg">
      <h3>{{folio.portfolio_name}}</h3>
    </div>
  </div>
</template>

<style scoped>
.wrap {
  display: flex;
  width: 90%;
  overflow: auto;
  margin: 0 5% 30rem 5%;
  flex-flow: wrap;
  justify-content: space-evenly;
}
.folio_box {
    min-width: 10rem;
    max-width: 10rem;
    height: 15rem;
    background: #ffd3d3;
    margin: 0 1rem 2rem 1rem;
}

.folio_box img {
  width: 95%;
  margin-top: 1rem;
}

.wrap a {
  cursor: pointer;
}
</style>

<script>
export default {
  data() {
    return {
      folioList: []  // 데이터 정의해서
    }
  },
  created() { // vue 컴포넌트가 create 되는 시점 
    this.getFolioList();
  },
  methods: {
    async getFolioList() {   // get data
      this.folioList = await this.$api("/api/folioList", {});  //데이터 넣음
    },
    goToDetail(folio_name) {
      this.$router.push({path:'/detail', query:{folio_name:folio_name}});
    }
  }
}
</script>
