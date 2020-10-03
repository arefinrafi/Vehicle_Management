from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.forms import ClearableFileInput
from .models import Vehicle_info, ImageFile
from django import forms


class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


class AdminUploadForm(forms.ModelForm):
    description = forms.CharField(widget=forms.Textarea(attrs={"rows": 5}))

    class Meta:
        model = Vehicle_info
        fields = ['v_type', 'brand', 'model', 'year', 'mileage', 'engine_capacity', 'fuel_type', 'max_power',
                  'max_speed', 'torque', 'fuel_consumption',
                  'door', 'drive_type', 'seats', 'wheel_base', 'weight', 'length', 'width', 'height',
                  'fuel_tank_capacity', 'color', 'no_of_cylinder',
                  'description', 'price', 'showroom_name', 'address', 'contact', 'image']

    def __init__(self, *args, **kwargs):
        super(AdminUploadForm, self).__init__(*args, **kwargs)
        self.fields['v_type'].empty_label = "Select"


class ImageUploadForm(forms.ModelForm):
    class Meta:
        model = ImageFile
        fields = ['file']
        widgets = {
            'file': ClearableFileInput(attrs={'multiple': True}),
        }
