import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Register from '../views/Register.vue'
import Login from '../views/Login.vue'
import Detail from '../views/Detail.vue'
import FindPw from '../views/FindPw.vue'
import Myfolio from '../views/Myfolio.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    meta: {
      title: "main"
    }
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/register',
    name: 'Register',
    component: Register
  },
  {
    path: '/detail',
    name: 'Detail',
    component: Detail
  },
  {
    path: '/findpw',
    name: 'FindPw',
    component: FindPw
  },
  {
    path: '/myfolio',
    name: 'Myfolio',
    component: Myfolio
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
