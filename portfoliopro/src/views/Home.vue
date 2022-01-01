<template>
  <div class="wrap">
    <div class="folio_box" @click="goToDetail(folio.folio_id)" :key="i" v-for="(folio, i) in folioList">
      <img :src="folio.path" alt="folioImg">
      <h3>{{folio.folio_name}}</h3>
    </div>
  </div>
</template>

<style scoped>
.folio_box {
    max-width: 10rem;
    width: 100%;
    min-width: 2rem;
    height: 15rem;
    background: #AB5656;
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
    goToDetail(folio_id) {
      this.$router.push({path:'/detail', query:{folio_id:folio_id}})
    }
  }
}
</script>
