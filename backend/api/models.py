from django.db import models
from django.contrib.auth.models import User

class Question(models.Model):
    text = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['id']
        verbose_name = "Pregunta"
        verbose_name_plural = "Preguntas"

    def __str__(self):
        return self.text[:40]

class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE, related_name='choices')
    text = models.CharField(max_length=150)
    is_correct = models.BooleanField(default=False)

    class Meta:
        verbose_name = "Opción"
        verbose_name_plural = "Opciones"

    def __str__(self):
        return self.text


class Score(models.Model):
    question = models.ForeignKey('Question', on_delete=models.CASCADE)
    chosen_choice = models.ForeignKey('Choice', on_delete=models.CASCADE)
    correct = models.BooleanField()
    ts = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['-id']
        unique_together = ('question',)
        verbose_name = 'Resultado'
        verbose_name_plural = 'Resultados'

    def __str__(self):
        return f"{self.question.text[:30]} – {'✅' if self.correct else '❌'}"







# # Create your models here.
# class Disponibilidad(models.Model):
#     user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='disponibilidades')
#     dia = models.DateField()  # Fecha concreta
#     hora_inicio = models.TimeField()
#     hora_fin = models.TimeField()
    
#     def __str__(self):
#         return f"{self.user.username}: {self.dia} {self.hora_inicio}-{self.hora_fin}"