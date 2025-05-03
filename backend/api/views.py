from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework.response import Response
from .models import Pregunta, Respuesta
from .serializers import PreguntaSerializer
from rest_framework.views import APIView
import random


class PreguntaViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Pregunta.objects.all()
    serializer_class = PreguntaSerializer

    @action(detail=False, methods=['get'])
    def random_set(self, request):
        count = int(request.query_params.get('count', 10))
        preguntas = list(self.queryset)
        if len(preguntas) < count:
            return Response({'error': 'No hay suficientes preguntas en la base de datos.'}, status=400)
        random_preguntas = random.sample(preguntas, count)
        serializer = self.get_serializer(random_preguntas, many=True)
        return Response(serializer.data)


class ResultadoView(APIView):
    def post(self, request):
        answers = request.data.get("answers", [])
        correctas = 0

        for ans in answers:
            pregunta_id = ans.get("pregunta")
            respuesta_id = ans.get("respuesta")

            try:
                respuesta = Respuesta.objects.get(id=respuesta_id, pregunta_id=pregunta_id)
                if respuesta.es_correcta:
                    correctas += 1
            except Respuesta.DoesNotExist:
                continue

        return Response({"score": correctas, "total": len(answers)})