<template>
  <div class="box" v-if="editMode">
    <img
      src="https://www.touchtaiwan.com/images/default.jpg"
      alt="profile_img"
      style="cursor: pointer"
    />
    <input class="fileSelect" type="file" name="file" accept="image/*" />
    <textarea name="text" id="text" v-model="project_content"></textarea>
  </div>
  <div class="box" v-else>
    <img
      src="https://www.touchtaiwan.com/images/default.jpg"
      alt="profile_img"
    />
    <p>
      {{ project_content }}
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
    pj_content: String,
    pj_id: Number,
    pj_img: String,
    user_img: String
  },
  data() {
    return {
      folioDetail: [],
      editMode: false,
      project_content: this.pj_content,
      project_id: this.pj_id,
      project_image: this.pj_img,
      user_image: this.user_img
    };
  },
  created() {
    // vue 컴포넌트가 create 되는 시점
    console.log("부모에게 받은 pj_img = " + this.pj_img);
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
      console.log("부모에게 받은 id = " + this.pj_id);
      await this.$api("/api/updateProject", {
        param: [this.project_content, this.project_id] // Project content, projects.id
      });
      this.turnEdit();
    },
  },
};
</script>
