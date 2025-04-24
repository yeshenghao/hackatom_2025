from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Disponibilidad(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='disponibilidades')
    dia = models.DateField()  # Fecha concreta
    hora_inicio = models.TimeField()
    hora_fin = models.TimeField()
    
    def __str__(self):
        return f"{self.user.username}: {self.dia} {self.hora_inicio}-{self.hora_fin}"