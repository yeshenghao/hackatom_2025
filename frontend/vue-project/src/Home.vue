<template>
  <div class="home">
    <h1>Bienvenido al Test de Conocimiento sobre Cupra</h1>
    <p>¿Estás listo para descubrir todo sobre Cupra?</p>
    <p>
      Este test te ayudará a conocer mejor la marca y cómo funciona, mientras
      aprendes de una forma interactiva y divertida.
    </p>
    <button @click="$router.push('/test')">Comenzar Test</button>
  </div>
</template>

<script>
export default {
  name: "Home",
};
</script>

<style scoped>
.home {
  max-width: 600px;
  margin: 2rem auto;
  padding: 1.5rem;
  text-align: center;
  font-family: Arial, sans-serif;
  background-color: #f9f9f9;
  border-radius: 12px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
  color: #007bff;
}

p {
  margin-bottom: 1rem;
  font-size: 1.1rem;
  color: #333;
}

button {
  padding: 0.75rem 1.5rem;
  font-size: 1rem;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}
</style>
