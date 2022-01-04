<template>
  <div class="wrap">
    <h2>Profile</h2>
    <section class="profile">
      <DetailBox></DetailBox>
    </section>
    <h2>Projects</h2>
    <section class="projects">
      <div class="project" :key="i" v-for="(project, i) in folioDetail">
        <DetailBox :message="project.project_content" :pj_id="project.id"></DetailBox>
      </div>
      <div class="addProject" @click="addProject()">Add Project</div>
    </section>
  </div>
</template>

<style scoped>
#app {
  position: relative;
}

.wrap {
  margin: 0 10%;
  width: 80%;
  margin-bottom: 30rem;
}

.profile .box {
  background: #ffd3d3;
}

.addProject {
  cursor: pointer;
}

.profile {
  display: flex;
  position: relative;
}

.project {
  display: flex;
  position: relative;
}
</style>

<script>
import DetailBox from "@/components/Detail_box.vue";

export default {
  name: "Detail",
  components: {
    DetailBox
  },
  data() {
    return {
      folio_name: [],
      folioDetail: [],
      message: ""
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
        param: [this.folio_name],
      });
      console.log(this.folioDetail);
    },
    // add project
    addProject() {
      this.folioDetail.push();
    },
  },
};
</script>
