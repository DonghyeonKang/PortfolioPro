<template>
  <div class="wrap">
    <h2>Profile</h2>
    <section class="profile">
      <DetailBox></DetailBox>
    </section>
    <h2>Projects</h2>
    <section class="projects">
      <DetailBox></DetailBox>
      <div class="addProject" @click="addProject()">Add Project</div>
    </section>
  </div>
</template>

<style scoped>
.wrap {
  margin: 0 10%;
  width: 80%;
}

.profile .box {
  background: #ffd3d3;
}

.addProject {
  cursor: pointer;
}
</style>

<script>
import DetailBox from "@/components/Detail_box.vue";

export default {
  name: "Detail",
  components: {
    DetailBox,
  },
  data() {
    return {
      folio_name: []
    };
  },
  created() {
    // vue 컴포넌트가 create 되는 시점
    this.folio_name = this.$route.query.folio_name;
    this.getProjectDetail();
  },
  methods: {
    // get data
    async getProjectDetail() {
      this.folioDetail = await this.$api("/api/ProjectDetail", {
        param: [this.folio_name]
      });
    },
    //profile
    async updatePortfolio() {
      await this.$api("/api/updatePortfolio", {
        param: [1,1,1] // img content portfolios.id
      });
    },
    // project
    async updatePreject() {
      await this.$api("/api/updatePreject", {
        param: [1, 2] // content, projects.id
      });
    },
    async updateProjectImg() {
      await this.$api("/api/updateProjectImg", {
        param: [1, 1] // project_id, image_path
      });
    },
    // add project
    addProject() {
      this.folioDetail.push();
    }
  },
};
</script>
