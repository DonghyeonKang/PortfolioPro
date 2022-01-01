<template>
  <h2>Profile</h2>
  <section class="profile">
    <img src="https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9" alt="profile_img">
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores ab eaque odio placeat quia ad vitae. Vero consectetur, error repellat dolor quasi rem? Provident accusantium voluptatum vel, fugiat nesciunt rerum?</p>
  </section>
  <h2>Projects</h2>
  <section class="projects">
    <div class="project">
      <img src="https://w.namu.la/s/48a178fbd427b8dddc275cf878725e03d8499105f13e57c7ff889ef1cba3895d813b88696242cebb4f56d28ae2c93fbdef1f61731db76fc27f9070a8fceef4652016fbd8c0a144273d70a69c7dfff6d9" alt="profile_img">
      <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Labore dignissimos distinctio minus aut corrupti ex hic rerum voluptates, voluptatibus ullam nesciunt quia in? Iste commodi blanditiis aliquid ea cum voluptates?</p>
    </div>
  </section>
</template>

<style scoped>
.profile {
  display: flex;
}
.profile img {
  width: 10rem;
}
.project {
  display: flex;
}
.project img{
  width: 10rem;
}
</style>

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
