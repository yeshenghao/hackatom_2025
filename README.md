# Inside CUPRA
This project is a full-stack web application developed for the HackUPC 2025 challenge proposed by CUPRA. The platform highlights key aspects of the CUPRA brand, including safe driving habits through interactive quizzes, an AI-powered chatbot that answers user questions, and showcase of the brand’s latest car models.

## Technologies Used
- Backend: Django + Django REST Framework (Python)
- Frontend: Vue.js + Vite
- Database: PostgreSQL
- DevOps: Docker + Docker Compose
- Chatbot: Dify AI

## Installation
### Requirements
- Docker
- Docker Compose

### Setup Instructions
1. Clone the repository
```bash
git https://github.com/yeshenghao/hackatom_2025.git
cd hackatom_2025
```

2. Build and run the application
```bash 
sudo docker compose up --build
```
Note: You may need to run the following command twice, because in the fisrt time the backend container might try to connect to the database before it's fully initialized.

Once the containers are running, open your browser and go to:
```bash
http://localhost:5173
```

