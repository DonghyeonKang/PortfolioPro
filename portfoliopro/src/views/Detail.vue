<template>
  <section class="profile">
    <img src="" alt="profile_img">
    <p></p>
  </section>
  <section class="project">
    <img src="" alt="profile_img">
    <p></p>
  </section>
</template>

<script>
export default {
  data() {
    return {
      folioId: 0,
      folioDetail: [],  // 데이터 정의해서
      profileImage: [],
      projectImage: []
    }
  },
  created() { // vue 컴포넌트가 create 되는 시점 
    this.folio_id = this.$route.query.folio_id;
    this.getProjectDetail();
    this.getProfileImage();
    this.getProjectImage();
  },
  methods: {
    async getProjectDetail() {   // get data
      this.folioList = await this.$api("/api/ProjectDetail", {param: [this.folio_id]})  //데이터 넣음
    },
    async getProfileImage() {   // ProfileImage
      this.folioImage = await this.$api("/api/ProfileImage", {param:[this.folio_id]})  //데이터 넣음
    },
    async getProjectImage() {   // ProjectImage
      this.folioImage = await this.$api("/api/ProjectImage", {param:[this.folio_id]})  //데이터 넣음
    }
  }
}
</script>
