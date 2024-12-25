from django.db import models
from django.contrib.auth.models import AbstractUser

from tenant.models import Client
# Create your models here.

class CustomUser(AbstractUser):
    tenant = models.ForeignKey(Client, on_delete=models.CASCADE, null=True, blank=True)
