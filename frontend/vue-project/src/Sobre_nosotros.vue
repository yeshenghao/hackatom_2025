<template>
  <div class="team">
    <h1>Conoce al Equipo</h1>
    <p>Nuestro equipo está compuesto por estudiantes apasionados y dedicados que trabajan juntos para crear soluciones innovadoras. Aquí te presentamos a nuestros miembros clave y sus roles en el proyecto.</p>

    <div class="team-member">
      <h2>Xicheng Yang</h2>
      <p><strong>Rol:</strong> Especialista en Bases de Datos</p>
      <p><strong>Descripción:</strong> Xicheng es el encargado de diseñar y gestionar la base de datos, que está construida con PostgreSQL. Su experiencia en la administración de bases de datos asegura que los datos se almacenen de manera eficiente y segura.</p>
    </div>

    <div class="team-member">
      <h2>Huijing Cheng</h2>
      <p><strong>Rol:</strong> Desarrollador Backend</p>
      <p><strong>Descripción:</strong> Huijing es el desarrollador backend encargado de crear la lógica del servidor utilizando Django. Su trabajo asegura que las API estén bien estructuradas y optimizadas para un rendimiento eficiente y una fácil integración con el frontend.</p>
    </div>

    <div class="team-member">
      <h2>Jiali Yang</h2>
      <p><strong>Rol:</strong> Diseñadora UI</p>
      <p><strong>Descripción:</strong> Jiali es la responsable del diseño de la interfaz de usuario (UI). Su trabajo se centra en crear interfaces intuitivas y atractivas que mejoren la experiencia del usuario, asegurando que el diseño sea accesible y funcional.</p>
    </div>

    <div class="team-member">
      <h2>Shenghao Ye</h2>
      <p><strong>Rol:</strong> Desarrollador Frontend y Coordinador de Proyecto</p>
      <p><strong>Descripción:</strong> Shenghao no solo es el desarrollador frontend encargado de implementar las interfaces que Jiali diseña, sino que también actúa como coordinador de proyecto, asegurando que todos los miembros del equipo trabajen de manera eficiente y coordinada hacia los objetivos comunes.</p>
    </div>

  </div>
</template>

<script>
export default {
  name: 'TeamPage',
};
</script>

<style scoped>
.team {
  font-family: Arial, sans-serif;
  text-align: center;
  padding: 20px;
}

h1 {
  font-size: 2.5rem;
  margin-bottom: 20px;
}

.team-member {
  background-color: #f4f4f4;
  border-radius: 10px;
  padding: 20px;
  margin: 20px 0;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

h2 {
  font-size: 1.8rem;
  color: #2c3e50;
}

p {
  font-size: 1rem;
  color: #7f8c8d;
  line-height: 1.6;
}

strong {
  color: #2c3e50;
}
</style>
