import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import mixins from './mixins'   // mixins 추가

createApp(App).use(router).mixin(mixins).mount('#app')  // mixins 사용 .mixin(mixins)
