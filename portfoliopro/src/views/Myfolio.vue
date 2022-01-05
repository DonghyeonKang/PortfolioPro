<template>
  <div class="wrap">
    <div class="folio_box" :key="i" v-for="(folio, i) in userFolioList">
      <FolioBox :folio_image="folio.portfolio_image_path" :folio_name="folio.portfolio_name" :folio_id="folio.id" :folio_content="folio.portfolio_content"></FolioBox>
    </div>
    <div class="addFolio" @click="insertFolio()">Add Portfolio</div>
  </div>
</template>

<style scoped>
#app {
  position: relative;
}

.wrap {
  display: flex;
  margin-bottom: 30rem;
  flex-flow: wrap
}
.folio_box {
  max-width: 10rem;
  width: 100%;
  min-width: 2rem;
  height: 15rem;
  background: #ffd3d3;
  margin: 0 2rem 2rem 2rem;
}

.folio_box img {
  width: 95%;
  margin-top: 1rem;
}

.addFolio {
  cursor: pointer;
  display: inline;
}
</style>

<script>
import FolioBox from "@/components/Folio_box.vue";

export default {
  components: {
    FolioBox,
  },
  data() {
    return {
      userFolioList: [], // 데이터 정의해서
      result: 0,
      portfolio_name: "portfolio",
      user_id: 1,
      portfolio_content: "",
      portfolio_image_path: "https://www.touchtaiwan.com/images/default.jpg",
      message: ""
    };
  },
  created() {
    // vue 컴포넌트가 create 되는 시점
    this.getFolioList();
  },
  methods: {
    async getFolioList() {
      // get data
      this.userFolioList = await this.$api("/api/userFolioList", { param: [this.user_id] }); //데이터 넣음
      console.log(this.userFolioList);
    },
    goToDetail(folio_name) {
      this.$router.push({ path: "/detail", query: { folio_name: folio_name } });
    },
    async insertFolio() {
      this.result = await this.$api("/api/insertPortfolio", { param: [this.user_id, this.portfolio_name, this.portfolio_content, this.portfolio_image_path] }); //\`user_id\`, \`portfolio_name\`, \`portfolio_content\`, \`portfolio_image_path\`
    }
  }
};
</script>
