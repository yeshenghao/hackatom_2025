# api/views.py
from rest_framework import viewsets
from .models import Question, Score
from .serializers import QuestionSerializer, ScoreSerializer

class QuestionViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer

class ScoreViewSet(viewsets.ModelViewSet):
    queryset = Score.objects.all()
    serializer_class = ScoreSerializer









# from django.shortcuts import render
# from rest_framework.views import APIView
# from rest_framework.response import Response
# from .models import Disponibilidad
# from django.contrib.auth.models import User
# from datetime import datetime, time

# # Create your views here.
# class HorariosComunesView(APIView):
#     def post(self, request):
#         user_ids = request.data.get('user_ids', [])  # Lista de IDs de usuarios
#         dia = request.data.get('dia')  # Formato: 'YYYY-MM-DD'

#         disponibilidades = Disponibilidad.objects.filter(user_id__in=user_ids, dia=dia)
#         # Agrupa por usuario
#         horarios_por_usuario = {}
#         for disp in disponibilidades:
#             horarios_por_usuario.setdefault(disp.user_id, []).append((disp.hora_inicio, disp.hora_fin))

#         # Calcula intersección
#         def intersecta(tramos):
#             # tramos = [[(h1,h2), (h3,h4)], ...]
#             result = []
#             for tramo in tramos[0]:
#                 result.append(tramo)
#             for tramos_usuario in tramos[1:]:
#                 nuevos = []
#                 for t1 in result:
#                     for t2 in tramos_usuario:
#                         inicio = max(t1[0], t2[0])
#                         fin = min(t1[1], t2[1])
#                         if inicio < fin:
#                             nuevos.append((inicio, fin))
#                 result = nuevos
#             return result

#         tramos = list(horarios_por_usuario.values())
#         if tramos:
#             interseccion = intersecta(tramos)
#         else:
#             interseccion = []

#         # Devuelve en formato legible
#         return Response({
#             "dia": dia,
#             "horarios_comunes": [{"hora_inicio": str(h[0]), "hora_fin": str(h[1])} for h in interseccion]
#         })