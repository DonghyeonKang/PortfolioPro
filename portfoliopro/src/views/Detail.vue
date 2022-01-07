<template>
  <div class="wrap">
    <h2>Profile</h2>
    <section class="profile">
      <div class="box" v-if="editMode">
        <img :src="user_image_path" alt="profile_img" style="cursor: pointer" />
        <input class="fileSelect" type="file" name="file" accept="image/*" />
        <textarea
          name="text"
          id="text"
          v-model="user_profile_content"
        ></textarea>
      </div>
      <div class="box" v-else>
        <img :src="user_image_path" alt="profile_img" />
        <p>
          {{ user_profile_content }}
        </p>
      </div>
      <div class="edit" v-if="editMode" @click="updateProfile()">Update</div>
      <div class="edit" v-else @click="turnEdit()">Edit</div>
    </section>
    <h2>Projects</h2>
    <section class="projects">
      <div class="project" :key="i" v-for="(project, i) in folioDetail">
        <DetailBox
          :pj_content="project.project_content"
          :pj_id="project.id"
          :pj_img="project.project_image_path_1"
          :user_img="project.user_image_path"
        ></DetailBox>
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

img {
  width: 10rem;
}

.edit {
  cursor: pointer;
  position: absolute;
  right: 4px;
  top: 4px;
}

.box {
  display: flex;
  background: #f0f0f0;
  margin-bottom: 1rem;
  width: 100%;
}

.box img {
  width: 10rem;
}

.fileSelect {
  position: absolute;
  width: 10rem;
  height: 20rem;
}

#text {
  width: 100%;
  resize: none;
  border: 4px solid #1a1a1a;
  padding: 1rem;
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
    DetailBox,
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
      default_project_content: "내용을 입력하세요",
      user_image_path: "",
      user_profile_content: "",
      portfolio_id: 0,
      editMode: false,
    };
  },
  created() {
    // vue 컴포넌트가 create 되는 시점
    this.folio_name = this.$route.query.folio_name;
    this.getFolioDetail();
  },
  methods: {
    turnEdit() {
      if (this.editMode) this.editMode = false;
      else this.editMode = true;
    },
    // get data
    async getFolioDetail() {
      this.folioDetail = await this.$api("/api/FolioDetail", {
        param: [this.folio_name],
      });
      this.user_image_path = this.folioDetail[0].user_image_path;
      this.user_profile_content = this.folioDetail[0].user_profile_content;
      this.portfolio_id = this.folioDetail[0].portfolio_id;

      console.log("==== detaillist ====");
      console.log(this.folioDetail);
    },
    // add project  `portfolio_id\`, \`project_name\`, \`project_content\`
    async addProject() {
      await this.$api("/api/insertProject", {
        param: [
          this.folioDetail[this.folioDetail.length - 1].portfolio_id,
          this.default_project_name,
          this.default_project_content,
          this.default_project_imgpath,
        ],
      });
      this.getProjectDetail();
    },
    // profile
    async updateProfile() {
      console.log("부모에게 받은 id = " + this.pj_id);
      await this.$api("/api/updateProfile", {
        param: [this.user_image_path, this.user_profile_content, this.portfolio_id], // user_image_path = ?, user_profile_content = ? WHERE id=?`
      });
      this.turnEdit();
    },
  },
};
</script>
