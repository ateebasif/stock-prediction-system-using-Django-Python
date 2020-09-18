from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.models import User

from .models import *

class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'username', 'email', 'password1', 'password2']


class UserUpdateForm(ModelForm):
    class Meta:
        model = User
        fields = ('first_name','last_name', 'username','email')
        # exclude = ['user']

class WatchListForm(ModelForm):
    class Meta:
        model = WatchList
        fields = ['market']

# Form input for the name of the market data csv file while uploading a csv file, it is used to add a name for that file to display the name on the front-end
class MarketForm(forms.ModelForm):
    class Meta:
        model = CsvFile

        widgets = {
            'name': forms.TextInput(attrs={'class': 'myfieldclass'}),
            # 'csv': forms.fileInput(attrs={'class': 'csvname'}),
        }
        fields = '__all__'