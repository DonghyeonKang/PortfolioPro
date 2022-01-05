<template>
  <div class="wrap">
    <h2>Profile</h2>
    <section class="profile">
      <DetailBox></DetailBox>
    </section>
    <h2>Projects</h2>
    <section class="projects">
      <div class="project" :key="i" v-for="(project, i) in folioDetail">
        <DetailBox :pj_content="project.project_content" :pj_id="project.id" :pj_img="project.project_image_path_1" :user_img="project.user_image_path"></DetailBox>
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
      message: "",
      max_id: 0,
      project: [],
      default_project_imgpath: "https://www.touchtaiwan.com/images/default.jpg",
      default_project_name: "project",
      default_project_content: "내용을 입력하세요"
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
      console.log("==== detaillist ====");
      console.log(this.folioDetail);
    },
    // add project  `portfolio_id\`, \`project_name\`, \`project_content\`
    async addProject() {
      await this.$api("/api/insertProject", {
        param: [this.folioDetail[this.folioDetail.length - 1].portfolio_id, this.default_project_name, this.default_project_content, this.default_project_imgpath]
      });
      this.getProjectDetail();
    }
  }
};
</script>
