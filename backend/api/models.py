from django.db import models
from django.contrib.auth.models import User

class Pregunta(models.Model):
    id = models.AutoField(primary_key=True)
    texto = models.TextField()
    categoria = models.CharField(max_length=50, null=True, blank=True)

    class Meta:
        db_table = 'preguntas'

    def __str__(self):
        return self.text[:40]

class Respuesta(models.Model):
    id = models.AutoField(primary_key=True)
    pregunta = models.ForeignKey('Pregunta', on_delete=models.CASCADE, db_column='pregunta_id', related_name='respuestas')
    texto = models.TextField()
    es_correcta = models.BooleanField(default=False)

    class Meta:
        db_table = 'respuestas'

    def __str__(self):
        return self.text





# # Create your models here.
# class Disponibilidad(models.Model):
#     user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='disponibilidades')
#     dia = models.DateField()  # Fecha concreta
#     hora_inicio = models.TimeField()
#     hora_fin = models.TimeField()
    
#     def __str__(self):
#         return f"{self.user.username}: {self.dia} {self.hora_inicio}-{self.hora_fin}"