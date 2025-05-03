from rest_framework.routers import DefaultRouter
from django.urls import path
from .views import PreguntaViewSet, ResultadoView

router = DefaultRouter()
router.register(r'quiz', PreguntaViewSet, basename='quiz')

urlpatterns = router.urls + [
    path('resultado/', ResultadoView.as_view(), name='resultado'),
]