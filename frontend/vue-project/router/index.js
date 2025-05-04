import { createRouter, createWebHistory } from "vue-router";
import Formentor from "../src/Formentor.vue";
import Home from "../src/Home.vue";
import Nosotros from "../src/Sobre_nosotros.vue";
import Tavascan from "../src/Tavascan.vue";
import Test from "../src/Test.vue"; // tu componente de test

const routes = [
  { path: "/", name: "Home", component: Home },
  { path: "/test", name: "Test", component: Test },
  { path: "/formentor", name: "Formentor", component: Formentor},
  { path: "/tavascan", name: "Tavascan", component: Tavascan},
  { path: "/sobre-nosotros", name: "Nosotros", component: Nosotros },

];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
