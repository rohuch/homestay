from .models import Room, Reserve
from django.forms import forms, ModelForm


class RoomForm(forms.Form):

    class meta:
        model = Room
        field = '__all__'


class ReserveForm(ModelForm):
    class Meta:
        model = Reserve

        fields = "__all__"
