from rest_framework.routers import DefaultRouter
from .views import QuestionViewSet, ScoreViewSet

router = DefaultRouter()
router.register(r'quiz', QuestionViewSet, basename='quiz')
router.register(r'score', ScoreViewSet, basename='score')

urlpatterns = router.urls
