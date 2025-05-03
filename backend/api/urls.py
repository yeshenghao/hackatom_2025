from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import QuestionViewSet, ScoreViewSet

router = DefaultRouter()
router.register(r'quiz',      QuestionViewSet, basename='quiz')
router.register(r'progress',  ScoreViewSet,    basename='progress')

urlpatterns = router.urls
