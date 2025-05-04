<template>
  <div class="home">
    <header class="home-header">
      <h1>Bienvenidos a Cupra</h1>
      <p>La marca de coches que redefine la experiencia de conducción.</p>
    </header>
    
    <section class="home-featured">
      <h2>Modelos Destacados</h2>
      <div class="car-cards">
        <div class="car-card">
          <img src="https://tse4.mm.bing.net/th?id=OIP.qJYSq0gETgjIfru_PNLZUAHaFV&pid=Api&P=0&h=180" alt="Cupra Formentor" />
          <h3>Cupra Formentor</h3>
          <p>Un SUV deportivo con un diseño audaz y un rendimiento excepcional.</p>
        </div>
        <div class="car-card">
          <img src="https://tse4.mm.bing.net/th?id=OIP.d4KeT-vpUTvpjMCPAY2BIwHaEC&pid=Api&P=0&h=180" alt="Cupra Tavascan" />
          <h3>Cupra Tavascan</h3>
          <p>El futuro eléctrico de Cupra, con una potencia impresionante y cero emisiones.</p>
        </div>
      </div>
    </section>

    <section class="home-about">
      <h2>Acerca de Cupra</h2>
      <p>
        Cupra es la marca de automóviles que fusiona la pasión por la conducción con la innovación tecnológica y la sostenibilidad, creando vehículos que ofrecen experiencias únicas al volante.
      </p>
    </section>

    <footer class="home-footer">
      <p>&copy; 2025 Cupra. Todos los derechos reservados.</p>
    </footer>
  </div>
</template>

<script>
export default {
  name: 'Home',
};
</script>

<style scoped>
.home {
  font-family: Arial, sans-serif;
  text-align: center;
}

.home-header {
  background-color: #000;
  color: #fff;
  padding: 50px 0;
}

.home-header h1 {
  font-size: 2.5rem;
}

.home-featured {
  margin: 40px 0;
}

.car-cards {
  display: flex;
  justify-content: space-around;
  gap: 20px;
}

.car-card {
  border: 1px solid #ddd;
  border-radius: 10px;
  width: 250px;
  text-align: center;
  padding: 20px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.car-card img {
  width: 100%;
  height: auto;
  border-radius: 10px;
}

.home-footer {
  background-color: #333;
  color: #fff;
  padding: 20px 0;
}
</style>
