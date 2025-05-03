import { createRouter, createWebHistory } from "vue-router";
import Home from "../src/Home.vue";
import Test from "../src/Test.vue"; // tu componente de test

const routes = [
  { path: "/", name: "Home", component: Home },
  { path: "/test", name: "Test", component: Test },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
