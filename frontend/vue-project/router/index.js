import { createRouter, createWebHistory } from "vue-router";
import Chatbot from "../src/Chatbot.vue";
import Home from "../src/Home.vue";
import Test from "../src/Test.vue"; // tu componente de test

const routes = [
  { path: "/", name: "Home", component: Home },
  { path: "/test", name: "Test", component: Test },
  { path: "/chatbot", name: "Chatbot", component: Chatbot},
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
