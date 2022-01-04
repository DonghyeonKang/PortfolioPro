<template>
  <div class="inner" v-if="editMode">
    <img
      @click="goToDetail(folio.folio_id)"
      :src="portfolio_image"
      alt="folioImg"
    />
    <textarea name="text" id="text" v-bind="portfolio_name"></textarea>
    <div class="edit" v-if="editMode" @click="updateData()">Update</div>
    <div class="edit" v-else @click="turnEdit()">Edit</div>
  </div>
  <div class="inner" v-else>
    <img
      :src="portfolio_image"
      alt="folioImg"
    />
    <h3>{{ portfolio_name }}</h3>
    <div class="edit" v-if="editMode" @click="updateData()">Update</div>
    <div class="edit" v-else @click="turnEdit()">Edit</div>
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

.edit {
  cursor: pointer;
}
#text {
    resize: none;
}
</style>
<script>
export default {
  props: {
    folio_image: String,
    folio_name: String,
    folio_content: String,
    id: Number
  },
  data() {
    return {
      editMode: false,
      portfolio_image: this.folio_image,
      portfolio_name: this.folio_name,
      portfolio_content: this.folio_content,
      portfolio_id: this.id
    };
  },
  methods: {
    goToDetail(folio_id) {
      this.$router.push({ path: "/detail", query: { folio_id: folio_id } });
    },
    turnEdit() {
      if (this.editMode) this.editMode = false;
      else this.editMode = true;
    },
    async updatePortfolio() {
      this.result = await this.$api("/api/updatePortfolio", { param: [this.portfolio_image, this.portfolio_content, this.portfolio_id]}); // portfolio_image_path, portfolio_content id, id
    }
  }
};
</script>
