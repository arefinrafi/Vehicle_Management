from django.contrib.auth.models import User
from django.db import models


# Create your models here.

class Category(models.Model):
    type = models.CharField(max_length=20)

    def __str__(self):
        return self.type


class Vehicle_info(models.Model):
    v_type = models.ForeignKey(Category, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    brand = models.CharField(max_length=50)
    model = models.CharField(max_length=100)
    description = models.CharField(max_length=1024)
    price = models.CharField(max_length=20)
    showroom_name = models.CharField(max_length=50)
    address = models.CharField(max_length=100)
    contact = models.CharField(max_length=20)
    image = models.ImageField(upload_to="main_images/%Y/%m/%d")


class ImageFile(models.Model):
    file = models.FileField(upload_to="images/%Y/%m/%d")
    imgID = models.ForeignKey(Vehicle_info, on_delete=models.CASCADE)


