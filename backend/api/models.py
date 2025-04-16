from django.contrib.auth.models import User
from django.db import models

# Create your models here.
class Availability(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()

class Meeting(models.Model):
    title = models.CharField(max_length=255)
    participants = models.ManyToManyField(User)
    scheduled_time = models.DateTimeField()
    duration = models.DurationField()
    created_by = models.ForeignKey(User, related_name='created_meetings', on_delete=models.CASCADE)
    is_confirmed = models.BooleanField(default=False)