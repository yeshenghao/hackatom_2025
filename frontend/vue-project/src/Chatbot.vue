<template>
  <div>
    <!-- Este es el contenedor donde se cargará el widget del chatbot -->
    <div id="dify-chatbot-container"></div>
  </div>
</template>

<script>
export default {
  mounted() {
    // Configuración del chatbot Dify AI
    window.difyChatbotConfig = {
      token: 'ripEE6UZ8SdiOA4X',
      systemVariables: {
        // Puedes definir variables de usuario aquí si es necesario
        // user_id: 'user123',
        // conversation_id: 'uuid12345678-90ab-cdef-ghij-klmn12345678',
      },
    };

    // Cargar el script del chatbot Dify AI de manera dinámica
    const script = document.createElement('script');
    script.src = 'https://udify.app/embed.min.js';
    script.id = 'ripEE6UZ8SdiOA4X';
    script.defer = true;

    document.head.appendChild(script);
  },
};
</script>

<style scoped>
  /* Estilos personalizados para el chatbot */
  #dify-chatbot-bubble-button {
    background-color: #1C64F2 !important;
  }
  #dify-chatbot-bubble-window {
    width: 24rem !important;
    height: 40rem !important;
  }
</style>