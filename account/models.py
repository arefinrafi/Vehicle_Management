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
    year = models.CharField(max_length=10)
    mileage = models.CharField(max_length=50)
    engine_capacity = models.CharField(max_length=30)  # cc
    fuel_type = models.CharField(max_length=50)
    max_power = models.CharField(max_length=30)
    max_speed = models.CharField(max_length=30)
    torque = models.CharField(max_length=30)
    fuel_consumption = models.CharField(max_length=30)
    door = models.CharField(max_length=20)
    drive_type = models.CharField(max_length=20)
    seats = models.CharField(max_length=20)
    wheel_base = models.CharField(max_length=20)
    weight = models.CharField(max_length=20)  # kg
    length = models.CharField(max_length=20)  # mm
    width = models.CharField(max_length=20)  # mm
    height = models.CharField(max_length=20)  # mm
    fuel_tank_capacity = models.CharField(max_length=50)
    color = models.CharField(max_length=100)
    no_of_cylinder = models.CharField(max_length=30)
    description = models.CharField(max_length=1024)
    price = models.IntegerField(max_length=10)
    showroom_name = models.CharField(max_length=50)
    address = models.CharField(max_length=100)
    contact = models.CharField(max_length=20)
    image = models.ImageField(upload_to="main_images/%Y/%m/%d")


class ImageFile(models.Model):
    file = models.FileField(upload_to="images/%Y/%m/%d")
    imgID = models.ForeignKey(Vehicle_info, on_delete=models.CASCADE)
