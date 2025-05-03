# serializers.py
from rest_framework import serializers
from .models import Question, Choice, Score

class ChoiceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Choice
        fields = ['id', 'text', 'is_correct']

class QuestionSerializer(serializers.ModelSerializer):
    choices = ChoiceSerializer(many=True, read_only=True)

    class Meta:
        model = Question
        fields = ['id', 'text', 'created_at', 'choices']

class ScoreSerializer(serializers.ModelSerializer):
    class Meta:
        model = Score
        fields = ['id', 'question', 'chosen_choice', 'correct', 'ts']
        read_only_fields = ['ts']

    def create(self, validated_data):
        # Autocalcular si la respuesta es correcta
        choice = validated_data['chosen_choice']
        validated_data['correct'] = choice.is_correct
        return super().create(validated_data)




# from django.contrib.auth.models import User

# class UserSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = User
#         fields = ['id', 'username']

# class DisponibilidadSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Disponibilidad
#         fields = '__all__'