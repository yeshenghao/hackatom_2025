import { createRouter, createWebHistory } from "vue-router";
import Home from "../src/Home.vue";
import Test from "../src/Test.vue"; // tu componente de test
import Nosotros from "../src/Sobre_nosotros.vue";

const routes = [
  { path: "/", name: "Home", component: Home },
  { path: "/test", name: "Test", component: Test },
  { path: "/sobre-nosotros", name: "Nosotros", component: Nosotros },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
