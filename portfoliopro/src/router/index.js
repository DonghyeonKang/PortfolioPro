import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Register from '../views/Register.vue'
import Login from '../views/Login.vue'
import Detail from '../views/Detail.vue'
import Edit from '../views/DetailEdit.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/login',
    name: 'About',
    component: Login
  },
  {
    path: '/register',
    name: 'About',
    component: Register
  },  {
    path: '/detail',
    name: 'About',
    component: Detail
  },
  {
    path: '/detail-edit',
    name: 'About',
    component: Edit
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
