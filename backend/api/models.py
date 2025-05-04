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
