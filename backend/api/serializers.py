# serializers.py
from rest_framework import serializers  #pip install djangorestframework
from .models import Availability, Meeting

class AvailabilitySerializer(serializers.ModelSerializer):
    class Meta:
        model = Availability
        fields = '__all__'

class MeetingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Meeting
        fields = '__all__'
