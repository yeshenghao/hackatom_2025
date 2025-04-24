# serializers.py
from rest_framework import serializers
from .models import Disponibilidad
from django.contrib.auth.models import User

class DisponibilidadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Disponibilidad
        fields = '__all__'

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username']
