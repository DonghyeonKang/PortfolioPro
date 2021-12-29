<template>
  <section class="details">
    <Detail></Detail>
  </section>
</template>

<style scoped>
.details {
  display: flex;
  margin: 0 5rem 0 5rem;
}
</style>

<script>
import Detail from '@/components/DetailList.vue'

export default {
  name: 'Home',
  components: {
    Detail
  }
}
</script>
