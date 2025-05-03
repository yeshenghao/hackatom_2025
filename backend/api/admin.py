from django.contrib import admin

# Register your models here.
from .models import Question, Choice, Score

@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
    list_display = ('id', 'text', 'created_at')
    search_fields = ('text',)

@admin.register(Choice)
class ChoiceAdmin(admin.ModelAdmin):
    list_display = ('id', 'question', 'text', 'is_correct')
    list_filter = ('question',)

@admin.register(Score)
class ScoreAdmin(admin.ModelAdmin):
    list_display = ('id', 'question', 'chosen_choice', 'correct', 'ts')
    list_filter = ('correct',)
