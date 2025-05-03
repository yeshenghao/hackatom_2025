from django.contrib import admin
from .models import Pregunta, Respuesta

@admin.register(Pregunta)
class PreguntaAdmin(admin.ModelAdmin):
    list_display = ('id', 'texto', 'categoria')
    search_fields = ('texto',)

@admin.register(Respuesta)
class RespuestaAdmin(admin.ModelAdmin):
    list_display = ('id', 'pregunta', 'texto', 'es_correcta')
    list_filter = ('pregunta', 'es_correcta')