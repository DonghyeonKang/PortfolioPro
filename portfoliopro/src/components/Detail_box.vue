<template>
  <div class="box" v-if="editMode">
    <img
      src="https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9"
      alt="profile_img"
      style="cursor: pointer"
    />
    <input class="fileSelect" type="file" name="file" accept="image/*" />
    <textarea name="text" id="text" v-model="content"></textarea>
  </div>
  <div class="box" v-else>
    <img
      src="https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9"
      alt="profile_img"
    />
    <p>
      {{ content }}
    </p>
  </div>
  <div class="edit" v-if="editMode" @click="updateProject()">Update</div>
  <div class="edit" v-else @click="turnEdit()">Edit</div>
</template>

<style scoped>
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
</style>

<script>
export default {
  props: {
    message: String,
    pj_id: Number
  },
  data() {
    return {
      folioDetail: [],
      editMode: false,
      content: this.message,
      project_id: this.pj_id
    };
  },
  created() {
    // vue 컴포넌트가 create 되는 시점
  },
  methods: {
    turnEdit() {
      if (this.editMode) this.editMode = false;
      else this.editMode = true;
    },
    //profile
    async updatePortfolio() {
      await this.$api("/api/updatePortfolio", {
        param: [1, 1, 1], // img content portfolios.id
      });
    },
    // project
    async updateProject() {
      await this.$api("/api/updateProject", {
        param: [this.content, this.project_id], // Project content, projects.id
      });
      this.turnEdit();
    },
    async updateProjectImg() {
      await this.$api("/api/updateProjectImg", {
        param: [1, 1], // project_id, image_path
      });
    },
  },
};
</script>
