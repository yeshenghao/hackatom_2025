<template>
  <div class="app">
    <h1>Test</h1>

    <div v-if="loading">
      <p>Cargando preguntas...</p>
    </div>

    <div v-else-if="!showResult">
      <h2>Pregunta {{ currentIndex + 1 }} de {{ questions.length }}</h2>
      <p>{{ currentQuestion.texto }}</p>

      <ul>
        <li v-for="(option, index) in currentQuestion.respuestas" :key="option.id">
          <label>
            <input
              type="radio"
              :name="'question-' + currentIndex"
              :value="option.id"
              v-model="answers[currentIndex]"
            />
            {{ option.texto }}
          </label>
        </li>
      </ul>

      <button @click="nextQuestion" :disabled="!answers[currentIndex]">
        {{ currentIndex < questions.length - 1 ? "Siguiente" : "Finalizar" }}
      </button>
    </div>

    <div v-else>
      <h2>Resultado</h2>
      <p>Has acertado {{ score }} de {{ questions.length }} preguntas.</p>
      <p v-if="score >= passingScore">✅ ¡Has aprobado!</p>
      <p v-else>❌ Has suspendido. Intenta de nuevo.</p>
      <button @click="resetTest">Reiniciar Test</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      questions: [],
      currentIndex: 0,
      answers: [],
      showResult: false,
      loading: true,
      passingScore: 7, // por ejemplo, 7 de 10 correctas
    };
  },
  computed: {
    currentQuestion() {
      return this.questions[this.currentIndex];
    },
    score() {
      return this.questions.reduce((acc, question, index) => {
        const selectedId = this.answers[index];
        const selectedAnswer = question.respuestas.find(
          (r) => r.id === selectedId
        );
        return selectedAnswer && selectedAnswer.es_correcta ? acc + 1 : acc;
      }, 0);
    },
  },
  methods: {
    async fetchQuestions() {
      try {
        const response = await fetch(
          "http://localhost:8000/api/quiz/random_set/?count=10"
        );
        const data = await response.json();
        this.questions = data;
      } catch (error) {
        console.error("Error al cargar preguntas:", error);
      } finally {
        this.loading = false;
      }
    },
    nextQuestion() {
      if (this.currentIndex < this.questions.length - 1) {
        this.currentIndex++;
      } else {
        this.showResult = true;
      }
    },
    resetTest() {
      this.currentIndex = 0;
      this.answers = [];
      this.showResult = false;
      this.loading = true;
      this.fetchQuestions();
    },
  },
  mounted() {
    this.fetchQuestions();
  },
};
</script>

<style scoped>
/* mismo estilo que tenías */
.app {
  max-width: 600px;
  margin: 2rem auto;
  padding: 1.5rem;
  font-family: Arial, sans-serif;
  background: white;
  border-radius: 12px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
h1,
h2 {
  color: blue;
}
p {
  color: black;
}
ul {
  color: black;
  list-style: none;
  padding: 0;
}
li {
  margin-bottom: 0.5rem;
  color: black;
}
button {
  margin-top: 1rem;
  padding: 0.5rem 1rem;
  background: #007bff;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}
button:disabled {
  background: #aaa;
  cursor: not-allowed;
}
</style>
