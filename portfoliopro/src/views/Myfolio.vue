<template>
  <div class="wrap">
    <div class="folio_box" @click="goToDetail(folio.folio_id)" :key="i" v-for="(folio, i) in folioList">
      <img src="https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9" alt="folioImg">
      <h3>어쩔 티비</h3>
    </div>
  </div>
</template>

<style scoped>
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
    goToDetail(folio_id) {
      this.$router.push({path:'/detail', query:{folio_id:folio_id}})
    }
  }
}
</script>