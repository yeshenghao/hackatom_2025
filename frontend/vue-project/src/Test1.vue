<template>
  <div class="app">
    <h1>Test</h1>

    <div v-if="!showResult">
      <h2>Pregunta {{ currentIndex + 1 }} de {{ questions.length }}</h2>
      <p>{{ currentQuestion.question }}</p>

      <ul>
        <li v-for="(option, index) in currentQuestion.options" :key="index">
          <label>
            <input
              type="radio"
              :name="'question-' + currentIndex"
              :value="option"
              v-model="answers[currentIndex]"
            />
            {{ option }}
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
      questions: [
        {
          question: "¿Cuál es el límite de velocidad en una vía urbana?",
          options: ["30 km/h", "50 km/h", "70 km/h"],
          correct: "50 km/h",
        },
        {
          question: "¿Qué indica una señal de stop?",
          options: [
            "Reducir velocidad",
            "Ceder el paso",
            "Detenerse obligatoriamente",
          ],
          correct: "Detenerse obligatoriamente",
        },
        {
          question: "¿Se puede adelantar en una línea continua?",
          options: ["Sí", "No", "Solo si hay visibilidad"],
          correct: "No",
        },
      ],
      currentIndex: 0,
      answers: [],
      showResult: false,
      passingScore: 2,
    };
  },
  computed: {
    currentQuestion() {
      return this.questions[this.currentIndex];
    },
    score() {
      return this.questions.reduce((acc, q, i) => {
        return this.answers[i] === q.correct ? acc + 1 : acc;
      }, 0);
    },
  },
  methods: {
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
    },
  },
};
</script>

<style scoped>
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
