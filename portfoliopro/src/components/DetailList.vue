<template>
    <ul class="wrap">
      <li class="item" v-for="(item, idx) in items" :key="{idx}">
        <a :href="item.link" target="_blank">
          <img :src="item.img">
          <span class="tit">{{item.name}}</span>
        </a>
      </li>
    </ul>
</template>

<style scoped>
.detail_list {
    max-width: 15rem;
    width: 100%;
    min-width: 2rem;
    height: 15rem;
    background: #AB5656;
    margin: 0 2rem 0 2rem;
}

.detail_img {
    width: 100%;
    height: 80%;
}
</style>

<script>
export default {
  props: {
    items: { type: Array, default: () => [] }
  }
};
</script>
