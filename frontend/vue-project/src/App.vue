<template>
  <div id="app">
    <Navbar />
    <router-view /> <!-- Renderiza la vista correspondiente a la ruta actual -->
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue';

export default {
  name: 'App',
  components: {
    Navbar,
  },
  mounted() {
    // Inicializa el chatbot cuando se monta el componente
    this.loadChatbot();
  },
  methods: {
    loadChatbot() {
      // Configuración del chatbot
      window.difyChatbotConfig = {
        token: 'ripEE6UZ8SdiOA4X',
        systemVariables: {
          // user_id: 'YOU CAN DEFINE USER ID HERE',
          // conversation_id: 'YOU CAN DEFINE CONVERSATION ID HERE, IT MUST BE A VALID UUID',
        },
      };
      // Cargar el script del chatbot
      const script = document.createElement('script');
      script.src = "https://udify.app/embed.min.js";
      script.id = "ripEE6UZ8SdiOA4X";
      script.defer = true;
      document.body.appendChild(script);
    }
  }
};
</script>

<style>
  #dify-chatbot-bubble-button {
    background-color: #1C64F2 !important;
  }
  #dify-chatbot-bubble-window {
    width: 24rem !important;
    height: 40rem !important;
  }
</style>
