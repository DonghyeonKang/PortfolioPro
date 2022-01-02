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
  justify-content: center;
  min-width: 50rem;
  overflow: auto;
}
.folio_box {
    max-width: 10rem;
    width: 100%;
    min-width: 2rem;
    height: 15rem;
    background: #ffd3d3;
    margin: 0 2rem 0 2rem;
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
      this.folioList = await this.$api("/api/folioList", {})  //데이터 넣음
    },
    goToDetail(folio_name) {
      this.$router.push({path:'/detail', query:{folio_name:folio_name}})
    }
  }
}
</script>
