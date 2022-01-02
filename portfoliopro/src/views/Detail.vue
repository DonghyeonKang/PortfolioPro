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

.profile .box{
  background: #ffd3d3;
}

.addProject {
  cursor: pointer;
}

</style>

<script>
import DetailBox from '@/components/Detail_box.vue'

export default {
  name: 'Detail',
  components: {
    DetailBox
  },
  data() {
    return {
      folioId: 0,
      folioDetail: []
    };
  },
  created() {
    // vue 컴포넌트가 create 되는 시점
    this.folio_id = this.$route.query.folio_id;
    this.getProjectDetail();
  },
  methods: {
    async getProjectDetail() {
      // get data
      this.folioList = await this.$api("/api/ProjectDetail", {
        param: [this.folio_id],
      }); //데이터 넣음
    },
    updateImg(imgType) {
      imgType
    },
    addProject() {
      this.folioDetail.push();
    }
  },
};
</script>
