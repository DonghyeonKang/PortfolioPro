<template>
  <div class="box" v-if="editMode">
    <img
      src="https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9"
      alt="profile_img"
      style="cursor: pointer"
    />
    <input class="fileSelect" type="file" name="file" accept="image/*" />
    <textarea name="text" id="text"></textarea>
    <div class="edit" v-if="editMode" @click="updateData()">Update</div>
    <div class="edit" v-else @click="turnEdit()">Edit</div>
  </div>
  <div class="box" v-else>
    <img
      src="https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9"
      alt="profile_img"
    />
    <p>
      Lorem ipsum, dolor sit amet consectetur adipisicing elit. Labore
      dignissimos distinctio minus aut corrupti ex hic rerum voluptates,
      voluptatibus ullam nesciunt quia in? Iste commodi blanditiis aliquid ea
      cum voluptates?
    </p>
    <div class="edit" v-if="editMode" @click="updateData()">Update</div>
    <div class="edit" v-else @click="turnEdit()">Edit</div>
  </div>
</template>

<style scoped>
img {
  width: 10rem;
}

.edit {
  cursor: pointer;
}

.box {
  display: flex;
  background: #f0f0f0;
  margin-bottom: 1rem;
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
}
</style>

<script>
export default {
  data() {
    return {
      folioId: 0,
      editMode: false,
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
    updateData() {
      //업데이트 추가해야함

      this.turnEdit();
    },
  },
};
</script>
